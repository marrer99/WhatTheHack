import time
import os
import uuid
import datetime
import random
import json

from azure.eventhub import EventHubProducerClient, EventData

dataTable = [
     ['WHO', 1000] 
    ,['WHAT', 1000] 
    ,['IDK', 1000] 
    ,['WHY', 1000] 
    ,['BCUZ', 1000] 
    ,['TMRW', 1000] 
    ,['TDY', 1000] 
    ,['IDGD', 1000] 
    ]

ConnectionString = os.environ['eventconnectionstring']
EventHubName = os.environ['eventhubname']
Mu = float(os.environ['mu'])
Sigma = float(os.environ['sigma'])
IncreaseChance = float(os.environ['increasechance'])

# Create a producer client to produce and publish events to the event hub.
producer = EventHubProducerClient.from_connection_string(conn_str = ConnectionString, eventhub_name = EventHubName)

while True: 
    event_data_batch = producer.create_batch() # Create a batch. You will add events to the batch later. 

    for record in dataTable:
        symbol = record[0]
        price = record[1]

        #50/50 chance to increase or decrease
        #normal distribution 0.85 - 1.15)
        priceIncDec = price - (abs(random.normalvariate(Mu, Sigma)) * price)
        if random.random() > IncreaseChance:
            newPrice = round(price - priceIncDec, 2)
            #increase
        else:
            newPrice = round(price + priceIncDec, 2)
            #decrease
        record[1] = newPrice
        reading = {'symbol': symbol, 'price': newPrice, 'timestamp': str(datetime.datetime.utcnow())}
        s = json.dumps(reading)
        print(s)
        event_data_batch.add(EventData(s)) # Add event data to the batch.
    producer.send_batch(event_data_batch) # Send the batch of events to the event hub.
    print('batch sent')
    time.sleep(1)

# Close the producer.    
producer.close()
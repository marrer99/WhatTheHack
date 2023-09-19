<!-- REMOVE_ME # What The Hack - ${nameOfHackArg} - Coach Guide (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

# What The Hack - Fabric Real-time Analytics - Coach Guide

<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Introduction

<!-- REMOVE_ME Welcome to the coach's guide for the ${nameOfHackArg} What The Hack. Here you will find links to specific guidance for coaches for each of the challenges. (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

Welcome to the coach's guide for the IoT Hack of the Century What The Hack. Here you will find links to specific guidance for coaches for each of the challenges.

<!-- REPLACE_ME (this section will be removed by the automation script) -->

It is recommended that the host present each short presentation before attendees kick off that challenge.

**NOTE:** If you are a Hackathon participant, this is the answer guide. Don't cheat yourself by looking at these during the hack! Go learn something. :)

## Coach's Guides

<!-- REMOVE_ME ${challengesSection} (remove this from your MD files if you are writing them manually, this is for the automation script) REMOVE_ME -->

<!-- REPLACE_ME (this section will be removed by the automation script) -->

0. Challenge 00: **[Prerequisites](Coach/Solution00.md)**
   - Getting the environment setup for the rest of the challenges
1. Challenge 01: **[Ingesting the Data and Creating the Database](Coach/Solution01.md)**
   - Creating a database to store the real-time data
1. Challenge 02: **[Title of Challenge](Coach/Solution02.md)** - Description of challenge
1. Challenge 03: **[Title of Challenge](Coach/Solution03.md)** - Description of challenge
<!-- REPLACE_ME (this section will be removed by the automation script) -->

## Coach Prerequisites

This hack has pre-reqs that a coach is responsible for understanding and/or setting up BEFORE hosting an event. Please review the [What The Hack Hosting Guide](https://aka.ms/wthhost) for information on how to host a hack event.

The guide covers the common preparation steps a coach needs to do before any What The Hack event, including how to properly configure Microsoft Teams.

### Student Resources

Before the hack, it is the Coach's responsibility to download and package up the contents of the \`/Student/Resources\` folder of this hack into a "Resources.zip" file. The coach should then provide a copy of the Resources.zip file to all students at the start of the hack.

Always refer students to the [What The Hack website](https://aka.ms/wth) for the student guide: [https://aka.ms/wth](https://aka.ms/wth)

**NOTE:** Students should **not** be given a link to the What The Hack repo before or during a hack. The student guide does **NOT** have any links to the Coach's guide or the What The Hack repo on GitHub.

### Additional Coach Prerequisites (Optional)

It may be helpful to create the environment the day before or so. Since there is no script that will automatically create the coaches environment, you will have to go through it step by step just like the students.

## Azure Requirements

This hack requires students to have access to an Azure subscription where they can create and consume Azure resources. These Azure requirements should be shared with a stakeholder in the organization that will be providing the Azure subscription(s) that will be used by the students.

## Suggested Hack Agenda (Optional)

- Sample Day 1
  - Challenge 0 (1 hour)
  - Challenge 1 (2 hours)
  - Challenge 2 (2  hours)
  - Challenge 3 (2 hours)

## Repository Contents

_The default files & folders are listed below. You may add to this if you want to specify what is in additional sub-folders you may add._

- \`./Coach\`
  - Coach's Guide and related files
- \`./Coach/Solutions\`
  - Solution files with completed example answers to a challenge
- \`./Coach/Resources\`
  - Docker files to recreate the docker container if necessary
- \`./Student\`
  - Student's Challenge Guide
- \`./Student/Resources\`
  - Arm template files for deploying the event hub and azure container instance
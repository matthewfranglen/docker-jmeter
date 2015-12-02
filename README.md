JMeter in Docker
================

With this you can create and run JMeter tests entirely in docker.

Requirements
------------

This requires [docker](https://www.docker.com/).

Running
-------

### Building Docker Images

You must build the images before running:

    bin/build.sh

### Create JMeter Plan

You can then create the plan:

    bin/editor.sh

Save your plans into the `/plans` folder, as this is mounted onto the host.

This will open the `plans/plan.jmx` file by default, which is an empty plan.

### Run JMeter Plan

You can then run a plan from the `plans` folder in a standalone test:

    bin/run.sh

OR

    bin/run.sh plan.jmx

This command takes the name of the plan and will run `plan.jmx` by default. You
must name a plan which is within the `plans/` folder.

#!/bin/bash
# Used within the docker container to run the server.

RUN_COMMAND=start:dev

if [ "$DIST_SERVER_RUN" = "true" ]; then
RUN_COMMAND=start
fi

if [ "$DEBUG_SERVER_RUN" = "true" ]; then
RUN_COMMAND=start:debug
fi

npm run $RUN_COMMAND

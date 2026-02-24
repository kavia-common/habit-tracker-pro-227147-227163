#!/bin/bash
cd /home/kavia/workspace/code-generation/habit-tracker-pro-227147-227163/habit_tracking_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi


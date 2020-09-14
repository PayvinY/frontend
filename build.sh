#! /bin/bash
docker run -v $(pwd):/src -w="/src" --entrypoint="" node /bin/bash -c "npm install && npm run build"
aws s3 sync ./build/ s3://payvinyhillel


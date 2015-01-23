#!/usr/bin/env bash

cd ${PROJECT_DIR}

composer -n init --name="myvendor/mypackage" --description="my project"  --author="My Name <myname@amyvendor.com>"   --require="magento-hackathon/magento-composer-installer:*" --license="proprietary"
# --require="magento/core:${MAGENTO_VERSION}"

composer --no-interaction install
#!/usr/bin/env bash


cd ${PROJECT_DIR}

# composer -n init --name="myvendor/mypackage" --description="my project"  --author="My Name <myname@amyvendor.com>"   --require="magento-hackathon/magento-composer-installer:*" --license="proprietary"
# --require="magento/core:${MAGENTO_VERSION}"

cp ${PROVISION_DIR}/composer.json .

composer --no-interaction install
composer --no-interaction update
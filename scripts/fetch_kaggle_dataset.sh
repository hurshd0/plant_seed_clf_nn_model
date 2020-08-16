#!/usr/bin/env bash

TRAINING_DATA_URL="vbookshelf/v2-plant-seedlings-dataset"
NOW=$(date)

kaggle datasets download -d $TRAINING_DATA_URL -p packages/cnn_model/datasets/ && \
unzip packages/cnn_model/datasets/v2-plant-seedlings-dataset.zip -d packages/cnn_model/datasets/v2-plant-seedlings-dataset && \
echo $TRAINING_DATA_URL 'retrieved on:' $NOW > packages/cnn_model/datasets/training_data_reference.txt && \
mkdir -p "../packages/cnn_model/datasets/v2-plant-seedlings-dataset/Shepherds Purse"  && \
mv -v "../packages/cnn_model/datasets/v2-plant-seedlings-dataset/Shepherd’s Purse/"* "../packages/cnn_model/datasets/v2-plant-seedlings-dataset/Shepherds Purse"
rm -rf "../packages/cnn_model/datasets/v2-plant-seedlings-dataset/Shepherd’s Purse"
#!/bin/bash
docker run --rm haskell:9.8.1 stack setup && stack $@
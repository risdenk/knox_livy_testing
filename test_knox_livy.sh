#!/usr/bin/env bash

CURL="curl -i -k -u admin:admin-password"
KNOX="https://localhost:8443/gateway/default"

$CURL "$KNOX/livy/v1/sessions"
$CURL "$KNOX/livy/v1/batches"


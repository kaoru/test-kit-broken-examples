#!/bin/bash

echo "--- GOOD + Test::Aggregate = BAD ---";

prove aggregate.t :: t-good &>/dev/null
echo $?

echo "--- GOOD + Test::Aggregate::Nested = GOOD ---";

prove aggregate-nested.t :: t-good &>/dev/null
echo $?

echo "--- BAD + Test::Aggregate = BAD ---";

prove aggregate.t :: t-bad &>/dev/null
echo $?

echo "--- BAD + Test::Aggregate::NESTED = BAD ---";

prove aggregate-nested.t :: t-bad &>/dev/null
echo $?

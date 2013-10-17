#!/bin/bash

echo "--- GOOD + Test::Aggregate = BAD ---";

prove -l aggregate.t :: t-good

echo "--- GOOD + Test::Aggregate::Nested = GOOD ---";

prove -l aggregate-nested.t :: t-good

echo "--- BAD + Test::Aggregate = BAD ---";

prove -l aggregate.t :: t-bad

echo "--- BAD + Test::Aggregate::NESTED = BAD ---";

prove -l aggregate-nested.t :: t-bad

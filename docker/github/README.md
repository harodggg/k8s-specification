## use workflow action

## Strategy,- matrix
jobs:
  example_matrix:
    strategy:
      max-parallel: 2
      matrix:
        version: [10, 12, 14]
        os: [ubuntu-latest, windows-latest]
==== for in version:
            for in os:
                jobs

## if 
step == true; then run 
# Mongodump Action

GitHub Action for creating a MongoDB dump using `mongodump` or restoring a MongoDB dump using `mongorestore`.

## Example usage

```yml
name: Dump MongoDB

on:
  schedule:
    - cron: 0 0 * * *

jobs:
  backup:
    runs-on: ubuntu-latest
    steps:
      - uses: zahornyak/mongodump-action@v1.4.0
        with:
          connection-string: ${{ secrets.MONGO_URI }}
          compress: true
          mongo-command: mongodump # this is by default. You can use `mongorestore` also here
          additional-args: '--tlsInsecure'
```

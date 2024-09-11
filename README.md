# Mongodump Action

GitHub Action for creating a MongoDB dump using `mongodump`.

## Example usage

```yml
name: Backup

on:
  schedule:
    - cron: 0 0 * * *

jobs:
  backup:
    runs-on: ubuntu-latest
    steps:
      - uses: zahornyak/mongodump-action@v1
        with:
          connection-string: ${{ secrets.MONGO_URI }}
          compress: true
```

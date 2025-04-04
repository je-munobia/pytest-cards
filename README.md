cards
=====

Note: Copied form Brian Okken's code in the Pytest book

Mainly used to test GitHub Actions and CI/CD with an existing Python package

Project task tracking / todo list

Build status on main
--------------------

* [![CI](https://github.com/je-munobia/pytest-cards/actions/workflows/ci.yml/badge.svg)](https://github.com/je-munobia/pytest-cards/actions/workflows/ci.yml)
* [![Lint Dockerfile](https://github.com/je-munobia/pytest-cards/actions/workflows/lint-dockerfiles.yml/badge.svg)](https://github.com/je-munobia/pytest-cards/actions/workflows/lint-dockerfiles.yml)
* [![Lint GitHub Actions Workflows](https://github.com/je-munobia/pytest-cards/actions/workflows/lint-workflows.yml/badge.svg)](https://github.com/je-munobia/pytest-cards/actions/workflows/lint-workflows.yml)

Architecture
------------

```mermaid
flowchart LR
    CLI --> API
    API --> DB
```

Usage
-----

Here's a demo of how it works:

    $ cards add a todo

    $ cards add -o Brian another task

    $ cards list
         ╷       ╷       ╷
      ID │ state │ owner │ summary
    ╺━━━━┿━━━━━━━┿━━━━━━━┿━━━━━━━━━━━━━━╸
      1  │ todo  │       │ a todo
      2  │ todo  │ Brian │ another task
         ╵       ╵       ╵

    $ cards update 1 -o Brian

    $ cards finish 1

    $ cards
      ID │ state │ owner │ summary
    ╺━━━━┿━━━━━━━┿━━━━━━━┿━━━━━━━━━━━━━━╸
      1  │ done  │ Brian │ a todo
      2  │ todo  │ Brian │ another task
         ╵       ╵       ╵

    $ cards delete 1

    $ cards
      ID │ state │ owner │ summary
    ╺━━━━┿━━━━━━━┿━━━━━━━┿━━━━━━━━━━━━━━╸
      2  │ todo  │ Brian │ another task
         ╵       ╵       ╵

    $ cards --help
    Usage: cards [OPTIONS] COMMAND [ARGS]...

      Cards is a small command line task tracking application.

    Options:
      --help  Show this message and exit.

    Commands:
      add      Add a card to db.
      config   List the path to the Cards db.
      count    Return number of cards in db.
      delete   Remove card in db with given id.
      finish   Set a card state to 'done'.
      list     List cards in db.
      start    Set a card state to 'in prog'.
      update   Modify a card in db with given id with new info.
      version  Return version of cards application

Local CI verification
---------------------

```bash
# Test three python versions as configured in tox.ini
tox 

# Static Python checks include format, lint and type checks
# extra parameters to underlying tool goes after --
tox -e format
tox -e lint
tox -e typecheck
```

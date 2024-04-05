# blockclock_ex

Blockclock_ex is a simple Elixir API project that provides bitcoin-related information. 

## Installation

To set up the project on your local machine, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/vitorgamer58/blockclock_ex.git
    cd blockclock_ex
    ```

2. Install the dependencies:

   ```bash
   mix deps.get
   mix deps.compile
   ```

3. Start the web server:

   ```bash
   mix run --no-halt
   ```

## Usage

Currently, the API provides the following endpoint:

- `/api/height`: Returns the current height of the bitcoin blockchain.

## Dependencies

BlockClockEx uses the following dependencies:

- [Bandit](https://github.com/mtrudel/bandit): A simple and fast web server for Elixir.
- [HTTPoison](https://github.com/edgurgel/httpoison.git): An HTTP client for Elixir.
- [Cachex](https://github.com/whitfin/cachex.git): A powerful caching library for Elixir.

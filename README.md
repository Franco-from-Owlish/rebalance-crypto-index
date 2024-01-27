# Rebalance crypto index

A technical interview question.

## Description

You need to rebalance a crypto index fund that contains an asset cap. This means that the fund’s
constituents are rebalanced according to their market capitalisations - until they reach their cap.
The remaining funds that would have been allocated above the cap are then redistributed. Make
sure no other asset exceeds its cap. This should work for any number of assets and any cap. First
calculate the percentage allocations and then capital allocations and amounts. A good sanity
check is to look at the outputs with an unlimited cap (1 or 100%).

## Example 1

### Input

| Ticker | Market capitalisation | Price   |
|--------|-----------------------|---------|
| BTC    | 20 000                | 50      |
| ETH    | 10 000                | 52      |
| LTC    | 5 000                 | 10      |

Asset capital: 50%
Total capital: 10 000

### Output

| Ticker | Amount    | Value  | %       |
|--------|-----------|:-------|---------|
| BTC    | 10.000000 | 500.00 | 50.0000 |
| ETH    | 13.333333 | 333.33 | 33.3333 |
| LTC    | 16.666667 | 166.67 | 16.6667 |

## Example 2

> **_Note_** <br/>
> This example contains an ‘impossible’
input. A fund with 3 constituents naturally has a
minimum cap of a third before all elements are
set equal and this is what is reflected in the
output.

### Input

| Ticker | Market capitalisation  |   Price |
|:-------|:----------------------:|--------:|
| BTC    |         20 000         |      50 |
| ETH    |         10 000         |      52 |
| LTC    |         5 000          |      10 |

Asset capital: 10%
Total capital: 10 000

### Output

| Ticker |  Amount   | Value  |       % |
|:-------|:---------:|:------:|--------:|
| BTC    | 6.666667  | 333.33 | 33.3333 |
| ETH    | 13.333333 | 333.33 | 33.3333 |
| LTC    | 33.333333 | 333.33 | 33.3333 |
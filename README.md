[![Build](https://github.com/aleksandrilyin/csv_ascii_converter/workflows/Build/badge.svg)](https://github.com/aleksandrilyin/csv_ascii_converter/actions)

# CSV ASCII Converter

Converter from CSV to ASCII table.

## Installation

Clone the repository and install the dependencies:

```sh
git clone git@github.com:aleksandrilyin/csv_ascii_converter.git
cd csv_ascii_converter/
bundle install
```

### Supported Ruby versions

- Ruby (MRI) >= 2.7.0

## Usage

Run the script:

```sh
cat path/to/your/file.csv | ruby script.rb
```

### Usage example

```sh
cat public/sample.csv | ruby script.rb
+--+----+---------+
| 1|aaa | 1 000,33|
|  |bbb |         |
|  |ccc |         |
+--+----+---------+
| 5|aaaa|     0,01|
|  |bbb |         |
+--+----+---------+
|13|aa  |10 000,00|
|  |bbbb|         |
+--+----+---------+
```

## Testing

Run the tests:

```sh
bundle exec rspec
```

## License

The software is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

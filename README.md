# timestamp.cr

Timestamp implementation for crystal-lang.

## Installation

Add it to your `Projectfile`

```crystal
deps do
  github "waterlink/timestamp.cr"
end
```

## Usage

### Create `Time` from timestamp:

```crystal
puts Time.from_timestamp(1427042133.035) #=> ::TODO::
```

### Get timestamp from `Time` instance:

```crystal
puts Time.now.to_timestamp   #=> 1427042133.035
```

## Contributing

1. Fork it ( https://github.com/waterlink/timestamp.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [waterlink](https://github.com/waterlink) - creator, maintainer

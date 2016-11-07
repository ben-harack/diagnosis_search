# DiagnosisSearch

This script searches for occurences of a string within a file using two methods: 

1. a straightforward linear Ruby Array search 
2. a suffix tree constructed out of all the lines in the file

## Running locally

After cloning, install the gem dependences:
```
$ bundle install
```

## Usage

Help text:
```
Usage: search [options]
    -f, --data-file FILE             Data file
    -s, --search-string STRING       Search string
```

Example execution with provided data file (using `bundle exec` to execute within the bundler environment):
```
$ bundle exec bin/search -f data.txt -s 'ce'
Tree search results (total of 13):
brain cancer
breast cancer
cancer
celiac disease
cervical cancer
colon cancer
impotence
jaundice
lactose intolerance
liver cancer
lung cancer
ovarian cancer
prostate cancer

Array search results (total of 13):
brain cancer
breast cancer
cancer
celiac disease
cervical cancer
colon cancer
impotence
jaundice
lactose intolerance
liver cancer
lung cancer
ovarian cancer
prostate cancer

Are the two result sets identical? true
```

## Development

This project uses rubocop for style checking. To check for style violations, run:
```
$ bundle exec rubocop lib bin
```
Before checking in code, there should be no style violations flagged.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/diagnosis_search.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


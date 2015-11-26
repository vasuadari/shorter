## Shorter
[![Gem Version](https://img.shields.io/gem/v/shorter.svg?style=flat)](http://rubygems.org/gems/shorter)
[![Build Status](https://travis-ci.org/vasuakeel/shorter.svg?style=flat&branch=master)](https://travis-ci.org/vasuakeel/shorter)

  An idea to reduce a piece of code.

## Getting Started

  ```
  gem install shorter
  ```

## Usage

  For example, if you have a User model with `users` as it's table name. You'll follow
  rails way to fetch a record from database as below.

  ```
  user = User.where(id: 1).first
  ```

  But using this gem, you can query it by just doing

  ```
  1.user or 1.users
  ```

## License

MIT License (MIT)

Copyright (c) 2015-2017 Vasu Adari

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

String Calculator

Project Overview
    String Calculator is a Ruby on Rails 7 service that parses and sums numbers from a given string input. It supports:
    - Comma (`,`) and newline (`\n`) as default delimiters.
    - Custom delimiters (e.g., `//;\n1;2` → `3`).
    - Error handling for negative numbers.

Setup & Installation
    Prerequisites
Ensure you have the following installed:
    - Ruby 3.0.0
    - Rails 7.1.5
    - PostgreSQL
    - Bundler

Clone the Repository

    git clone https://github.com/UrmitROR/StringCalculator.git
    cd string_calculator


Install Dependencies

    bundle install


Database Setup

    rails db:create db:migrate


Usage
Running Tests
Run RSpec tests to validate functionality:

bundle exec rspec


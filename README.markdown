# `riak-sessions`: Riak Session Stores [![Build Status](https://secure.travis-ci.org/seancribbs/riak-sessions.png)](http://travis-ci.org/seancribbs/riak-sessions)

`riak-sessions` contains Riak-backed session stores for Rack and Rails
3 applications.

## Dependencies

`riak-sessions` requires Rack (any version > 1.0), and Rails 3.0 if
you want the Rails-specific session store. Naturally, it also depends
on the `riak-client` gem to connect to Riak.

Development dependencies are handled with bundler. Install bundler
(`gem install bundler`) and run this command in each sub-project to
get started:

``` bash
$ bundle install
```

Run the RSpec suite using `bundle exec`:

``` bash
$ bundle exec rake spec
```
## How to Contribute

* Fork the project on [Github](http://github.com/seancribbs/riak-sessions).  If you have already forked, use `git pull --rebase` to reapply your changes on top of the mainline. Example:

    ``` bash
    $ git checkout master
    $ git pull --rebase seancribbs master
    ```
* Create a topic branch. If you've already created a topic branch, rebase it on top of changes from the mainline "master" branch. Examples:
  * New branch:

        ``` bash
        $ git checkout -b topic
        ```
  * Existing branch:

        ``` bash
        $ git rebase master
        ```
* Write an RSpec example or set of examples that demonstrate the necessity and validity of your changes. **Patches without specs will most often be ignored. Just do it, you'll thank me later.** Documentation patches need no specs, of course.
* Make your feature addition or bug fix. Make your specs and stories pass (green).
* Run the suite using multiruby or rvm to ensure cross-version compatibility.
* Cleanup any trailing whitespace in your code (try @whitespace-mode@ in Emacs, or "Remove Trailing Spaces in Document" in the "Text" bundle in Textmate). You can use the `clean_whitespace` Rake task if you like.
* Commit, do not mess with Rakefile.  If related to an existing issue in the [tracker](http://github.com/seancribbs/riak-sessions/issues), include "Closes #X" in the commit message (where X is the issue number).
* Send me a pull request.

## License & Copyright

Copyright &copy;2010-2012 Sean Cribbs and Basho Technologies, Inc.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

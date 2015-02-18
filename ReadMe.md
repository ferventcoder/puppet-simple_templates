The files here have different line endings, showing a reproduction of [PUP-927](https://tickets.puppetlabs.com/browse/PUP-927).

With the old:

    puppet apply --modulepath="~/code/puppetlabs/modules" -e "include simple_templates"

Now with the new:

    bundle exec puppet apply --modulepath="~/code/puppetlabs/modules" -e "include simple_templates"

On Windows you want to use something like Notepad++ that can show you line endings.

On *nix you can just use file /private/tmp/newlines/filename.txt to see how the different files have different line endings.

The specific broken cases are:

 * crlf_newlines_template.txt (file with Windows line endings from templates)
 * mixed_newlines_template.txt (files with mixed line endings)

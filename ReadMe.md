The files here have different line endings, showing a reproduction of [PUP-927](https://tickets.puppetlabs.com/browse/PUP-927).

With the old:

    puppet apply --modulepath="~/code/puppetlabs/modules" -e "include simple_templates"

Now with the new:

    bundle exec puppet apply --modulepath="~/code/puppetlabs/modules" -e "include simple_templates"

On Windows you want to use something like Notepad++ (`choco install notepadplusplus`) that can show you line endings on files.

![image](https://cloud.githubusercontent.com/assets/63502/6252198/3620e694-b75e-11e4-9b68-c0181b92f0ce.png)


On *nix you can just use `file /private/tmp/newlines/filename.txt` to see how the different files have different line endings.

![image](https://cloud.githubusercontent.com/assets/63502/6252243/6e25f70a-b75e-11e4-829a-f13f24efe591.png)


The specific broken cases are:

 * crlf_newlines_template.txt (file with Windows line endings from templates)
 * mixed_newlines_template.txt (files with mixed line endings)

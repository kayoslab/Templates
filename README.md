# Templates

A templates folder which I usually add to new Xcode projects for all modules to be created in the same way. This helps keeping a project readable and reduces the workload on heavy coding patterns.

## Integration

To make your life easier you can automatically copy the templates in a project build phase. Just create a new *Run Script phase* in your project and add the following code to use the *VIP templates*.

```Shell
#!/bin/bash
set -eo pipefail
IFS=$'\n\t'

# Remove all existing files
rm -fR ~/Library/Developer/Xcode/Templates/File\ Templates/VIP\ Template

# Create directory
mkdir -p ~/Library/Developer/Xcode/Templates/File\ Templates/

# Copy all included templates to the templates directory
cp -R ./Templates/VIP\ Template ~/Library/Developer/Xcode/Templates/File\ Templates/
```
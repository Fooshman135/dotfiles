echo 'Hello from .zshrc'



### Customize Prompts ###

# Having a newline immediately after the single quote creates a newline in the prompt itself.
# Here are what the dynamic prompt elements below mean:
#   The "%~" produces the current working directory.
#   The "%L" produces the curent shell level (analogous to the SHLVL variable).
#   The "%*" produces the current time (in the machine's local time zone).

PROMPT='
----------------------------
Current directory: %~
Shell level: %L
=> '

RPROMPT='%*'






### Create Aliases ###

## The following alias makes the ls command much more useful by automatically adding options.
# The -A option shows all items except for single-dot (the current directory) and double-dot (the parent directory).
# The -l options displays the items in list format.
# The -F option shows a forward-slash at the end of each directory.
# The -h option shows the size in terms of larger units than just bytes.

alias ls='ls -AlFh'






### Create Functions ###

## The following function creates a directory (or multiple directories) and also navigates into one.
## It is included here primarily as an example of how a function works, and is not intended to be used significantly.
# The mkdir command creates a new directory whose name is the function's input.
# The -p option is used in case multiple nested directories are provided as input.
# The "$@" is a placeholder for the function's input, and it is the location where the input is inserted.
# The && acts as an error gate, meaning it confirms that the left-side of the && was successful before proceeding to whatever lies to the right side of the &&.
# The cd command changes the directory, and the "$_" means the function's last input becomes the input to the cd command.
#	Note that the underscore in "$_" is what specifies the last input (assuming multiple separate non-nested inputs).

function mkcd() {
  mkdir -p "$@" && cd "$_";
}

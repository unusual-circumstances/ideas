# ideas
Each idea is the germ that spawns new beginnings.

## basic concept

The basic concept of this repo is that an idea is a complete thought, and this can be made into a dynamic agent that can interact with a blockchain network.

## less stupid basic concept

Ideas are just that. Ideas. Fun things to develop further. Filed under the MIT license, ideas are there to be shared, improved, or encouraged not to continue.

## making some scripts and an alias

I've figured some scripts and an alias "newidea"

I will need to add this alias to my ~/.bashrc file

here's how to do it!

1. Open a terminal. I use WSL2 and Ubuntu, so I do this:
    - Windows + x (this pulls up a whole bunch of options)
    - i (this opens a terminal)
    - ubuntu (this starts ubuntu)

2. Open the shell configuration file in a text editor
    - nano ~/.bashrc (we can just use nano because it's always there with ubuntu)
    - add this line to the end of the file: `alias newidea="chmod +x create_new_idea.sh && ./create_new_idea.sh"`

3. Save the file
    - in nano: `Ctrl+X` then `Y`

4. Reload the shell configuration file
    - `source ~/.bashrc`

Hope this works!
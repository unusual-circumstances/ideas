# 002

There should be a template at the root of this project that exands as more ideas come into existence. this would assist in the completion of administrative tasks. I will creat the template right now

## the idea

Basically, this entire project should be iterative and self improving. Each new addition to the template will facilitate that very goal.

## the execution

Create a directory at root `ideas/ideas` or at root! `ideas` directory. The directory will be called `template`.

Let's consult GPT-4 and see if they can provide some guidance.

### ai

#### proomt

>I'm making an nft project as part of a meta collection called ideas. it is a repo in the unusual-circumstances organization i created on github. this project, ideas, is a sort of meta approach to nft collections, jsons, and the way internet things are constructed. I have the basic file structure, but need some help setting up my template directory. I am not sure whether `template` which continuously will be updated with each subsequent idea should be in `ideas/ideas` or at root in `ideas`. help me decide please!

#### model

ChatGPT May 24 Version

#### response

>The decision of where to put your template directory depends on your project's structure and the role of this directory. If the template is to be used only by the ideas submodule, then it would be better to place it within the ideas/ideas directory, indicating that it's a specific resource for that submodule.

However, if the template directory will be shared among multiple modules or parts of the project, then it would make more sense to place it at the root of the ideas directory. This will facilitate sharing of the template across different parts of the project without duplication.

In your case, as you mention that the template directory will be updated with each subsequent idea, it seems like the template directory is specific to the ideas part of the project. In this scenario, I would recommend placing it within the ideas/ideas directory, as this seems to suggest that it's a resource specific to the ideas submodule.

That said, it's important to remember that there's not a one-size-fits-all solution to directory structure, and you should adopt the structure that best fits your project's needs and makes your project as intuitive and maintainable as possible.

#### additional chats

Me:

> I have decided to place the template directory in the ideas/ideas directory. I want to create some scripts that make it easy to automate tasks between directories without thinking about how to do these tasks. can you help me write some of those?

GPT-4:

> Sure, I can help with that! However, I'll need more specifics on the exact tasks you'd like to automate. Here are a few common tasks you might be referring to:

Copying the template to a new idea directory.
Renaming or moving files/directories.
Updating a file (such as a README or a changelog) whenever a new idea is added.
Running tests or other scripts whenever changes are made in a directory.
As an example, let's create a script for the first task, copying the template to a new idea directory. We'll use bash for this script, as it's a widely used shell language. For simplicity, let's assume your script will be placed at the root of your project:

``` bash

#!/bin/bash

# Script to automate the create of a new idea based on the template.

# Check if the script received an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 idea_name"
    exit 1
fi

# Set the source and destination directories
TEMPLATE_DIR="ideas/ideas/template"
IDEA_DIR="ideas/ideas/$1"

# Check if the destination directory already exists
if [ -d "$IDEA_DIR" ]; then
    echo "Error: Directory $IDEA_DIR already exists."
    exit 1
fi

# Copy the template directory to the new idea directory
cp -r $TEMPLATE_DIR $IDEA_DIR

echo "Created new idea directory: $IDEA_DIR"



```
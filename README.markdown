# Cl-Exe-Template

  Common lisp template project to build standalone executables. 
  
  Often, I find myself writing scripts for people who just want to run them without any additional fluff. This gets things started quickly and saves 
  a little time.
  

## Usage

   Use it with [just](https://github.com/casey/just).
   
   Put the following in a file `cl.just`, somewhere you can use it with `just`, usually at `$HOME/.just/cl.just`
   
   ```bash
   @new name:
     git clone https://github.com/ryloric/cl-exe-template.git {{name}}
     cd {{name}} && rm -rf .git && mv cl-exe-template.asd {{name}}.asd && find . -type f -exec sed -i 's/cl-exe-template/{{name}}/gI' {} + && git init
   ```
   
   Add the following alias somewhere where your shell can pick it up. Change `cl.just`'s location if needed.
   
   ```bash
   alias jcl='just --justfile ~/.just/cl.just --working-directory .'
   ```
   
   Reload your shell's init file. For zsh..
   
   ```bash
   $ source ~/.zshrc
   ```
   
   You can create a new project with 
   ```bash
   $ jcl new <project-name>
   ```
   
   To build an exe, you can do 
   
   ```bash
   $ just make-exe
   ```
   
   This builds `<project-name.exe>` with sbcl's core compression enabled. This can be distributed and run easily.

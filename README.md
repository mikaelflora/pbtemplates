# pbtemplates

## Synopsis

Personnal Bash templates

## File hierarchy

```
./
├── cli/
│   ├── cli-main
│   └── cli-min
├── completion
│   ├── bc-file
│   ├── bc-full
│   ├── bc-main
│   └── bc-min
├── readme/
│   └── README.md
├── setup/
│   ├── setup-full
│   ├── setup-main
│   └── setup-min
└── ui/
    └── ui.bash
```

  - **cli:** applications (`./cli [-h | -v]`)
  - **completion:** Bash completion scripts
  - **readme:** README files
  - **setup:** installation scripts (`./setup install`)
  - **ui:** user interface functions


## Usage

### cli

Put your application to `/usr/local/bin/<name>` (or `/usr/local/sbin/<name>`).  

### completion

Put your bash completion script to `/usr/share/bash-completion/completions/<name>`.  

### readme

Put your README file at the root of your project.  

### setup

Put your setup script at the root of your project.  

### ui

Code snippet for your application.  

## License

GNU General Public License v3 (GPL-3). See `LICENSE` for further details.  


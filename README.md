# Download DDLC Archives

This action lets you download the required DDLC files for building a mod for DDLC.

## Usage
```yml
- name: Download DDLC archives
  uses: Sayo-nika/mc-action@master
```

The required DDLC files will appear in the `mod` folder located at the root of your project/workflow. Keep this in mind. You may need to modify your workflow to copy your mods files over:
```yml
- name: Set up mod for build
  shell: bash
  run: |
    mkdir mod
    rm -rf sample_mod/my_mod/README.html && cp -vRf sample_mod/my_mod/* mod/
```

The script is ported from [quickstart-oss](https://github.com/Sayo-nika/quickstart-oss).

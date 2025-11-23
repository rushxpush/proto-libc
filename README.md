# **proto-libc**

_A prototypical experiment in rewriting libc functions in x86_64 assembly._

This repository is a small, evolving playground where I re-implement selected parts of the C standard library in pure x86_64 assembly.
No goal of completeness, no deadlines — just exploration, learning, and building intuition about how low-level code actually works.

The project will start simple (string functions, syscalls, tiny runtime pieces) and can grow in any direction: more functions, a minimal runtime, or even experiments with ABI and ELF anatomy.

### **What is the purpose of this project (for now)**

- A space to practice assembly daily.
- A way to understand how libc behaves under the hood.
- A collection of microlabs in low-level form.
- A technical playground, not a production libc.

### **Why do this?**

Because rewriting things from scratch builds “real” understanding:
registers, flags, calling conventions, memory layout, syscalls, loops, and how C actually maps to machine code.

### **Structure**

```
src/
  string/        # strlen, strcmp, etc.
  sys/           # syscall wrappers, write, exit...
  runtime/       # _start, ABI notes (future)
tests/           # tiny C tests or raw assembly drivers
docs/            # small notes as the project grows
```

### **Build**

For now (subject to change anytime):

```
# Will build every file
# I'll change this in the future to build
# only what you want to build
./build.sh
```

### **Notes**

This project will grow organically.
No promises, no roadmap. Just curiosity, practice, and assembling the pieces of a tiny libc along the way.

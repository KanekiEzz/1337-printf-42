<h1 align="center">ft_printf - 42 Abu Dhabi</h1>
<p align="center">
  <a href="https://github.com/simon-zerisenay/42-ft_printf">
    <img src="https://github.com/mcombeau/mcombeau/blob/main/42_badges/ft_printfm.png" alt="42 Badge">
  </a>
</p>
<p align="center">
  <img src="https://github.com/simon-zerisenay/simon-zerisenay/blob/main/100.png" alt="100" width="100" height="70">
</p>

<h2>Introduction</h2>
<p align="center">
  <img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/simon-zerisenay/42-ft_printf?color=lightblue">
  <img alt="Number of lines of code" src="https://img.shields.io/tokei/lines/github/simon-zerisenay/42-ft_printf?color=critical">
  <img alt="Code language count" src="https://img.shields.io/github/languages/count/simon-zerisenay/42-ft_printf?color=yellow">
  <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/simon-zerisenay/42-ft_printf?color=blue">
  <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/simon-zerisenay/42-ft_printf?color=green">
</p>
<p>Welcome to ft_printf! This project from 42 Abu Dhabi focuses on creating a custom implementation of the printf function in C. It helps you understand variadic functions and string formatting.</p>

<h2>Objective</h2>
<p>Recreate the printf function to deepen your understanding of its mechanics, including string manipulation, format specifiers, and variadic arguments.</p>

<h2>Features</h2>
<h4>Format Specifiers</h4>
<p>The function supports various specifiers:</p>
<ul>
  <li>%c: Character</li>
  <li>%s: String</li>
  <li>%d or %i: Signed decimal integer</li>
  <li>%u: Unsigned decimal integer</li>
  <li>%x or %X: Unsigned hexadecimal integer</li>
  <li>%f: Floating-point number</li>
  <li>%p: Pointer address</li>
</ul>
<p>These specifiers help format and display different types of data.</p>

<h4>Width and Precision</h4>
<p>Specify width and precision to control the output format for strings and numbers.</p>

<h4>Flags and Modifiers</h4>
<p>Customize output using flags like:</p>
<ul>
  <li>-: Left-justify</li>
  <li>+: Show plus sign for positive numbers</li>
  <li>0: Pad with zeros</li>
  <li>#: Add "0x" or "0X" for hex values</li>
</ul>

<h2>Variadic Argument Handling</h2>
<p>Handle variable arguments using stdarg.h and va_list, allowing flexibility in managing different data types.</p>

<h2>Installation and Usage</h2>
<ol>
  <li>Clone the repository: <code>git clone https://github.com/your_username/42-ft_printf.git</code></li>
  <li>Navigate to the project directory: <code>cd 42-ft_printf</code></li>
  <li>Compile the library: <code>make</code></li>
  <li>Run the executable: <code>./ft_printf</code></li>
  OR:
  <li>Compile the library: <code>gcc -o ft_printf ft_printf.c ft_print_char.c ft_print_nbr.c ft_print_str.c rint_nbr.c ft_print_str.c ft_print_uns.c ft_print_hex.c ft_print_adrs.c </code></li>
  <li>Run the executable: <code>./ft_printf</code></li>
</ol>
<p>Refer to the documentation for detailed usage and examples.</p>

<h2>How it Works</h2>
<ol>
  <li>Parse the format string to identify specifiers and flags.</li>
  <li>Retrieve and convert arguments based on specifiers.</li>
  <li>Generate and print the formatted output.</li>
</ol>
<p>This ensures accurate formatting and output, emulating the behavior of the standard printf function.</p>
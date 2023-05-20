# Personal Nvim Config

Hello for my nvim_config

## Key bindings

Leader key: <space>

Line wrap movement:
gj, gk => j, k

Ctrl + h/j/k/l movement between windows/tabs/panes
Ctrl + Arrows = Rezise windows
Alt + h/j/k/l move lines works with input, normal or visual mode

Shift + h/l move between buffer line windows -> Works similar to Ctrl + h/j/k/l

Leader + ul = diffupdate
gw Search for word under cursor

n search forward
N search previous

,.; add break points (Works only with inputmode)

Ctrl + s = save

Leader + l Lazy
leader + fn new file
leader + xl error locations
leader + xq quick fix

\]q next quick fix
\[q previous quick fix

leader + uf toggle format on save
leader + us toggle spelling
leader + uw toggle word wrap
leader + ul toggle line numbers
leader + ud toggle diagnostics
leader + ud toggle conceal

leader + gg -> lazygit in root dir
leader + gG -> lazygit in cwd

qq -> quit

leader + ui -> inspect current positing under cursor
leader + ft -> floating terminal
leader + fT -> floating terminal in cwd

<esc><esc> -> with terminal mode return to normal mode

leader + ww -> other window
leader + wd -> delete window
leader + w- -> split window below
leader + w| -> split to the right
leader + - -> split below
leader + | -> split right

leader + tab + l -> last tab
leader + tab + f -> first tab
leader + tab + tab -> new tab
leader + tab + ] -> tab next
leader + tab + d -> close tab
leader + tab + [ -> previous tab

# Persistance

leader + qs -> restore session
leader + ql -> restore last session
leader + qd -> dont save current session

leader + un -> dismiss notifications
leader + bp -> pin buffer
leader + bP -> delete all unpinned buffers

leader + sn -> show noice log

Shift + Enter -> redirect command line
leader + snl -> noice last message
leader + snh -> noice history
leader + sna -> noice all
leader + snd -> dismiss all noice
c + f -> noice scroll (in log)
c + b -> noice scroll (in log)

c + space -> increase selected area upwards
bs -> decrement selection

## Neo-Tree

leader + e -> open tree to root dir
leader + E -> open tree to cwd

cr -> open file
P -> show file preview
<esc> -> revert preview
l -> goto preview
S -> open split
s -> open vertical split
t -> open tab
w -> open with window picker
a -> add file
A -> add directory
d -> delete
r -> rename
y -> yank
x -> cut
p -> paste
c -> copy
m -> move
q -> close window
H -> toggle hidden files
. -> set root
<bs> -> navigate up
D -> fuzzy find directory
/ -> fuzzy find file
\# -> fuzzy sort
f -> filter on submit
ctrl +x -> clear filter
\[ + g -> preview git modified
\] + g -> next git

## Coding

Code completion:
Ctrl + j -> Select next
Ctrl + k -> select previous
Ctrl + b -> scroll doc down
Ctrl + f -> Scroll doc upwards
Ctrl + space -> Complete
Ctrl + e -> abort
Shift + CR -> confirm

## LSP

leader + cd -> line diagnostics
leader + cl -> lsp info

gd -> go to definition
gr -> go to reference
gD -> go to Declaration
gI -> go to implementation
gy -> goto type definition
K -> hover
gK -> signature help
ctrl + k signature help
\]d -> next diagnostics
\[ + d -> previous diagnostics,
\]e -> next error
\[ + e -> previous error
\] + w -> next warning
\[ + w -> previous warning

leader + c + f -> format document
leader+ c + f -> format selection
leader + ca -> code action

leader + cA -> code action
leader + rn -> rename

# Surround

gza[symbol] + surrond selection with [symbol]
gzd[symbol] + surrond selection with [symbol]
gzf[symbol] + surrond selection with [symbol]
gzF[symbol] + surrond selection with [symbol]
gzr[symbol] + surrond selection with [symbol]
gzn +

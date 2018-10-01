# how-many.el

Count how many the word is used in the project!

## Setup

Edit `init.el`.

```el
(add-to-list 'load-path "/path/to/how-many")
(require 'how-many)
(global-set-key (kbd "H-i") 'how-many) ;; optional
```

## Usage

1. Point your cursor on the word in the git project
2. Execute `M-x how-many RET` or Type the key you set in `init.el`
3. Tooltip will appear and show the result!

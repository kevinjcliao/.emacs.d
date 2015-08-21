;;; table-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "table" "table.el" (21929 52425 0 0))
;;; Generated autoloads from table.el

(defvar table-cell-map-hook nil "\
*Normal hooks run when finishing construction of `table-cell-map'.
User can modify `table-cell-map' by adding custom functions here.")

(custom-autoload 'table-cell-map-hook "table" t)

(defvar table-load-hook nil "\
*List of functions to be called after the table is first loaded.")

(custom-autoload 'table-load-hook "table" t)

(defvar table-point-entered-cell-hook nil "\
*List of functions to be called after point entered a table cell.")

(custom-autoload 'table-point-entered-cell-hook "table" t)

(defvar table-point-left-cell-hook nil "\
*List of functions to be called after point left a table cell.")

(custom-autoload 'table-point-left-cell-hook "table" t)

(autoload 'table-insert "table" "\
Insert an editable text table.
Insert a table of specified number of COLUMNS and ROWS.  Optional
parameter CELL-WIDTH and CELL-HEIGHT can specify the size of each
cell.  The cell size is uniform across the table if the specified size
is a number.  They can be a list of numbers to specify different size
for each cell.  When called interactively, the list of number is
entered by simply listing all the numbers with space characters
delimiting them.

Examples:

\\[table-insert] inserts a table at the current point location.

Suppose we have the following situation where `-!-' indicates the
location of point.

    -!-

Type \\[table-insert] and hit ENTER key.  As it asks table
specification, provide 3 for number of columns, 1 for number of rows,
5 for cell width and 1 for cell height.  Now you shall see the next
table and the point is automatically moved to the beginning of the
first cell.

    +-----+-----+-----+
    |-!-  |     |     |
    +-----+-----+-----+

Inside a table cell, there are special key bindings. \\<table-cell-map>

M-9 \\[table-widen-cell] (or \\[universal-argument] 9 \\[table-widen-cell]) widens the first cell by 9 character
width, which results as

    +--------------+-----+-----+
    |-!-           |     |     |
    +--------------+-----+-----+

Type TAB \\[table-widen-cell] then type TAB M-2 M-7 \\[table-widen-cell] (or \\[universal-argument] 2 7 \\[table-widen-cell]).  Typing
TAB moves the point forward by a cell. The result now looks like this:

    +--------------+------+--------------------------------+
    |              |      |-!-                             |
    +--------------+------+--------------------------------+

If you knew each width of the columns prior to the table creation,
what you could have done better was to have had given the complete
width information to `table-insert'.

Cell width(s): 14 6 32

instead of 

Cell width(s): 5

This would have eliminated the previously mentioned width adjustment
work all together.

If the point is in the last cell type S-TAB S-TAB to move it to the
first cell.  Now type \\[table-heighten-cell] which heighten the row by a line.

    +--------------+------+--------------------------------+
    |-!-           |      |                                |
    |              |      |                                |
    +--------------+------+--------------------------------+

Type \\[table-insert-row-column] and tell it to insert a row.

    +--------------+------+--------------------------------+
    |-!-           |      |                                |
    |              |      |                                |
    +--------------+------+--------------------------------+
    |              |      |                                |
    |              |      |                                |
    +--------------+------+--------------------------------+

Move the point under the table as shown below.

    +--------------+------+--------------------------------+
    |              |      |                                |
    |              |      |                                |
    +--------------+------+--------------------------------+
    |              |      |                                |
    |              |      |                                |
    +--------------+------+--------------------------------+
    -!-

Type M-x table-insert-row instead of \\[table-insert-row-column].  \\[table-insert-row-column] does not work
when the point is outside of the table.  This insertion at
outside of the table effectively appends a row at the end.

    +--------------+------+--------------------------------+
    |              |      |                                |
    |              |      |                                |
    +--------------+------+--------------------------------+
    |              |      |                                |
    |              |      |                                |
    +--------------+------+--------------------------------+
    |-!-           |      |                                |
    |              |      |                                |
    +--------------+------+--------------------------------+

Text editing inside the table cell produces reasonably expected
results.

    +--------------+------+--------------------------------+
    |              |      |                                |
    |              |      |                                |
    +--------------+------+--------------------------------+
    |              |      |Text editing inside the table   |
    |              |      |cell produces reasonably        |
    |              |      |expected results.-!-            |
    +--------------+------+--------------------------------+
    |              |      |                                |
    |              |      |                                |
    +--------------+------+--------------------------------+

Inside a table cell has a special keymap.

\\{table-cell-map}

\(fn COLUMNS ROWS &optional CELL-WIDTH CELL-HEIGHT)" t nil)

(autoload 'table-insert-row "table" "\
Insert N table row(s).
When point is in a table the newly inserted row(s) are placed above
the current row.  When point is outside of the table it must be below
the table within the table width range, then the newly created row(s)
are appended at the bottom of the table.

\(fn N)" t nil)

(autoload 'table-insert-column "table" "\
Insert N table column(s).
When point is in a table the newly inserted column(s) are placed left
of the current column.  When point is outside of the table it must be
right side of the table within the table height range, then the newly
created column(s) are appended at the right of the table.

\(fn N)" t nil)

(autoload 'table-insert-row-column "table" "\
Insert row(s) or column(s).
See `table-insert-row' and `table-insert-column'.

\(fn ROW-COLUMN N)" t nil)

(autoload 'table-recognize "table" "\
Recognize all tables within the current buffer and activate them.
Scans the entire buffer and recognizes valid table cells.  If the
optional numeric prefix argument ARG is negative the tables in the
buffer become inactive, meaning the tables become plain text and loses
all the table specific features.

\(fn &optional ARG)" t nil)

(autoload 'table-unrecognize "table" "\


\(fn)" t nil)

(autoload 'table-recognize-region "table" "\
Recognize all tables within region.
BEG and END specify the region to work on.  If the optional numeric
prefix argument ARG is negative the tables in the region become
inactive, meaning the tables become plain text and lose all the table
specific features.

\(fn BEG END &optional ARG)" t nil)

(autoload 'table-unrecognize-region "table" "\


\(fn BEG END)" t nil)

(autoload 'table-recognize-table "table" "\
Recognize a table at point.
If the optional numeric prefix argument ARG is negative the table
becomes inactive, meaning the table becomes plain text and loses all
the table specific features.

\(fn &optional ARG)" t nil)

(autoload 'table-unrecognize-table "table" "\


\(fn)" t nil)

(autoload 'table-recognize-cell "table" "\
Recognize a table cell that contains current point.
Probe the cell dimension and prepare the cell information.  The
optional two arguments FORCE and NO-COPY are for internal use only and
must not be specified.  When the optional numeric prefix argument ARG
is negative the cell becomes inactive, meaning that the cell becomes
plain text and loses all the table specific features.

\(fn &optional FORCE NO-COPY ARG)" t nil)

(autoload 'table-unrecognize-cell "table" "\


\(fn)" t nil)

(autoload 'table-heighten-cell "table" "\
Heighten the current cell by N lines by expanding the cell vertically.
Heightening is done by adding blank lines at the bottom of the current
cell.  Other cells aligned horizontally with the current one are also
heightened in order to keep the rectangular table structure.  The
optional argument NO-COPY is internal use only and must not be
specified.

\(fn N &optional NO-COPY NO-UPDATE)" t nil)

(autoload 'table-shorten-cell "table" "\
Shorten the current cell by N lines by shrinking the cell vertically.
Shortening is done by removing blank lines from the bottom of the cell
and possibly from the top of the cell as well.  Therefor, the cell
must have some bottom/top blank lines to be shorten effectively.  This
is applicable to all the cells aligned horizontally with the current
one because they are also shortened in order to keep the rectangular
table structure.

\(fn N)" t nil)

(autoload 'table-widen-cell "table" "\
Widen the current cell by N columns and expand the cell horizontally.
Some other cells in the same table are widen as well to keep the
table's rectangle structure.

\(fn N &optional NO-COPY NO-UPDATE)" t nil)

(autoload 'table-narrow-cell "table" "\
Narrow the current cell by N columns and shrink the cell horizontally.
Some other cells in the same table are narrowed as well to keep the
table's rectangle structure.

\(fn N)" t nil)

(autoload 'table-forward-cell "table" "\
Move point forward to the beginning of the next cell.
With argument ARG, do it ARG times;
a negative argument ARG = -N means move backward N cells.
Do not specify NO-RECOGNIZE and UNRECOGNIZE. They are for internal use only.

Sample Cell Traveling Order (In Irregular Table Cases)

You can actually try how it works in this buffer.  Press
\\[table-recognize] and go to cells in the following tables and press
\\[table-forward-cell] or TAB key.

+-----+--+  +--+-----+  +--+--+--+  +--+--+--+  +---------+  +--+---+--+
|0    |1 |  |0 |1    |  |0 |1 |2 |  |0 |1 |2 |  |0        |  |0 |1  |2 |
+--+--+  |  |  +--+--+  +--+  |  |  |  |  +--+  +----+----+  +--+-+-+--+
|2 |3 |  |  |  |2 |3 |  |3 +--+  |  |  +--+3 |  |1   |2   |  |3   |4   |
|  +--+--+  +--+--+  |  +--+4 |  |  |  |4 +--+  +--+-+-+--+  +----+----+
|  |4    |  |4    |  |  |5 |  |  |  |  |  |5 |  |3 |4  |5 |  |5        |
+--+-----+  +-----+--+  +--+--+--+  +--+--+--+  +--+---+--+  +---------+

+--+--+--+  +--+--+--+  +--+--+--+  +--+--+--+
|0 |1 |2 |  |0 |1 |2 |  |0 |1 |2 |  |0 |1 |2 |
|  |  |  |  |  +--+  |  |  |  |  |  +--+  +--+
+--+  +--+  +--+3 +--+  |  +--+  |  |3 +--+4 |
|3 |  |4 |  |4 +--+5 |  |  |3 |  |  +--+5 +--+
|  |  |  |  |  |6 |  |  |  |  |  |  |6 |  |7 |
+--+--+--+  +--+--+--+  +--+--+--+  +--+--+--+

+--+--+--+  +--+--+--+  +--+--+--+--+  +--+-----+--+  +--+--+--+--+
|0 |1 |2 |  |0 |1 |2 |	|0 |1 |2 |3 |  |0 |1    |2 |  |0 |1 |2 |3 |
|  +--+  |  |  +--+  |	|  +--+--+  |  |  |     |  |  |  +--+--+  |
|  |3 +--+  +--+3 |  |	+--+4    +--+  +--+     +--+  +--+4    +--+
+--+  |4 |  |4 |  +--+	|5 +--+--+6 |  |3 +--+--+4 |  |5 |     |6 |
|5 +--+  |  |  +--+5 |	|  |7 |8 |  |  |  |5 |6 |  |  |  |     |  |
|  |6 |  |  |  |6 |  |	+--+--+--+--+  +--+--+--+--+  +--+-----+--+
+--+--+--+  +--+--+--+

\(fn &optional ARG NO-RECOGNIZE UNRECOGNIZE)" t nil)

(autoload 'table-backward-cell "table" "\
Move backward to the beginning of the previous cell.
With argument ARG, do it ARG times;
a negative argument ARG = -N means move forward N cells.

\(fn &optional ARG)" t nil)

(autoload 'table-span-cell "table" "\
Span current cell into adjacent cell in DIRECTION.
DIRECTION is one of symbols; right, left, above or below.

\(fn DIRECTION)" t nil)

(autoload 'table-split-cell-vertically "table" "\
Split current cell vertically.
Creates a cell above and a cell below the current point location.

\(fn)" t nil)

(autoload 'table-split-cell-horizontally "table" "\
Split current cell horizontally.
Creates a cell on the left and a cell on the right of the current point location.

\(fn)" t nil)

(autoload 'table-split-cell "table" "\
Split current cell in ORIENTATION.
ORIENTATION is a symbol either horizontally or vertically.

\(fn ORIENTATION)" t nil)

(autoload 'table-justify "table" "\
Justify contents of a cell, a row of cells or a column of cells.
WHAT is a symbol 'cell, 'row or 'column.  JUSTIFY is a symbol 'left,
'center, 'right, 'top, 'middle, 'bottom or 'none.

\(fn WHAT JUSTIFY)" t nil)

(autoload 'table-justify-cell "table" "\
Justify cell contents.
JUSTIFY is a symbol 'left, 'center or 'right for horizontal, or 'top,
'middle, 'bottom or 'none for vertical.  When optional PARAGRAPH is
non-nil the justify operation is limited to the current paragraph,
otherwise the entire cell contents is justified.

\(fn JUSTIFY &optional PARAGRAPH)" t nil)

(autoload 'table-justify-row "table" "\
Justify cells of a row.
JUSTIFY is a symbol 'left, 'center or 'right for horizontal, or top,
'middle, 'bottom or 'none for vertical.

\(fn JUSTIFY)" t nil)

(autoload 'table-justify-column "table" "\
Justify cells of a column.
JUSTIFY is a symbol 'left, 'center or 'right for horizontal, or top,
'middle, 'bottom or 'none for vertical.

\(fn JUSTIFY)" t nil)

(autoload 'table-fixed-width-mode "table" "\
Toggle fixing width mode.
In the fixed width mode, typing inside a cell never changes the cell
width where in the normal mode the cell width expands automatically in
order to prevent a word being folded into multiple lines.

\(fn &optional ARG)" t nil)

(autoload 'table-query-dimension "table" "\
Return the dimension of the current cell and the current table.
The result is a list (cw ch tw th c r cells) where cw is the cell
width, ch is the cell height, tw is the table width, th is the table
height, c is the number of columns, r is the number of rows and cells
is the total number of cells.  The cell dimension excludes the cell
frame while the table dimension includes the table frame.  The columns
and the rows are counted by the number of cell boundaries.  Therefore
the number tends to be larger than it appears for the tables with
non-uniform cell structure (heavily spanned and split).  When optional
WHERE is provided the cell and table at that location is reported.

\(fn &optional WHERE)" t nil)

(autoload 'table-generate-source "table" "\
Generate source of the current table in the specified language.
LANGUAGE is a symbol that specifies the language to describe the
structure of the table.  It must be either 'html, 'latex, 'tei or
'cals.  The resulted source text is inserted into DEST-BUFFER and the
buffer object is returned.  When DEST-BUFFER is omitted or nil the
default buffer specified in `table-dest-buffer-name' is used.  In this
case the content of the default buffer is erased prior to the
generation.  When DEST-BUFFER is non-nil it is expected to be either a
destination buffer or a name of the destination buffer.  In this case
the generated result is inserted at the current point in the
destination buffer and the previously existing contents in the buffer
are untouched.

References used for this implementation:

HTML:
        http://www.w3.org

LaTeX:
        http://www.maths.tcd.ie/~dwilkins/LaTeXPrimer/Tables.html

TEI (Text Encoding Initiative XML/SGML DTD):
        http://www.hcu.ox.ac.uk/TEI/Guidelines/ (general) 
        http://www.hcu.ox.ac.uk/TEI/Guidelines/FT.htm#FTTAB (tables)

CALS (DocBook DTD):
        http://www.oasis-open.org/html/a502.htm
        http://www.oreilly.com/catalog/docbook/chapter/book/table.html#AEN114751

\(fn LANGUAGE &optional DEST-BUFFER CAPTION)" t nil)

(autoload 'table-insert-sequence "table" "\
Travel cells forward while inserting a specified sequence string in each cell.
STR is the base string from which the sequence starts.  When STR is an
empty string then each cell content is erased.  When STR ends with
numerical characters (they may optionally be surrounded by a pair of
parentheses) they are incremented as a decimal number.  Otherwise the
last character in STR is incremented in ASCII code order.  N is the
number of sequence elements to insert.  When N is negative the cell
traveling direction is backward.  When N is zero it travels forward
entire table.  INCREMENT is the increment between adjacent sequence
elements and can be a negative number for effectively decrementing.
INTERVAL is the number of cells to travel between sequence element
insertion which is normally 1.  When zero or less is given for
INTERVAL it is interpreted as number of cells per row so that sequence
is placed straight down vertically as long as the table's cell
structure is uniform.  JUSTIFY is one of the symbol 'left, 'center or
'right, that specifies justification of the inserted string.

Example:

  (progn
    (table-insert 16 3 5 1)
    (table-forward-cell 15)
    (table-insert-sequence \"D0\" -16 1 1 'center)
    (table-forward-cell 16)
    (table-insert-sequence \"A[0]\" -16 1 1 'center)
    (table-forward-cell 1)
    (table-insert-sequence \"-\" 16 0 1 'center))

  (progn
    (table-insert 16 8 5 1)
    (table-insert-sequence \"@\" 0 1 2 'right)
    (table-forward-cell 1)
    (table-insert-sequence \"64\" 0 1 2 'left))

\(fn STR N INCREMENT INTERVAL JUSTIFY)" t nil)

(autoload 'table-delete-row "table" "\
Delete N row(s) of cells.
Delete N rows of cells from current row.  The current row is the row
contains the current cell where point is located.  Each row must
consists from cells of same height.

\(fn N)" t nil)

(autoload 'table-delete-column "table" "\
Delete N column(s) of cells.
Delete N columns of cells from current column.  The current column is
the column contains the current cell where point is located.  Each
column must consists from cells of same width.

\(fn N)" t nil)

(autoload 'table-capture "table" "\
Convert plain text into a table by capturing the text in the region.
Create a table with the text in region as cell contents.  BEG and END
specify the region.  The text in the region is replaced with a table.
The removed text is inserted in the table.  When optional
COL-DELIM-REGEXP and ROW-DELIM-REGEXP are provided the region contents
is parsed and separated into individual cell contents by using the
delimiter regular expressions.  This parsing determines the number of
columns and rows of the table automatically.  If COL-DELIM-REGEXP and
ROW-DELIM-REGEXP are omitted the result table has only one cell and
the entire region contents is placed in that cell.  Optional JUSTIFY
is one of 'left, 'center or 'right, which specifies the cell
justification.  Optional MIN-CELL-WIDTH specifies the minimum cell
width.  Optional COLUMNS specify the number of columns when
ROW-DELIM-REGEXP is not specified.


Example 1:

1, 2, 3, 4
5, 6, 7, 8
, 9, 10

Running `table-capture' on above 3 line region with COL-DELIM-REGEXP
\",\" and ROW-DELIM-REGEXP \"\\n\" creates the following table.  In
this example the cells are centered and minimum cell width is
specified as 5.

+-----+-----+-----+-----+
|  1  |  2  |  3  |  4  |
+-----+-----+-----+-----+
|  5  |  6  |  7  |  8  |
+-----+-----+-----+-----+
|     |  9  | 10  |     |
+-----+-----+-----+-----+

Note:

In case the function is called interactively user must use \\[quoted-insert] `quoted-insert'
in order to enter \"\\n\" successfully.  COL-DELIM-REGEXP at the end
of each row is optional.


Example 2:

This example shows how a table can be used for text layout editing.
Let `table-capture' capture the following region starting from
-!- and ending at -*-, that contains three paragraphs and two item
name headers.  This time specify empty string for both
COL-DELIM-REGEXP and ROW-DELIM-REGEXP.

-!-`table-capture' is a powerful command however mastering its power
requires some practice.  Here is a list of items what it can do.

Parse Cell Items      By using column delimiter regular
		      expression and raw delimiter regular
		      expression, it parses the specified text
		      area and extracts cell items from
		      non-table text and then forms a table out
		      of them.

Capture Text Area     When no delimiters are specified it
		      creates a single cell table.  The text in
		      the specified region is placed in that
		      cell.-*-

Now the entire content is captured in a cell which is itself a table
like this.

+-----------------------------------------------------------------+
|`table-capture' is a powerful command however mastering its power|
|requires some practice.  Here is a list of items what it can do. |
|                                                                 |
|Parse Cell Items      By using column delimiter regular          |
|                      expression and raw delimiter regular       |
|                      expression, it parses the specified text   |
|                      area and extracts cell items from          |
|                      non-table text and then forms a table out  |
|                      of them.                                   |
|                                                                 |
|Capture Text Area     When no delimiters are specified it        |
|                      creates a single cell table.  The text in  |
|                      the specified region is placed in that     |
|                      cell.                                      |
+-----------------------------------------------------------------+

By splitting the cell appropriately we now have a table consisting of
paragraphs occupying its own cell.  Each cell can now be edited
independently.

+-----------------------------------------------------------------+
|`table-capture' is a powerful command however mastering its power|
|requires some practice.  Here is a list of items what it can do. |
+---------------------+-------------------------------------------+
|Parse Cell Items     |By using column delimiter regular          |
|                     |expression and raw delimiter regular       |
|                     |expression, it parses the specified text   |
|                     |area and extracts cell items from          |
|                     |non-table text and then forms a table out  |
|                     |of them.                                   |
+---------------------+-------------------------------------------+
|Capture Text Area    |When no delimiters are specified it        |
|                     |creates a single cell table.  The text in  |
|                     |the specified region is placed in that     |
|                     |cell.                                      |
+---------------------+-------------------------------------------+

By applying `table-release', which does the opposite process, the
contents become once again plain text.  `table-release' works as
companion command to `table-capture' this way.

\(fn BEG END &optional COL-DELIM-REGEXP ROW-DELIM-REGEXP JUSTIFY MIN-CELL-WIDTH COLUMNS)" t nil)

(autoload 'table-release "table" "\
Convert a table into plain text by removing the frame from a table.
Remove the frame from a table and inactivate the table.  This command
converts a table into plain text without frames.  It is a companion to
`table-capture' which does the opposite process.

\(fn)" t nil)

(autoload 'table-version "table" "\
Show version number of table package.

\(fn)" t nil)

(autoload 'table--point-in-cell-p "table" "\
Return t when point is in a valid table cell in the current buffer.
When optional LOCATION is provided the test is performed at that location.

\(fn &optional LOCATION)" nil nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; table-autoloads.el ends here

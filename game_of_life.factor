USING: kernel math math.vectors sequences arrays prettyprint ;

! Define grid size
CONSTANT: grid-size 10

! Create empty grid
: empty-grid ( -- grid )
    grid-size dup [ f <array> ] replicate ;

! Check if coordinates are within grid bounds
: in-bounds? ( x y -- ? )
    [ 0 >= swap grid-size < and ] bi@ and ;

! Get cell state (alive/dead)
: cell-state ( grid x y -- state )
    in-bounds? [ swap nth nth ] [ drop drop f ] if ;

! Count live neighbors around a cell
: count-neighbors ( grid x y -- count )
    -1 1 [a,b] dup cartesian-product
    [ { 0 0 } = not ] filter
    [ [ v+ ] dip ] curry map
    [ first2 cell-state ] with map
    [ ] count ;

! Determine next state of a cell
: next-cell-state ( grid x y -- state )
    2dup cell-state
    -rot count-neighbors
    [ dup 3 = swap [ 2 = ] dip and or ] keep ;

! Compute next grid generation
: next-generation ( grid -- new-grid )
    grid-size [0,b) dup cartesian-product
    [ [ first2 ] keep next-cell-state ] curry map
    grid-size group ;

! Pretty-print the grid
: .grid ( grid -- )
    [ [ [ "*" "." ? ] map "" join print ] each ] call ;

! Example starting pattern (Glider)
: glider ( -- grid )
    empty-grid
    { {1 2} {2 3} {3 1} {3 2} {3 3} }
    [ dup first2 swap nth set-nth ] each ;

! Run Game of Life for N generations
: life ( grid n -- )
    [ dup .grid nl next-generation ] times drop ;

! Run example (Glider for 5 generations)
glider 5 life


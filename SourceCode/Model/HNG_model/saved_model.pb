љд/
хє
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ф
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
џ
TensorListReserve
element_shape"
shape_type
num_elements#
handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ВИ-
z
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_36/kernel
s
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel*
_output_shapes

:
*
dtype0
r
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_36/bias
k
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Ќ
lstm_108/lstm_cell_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_108/lstm_cell_108/kernel
љ
1lstm_108/lstm_cell_108/kernel/Read/ReadVariableOpReadVariableOplstm_108/lstm_cell_108/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_108/lstm_cell_108/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_108/lstm_cell_108/recurrent_kernel
ц
;lstm_108/lstm_cell_108/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_108/lstm_cell_108/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_108/lstm_cell_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_108/lstm_cell_108/bias
ѕ
/lstm_108/lstm_cell_108/bias/Read/ReadVariableOpReadVariableOplstm_108/lstm_cell_108/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_109/lstm_cell_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_109/lstm_cell_109/kernel
љ
1lstm_109/lstm_cell_109/kernel/Read/ReadVariableOpReadVariableOplstm_109/lstm_cell_109/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_109/lstm_cell_109/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_109/lstm_cell_109/recurrent_kernel
ц
;lstm_109/lstm_cell_109/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_109/lstm_cell_109/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_109/lstm_cell_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_109/lstm_cell_109/bias
ѕ
/lstm_109/lstm_cell_109/bias/Read/ReadVariableOpReadVariableOplstm_109/lstm_cell_109/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_110/lstm_cell_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_110/lstm_cell_110/kernel
Ј
1lstm_110/lstm_cell_110/kernel/Read/ReadVariableOpReadVariableOplstm_110/lstm_cell_110/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_110/lstm_cell_110/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_110/lstm_cell_110/recurrent_kernel
Б
;lstm_110/lstm_cell_110/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_110/lstm_cell_110/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_110/lstm_cell_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_110/lstm_cell_110/bias
Є
/lstm_110/lstm_cell_110/bias/Read/ReadVariableOpReadVariableOplstm_110/lstm_cell_110/bias*
_output_shapes
:(*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
ѕ
Adam/dense_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_36/kernel/m
Ђ
*Adam/dense_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/m*
_output_shapes

:
*
dtype0
ђ
Adam/dense_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_36/bias/m
y
(Adam/dense_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_108/lstm_cell_108/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_108/lstm_cell_108/kernel/m
ъ
8Adam/lstm_108/lstm_cell_108/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_108/lstm_cell_108/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_108/lstm_cell_108/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_108/lstm_cell_108/recurrent_kernel/m
▓
BAdam/lstm_108/lstm_cell_108/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_108/lstm_cell_108/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_108/lstm_cell_108/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_108/lstm_cell_108/bias/m
ќ
6Adam/lstm_108/lstm_cell_108/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_108/lstm_cell_108/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_109/lstm_cell_109/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_109/lstm_cell_109/kernel/m
ъ
8Adam/lstm_109/lstm_cell_109/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_109/lstm_cell_109/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_109/lstm_cell_109/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_109/lstm_cell_109/recurrent_kernel/m
▓
BAdam/lstm_109/lstm_cell_109/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_109/lstm_cell_109/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_109/lstm_cell_109/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_109/lstm_cell_109/bias/m
ќ
6Adam/lstm_109/lstm_cell_109/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_109/lstm_cell_109/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_110/lstm_cell_110/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_110/lstm_cell_110/kernel/m
Ю
8Adam/lstm_110/lstm_cell_110/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_110/lstm_cell_110/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_110/lstm_cell_110/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_110/lstm_cell_110/recurrent_kernel/m
▒
BAdam/lstm_110/lstm_cell_110/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_110/lstm_cell_110/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_110/lstm_cell_110/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_110/lstm_cell_110/bias/m
Ћ
6Adam/lstm_110/lstm_cell_110/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_110/lstm_cell_110/bias/m*
_output_shapes
:(*
dtype0
ѕ
Adam/dense_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_36/kernel/v
Ђ
*Adam/dense_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/v*
_output_shapes

:
*
dtype0
ђ
Adam/dense_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_36/bias/v
y
(Adam/dense_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_108/lstm_cell_108/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_108/lstm_cell_108/kernel/v
ъ
8Adam/lstm_108/lstm_cell_108/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_108/lstm_cell_108/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_108/lstm_cell_108/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_108/lstm_cell_108/recurrent_kernel/v
▓
BAdam/lstm_108/lstm_cell_108/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_108/lstm_cell_108/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_108/lstm_cell_108/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_108/lstm_cell_108/bias/v
ќ
6Adam/lstm_108/lstm_cell_108/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_108/lstm_cell_108/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_109/lstm_cell_109/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_109/lstm_cell_109/kernel/v
ъ
8Adam/lstm_109/lstm_cell_109/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_109/lstm_cell_109/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_109/lstm_cell_109/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_109/lstm_cell_109/recurrent_kernel/v
▓
BAdam/lstm_109/lstm_cell_109/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_109/lstm_cell_109/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_109/lstm_cell_109/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_109/lstm_cell_109/bias/v
ќ
6Adam/lstm_109/lstm_cell_109/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_109/lstm_cell_109/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_110/lstm_cell_110/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_110/lstm_cell_110/kernel/v
Ю
8Adam/lstm_110/lstm_cell_110/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_110/lstm_cell_110/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_110/lstm_cell_110/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_110/lstm_cell_110/recurrent_kernel/v
▒
BAdam/lstm_110/lstm_cell_110/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_110/lstm_cell_110/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_110/lstm_cell_110/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_110/lstm_cell_110/bias/v
Ћ
6Adam/lstm_110/lstm_cell_110/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_110/lstm_cell_110/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
▀A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*џA
valueљABЇA BєA
▓
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
Љ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Љ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Љ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
Ї

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
ћ
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3mђ4mЂ5mѓ!vЃ"vё-vЁ.vє/vЄ0vѕ1vЅ2vі3vІ4vї5vЇ
 
 
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
 
Г
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
│
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
 
 

-0
.1
/2

-0
.1
/2
 
╣

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
│
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
 
 

00
11
22

00
11
22
 
╣

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
│
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
 
 

30
41
52

30
41
52
 
╣

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_36/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_36/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
Г
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_108/lstm_cell_108/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_108/lstm_cell_108/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_108/lstm_cell_108/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_109/lstm_cell_109/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_109/lstm_cell_109/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_109/lstm_cell_109/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_110/lstm_cell_110/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_110/lstm_cell_110/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_110/lstm_cell_110/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

d0
 
 
 
 

-0
.1
/2

-0
.1
/2
 
Г
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
 
 

0
 
 
 
 
 

00
11
22

00
11
22
 
Г
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 
 

0
 
 
 
 
 

30
41
52

30
41
52
 
Г
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ttotal
	ucount
v	variables
w	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

t0
u1

v	variables
~|
VARIABLE_VALUEAdam/dense_36/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_36/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_108/lstm_cell_108/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_108/lstm_cell_108/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_108/lstm_cell_108/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_109/lstm_cell_109/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_109/lstm_cell_109/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_109/lstm_cell_109/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_110/lstm_cell_110/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_110/lstm_cell_110/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_110/lstm_cell_110/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_36/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_36/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_108/lstm_cell_108/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_108/lstm_cell_108/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_108/lstm_cell_108/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_109/lstm_cell_109/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_109/lstm_cell_109/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_109/lstm_cell_109/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_110/lstm_cell_110/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_110/lstm_cell_110/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_110/lstm_cell_110/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_108_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_108_inputlstm_108/lstm_cell_108/kernel'lstm_108/lstm_cell_108/recurrent_kernellstm_108/lstm_cell_108/biaslstm_109/lstm_cell_109/kernel'lstm_109/lstm_cell_109/recurrent_kernellstm_109/lstm_cell_109/biaslstm_110/lstm_cell_110/kernel'lstm_110/lstm_cell_110/recurrent_kernellstm_110/lstm_cell_110/biasdense_36/kerneldense_36/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *.
f)R'
%__inference_signature_wrapper_1193296
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Й
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_108/lstm_cell_108/kernel/Read/ReadVariableOp;lstm_108/lstm_cell_108/recurrent_kernel/Read/ReadVariableOp/lstm_108/lstm_cell_108/bias/Read/ReadVariableOp1lstm_109/lstm_cell_109/kernel/Read/ReadVariableOp;lstm_109/lstm_cell_109/recurrent_kernel/Read/ReadVariableOp/lstm_109/lstm_cell_109/bias/Read/ReadVariableOp1lstm_110/lstm_cell_110/kernel/Read/ReadVariableOp;lstm_110/lstm_cell_110/recurrent_kernel/Read/ReadVariableOp/lstm_110/lstm_cell_110/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_36/kernel/m/Read/ReadVariableOp(Adam/dense_36/bias/m/Read/ReadVariableOp8Adam/lstm_108/lstm_cell_108/kernel/m/Read/ReadVariableOpBAdam/lstm_108/lstm_cell_108/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_108/lstm_cell_108/bias/m/Read/ReadVariableOp8Adam/lstm_109/lstm_cell_109/kernel/m/Read/ReadVariableOpBAdam/lstm_109/lstm_cell_109/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_109/lstm_cell_109/bias/m/Read/ReadVariableOp8Adam/lstm_110/lstm_cell_110/kernel/m/Read/ReadVariableOpBAdam/lstm_110/lstm_cell_110/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_110/lstm_cell_110/bias/m/Read/ReadVariableOp*Adam/dense_36/kernel/v/Read/ReadVariableOp(Adam/dense_36/bias/v/Read/ReadVariableOp8Adam/lstm_108/lstm_cell_108/kernel/v/Read/ReadVariableOpBAdam/lstm_108/lstm_cell_108/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_108/lstm_cell_108/bias/v/Read/ReadVariableOp8Adam/lstm_109/lstm_cell_109/kernel/v/Read/ReadVariableOpBAdam/lstm_109/lstm_cell_109/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_109/lstm_cell_109/bias/v/Read/ReadVariableOp8Adam/lstm_110/lstm_cell_110/kernel/v/Read/ReadVariableOpBAdam/lstm_110/lstm_cell_110/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_110/lstm_cell_110/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__traced_save_1196508
Ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_36/kerneldense_36/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_108/lstm_cell_108/kernel'lstm_108/lstm_cell_108/recurrent_kernellstm_108/lstm_cell_108/biaslstm_109/lstm_cell_109/kernel'lstm_109/lstm_cell_109/recurrent_kernellstm_109/lstm_cell_109/biaslstm_110/lstm_cell_110/kernel'lstm_110/lstm_cell_110/recurrent_kernellstm_110/lstm_cell_110/biastotalcountAdam/dense_36/kernel/mAdam/dense_36/bias/m$Adam/lstm_108/lstm_cell_108/kernel/m.Adam/lstm_108/lstm_cell_108/recurrent_kernel/m"Adam/lstm_108/lstm_cell_108/bias/m$Adam/lstm_109/lstm_cell_109/kernel/m.Adam/lstm_109/lstm_cell_109/recurrent_kernel/m"Adam/lstm_109/lstm_cell_109/bias/m$Adam/lstm_110/lstm_cell_110/kernel/m.Adam/lstm_110/lstm_cell_110/recurrent_kernel/m"Adam/lstm_110/lstm_cell_110/bias/mAdam/dense_36/kernel/vAdam/dense_36/bias/v$Adam/lstm_108/lstm_cell_108/kernel/v.Adam/lstm_108/lstm_cell_108/recurrent_kernel/v"Adam/lstm_108/lstm_cell_108/bias/v$Adam/lstm_109/lstm_cell_109/kernel/v.Adam/lstm_109/lstm_cell_109/recurrent_kernel/v"Adam/lstm_109/lstm_cell_109/bias/v$Adam/lstm_110/lstm_cell_110/kernel/v.Adam/lstm_110/lstm_cell_110/recurrent_kernel/v"Adam/lstm_110/lstm_cell_110/bias/v*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference__traced_restore_1196638Ћш+
и

Ч
lstm_109_while_cond_1193974.
*lstm_109_while_lstm_109_while_loop_counter4
0lstm_109_while_lstm_109_while_maximum_iterations
lstm_109_while_placeholder 
lstm_109_while_placeholder_1 
lstm_109_while_placeholder_2 
lstm_109_while_placeholder_30
,lstm_109_while_less_lstm_109_strided_slice_1G
Clstm_109_while_lstm_109_while_cond_1193974___redundant_placeholder0G
Clstm_109_while_lstm_109_while_cond_1193974___redundant_placeholder1G
Clstm_109_while_lstm_109_while_cond_1193974___redundant_placeholder2G
Clstm_109_while_lstm_109_while_cond_1193974___redundant_placeholder3
lstm_109_while_identity
є
lstm_109/while/LessLesslstm_109_while_placeholder,lstm_109_while_less_lstm_109_strided_slice_1*
T0*
_output_shapes
: ]
lstm_109/while/IdentityIdentitylstm_109/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_109_while_identity lstm_109/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
жЂ
ќ
J__inference_sequential_36_layer_call_and_return_conditional_losses_1194204

inputsH
5lstm_108_lstm_cell_195_matmul_readvariableop_resource:	љJ
7lstm_108_lstm_cell_195_matmul_1_readvariableop_resource:	dљE
6lstm_108_lstm_cell_195_biasadd_readvariableop_resource:	љH
5lstm_109_lstm_cell_196_matmul_readvariableop_resource:	d╚J
7lstm_109_lstm_cell_196_matmul_1_readvariableop_resource:	2╚E
6lstm_109_lstm_cell_196_biasadd_readvariableop_resource:	╚G
5lstm_110_lstm_cell_197_matmul_readvariableop_resource:2(I
7lstm_110_lstm_cell_197_matmul_1_readvariableop_resource:
(D
6lstm_110_lstm_cell_197_biasadd_readvariableop_resource:(9
'dense_36_matmul_readvariableop_resource:
6
(dense_36_biasadd_readvariableop_resource:
identityѕбdense_36/BiasAdd/ReadVariableOpбdense_36/MatMul/ReadVariableOpб-lstm_108/lstm_cell_195/BiasAdd/ReadVariableOpб,lstm_108/lstm_cell_195/MatMul/ReadVariableOpб.lstm_108/lstm_cell_195/MatMul_1/ReadVariableOpбlstm_108/whileб-lstm_109/lstm_cell_196/BiasAdd/ReadVariableOpб,lstm_109/lstm_cell_196/MatMul/ReadVariableOpб.lstm_109/lstm_cell_196/MatMul_1/ReadVariableOpбlstm_109/whileб-lstm_110/lstm_cell_197/BiasAdd/ReadVariableOpб,lstm_110/lstm_cell_197/MatMul/ReadVariableOpб.lstm_110/lstm_cell_197/MatMul_1/ReadVariableOpбlstm_110/whileD
lstm_108/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_108/strided_sliceStridedSlicelstm_108/Shape:output:0%lstm_108/strided_slice/stack:output:0'lstm_108/strided_slice/stack_1:output:0'lstm_108/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_108/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_108/zeros/packedPacklstm_108/strided_slice:output:0 lstm_108/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_108/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_108/zerosFilllstm_108/zeros/packed:output:0lstm_108/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_108/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_108/zeros_1/packedPacklstm_108/strided_slice:output:0"lstm_108/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_108/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_108/zeros_1Fill lstm_108/zeros_1/packed:output:0lstm_108/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_108/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_108/transpose	Transposeinputs lstm_108/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_108/Shape_1Shapelstm_108/transpose:y:0*
T0*
_output_shapes
:h
lstm_108/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_108/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_108/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_108/strided_slice_1StridedSlicelstm_108/Shape_1:output:0'lstm_108/strided_slice_1/stack:output:0)lstm_108/strided_slice_1/stack_1:output:0)lstm_108/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_108/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_108/TensorArrayV2TensorListReserve-lstm_108/TensorArrayV2/element_shape:output:0!lstm_108/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_108/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_108/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_108/transpose:y:0Glstm_108/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_108/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_108/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_108/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_108/strided_slice_2StridedSlicelstm_108/transpose:y:0'lstm_108/strided_slice_2/stack:output:0)lstm_108/strided_slice_2/stack_1:output:0)lstm_108/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_108/lstm_cell_195/MatMul/ReadVariableOpReadVariableOp5lstm_108_lstm_cell_195_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_108/lstm_cell_195/MatMulMatMul!lstm_108/strided_slice_2:output:04lstm_108/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_108/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp7lstm_108_lstm_cell_195_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_108/lstm_cell_195/MatMul_1MatMullstm_108/zeros:output:06lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_108/lstm_cell_195/addAddV2'lstm_108/lstm_cell_195/MatMul:product:0)lstm_108/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_108/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp6lstm_108_lstm_cell_195_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_108/lstm_cell_195/BiasAddBiasAddlstm_108/lstm_cell_195/add:z:05lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_108/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_108/lstm_cell_195/splitSplit/lstm_108/lstm_cell_195/split/split_dim:output:0'lstm_108/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_108/lstm_cell_195/SigmoidSigmoid%lstm_108/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_108/lstm_cell_195/Sigmoid_1Sigmoid%lstm_108/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_108/lstm_cell_195/mulMul$lstm_108/lstm_cell_195/Sigmoid_1:y:0lstm_108/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_108/lstm_cell_195/ReluRelu%lstm_108/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dц
lstm_108/lstm_cell_195/mul_1Mul"lstm_108/lstm_cell_195/Sigmoid:y:0)lstm_108/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_108/lstm_cell_195/add_1AddV2lstm_108/lstm_cell_195/mul:z:0 lstm_108/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_108/lstm_cell_195/Sigmoid_2Sigmoid%lstm_108/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dy
lstm_108/lstm_cell_195/Relu_1Relu lstm_108/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_108/lstm_cell_195/mul_2Mul$lstm_108/lstm_cell_195/Sigmoid_2:y:0+lstm_108/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_108/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_108/TensorArrayV2_1TensorListReserve/lstm_108/TensorArrayV2_1/element_shape:output:0!lstm_108/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_108/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_108/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_108/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_108/whileWhile$lstm_108/while/loop_counter:output:0*lstm_108/while/maximum_iterations:output:0lstm_108/time:output:0!lstm_108/TensorArrayV2_1:handle:0lstm_108/zeros:output:0lstm_108/zeros_1:output:0!lstm_108/strided_slice_1:output:0@lstm_108/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_108_lstm_cell_195_matmul_readvariableop_resource7lstm_108_lstm_cell_195_matmul_1_readvariableop_resource6lstm_108_lstm_cell_195_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_108_while_body_1193836*'
condR
lstm_108_while_cond_1193835*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_108/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_108/TensorArrayV2Stack/TensorListStackTensorListStacklstm_108/while:output:3Blstm_108/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_108/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_108/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_108/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_108/strided_slice_3StridedSlice4lstm_108/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_108/strided_slice_3/stack:output:0)lstm_108/strided_slice_3/stack_1:output:0)lstm_108/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_108/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_108/transpose_1	Transpose4lstm_108/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_108/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_108/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_109/ShapeShapelstm_108/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_109/strided_sliceStridedSlicelstm_109/Shape:output:0%lstm_109/strided_slice/stack:output:0'lstm_109/strided_slice/stack_1:output:0'lstm_109/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_109/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_109/zeros/packedPacklstm_109/strided_slice:output:0 lstm_109/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_109/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_109/zerosFilllstm_109/zeros/packed:output:0lstm_109/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_109/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_109/zeros_1/packedPacklstm_109/strided_slice:output:0"lstm_109/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_109/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_109/zeros_1Fill lstm_109/zeros_1/packed:output:0lstm_109/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_109/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_109/transpose	Transposelstm_108/transpose_1:y:0 lstm_109/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_109/Shape_1Shapelstm_109/transpose:y:0*
T0*
_output_shapes
:h
lstm_109/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_109/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_109/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_109/strided_slice_1StridedSlicelstm_109/Shape_1:output:0'lstm_109/strided_slice_1/stack:output:0)lstm_109/strided_slice_1/stack_1:output:0)lstm_109/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_109/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_109/TensorArrayV2TensorListReserve-lstm_109/TensorArrayV2/element_shape:output:0!lstm_109/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_109/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_109/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_109/transpose:y:0Glstm_109/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_109/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_109/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_109/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_109/strided_slice_2StridedSlicelstm_109/transpose:y:0'lstm_109/strided_slice_2/stack:output:0)lstm_109/strided_slice_2/stack_1:output:0)lstm_109/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_109/lstm_cell_196/MatMul/ReadVariableOpReadVariableOp5lstm_109_lstm_cell_196_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_109/lstm_cell_196/MatMulMatMul!lstm_109/strided_slice_2:output:04lstm_109/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_109/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp7lstm_109_lstm_cell_196_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_109/lstm_cell_196/MatMul_1MatMullstm_109/zeros:output:06lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_109/lstm_cell_196/addAddV2'lstm_109/lstm_cell_196/MatMul:product:0)lstm_109/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_109/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp6lstm_109_lstm_cell_196_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_109/lstm_cell_196/BiasAddBiasAddlstm_109/lstm_cell_196/add:z:05lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_109/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_109/lstm_cell_196/splitSplit/lstm_109/lstm_cell_196/split/split_dim:output:0'lstm_109/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_109/lstm_cell_196/SigmoidSigmoid%lstm_109/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_109/lstm_cell_196/Sigmoid_1Sigmoid%lstm_109/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_109/lstm_cell_196/mulMul$lstm_109/lstm_cell_196/Sigmoid_1:y:0lstm_109/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_109/lstm_cell_196/ReluRelu%lstm_109/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_109/lstm_cell_196/mul_1Mul"lstm_109/lstm_cell_196/Sigmoid:y:0)lstm_109/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_109/lstm_cell_196/add_1AddV2lstm_109/lstm_cell_196/mul:z:0 lstm_109/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_109/lstm_cell_196/Sigmoid_2Sigmoid%lstm_109/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2y
lstm_109/lstm_cell_196/Relu_1Relu lstm_109/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_109/lstm_cell_196/mul_2Mul$lstm_109/lstm_cell_196/Sigmoid_2:y:0+lstm_109/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_109/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_109/TensorArrayV2_1TensorListReserve/lstm_109/TensorArrayV2_1/element_shape:output:0!lstm_109/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_109/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_109/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_109/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_109/whileWhile$lstm_109/while/loop_counter:output:0*lstm_109/while/maximum_iterations:output:0lstm_109/time:output:0!lstm_109/TensorArrayV2_1:handle:0lstm_109/zeros:output:0lstm_109/zeros_1:output:0!lstm_109/strided_slice_1:output:0@lstm_109/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_109_lstm_cell_196_matmul_readvariableop_resource7lstm_109_lstm_cell_196_matmul_1_readvariableop_resource6lstm_109_lstm_cell_196_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_109_while_body_1193975*'
condR
lstm_109_while_cond_1193974*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_109/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_109/TensorArrayV2Stack/TensorListStackTensorListStacklstm_109/while:output:3Blstm_109/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_109/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_109/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_109/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_109/strided_slice_3StridedSlice4lstm_109/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_109/strided_slice_3/stack:output:0)lstm_109/strided_slice_3/stack_1:output:0)lstm_109/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_109/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_109/transpose_1	Transpose4lstm_109/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_109/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_109/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_110/ShapeShapelstm_109/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_110/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_110/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_110/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_110/strided_sliceStridedSlicelstm_110/Shape:output:0%lstm_110/strided_slice/stack:output:0'lstm_110/strided_slice/stack_1:output:0'lstm_110/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_110/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_110/zeros/packedPacklstm_110/strided_slice:output:0 lstm_110/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_110/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_110/zerosFilllstm_110/zeros/packed:output:0lstm_110/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_110/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_110/zeros_1/packedPacklstm_110/strided_slice:output:0"lstm_110/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_110/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_110/zeros_1Fill lstm_110/zeros_1/packed:output:0lstm_110/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_110/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_110/transpose	Transposelstm_109/transpose_1:y:0 lstm_110/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_110/Shape_1Shapelstm_110/transpose:y:0*
T0*
_output_shapes
:h
lstm_110/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_110/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_110/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_110/strided_slice_1StridedSlicelstm_110/Shape_1:output:0'lstm_110/strided_slice_1/stack:output:0)lstm_110/strided_slice_1/stack_1:output:0)lstm_110/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_110/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_110/TensorArrayV2TensorListReserve-lstm_110/TensorArrayV2/element_shape:output:0!lstm_110/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_110/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_110/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_110/transpose:y:0Glstm_110/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_110/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_110/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_110/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_110/strided_slice_2StridedSlicelstm_110/transpose:y:0'lstm_110/strided_slice_2/stack:output:0)lstm_110/strided_slice_2/stack_1:output:0)lstm_110/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_110/lstm_cell_197/MatMul/ReadVariableOpReadVariableOp5lstm_110_lstm_cell_197_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_110/lstm_cell_197/MatMulMatMul!lstm_110/strided_slice_2:output:04lstm_110/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_110/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp7lstm_110_lstm_cell_197_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_110/lstm_cell_197/MatMul_1MatMullstm_110/zeros:output:06lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_110/lstm_cell_197/addAddV2'lstm_110/lstm_cell_197/MatMul:product:0)lstm_110/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_110/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp6lstm_110_lstm_cell_197_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_110/lstm_cell_197/BiasAddBiasAddlstm_110/lstm_cell_197/add:z:05lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_110/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_110/lstm_cell_197/splitSplit/lstm_110/lstm_cell_197/split/split_dim:output:0'lstm_110/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_110/lstm_cell_197/SigmoidSigmoid%lstm_110/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_110/lstm_cell_197/Sigmoid_1Sigmoid%lstm_110/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_110/lstm_cell_197/mulMul$lstm_110/lstm_cell_197/Sigmoid_1:y:0lstm_110/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_110/lstm_cell_197/ReluRelu%lstm_110/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_110/lstm_cell_197/mul_1Mul"lstm_110/lstm_cell_197/Sigmoid:y:0)lstm_110/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_110/lstm_cell_197/add_1AddV2lstm_110/lstm_cell_197/mul:z:0 lstm_110/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_110/lstm_cell_197/Sigmoid_2Sigmoid%lstm_110/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
y
lstm_110/lstm_cell_197/Relu_1Relu lstm_110/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_110/lstm_cell_197/mul_2Mul$lstm_110/lstm_cell_197/Sigmoid_2:y:0+lstm_110/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_110/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_110/TensorArrayV2_1TensorListReserve/lstm_110/TensorArrayV2_1/element_shape:output:0!lstm_110/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_110/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_110/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_110/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_110/whileWhile$lstm_110/while/loop_counter:output:0*lstm_110/while/maximum_iterations:output:0lstm_110/time:output:0!lstm_110/TensorArrayV2_1:handle:0lstm_110/zeros:output:0lstm_110/zeros_1:output:0!lstm_110/strided_slice_1:output:0@lstm_110/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_110_lstm_cell_197_matmul_readvariableop_resource7lstm_110_lstm_cell_197_matmul_1_readvariableop_resource6lstm_110_lstm_cell_197_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_110_while_body_1194114*'
condR
lstm_110_while_cond_1194113*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_110/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_110/TensorArrayV2Stack/TensorListStackTensorListStacklstm_110/while:output:3Blstm_110/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_110/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_110/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_110/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_110/strided_slice_3StridedSlice4lstm_110/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_110/strided_slice_3/stack:output:0)lstm_110/strided_slice_3/stack_1:output:0)lstm_110/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_110/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_110/transpose_1	Transpose4lstm_110/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_110/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_110/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_36/MatMulMatMul!lstm_110/strided_slice_3:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_36/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp.^lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp-^lstm_108/lstm_cell_195/MatMul/ReadVariableOp/^lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp^lstm_108/while.^lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp-^lstm_109/lstm_cell_196/MatMul/ReadVariableOp/^lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp^lstm_109/while.^lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp-^lstm_110/lstm_cell_197/MatMul/ReadVariableOp/^lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp^lstm_110/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2^
-lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp-lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp2\
,lstm_108/lstm_cell_195/MatMul/ReadVariableOp,lstm_108/lstm_cell_195/MatMul/ReadVariableOp2`
.lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp.lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp2 
lstm_108/whilelstm_108/while2^
-lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp-lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp2\
,lstm_109/lstm_cell_196/MatMul/ReadVariableOp,lstm_109/lstm_cell_196/MatMul/ReadVariableOp2`
.lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp.lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp2 
lstm_109/whilelstm_109/while2^
-lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp-lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp2\
,lstm_110/lstm_cell_197/MatMul/ReadVariableOp,lstm_110/lstm_cell_197/MatMul/ReadVariableOp2`
.lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp.lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp2 
lstm_110/whilelstm_110/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ѓ
и
*__inference_lstm_109_layer_call_fn_1194853

inputs
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_109_layer_call_and_return_conditional_losses_1192385s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Э
┤
*__inference_lstm_110_layer_call_fn_1195480

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_110_layer_call_and_return_conditional_losses_1192751o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1196137

inputs
states_0
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
РW
Ъ
 __inference__traced_save_1196508
file_prefix.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_108_lstm_cell_108_kernel_read_readvariableopF
Bsavev2_lstm_108_lstm_cell_108_recurrent_kernel_read_readvariableop:
6savev2_lstm_108_lstm_cell_108_bias_read_readvariableop<
8savev2_lstm_109_lstm_cell_109_kernel_read_readvariableopF
Bsavev2_lstm_109_lstm_cell_109_recurrent_kernel_read_readvariableop:
6savev2_lstm_109_lstm_cell_109_bias_read_readvariableop<
8savev2_lstm_110_lstm_cell_110_kernel_read_readvariableopF
Bsavev2_lstm_110_lstm_cell_110_recurrent_kernel_read_readvariableop:
6savev2_lstm_110_lstm_cell_110_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_36_kernel_m_read_readvariableop3
/savev2_adam_dense_36_bias_m_read_readvariableopC
?savev2_adam_lstm_108_lstm_cell_108_kernel_m_read_readvariableopM
Isavev2_adam_lstm_108_lstm_cell_108_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_108_lstm_cell_108_bias_m_read_readvariableopC
?savev2_adam_lstm_109_lstm_cell_109_kernel_m_read_readvariableopM
Isavev2_adam_lstm_109_lstm_cell_109_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_109_lstm_cell_109_bias_m_read_readvariableopC
?savev2_adam_lstm_110_lstm_cell_110_kernel_m_read_readvariableopM
Isavev2_adam_lstm_110_lstm_cell_110_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_110_lstm_cell_110_bias_m_read_readvariableop5
1savev2_adam_dense_36_kernel_v_read_readvariableop3
/savev2_adam_dense_36_bias_v_read_readvariableopC
?savev2_adam_lstm_108_lstm_cell_108_kernel_v_read_readvariableopM
Isavev2_adam_lstm_108_lstm_cell_108_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_108_lstm_cell_108_bias_v_read_readvariableopC
?savev2_adam_lstm_109_lstm_cell_109_kernel_v_read_readvariableopM
Isavev2_adam_lstm_109_lstm_cell_109_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_109_lstm_cell_109_bias_v_read_readvariableopC
?savev2_adam_lstm_110_lstm_cell_110_kernel_v_read_readvariableopM
Isavev2_adam_lstm_110_lstm_cell_110_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_110_lstm_cell_110_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ┼
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ь
valueСBр)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┐
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ж
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_108_lstm_cell_108_kernel_read_readvariableopBsavev2_lstm_108_lstm_cell_108_recurrent_kernel_read_readvariableop6savev2_lstm_108_lstm_cell_108_bias_read_readvariableop8savev2_lstm_109_lstm_cell_109_kernel_read_readvariableopBsavev2_lstm_109_lstm_cell_109_recurrent_kernel_read_readvariableop6savev2_lstm_109_lstm_cell_109_bias_read_readvariableop8savev2_lstm_110_lstm_cell_110_kernel_read_readvariableopBsavev2_lstm_110_lstm_cell_110_recurrent_kernel_read_readvariableop6savev2_lstm_110_lstm_cell_110_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_36_kernel_m_read_readvariableop/savev2_adam_dense_36_bias_m_read_readvariableop?savev2_adam_lstm_108_lstm_cell_108_kernel_m_read_readvariableopIsavev2_adam_lstm_108_lstm_cell_108_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_108_lstm_cell_108_bias_m_read_readvariableop?savev2_adam_lstm_109_lstm_cell_109_kernel_m_read_readvariableopIsavev2_adam_lstm_109_lstm_cell_109_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_109_lstm_cell_109_bias_m_read_readvariableop?savev2_adam_lstm_110_lstm_cell_110_kernel_m_read_readvariableopIsavev2_adam_lstm_110_lstm_cell_110_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_110_lstm_cell_110_bias_m_read_readvariableop1savev2_adam_dense_36_kernel_v_read_readvariableop/savev2_adam_dense_36_bias_v_read_readvariableop?savev2_adam_lstm_108_lstm_cell_108_kernel_v_read_readvariableopIsavev2_adam_lstm_108_lstm_cell_108_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_108_lstm_cell_108_bias_v_read_readvariableop?savev2_adam_lstm_109_lstm_cell_109_kernel_v_read_readvariableopIsavev2_adam_lstm_109_lstm_cell_109_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_109_lstm_cell_109_bias_v_read_readvariableop?savev2_adam_lstm_110_lstm_cell_110_kernel_v_read_readvariableopIsavev2_adam_lstm_110_lstm_cell_110_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_110_lstm_cell_110_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*М
_input_shapes┴
Й: :
:: : : : : :	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(: : :
::	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(:
::	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	љ:%	!

_output_shapes
:	dљ:!


_output_shapes	
:љ:%!

_output_shapes
:	d╚:%!

_output_shapes
:	2╚:!

_output_shapes	
:╚:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
::%!

_output_shapes
:	љ:%!

_output_shapes
:	dљ:!

_output_shapes	
:љ:%!

_output_shapes
:	d╚:%!

_output_shapes
:	2╚:!

_output_shapes	
:╚:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:
: 

_output_shapes
::% !

_output_shapes
:	љ:%!!

_output_shapes
:	dљ:!"

_output_shapes	
:љ:%#!

_output_shapes
:	d╚:%$!

_output_shapes
:	2╚:!%

_output_shapes	
:╚:$& 

_output_shapes

:2(:$' 

_output_shapes

:
(: (

_output_shapes
:(:)

_output_shapes
: 
║
╚
while_cond_1195681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1195681___redundant_placeholder05
1while_while_cond_1195681___redundant_placeholder15
1while_while_cond_1195681___redundant_placeholder25
1while_while_cond_1195681___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
▀
ѕ
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1196169

inputs
states_0
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
Ј#
ы
while_body_1191308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_195_1191332_0:	љ0
while_lstm_cell_195_1191334_0:	dљ,
while_lstm_cell_195_1191336_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_195_1191332:	љ.
while_lstm_cell_195_1191334:	dљ*
while_lstm_cell_195_1191336:	љѕб+while/lstm_cell_195/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_195/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_195_1191332_0while_lstm_cell_195_1191334_0while_lstm_cell_195_1191336_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1191249П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_195/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_195/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_195/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_195/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_195_1191332while_lstm_cell_195_1191332_0"<
while_lstm_cell_195_1191334while_lstm_cell_195_1191334_0"<
while_lstm_cell_195_1191336while_lstm_cell_195_1191336_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_195/StatefulPartitionedCall+while/lstm_cell_195/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
З

Б
/__inference_sequential_36_layer_call_fn_1192585
lstm_108_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCalllstm_108_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_36_layer_call_and_return_conditional_losses_1192560o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_108_input
▄

Џ
/__inference_sequential_36_layer_call_fn_1193350

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193149o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
я
 
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193231
lstm_108_input#
lstm_108_1193204:	љ#
lstm_108_1193206:	dљ
lstm_108_1193208:	љ#
lstm_109_1193211:	d╚#
lstm_109_1193213:	2╚
lstm_109_1193215:	╚"
lstm_110_1193218:2("
lstm_110_1193220:
(
lstm_110_1193222:("
dense_36_1193225:

dense_36_1193227:
identityѕб dense_36/StatefulPartitionedCallб lstm_108/StatefulPartitionedCallб lstm_109/StatefulPartitionedCallб lstm_110/StatefulPartitionedCallЊ
 lstm_108/StatefulPartitionedCallStatefulPartitionedCalllstm_108_inputlstm_108_1193204lstm_108_1193206lstm_108_1193208*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_108_layer_call_and_return_conditional_losses_1192235«
 lstm_109/StatefulPartitionedCallStatefulPartitionedCall)lstm_108/StatefulPartitionedCall:output:0lstm_109_1193211lstm_109_1193213lstm_109_1193215*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_109_layer_call_and_return_conditional_losses_1192385ф
 lstm_110/StatefulPartitionedCallStatefulPartitionedCall)lstm_109/StatefulPartitionedCall:output:0lstm_110_1193218lstm_110_1193220lstm_110_1193222*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_110_layer_call_and_return_conditional_losses_1192535ќ
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)lstm_110/StatefulPartitionedCall:output:0dense_36_1193225dense_36_1193227*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_1192553x
IdentityIdentity)dense_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_36/StatefulPartitionedCall!^lstm_108/StatefulPartitionedCall!^lstm_109/StatefulPartitionedCall!^lstm_110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 lstm_108/StatefulPartitionedCall lstm_108/StatefulPartitionedCall2D
 lstm_109/StatefulPartitionedCall lstm_109/StatefulPartitionedCall2D
 lstm_110/StatefulPartitionedCall lstm_110/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_108_input
─8
н
while_body_1192451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_197_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_197_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_197_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_197_matmul_readvariableop_resource:2(F
4while_lstm_cell_197_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_197_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_197/BiasAdd/ReadVariableOpб)while/lstm_cell_197/MatMul/ReadVariableOpб+while/lstm_cell_197/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_197/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_197_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_197/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_197_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_197/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_197/addAddV2$while/lstm_cell_197/MatMul:product:0&while/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_197_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_197/BiasAddBiasAddwhile/lstm_cell_197/add:z:02while/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_197/splitSplit,while/lstm_cell_197/split/split_dim:output:0$while/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_197/SigmoidSigmoid"while/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_1Sigmoid"while/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_197/mulMul!while/lstm_cell_197/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_197/ReluRelu"while/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_197/mul_1Mulwhile/lstm_cell_197/Sigmoid:y:0&while/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_197/add_1AddV2while/lstm_cell_197/mul:z:0while/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_2Sigmoid"while/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_197/Relu_1Reluwhile/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_197/mul_2Mul!while/lstm_cell_197/Sigmoid_2:y:0(while/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_197/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_197/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_197/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_197/BiasAdd/ReadVariableOp*^while/lstm_cell_197/MatMul/ReadVariableOp,^while/lstm_cell_197/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_197_biasadd_readvariableop_resource5while_lstm_cell_197_biasadd_readvariableop_resource_0"n
4while_lstm_cell_197_matmul_1_readvariableop_resource6while_lstm_cell_197_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_197_matmul_readvariableop_resource4while_lstm_cell_197_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_197/BiasAdd/ReadVariableOp*while/lstm_cell_197/BiasAdd/ReadVariableOp2V
)while/lstm_cell_197/MatMul/ReadVariableOp)while/lstm_cell_197/MatMul/ReadVariableOp2Z
+while/lstm_cell_197/MatMul_1/ReadVariableOp+while/lstm_cell_197/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_1194306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1194306___redundant_placeholder05
1while_while_cond_1194306___redundant_placeholder15
1while_while_cond_1194306___redundant_placeholder25
1while_while_cond_1194306___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_1194593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_195_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_195_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_195_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_195_matmul_readvariableop_resource:	љG
4while_lstm_cell_195_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_195_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_195/BiasAdd/ReadVariableOpб)while/lstm_cell_195/MatMul/ReadVariableOpб+while/lstm_cell_195/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_195/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_195_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_195/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_195_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_195/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_195/addAddV2$while/lstm_cell_195/MatMul:product:0&while/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_195_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_195/BiasAddBiasAddwhile/lstm_cell_195/add:z:02while/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_195/splitSplit,while/lstm_cell_195/split/split_dim:output:0$while/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_195/SigmoidSigmoid"while/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_1Sigmoid"while/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_195/mulMul!while/lstm_cell_195/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_195/ReluRelu"while/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_195/mul_1Mulwhile/lstm_cell_195/Sigmoid:y:0&while/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_195/add_1AddV2while/lstm_cell_195/mul:z:0while/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_2Sigmoid"while/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_195/Relu_1Reluwhile/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_195/mul_2Mul!while/lstm_cell_195/Sigmoid_2:y:0(while/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_195/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_195/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_195/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_195/BiasAdd/ReadVariableOp*^while/lstm_cell_195/MatMul/ReadVariableOp,^while/lstm_cell_195/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_195_biasadd_readvariableop_resource5while_lstm_cell_195_biasadd_readvariableop_resource_0"n
4while_lstm_cell_195_matmul_1_readvariableop_resource6while_lstm_cell_195_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_195_matmul_readvariableop_resource4while_lstm_cell_195_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_195/BiasAdd/ReadVariableOp*while/lstm_cell_195/BiasAdd/ReadVariableOp2V
)while/lstm_cell_195/MatMul/ReadVariableOp)while/lstm_cell_195/MatMul/ReadVariableOp2Z
+while/lstm_cell_195/MatMul_1/ReadVariableOp+while/lstm_cell_195/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_109_layer_call_and_return_conditional_losses_1192385

inputs?
,lstm_cell_196_matmul_readvariableop_resource:	d╚A
.lstm_cell_196_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_196_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_196/BiasAdd/ReadVariableOpб#lstm_cell_196/MatMul/ReadVariableOpб%lstm_cell_196/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_196/MatMul/ReadVariableOpReadVariableOp,lstm_cell_196_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_196/MatMulMatMulstrided_slice_2:output:0+lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_196_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_196/MatMul_1MatMulzeros:output:0-lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_196/addAddV2lstm_cell_196/MatMul:product:0 lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_196_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_196/BiasAddBiasAddlstm_cell_196/add:z:0,lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_196/splitSplit&lstm_cell_196/split/split_dim:output:0lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_196/SigmoidSigmoidlstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_1Sigmoidlstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_196/mulMullstm_cell_196/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_196/ReluRelulstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_196/mul_1Mullstm_cell_196/Sigmoid:y:0 lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_196/add_1AddV2lstm_cell_196/mul:z:0lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_2Sigmoidlstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_196/Relu_1Relulstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_196/mul_2Mullstm_cell_196/Sigmoid_2:y:0"lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_196_matmul_readvariableop_resource.lstm_cell_196_matmul_1_readvariableop_resource-lstm_cell_196_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1192301*
condR
while_cond_1192300*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_196/BiasAdd/ReadVariableOp$^lstm_cell_196/MatMul/ReadVariableOp&^lstm_cell_196/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_196/BiasAdd/ReadVariableOp$lstm_cell_196/BiasAdd/ReadVariableOp2J
#lstm_cell_196/MatMul/ReadVariableOp#lstm_cell_196/MatMul/ReadVariableOp2N
%lstm_cell_196/MatMul_1/ReadVariableOp%lstm_cell_196/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
═
Ѓ
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1191949

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:OK
'
_output_shapes
:         

 
_user_specified_namestates:OK
'
_output_shapes
:         

 
_user_specified_namestates
─8
н
while_body_1195682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_197_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_197_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_197_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_197_matmul_readvariableop_resource:2(F
4while_lstm_cell_197_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_197_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_197/BiasAdd/ReadVariableOpб)while/lstm_cell_197/MatMul/ReadVariableOpб+while/lstm_cell_197/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_197/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_197_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_197/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_197_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_197/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_197/addAddV2$while/lstm_cell_197/MatMul:product:0&while/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_197_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_197/BiasAddBiasAddwhile/lstm_cell_197/add:z:02while/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_197/splitSplit,while/lstm_cell_197/split/split_dim:output:0$while/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_197/SigmoidSigmoid"while/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_1Sigmoid"while/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_197/mulMul!while/lstm_cell_197/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_197/ReluRelu"while/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_197/mul_1Mulwhile/lstm_cell_197/Sigmoid:y:0&while/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_197/add_1AddV2while/lstm_cell_197/mul:z:0while/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_2Sigmoid"while/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_197/Relu_1Reluwhile/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_197/mul_2Mul!while/lstm_cell_197/Sigmoid_2:y:0(while/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_197/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_197/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_197/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_197/BiasAdd/ReadVariableOp*^while/lstm_cell_197/MatMul/ReadVariableOp,^while/lstm_cell_197/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_197_biasadd_readvariableop_resource5while_lstm_cell_197_biasadd_readvariableop_resource_0"n
4while_lstm_cell_197_matmul_1_readvariableop_resource6while_lstm_cell_197_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_197_matmul_readvariableop_resource4while_lstm_cell_197_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_197/BiasAdd/ReadVariableOp*while/lstm_cell_197/BiasAdd/ReadVariableOp2V
)while/lstm_cell_197/MatMul/ReadVariableOp)while/lstm_cell_197/MatMul/ReadVariableOp2Z
+while/lstm_cell_197/MatMul_1/ReadVariableOp+while/lstm_cell_197/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Уц
ќ
#__inference__traced_restore_1196638
file_prefix2
 assignvariableop_dense_36_kernel:
.
 assignvariableop_1_dense_36_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_108_lstm_cell_108_kernel:	љM
:assignvariableop_8_lstm_108_lstm_cell_108_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_108_lstm_cell_108_bias:	љD
1assignvariableop_10_lstm_109_lstm_cell_109_kernel:	d╚N
;assignvariableop_11_lstm_109_lstm_cell_109_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_109_lstm_cell_109_bias:	╚C
1assignvariableop_13_lstm_110_lstm_cell_110_kernel:2(M
;assignvariableop_14_lstm_110_lstm_cell_110_recurrent_kernel:
(=
/assignvariableop_15_lstm_110_lstm_cell_110_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_36_kernel_m:
6
(assignvariableop_19_adam_dense_36_bias_m:K
8assignvariableop_20_adam_lstm_108_lstm_cell_108_kernel_m:	љU
Bassignvariableop_21_adam_lstm_108_lstm_cell_108_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_108_lstm_cell_108_bias_m:	љK
8assignvariableop_23_adam_lstm_109_lstm_cell_109_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_109_lstm_cell_109_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_109_lstm_cell_109_bias_m:	╚J
8assignvariableop_26_adam_lstm_110_lstm_cell_110_kernel_m:2(T
Bassignvariableop_27_adam_lstm_110_lstm_cell_110_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_110_lstm_cell_110_bias_m:(<
*assignvariableop_29_adam_dense_36_kernel_v:
6
(assignvariableop_30_adam_dense_36_bias_v:K
8assignvariableop_31_adam_lstm_108_lstm_cell_108_kernel_v:	љU
Bassignvariableop_32_adam_lstm_108_lstm_cell_108_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_108_lstm_cell_108_bias_v:	љK
8assignvariableop_34_adam_lstm_109_lstm_cell_109_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_109_lstm_cell_109_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_109_lstm_cell_109_bias_v:	╚J
8assignvariableop_37_adam_lstm_110_lstm_cell_110_kernel_v:2(T
Bassignvariableop_38_adam_lstm_110_lstm_cell_110_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_110_lstm_cell_110_bias_v:(
identity_41ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9╚
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ь
valueСBр)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ь
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*║
_output_shapesД
ц:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOpAssignVariableOp assignvariableop_dense_36_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_36_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_108_lstm_cell_108_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_108_lstm_cell_108_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_108_lstm_cell_108_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_109_lstm_cell_109_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_109_lstm_cell_109_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_109_lstm_cell_109_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_110_lstm_cell_110_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_110_lstm_cell_110_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_110_lstm_cell_110_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_36_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_36_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_108_lstm_cell_108_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_108_lstm_cell_108_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_108_lstm_cell_108_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_109_lstm_cell_109_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_109_lstm_cell_109_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_109_lstm_cell_109_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_110_lstm_cell_110_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_110_lstm_cell_110_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_110_lstm_cell_110_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_36_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_36_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_108_lstm_cell_108_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_108_lstm_cell_108_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_108_lstm_cell_108_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_109_lstm_cell_109_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_109_lstm_cell_109_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_109_lstm_cell_109_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_110_lstm_cell_110_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_110_lstm_cell_110_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_110_lstm_cell_110_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ┐
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: г
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
║
╚
while_cond_1192831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1192831___redundant_placeholder05
1while_while_cond_1192831___redundant_placeholder15
1while_while_cond_1192831___redundant_placeholder25
1while_while_cond_1192831___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
к
э
J__inference_sequential_36_layer_call_and_return_conditional_losses_1192560

inputs#
lstm_108_1192236:	љ#
lstm_108_1192238:	dљ
lstm_108_1192240:	љ#
lstm_109_1192386:	d╚#
lstm_109_1192388:	2╚
lstm_109_1192390:	╚"
lstm_110_1192536:2("
lstm_110_1192538:
(
lstm_110_1192540:("
dense_36_1192554:

dense_36_1192556:
identityѕб dense_36/StatefulPartitionedCallб lstm_108/StatefulPartitionedCallб lstm_109/StatefulPartitionedCallб lstm_110/StatefulPartitionedCallІ
 lstm_108/StatefulPartitionedCallStatefulPartitionedCallinputslstm_108_1192236lstm_108_1192238lstm_108_1192240*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_108_layer_call_and_return_conditional_losses_1192235«
 lstm_109/StatefulPartitionedCallStatefulPartitionedCall)lstm_108/StatefulPartitionedCall:output:0lstm_109_1192386lstm_109_1192388lstm_109_1192390*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_109_layer_call_and_return_conditional_losses_1192385ф
 lstm_110/StatefulPartitionedCallStatefulPartitionedCall)lstm_109/StatefulPartitionedCall:output:0lstm_110_1192536lstm_110_1192538lstm_110_1192540*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_110_layer_call_and_return_conditional_losses_1192535ќ
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)lstm_110/StatefulPartitionedCall:output:0dense_36_1192554dense_36_1192556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_1192553x
IdentityIdentity)dense_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_36/StatefulPartitionedCall!^lstm_108/StatefulPartitionedCall!^lstm_109/StatefulPartitionedCall!^lstm_110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 lstm_108/StatefulPartitionedCall lstm_108/StatefulPartitionedCall2D
 lstm_109/StatefulPartitionedCall lstm_109/StatefulPartitionedCall2D
 lstm_110/StatefulPartitionedCall lstm_110/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┐
ћ
)sequential_36_lstm_108_while_cond_1190667J
Fsequential_36_lstm_108_while_sequential_36_lstm_108_while_loop_counterP
Lsequential_36_lstm_108_while_sequential_36_lstm_108_while_maximum_iterations,
(sequential_36_lstm_108_while_placeholder.
*sequential_36_lstm_108_while_placeholder_1.
*sequential_36_lstm_108_while_placeholder_2.
*sequential_36_lstm_108_while_placeholder_3L
Hsequential_36_lstm_108_while_less_sequential_36_lstm_108_strided_slice_1c
_sequential_36_lstm_108_while_sequential_36_lstm_108_while_cond_1190667___redundant_placeholder0c
_sequential_36_lstm_108_while_sequential_36_lstm_108_while_cond_1190667___redundant_placeholder1c
_sequential_36_lstm_108_while_sequential_36_lstm_108_while_cond_1190667___redundant_placeholder2c
_sequential_36_lstm_108_while_sequential_36_lstm_108_while_cond_1190667___redundant_placeholder3)
%sequential_36_lstm_108_while_identity
Й
!sequential_36/lstm_108/while/LessLess(sequential_36_lstm_108_while_placeholderHsequential_36_lstm_108_while_less_sequential_36_lstm_108_strided_slice_1*
T0*
_output_shapes
: y
%sequential_36/lstm_108/while/IdentityIdentity%sequential_36/lstm_108/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_36_lstm_108_while_identity.sequential_36/lstm_108/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
┐
ћ
)sequential_36_lstm_110_while_cond_1190945J
Fsequential_36_lstm_110_while_sequential_36_lstm_110_while_loop_counterP
Lsequential_36_lstm_110_while_sequential_36_lstm_110_while_maximum_iterations,
(sequential_36_lstm_110_while_placeholder.
*sequential_36_lstm_110_while_placeholder_1.
*sequential_36_lstm_110_while_placeholder_2.
*sequential_36_lstm_110_while_placeholder_3L
Hsequential_36_lstm_110_while_less_sequential_36_lstm_110_strided_slice_1c
_sequential_36_lstm_110_while_sequential_36_lstm_110_while_cond_1190945___redundant_placeholder0c
_sequential_36_lstm_110_while_sequential_36_lstm_110_while_cond_1190945___redundant_placeholder1c
_sequential_36_lstm_110_while_sequential_36_lstm_110_while_cond_1190945___redundant_placeholder2c
_sequential_36_lstm_110_while_sequential_36_lstm_110_while_cond_1190945___redundant_placeholder3)
%sequential_36_lstm_110_while_identity
Й
!sequential_36/lstm_110/while/LessLess(sequential_36_lstm_110_while_placeholderHsequential_36_lstm_110_while_less_sequential_36_lstm_110_strided_slice_1*
T0*
_output_shapes
: y
%sequential_36/lstm_110/while/IdentityIdentity%sequential_36/lstm_110/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_36_lstm_110_while_identity.sequential_36/lstm_110/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_1191816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1191816___redundant_placeholder05
1while_while_cond_1191816___redundant_placeholder15
1while_while_cond_1191816___redundant_placeholder25
1while_while_cond_1191816___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_110_while_cond_1194113.
*lstm_110_while_lstm_110_while_loop_counter4
0lstm_110_while_lstm_110_while_maximum_iterations
lstm_110_while_placeholder 
lstm_110_while_placeholder_1 
lstm_110_while_placeholder_2 
lstm_110_while_placeholder_30
,lstm_110_while_less_lstm_110_strided_slice_1G
Clstm_110_while_lstm_110_while_cond_1194113___redundant_placeholder0G
Clstm_110_while_lstm_110_while_cond_1194113___redundant_placeholder1G
Clstm_110_while_lstm_110_while_cond_1194113___redundant_placeholder2G
Clstm_110_while_lstm_110_while_cond_1194113___redundant_placeholder3
lstm_110_while_identity
є
lstm_110/while/LessLesslstm_110_while_placeholder,lstm_110_while_less_lstm_110_strided_slice_1*
T0*
_output_shapes
: ]
lstm_110/while/IdentityIdentitylstm_110/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_110_while_identity lstm_110/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
њK
б
E__inference_lstm_110_layer_call_and_return_conditional_losses_1195766
inputs_0>
,lstm_cell_197_matmul_readvariableop_resource:2(@
.lstm_cell_197_matmul_1_readvariableop_resource:
(;
-lstm_cell_197_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_197/BiasAdd/ReadVariableOpб#lstm_cell_197/MatMul/ReadVariableOpб%lstm_cell_197/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_197/MatMul/ReadVariableOpReadVariableOp,lstm_cell_197_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_197/MatMulMatMulstrided_slice_2:output:0+lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_197_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_197/MatMul_1MatMulzeros:output:0-lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_197/addAddV2lstm_cell_197/MatMul:product:0 lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_197_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_197/BiasAddBiasAddlstm_cell_197/add:z:0,lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_197/splitSplit&lstm_cell_197/split/split_dim:output:0lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_197/SigmoidSigmoidlstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_1Sigmoidlstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_197/mulMullstm_cell_197/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_197/ReluRelulstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_197/mul_1Mullstm_cell_197/Sigmoid:y:0 lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_197/add_1AddV2lstm_cell_197/mul:z:0lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_2Sigmoidlstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_197/Relu_1Relulstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_197/mul_2Mullstm_cell_197/Sigmoid_2:y:0"lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_197_matmul_readvariableop_resource.lstm_cell_197_matmul_1_readvariableop_resource-lstm_cell_197_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1195682*
condR
while_cond_1195681*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         
├
NoOpNoOp%^lstm_cell_197/BiasAdd/ReadVariableOp$^lstm_cell_197/MatMul/ReadVariableOp&^lstm_cell_197/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_197/BiasAdd/ReadVariableOp$lstm_cell_197/BiasAdd/ReadVariableOp2J
#lstm_cell_197/MatMul/ReadVariableOp#lstm_cell_197/MatMul/ReadVariableOp2N
%lstm_cell_197/MatMul_1/ReadVariableOp%lstm_cell_197/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
№
Э
/__inference_lstm_cell_196_layer_call_fn_1196186

inputs
states_0
states_1
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1191453o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
║
╚
while_cond_1191657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1191657___redundant_placeholder05
1while_while_cond_1191657___redundant_placeholder15
1while_while_cond_1191657___redundant_placeholder25
1while_while_cond_1191657___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
РJ
Б
E__inference_lstm_108_layer_call_and_return_conditional_losses_1193081

inputs?
,lstm_cell_195_matmul_readvariableop_resource:	љA
.lstm_cell_195_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_195_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_195/BiasAdd/ReadVariableOpб#lstm_cell_195/MatMul/ReadVariableOpб%lstm_cell_195/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_195/MatMul/ReadVariableOpReadVariableOp,lstm_cell_195_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_195/MatMulMatMulstrided_slice_2:output:0+lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_195_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_195/MatMul_1MatMulzeros:output:0-lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_195/addAddV2lstm_cell_195/MatMul:product:0 lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_195_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_195/BiasAddBiasAddlstm_cell_195/add:z:0,lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_195/splitSplit&lstm_cell_195/split/split_dim:output:0lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_195/SigmoidSigmoidlstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_1Sigmoidlstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_195/mulMullstm_cell_195/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_195/ReluRelulstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_195/mul_1Mullstm_cell_195/Sigmoid:y:0 lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_195/add_1AddV2lstm_cell_195/mul:z:0lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_2Sigmoidlstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_195/Relu_1Relulstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_195/mul_2Mullstm_cell_195/Sigmoid_2:y:0"lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_195_matmul_readvariableop_resource.lstm_cell_195_matmul_1_readvariableop_resource-lstm_cell_195_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1192997*
condR
while_cond_1192996*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_195/BiasAdd/ReadVariableOp$^lstm_cell_195/MatMul/ReadVariableOp&^lstm_cell_195/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_195/BiasAdd/ReadVariableOp$lstm_cell_195/BiasAdd/ReadVariableOp2J
#lstm_cell_195/MatMul/ReadVariableOp#lstm_cell_195/MatMul/ReadVariableOp2N
%lstm_cell_195/MatMul_1/ReadVariableOp%lstm_cell_195/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
оS
и
)sequential_36_lstm_110_while_body_1190946J
Fsequential_36_lstm_110_while_sequential_36_lstm_110_while_loop_counterP
Lsequential_36_lstm_110_while_sequential_36_lstm_110_while_maximum_iterations,
(sequential_36_lstm_110_while_placeholder.
*sequential_36_lstm_110_while_placeholder_1.
*sequential_36_lstm_110_while_placeholder_2.
*sequential_36_lstm_110_while_placeholder_3I
Esequential_36_lstm_110_while_sequential_36_lstm_110_strided_slice_1_0є
Ђsequential_36_lstm_110_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_110_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_36_lstm_110_while_lstm_cell_197_matmul_readvariableop_resource_0:2(_
Msequential_36_lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource_0:
(Z
Lsequential_36_lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource_0:()
%sequential_36_lstm_110_while_identity+
'sequential_36_lstm_110_while_identity_1+
'sequential_36_lstm_110_while_identity_2+
'sequential_36_lstm_110_while_identity_3+
'sequential_36_lstm_110_while_identity_4+
'sequential_36_lstm_110_while_identity_5G
Csequential_36_lstm_110_while_sequential_36_lstm_110_strided_slice_1Ѓ
sequential_36_lstm_110_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_110_tensorarrayunstack_tensorlistfromtensor[
Isequential_36_lstm_110_while_lstm_cell_197_matmul_readvariableop_resource:2(]
Ksequential_36_lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource:
(X
Jsequential_36_lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource:(ѕбAsequential_36/lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOpб@sequential_36/lstm_110/while/lstm_cell_197/MatMul/ReadVariableOpбBsequential_36/lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOpЪ
Nsequential_36/lstm_110/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   џ
@sequential_36/lstm_110/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_36_lstm_110_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_110_tensorarrayunstack_tensorlistfromtensor_0(sequential_36_lstm_110_while_placeholderWsequential_36/lstm_110/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╠
@sequential_36/lstm_110/while/lstm_cell_197/MatMul/ReadVariableOpReadVariableOpKsequential_36_lstm_110_while_lstm_cell_197_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ђ
1sequential_36/lstm_110/while/lstm_cell_197/MatMulMatMulGsequential_36/lstm_110/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_36/lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (л
Bsequential_36/lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOpMsequential_36_lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0у
3sequential_36/lstm_110/while/lstm_cell_197/MatMul_1MatMul*sequential_36_lstm_110_while_placeholder_2Jsequential_36/lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (т
.sequential_36/lstm_110/while/lstm_cell_197/addAddV2;sequential_36/lstm_110/while/lstm_cell_197/MatMul:product:0=sequential_36/lstm_110/while/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (╩
Asequential_36/lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOpLsequential_36_lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ь
2sequential_36/lstm_110/while/lstm_cell_197/BiasAddBiasAdd2sequential_36/lstm_110/while/lstm_cell_197/add:z:0Isequential_36/lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (|
:sequential_36/lstm_110/while/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_36/lstm_110/while/lstm_cell_197/splitSplitCsequential_36/lstm_110/while/lstm_cell_197/split/split_dim:output:0;sequential_36/lstm_110/while/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitф
2sequential_36/lstm_110/while/lstm_cell_197/SigmoidSigmoid9sequential_36/lstm_110/while/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
г
4sequential_36/lstm_110/while/lstm_cell_197/Sigmoid_1Sigmoid9sequential_36/lstm_110/while/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
═
.sequential_36/lstm_110/while/lstm_cell_197/mulMul8sequential_36/lstm_110/while/lstm_cell_197/Sigmoid_1:y:0*sequential_36_lstm_110_while_placeholder_3*
T0*'
_output_shapes
:         
ц
/sequential_36/lstm_110/while/lstm_cell_197/ReluRelu9sequential_36/lstm_110/while/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Я
0sequential_36/lstm_110/while/lstm_cell_197/mul_1Mul6sequential_36/lstm_110/while/lstm_cell_197/Sigmoid:y:0=sequential_36/lstm_110/while/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
Н
0sequential_36/lstm_110/while/lstm_cell_197/add_1AddV22sequential_36/lstm_110/while/lstm_cell_197/mul:z:04sequential_36/lstm_110/while/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
г
4sequential_36/lstm_110/while/lstm_cell_197/Sigmoid_2Sigmoid9sequential_36/lstm_110/while/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
А
1sequential_36/lstm_110/while/lstm_cell_197/Relu_1Relu4sequential_36/lstm_110/while/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
С
0sequential_36/lstm_110/while/lstm_cell_197/mul_2Mul8sequential_36/lstm_110/while/lstm_cell_197/Sigmoid_2:y:0?sequential_36/lstm_110/while/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
б
Asequential_36/lstm_110/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_36_lstm_110_while_placeholder_1(sequential_36_lstm_110_while_placeholder4sequential_36/lstm_110/while/lstm_cell_197/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_36/lstm_110/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_36/lstm_110/while/addAddV2(sequential_36_lstm_110_while_placeholder+sequential_36/lstm_110/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_36/lstm_110/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_36/lstm_110/while/add_1AddV2Fsequential_36_lstm_110_while_sequential_36_lstm_110_while_loop_counter-sequential_36/lstm_110/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_36/lstm_110/while/IdentityIdentity&sequential_36/lstm_110/while/add_1:z:0"^sequential_36/lstm_110/while/NoOp*
T0*
_output_shapes
: к
'sequential_36/lstm_110/while/Identity_1IdentityLsequential_36_lstm_110_while_sequential_36_lstm_110_while_maximum_iterations"^sequential_36/lstm_110/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_36/lstm_110/while/Identity_2Identity$sequential_36/lstm_110/while/add:z:0"^sequential_36/lstm_110/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_36/lstm_110/while/Identity_3IdentityQsequential_36/lstm_110/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_36/lstm_110/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_36/lstm_110/while/Identity_4Identity4sequential_36/lstm_110/while/lstm_cell_197/mul_2:z:0"^sequential_36/lstm_110/while/NoOp*
T0*'
_output_shapes
:         
┐
'sequential_36/lstm_110/while/Identity_5Identity4sequential_36/lstm_110/while/lstm_cell_197/add_1:z:0"^sequential_36/lstm_110/while/NoOp*
T0*'
_output_shapes
:         
»
!sequential_36/lstm_110/while/NoOpNoOpB^sequential_36/lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOpA^sequential_36/lstm_110/while/lstm_cell_197/MatMul/ReadVariableOpC^sequential_36/lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_36_lstm_110_while_identity.sequential_36/lstm_110/while/Identity:output:0"[
'sequential_36_lstm_110_while_identity_10sequential_36/lstm_110/while/Identity_1:output:0"[
'sequential_36_lstm_110_while_identity_20sequential_36/lstm_110/while/Identity_2:output:0"[
'sequential_36_lstm_110_while_identity_30sequential_36/lstm_110/while/Identity_3:output:0"[
'sequential_36_lstm_110_while_identity_40sequential_36/lstm_110/while/Identity_4:output:0"[
'sequential_36_lstm_110_while_identity_50sequential_36/lstm_110/while/Identity_5:output:0"џ
Jsequential_36_lstm_110_while_lstm_cell_197_biasadd_readvariableop_resourceLsequential_36_lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource_0"ю
Ksequential_36_lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resourceMsequential_36_lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource_0"ў
Isequential_36_lstm_110_while_lstm_cell_197_matmul_readvariableop_resourceKsequential_36_lstm_110_while_lstm_cell_197_matmul_readvariableop_resource_0"ї
Csequential_36_lstm_110_while_sequential_36_lstm_110_strided_slice_1Esequential_36_lstm_110_while_sequential_36_lstm_110_strided_slice_1_0"Ё
sequential_36_lstm_110_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_110_tensorarrayunstack_tensorlistfromtensorЂsequential_36_lstm_110_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_110_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2є
Asequential_36/lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOpAsequential_36/lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOp2ё
@sequential_36/lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp@sequential_36/lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp2ѕ
Bsequential_36/lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOpBsequential_36/lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
АC
Щ

lstm_108_while_body_1193409.
*lstm_108_while_lstm_108_while_loop_counter4
0lstm_108_while_lstm_108_while_maximum_iterations
lstm_108_while_placeholder 
lstm_108_while_placeholder_1 
lstm_108_while_placeholder_2 
lstm_108_while_placeholder_3-
)lstm_108_while_lstm_108_strided_slice_1_0i
elstm_108_while_tensorarrayv2read_tensorlistgetitem_lstm_108_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_108_while_lstm_cell_195_matmul_readvariableop_resource_0:	љR
?lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource_0:	dљM
>lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource_0:	љ
lstm_108_while_identity
lstm_108_while_identity_1
lstm_108_while_identity_2
lstm_108_while_identity_3
lstm_108_while_identity_4
lstm_108_while_identity_5+
'lstm_108_while_lstm_108_strided_slice_1g
clstm_108_while_tensorarrayv2read_tensorlistgetitem_lstm_108_tensorarrayunstack_tensorlistfromtensorN
;lstm_108_while_lstm_cell_195_matmul_readvariableop_resource:	љP
=lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource:	dљK
<lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource:	љѕб3lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOpб2lstm_108/while/lstm_cell_195/MatMul/ReadVariableOpб4lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOpЉ
@lstm_108/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_108/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_108_while_tensorarrayv2read_tensorlistgetitem_lstm_108_tensorarrayunstack_tensorlistfromtensor_0lstm_108_while_placeholderIlstm_108/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_108/while/lstm_cell_195/MatMul/ReadVariableOpReadVariableOp=lstm_108_while_lstm_cell_195_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_108/while/lstm_cell_195/MatMulMatMul9lstm_108/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp?lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_108/while/lstm_cell_195/MatMul_1MatMullstm_108_while_placeholder_2<lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_108/while/lstm_cell_195/addAddV2-lstm_108/while/lstm_cell_195/MatMul:product:0/lstm_108/while/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp>lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_108/while/lstm_cell_195/BiasAddBiasAdd$lstm_108/while/lstm_cell_195/add:z:0;lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_108/while/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_108/while/lstm_cell_195/splitSplit5lstm_108/while/lstm_cell_195/split/split_dim:output:0-lstm_108/while/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_108/while/lstm_cell_195/SigmoidSigmoid+lstm_108/while/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_108/while/lstm_cell_195/Sigmoid_1Sigmoid+lstm_108/while/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_108/while/lstm_cell_195/mulMul*lstm_108/while/lstm_cell_195/Sigmoid_1:y:0lstm_108_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_108/while/lstm_cell_195/ReluRelu+lstm_108/while/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_108/while/lstm_cell_195/mul_1Mul(lstm_108/while/lstm_cell_195/Sigmoid:y:0/lstm_108/while/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_108/while/lstm_cell_195/add_1AddV2$lstm_108/while/lstm_cell_195/mul:z:0&lstm_108/while/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_108/while/lstm_cell_195/Sigmoid_2Sigmoid+lstm_108/while/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_108/while/lstm_cell_195/Relu_1Relu&lstm_108/while/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_108/while/lstm_cell_195/mul_2Mul*lstm_108/while/lstm_cell_195/Sigmoid_2:y:01lstm_108/while/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_108/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_108_while_placeholder_1lstm_108_while_placeholder&lstm_108/while/lstm_cell_195/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_108/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_108/while/addAddV2lstm_108_while_placeholderlstm_108/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_108/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_108/while/add_1AddV2*lstm_108_while_lstm_108_while_loop_counterlstm_108/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_108/while/IdentityIdentitylstm_108/while/add_1:z:0^lstm_108/while/NoOp*
T0*
_output_shapes
: ј
lstm_108/while/Identity_1Identity0lstm_108_while_lstm_108_while_maximum_iterations^lstm_108/while/NoOp*
T0*
_output_shapes
: t
lstm_108/while/Identity_2Identitylstm_108/while/add:z:0^lstm_108/while/NoOp*
T0*
_output_shapes
: А
lstm_108/while/Identity_3IdentityClstm_108/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_108/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_108/while/Identity_4Identity&lstm_108/while/lstm_cell_195/mul_2:z:0^lstm_108/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_108/while/Identity_5Identity&lstm_108/while/lstm_cell_195/add_1:z:0^lstm_108/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_108/while/NoOpNoOp4^lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOp3^lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp5^lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_108_while_identity lstm_108/while/Identity:output:0"?
lstm_108_while_identity_1"lstm_108/while/Identity_1:output:0"?
lstm_108_while_identity_2"lstm_108/while/Identity_2:output:0"?
lstm_108_while_identity_3"lstm_108/while/Identity_3:output:0"?
lstm_108_while_identity_4"lstm_108/while/Identity_4:output:0"?
lstm_108_while_identity_5"lstm_108/while/Identity_5:output:0"T
'lstm_108_while_lstm_108_strided_slice_1)lstm_108_while_lstm_108_strided_slice_1_0"~
<lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource>lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource_0"ђ
=lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource?lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource_0"|
;lstm_108_while_lstm_cell_195_matmul_readvariableop_resource=lstm_108_while_lstm_cell_195_matmul_readvariableop_resource_0"╠
clstm_108_while_tensorarrayv2read_tensorlistgetitem_lstm_108_tensorarrayunstack_tensorlistfromtensorelstm_108_while_tensorarrayv2read_tensorlistgetitem_lstm_108_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOp3lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOp2h
2lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp2lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp2l
4lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp4lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_1195209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_196_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_196_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_196_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_196_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_196_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_196_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_196/BiasAdd/ReadVariableOpб)while/lstm_cell_196/MatMul/ReadVariableOpб+while/lstm_cell_196/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_196/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_196_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_196/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_196_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_196/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_196/addAddV2$while/lstm_cell_196/MatMul:product:0&while/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_196_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_196/BiasAddBiasAddwhile/lstm_cell_196/add:z:02while/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_196/splitSplit,while/lstm_cell_196/split/split_dim:output:0$while/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_196/SigmoidSigmoid"while/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_1Sigmoid"while/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_196/mulMul!while/lstm_cell_196/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_196/ReluRelu"while/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_196/mul_1Mulwhile/lstm_cell_196/Sigmoid:y:0&while/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_196/add_1AddV2while/lstm_cell_196/mul:z:0while/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_2Sigmoid"while/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_196/Relu_1Reluwhile/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_196/mul_2Mul!while/lstm_cell_196/Sigmoid_2:y:0(while/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_196/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_196/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_196/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_196/BiasAdd/ReadVariableOp*^while/lstm_cell_196/MatMul/ReadVariableOp,^while/lstm_cell_196/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_196_biasadd_readvariableop_resource5while_lstm_cell_196_biasadd_readvariableop_resource_0"n
4while_lstm_cell_196_matmul_1_readvariableop_resource6while_lstm_cell_196_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_196_matmul_readvariableop_resource4while_lstm_cell_196_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_196/BiasAdd/ReadVariableOp*while/lstm_cell_196/BiasAdd/ReadVariableOp2V
)while/lstm_cell_196/MatMul/ReadVariableOp)while/lstm_cell_196/MatMul/ReadVariableOp2Z
+while/lstm_cell_196/MatMul_1/ReadVariableOp+while/lstm_cell_196/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_1194735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1194735___redundant_placeholder05
1while_while_cond_1194735___redundant_placeholder15
1while_while_cond_1194735___redundant_placeholder25
1while_while_cond_1194735___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
№
Э
/__inference_lstm_cell_195_layer_call_fn_1196088

inputs
states_0
states_1
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1191103o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
О
є
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1191453

inputs

states
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates
Н
Ё
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1196365

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
З

Б
/__inference_sequential_36_layer_call_fn_1193201
lstm_108_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCalllstm_108_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193149o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_108_input
Ј#
ы
while_body_1191117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_195_1191141_0:	љ0
while_lstm_cell_195_1191143_0:	dљ,
while_lstm_cell_195_1191145_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_195_1191141:	љ.
while_lstm_cell_195_1191143:	dљ*
while_lstm_cell_195_1191145:	љѕб+while/lstm_cell_195/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_195/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_195_1191141_0while_lstm_cell_195_1191143_0while_lstm_cell_195_1191145_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1191103П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_195/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_195/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_195/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_195/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_195_1191141while_lstm_cell_195_1191141_0"<
while_lstm_cell_195_1191143while_lstm_cell_195_1191143_0"<
while_lstm_cell_195_1191145while_lstm_cell_195_1191145_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_195/StatefulPartitionedCall+while/lstm_cell_195/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_1192300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1192300___redundant_placeholder05
1while_while_cond_1192300___redundant_placeholder15
1while_while_cond_1192300___redundant_placeholder25
1while_while_cond_1192300___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Ѕ#
в
while_body_1192008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_197_1192032_0:2(/
while_lstm_cell_197_1192034_0:
(+
while_lstm_cell_197_1192036_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_197_1192032:2(-
while_lstm_cell_197_1192034:
()
while_lstm_cell_197_1192036:(ѕб+while/lstm_cell_197/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_197/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_197_1192032_0while_lstm_cell_197_1192034_0while_lstm_cell_197_1192036_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1191949П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_197/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_197/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_197/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_197/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_197_1192032while_lstm_cell_197_1192032_0"<
while_lstm_cell_197_1192034while_lstm_cell_197_1192034_0"<
while_lstm_cell_197_1192036while_lstm_cell_197_1192036_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_197/StatefulPartitionedCall+while/lstm_cell_197/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Г
╣
*__inference_lstm_109_layer_call_fn_1194842
inputs_0
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_109_layer_call_and_return_conditional_losses_1191727|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
Ѕ#
в
while_body_1191817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_197_1191841_0:2(/
while_lstm_cell_197_1191843_0:
(+
while_lstm_cell_197_1191845_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_197_1191841:2(-
while_lstm_cell_197_1191843:
()
while_lstm_cell_197_1191845:(ѕб+while/lstm_cell_197/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_197/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_197_1191841_0while_lstm_cell_197_1191843_0while_lstm_cell_197_1191845_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1191803П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_197/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_197/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_197/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_197/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_197_1191841while_lstm_cell_197_1191841_0"<
while_lstm_cell_197_1191843while_lstm_cell_197_1191843_0"<
while_lstm_cell_197_1191845while_lstm_cell_197_1191845_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_197/StatefulPartitionedCall+while/lstm_cell_197/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_1195352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_196_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_196_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_196_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_196_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_196_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_196_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_196/BiasAdd/ReadVariableOpб)while/lstm_cell_196/MatMul/ReadVariableOpб+while/lstm_cell_196/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_196/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_196_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_196/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_196_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_196/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_196/addAddV2$while/lstm_cell_196/MatMul:product:0&while/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_196_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_196/BiasAddBiasAddwhile/lstm_cell_196/add:z:02while/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_196/splitSplit,while/lstm_cell_196/split/split_dim:output:0$while/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_196/SigmoidSigmoid"while/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_1Sigmoid"while/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_196/mulMul!while/lstm_cell_196/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_196/ReluRelu"while/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_196/mul_1Mulwhile/lstm_cell_196/Sigmoid:y:0&while/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_196/add_1AddV2while/lstm_cell_196/mul:z:0while/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_2Sigmoid"while/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_196/Relu_1Reluwhile/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_196/mul_2Mul!while/lstm_cell_196/Sigmoid_2:y:0(while/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_196/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_196/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_196/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_196/BiasAdd/ReadVariableOp*^while/lstm_cell_196/MatMul/ReadVariableOp,^while/lstm_cell_196/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_196_biasadd_readvariableop_resource5while_lstm_cell_196_biasadd_readvariableop_resource_0"n
4while_lstm_cell_196_matmul_1_readvariableop_resource6while_lstm_cell_196_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_196_matmul_readvariableop_resource4while_lstm_cell_196_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_196/BiasAdd/ReadVariableOp*while/lstm_cell_196/BiasAdd/ReadVariableOp2V
)while/lstm_cell_196/MatMul/ReadVariableOp)while/lstm_cell_196/MatMul/ReadVariableOp2Z
+while/lstm_cell_196/MatMul_1/ReadVariableOp+while/lstm_cell_196/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195436

inputs?
,lstm_cell_196_matmul_readvariableop_resource:	d╚A
.lstm_cell_196_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_196_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_196/BiasAdd/ReadVariableOpб#lstm_cell_196/MatMul/ReadVariableOpб%lstm_cell_196/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_196/MatMul/ReadVariableOpReadVariableOp,lstm_cell_196_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_196/MatMulMatMulstrided_slice_2:output:0+lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_196_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_196/MatMul_1MatMulzeros:output:0-lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_196/addAddV2lstm_cell_196/MatMul:product:0 lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_196_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_196/BiasAddBiasAddlstm_cell_196/add:z:0,lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_196/splitSplit&lstm_cell_196/split/split_dim:output:0lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_196/SigmoidSigmoidlstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_1Sigmoidlstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_196/mulMullstm_cell_196/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_196/ReluRelulstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_196/mul_1Mullstm_cell_196/Sigmoid:y:0 lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_196/add_1AddV2lstm_cell_196/mul:z:0lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_2Sigmoidlstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_196/Relu_1Relulstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_196/mul_2Mullstm_cell_196/Sigmoid_2:y:0"lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_196_matmul_readvariableop_resource.lstm_cell_196_matmul_1_readvariableop_resource-lstm_cell_196_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1195352*
condR
while_cond_1195351*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_196/BiasAdd/ReadVariableOp$^lstm_cell_196/MatMul/ReadVariableOp&^lstm_cell_196/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_196/BiasAdd/ReadVariableOp$lstm_cell_196/BiasAdd/ReadVariableOp2J
#lstm_cell_196/MatMul/ReadVariableOp#lstm_cell_196/MatMul/ReadVariableOp2N
%lstm_cell_196/MatMul_1/ReadVariableOp%lstm_cell_196/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Л8
┌
while_body_1194736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_195_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_195_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_195_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_195_matmul_readvariableop_resource:	љG
4while_lstm_cell_195_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_195_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_195/BiasAdd/ReadVariableOpб)while/lstm_cell_195/MatMul/ReadVariableOpб+while/lstm_cell_195/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_195/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_195_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_195/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_195_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_195/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_195/addAddV2$while/lstm_cell_195/MatMul:product:0&while/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_195_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_195/BiasAddBiasAddwhile/lstm_cell_195/add:z:02while/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_195/splitSplit,while/lstm_cell_195/split/split_dim:output:0$while/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_195/SigmoidSigmoid"while/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_1Sigmoid"while/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_195/mulMul!while/lstm_cell_195/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_195/ReluRelu"while/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_195/mul_1Mulwhile/lstm_cell_195/Sigmoid:y:0&while/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_195/add_1AddV2while/lstm_cell_195/mul:z:0while/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_2Sigmoid"while/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_195/Relu_1Reluwhile/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_195/mul_2Mul!while/lstm_cell_195/Sigmoid_2:y:0(while/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_195/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_195/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_195/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_195/BiasAdd/ReadVariableOp*^while/lstm_cell_195/MatMul/ReadVariableOp,^while/lstm_cell_195/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_195_biasadd_readvariableop_resource5while_lstm_cell_195_biasadd_readvariableop_resource_0"n
4while_lstm_cell_195_matmul_1_readvariableop_resource6while_lstm_cell_195_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_195_matmul_readvariableop_resource4while_lstm_cell_195_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_195/BiasAdd/ReadVariableOp*while/lstm_cell_195/BiasAdd/ReadVariableOp2V
)while/lstm_cell_195/MatMul/ReadVariableOp)while/lstm_cell_195/MatMul/ReadVariableOp2Z
+while/lstm_cell_195/MatMul_1/ReadVariableOp+while/lstm_cell_195/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
ћC
З

lstm_110_while_body_1193687.
*lstm_110_while_lstm_110_while_loop_counter4
0lstm_110_while_lstm_110_while_maximum_iterations
lstm_110_while_placeholder 
lstm_110_while_placeholder_1 
lstm_110_while_placeholder_2 
lstm_110_while_placeholder_3-
)lstm_110_while_lstm_110_strided_slice_1_0i
elstm_110_while_tensorarrayv2read_tensorlistgetitem_lstm_110_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_110_while_lstm_cell_197_matmul_readvariableop_resource_0:2(Q
?lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource_0:
(L
>lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource_0:(
lstm_110_while_identity
lstm_110_while_identity_1
lstm_110_while_identity_2
lstm_110_while_identity_3
lstm_110_while_identity_4
lstm_110_while_identity_5+
'lstm_110_while_lstm_110_strided_slice_1g
clstm_110_while_tensorarrayv2read_tensorlistgetitem_lstm_110_tensorarrayunstack_tensorlistfromtensorM
;lstm_110_while_lstm_cell_197_matmul_readvariableop_resource:2(O
=lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource:
(J
<lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource:(ѕб3lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOpб2lstm_110/while/lstm_cell_197/MatMul/ReadVariableOpб4lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOpЉ
@lstm_110/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_110/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_110_while_tensorarrayv2read_tensorlistgetitem_lstm_110_tensorarrayunstack_tensorlistfromtensor_0lstm_110_while_placeholderIlstm_110/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_110/while/lstm_cell_197/MatMul/ReadVariableOpReadVariableOp=lstm_110_while_lstm_cell_197_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_110/while/lstm_cell_197/MatMulMatMul9lstm_110/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp?lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_110/while/lstm_cell_197/MatMul_1MatMullstm_110_while_placeholder_2<lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_110/while/lstm_cell_197/addAddV2-lstm_110/while/lstm_cell_197/MatMul:product:0/lstm_110/while/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp>lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_110/while/lstm_cell_197/BiasAddBiasAdd$lstm_110/while/lstm_cell_197/add:z:0;lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_110/while/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_110/while/lstm_cell_197/splitSplit5lstm_110/while/lstm_cell_197/split/split_dim:output:0-lstm_110/while/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_110/while/lstm_cell_197/SigmoidSigmoid+lstm_110/while/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_110/while/lstm_cell_197/Sigmoid_1Sigmoid+lstm_110/while/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_110/while/lstm_cell_197/mulMul*lstm_110/while/lstm_cell_197/Sigmoid_1:y:0lstm_110_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_110/while/lstm_cell_197/ReluRelu+lstm_110/while/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_110/while/lstm_cell_197/mul_1Mul(lstm_110/while/lstm_cell_197/Sigmoid:y:0/lstm_110/while/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_110/while/lstm_cell_197/add_1AddV2$lstm_110/while/lstm_cell_197/mul:z:0&lstm_110/while/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_110/while/lstm_cell_197/Sigmoid_2Sigmoid+lstm_110/while/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_110/while/lstm_cell_197/Relu_1Relu&lstm_110/while/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_110/while/lstm_cell_197/mul_2Mul*lstm_110/while/lstm_cell_197/Sigmoid_2:y:01lstm_110/while/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_110/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_110_while_placeholder_1lstm_110_while_placeholder&lstm_110/while/lstm_cell_197/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_110/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_110/while/addAddV2lstm_110_while_placeholderlstm_110/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_110/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_110/while/add_1AddV2*lstm_110_while_lstm_110_while_loop_counterlstm_110/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_110/while/IdentityIdentitylstm_110/while/add_1:z:0^lstm_110/while/NoOp*
T0*
_output_shapes
: ј
lstm_110/while/Identity_1Identity0lstm_110_while_lstm_110_while_maximum_iterations^lstm_110/while/NoOp*
T0*
_output_shapes
: t
lstm_110/while/Identity_2Identitylstm_110/while/add:z:0^lstm_110/while/NoOp*
T0*
_output_shapes
: А
lstm_110/while/Identity_3IdentityClstm_110/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_110/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_110/while/Identity_4Identity&lstm_110/while/lstm_cell_197/mul_2:z:0^lstm_110/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_110/while/Identity_5Identity&lstm_110/while/lstm_cell_197/add_1:z:0^lstm_110/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_110/while/NoOpNoOp4^lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOp3^lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp5^lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_110_while_identity lstm_110/while/Identity:output:0"?
lstm_110_while_identity_1"lstm_110/while/Identity_1:output:0"?
lstm_110_while_identity_2"lstm_110/while/Identity_2:output:0"?
lstm_110_while_identity_3"lstm_110/while/Identity_3:output:0"?
lstm_110_while_identity_4"lstm_110/while/Identity_4:output:0"?
lstm_110_while_identity_5"lstm_110/while/Identity_5:output:0"T
'lstm_110_while_lstm_110_strided_slice_1)lstm_110_while_lstm_110_strided_slice_1_0"~
<lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource>lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource_0"ђ
=lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource?lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource_0"|
;lstm_110_while_lstm_cell_197_matmul_readvariableop_resource=lstm_110_while_lstm_cell_197_matmul_readvariableop_resource_0"╠
clstm_110_while_tensorarrayv2read_tensorlistgetitem_lstm_110_tensorarrayunstack_tensorlistfromtensorelstm_110_while_tensorarrayv2read_tensorlistgetitem_lstm_110_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOp3lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOp2h
2lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp2lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp2l
4lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp4lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_1194450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_195_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_195_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_195_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_195_matmul_readvariableop_resource:	љG
4while_lstm_cell_195_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_195_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_195/BiasAdd/ReadVariableOpб)while/lstm_cell_195/MatMul/ReadVariableOpб+while/lstm_cell_195/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_195/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_195_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_195/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_195_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_195/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_195/addAddV2$while/lstm_cell_195/MatMul:product:0&while/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_195_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_195/BiasAddBiasAddwhile/lstm_cell_195/add:z:02while/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_195/splitSplit,while/lstm_cell_195/split/split_dim:output:0$while/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_195/SigmoidSigmoid"while/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_1Sigmoid"while/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_195/mulMul!while/lstm_cell_195/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_195/ReluRelu"while/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_195/mul_1Mulwhile/lstm_cell_195/Sigmoid:y:0&while/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_195/add_1AddV2while/lstm_cell_195/mul:z:0while/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_2Sigmoid"while/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_195/Relu_1Reluwhile/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_195/mul_2Mul!while/lstm_cell_195/Sigmoid_2:y:0(while/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_195/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_195/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_195/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_195/BiasAdd/ReadVariableOp*^while/lstm_cell_195/MatMul/ReadVariableOp,^while/lstm_cell_195/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_195_biasadd_readvariableop_resource5while_lstm_cell_195_biasadd_readvariableop_resource_0"n
4while_lstm_cell_195_matmul_1_readvariableop_resource6while_lstm_cell_195_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_195_matmul_readvariableop_resource4while_lstm_cell_195_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_195/BiasAdd/ReadVariableOp*while/lstm_cell_195/BiasAdd/ReadVariableOp2V
)while/lstm_cell_195/MatMul/ReadVariableOp)while/lstm_cell_195/MatMul/ReadVariableOp2Z
+while/lstm_cell_195/MatMul_1/ReadVariableOp+while/lstm_cell_195/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
ћC
З

lstm_110_while_body_1194114.
*lstm_110_while_lstm_110_while_loop_counter4
0lstm_110_while_lstm_110_while_maximum_iterations
lstm_110_while_placeholder 
lstm_110_while_placeholder_1 
lstm_110_while_placeholder_2 
lstm_110_while_placeholder_3-
)lstm_110_while_lstm_110_strided_slice_1_0i
elstm_110_while_tensorarrayv2read_tensorlistgetitem_lstm_110_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_110_while_lstm_cell_197_matmul_readvariableop_resource_0:2(Q
?lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource_0:
(L
>lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource_0:(
lstm_110_while_identity
lstm_110_while_identity_1
lstm_110_while_identity_2
lstm_110_while_identity_3
lstm_110_while_identity_4
lstm_110_while_identity_5+
'lstm_110_while_lstm_110_strided_slice_1g
clstm_110_while_tensorarrayv2read_tensorlistgetitem_lstm_110_tensorarrayunstack_tensorlistfromtensorM
;lstm_110_while_lstm_cell_197_matmul_readvariableop_resource:2(O
=lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource:
(J
<lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource:(ѕб3lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOpб2lstm_110/while/lstm_cell_197/MatMul/ReadVariableOpб4lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOpЉ
@lstm_110/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_110/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_110_while_tensorarrayv2read_tensorlistgetitem_lstm_110_tensorarrayunstack_tensorlistfromtensor_0lstm_110_while_placeholderIlstm_110/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_110/while/lstm_cell_197/MatMul/ReadVariableOpReadVariableOp=lstm_110_while_lstm_cell_197_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_110/while/lstm_cell_197/MatMulMatMul9lstm_110/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp?lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_110/while/lstm_cell_197/MatMul_1MatMullstm_110_while_placeholder_2<lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_110/while/lstm_cell_197/addAddV2-lstm_110/while/lstm_cell_197/MatMul:product:0/lstm_110/while/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp>lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_110/while/lstm_cell_197/BiasAddBiasAdd$lstm_110/while/lstm_cell_197/add:z:0;lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_110/while/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_110/while/lstm_cell_197/splitSplit5lstm_110/while/lstm_cell_197/split/split_dim:output:0-lstm_110/while/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_110/while/lstm_cell_197/SigmoidSigmoid+lstm_110/while/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_110/while/lstm_cell_197/Sigmoid_1Sigmoid+lstm_110/while/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_110/while/lstm_cell_197/mulMul*lstm_110/while/lstm_cell_197/Sigmoid_1:y:0lstm_110_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_110/while/lstm_cell_197/ReluRelu+lstm_110/while/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_110/while/lstm_cell_197/mul_1Mul(lstm_110/while/lstm_cell_197/Sigmoid:y:0/lstm_110/while/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_110/while/lstm_cell_197/add_1AddV2$lstm_110/while/lstm_cell_197/mul:z:0&lstm_110/while/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_110/while/lstm_cell_197/Sigmoid_2Sigmoid+lstm_110/while/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_110/while/lstm_cell_197/Relu_1Relu&lstm_110/while/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_110/while/lstm_cell_197/mul_2Mul*lstm_110/while/lstm_cell_197/Sigmoid_2:y:01lstm_110/while/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_110/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_110_while_placeholder_1lstm_110_while_placeholder&lstm_110/while/lstm_cell_197/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_110/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_110/while/addAddV2lstm_110_while_placeholderlstm_110/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_110/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_110/while/add_1AddV2*lstm_110_while_lstm_110_while_loop_counterlstm_110/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_110/while/IdentityIdentitylstm_110/while/add_1:z:0^lstm_110/while/NoOp*
T0*
_output_shapes
: ј
lstm_110/while/Identity_1Identity0lstm_110_while_lstm_110_while_maximum_iterations^lstm_110/while/NoOp*
T0*
_output_shapes
: t
lstm_110/while/Identity_2Identitylstm_110/while/add:z:0^lstm_110/while/NoOp*
T0*
_output_shapes
: А
lstm_110/while/Identity_3IdentityClstm_110/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_110/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_110/while/Identity_4Identity&lstm_110/while/lstm_cell_197/mul_2:z:0^lstm_110/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_110/while/Identity_5Identity&lstm_110/while/lstm_cell_197/add_1:z:0^lstm_110/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_110/while/NoOpNoOp4^lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOp3^lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp5^lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_110_while_identity lstm_110/while/Identity:output:0"?
lstm_110_while_identity_1"lstm_110/while/Identity_1:output:0"?
lstm_110_while_identity_2"lstm_110/while/Identity_2:output:0"?
lstm_110_while_identity_3"lstm_110/while/Identity_3:output:0"?
lstm_110_while_identity_4"lstm_110/while/Identity_4:output:0"?
lstm_110_while_identity_5"lstm_110/while/Identity_5:output:0"T
'lstm_110_while_lstm_110_strided_slice_1)lstm_110_while_lstm_110_strided_slice_1_0"~
<lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource>lstm_110_while_lstm_cell_197_biasadd_readvariableop_resource_0"ђ
=lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource?lstm_110_while_lstm_cell_197_matmul_1_readvariableop_resource_0"|
;lstm_110_while_lstm_cell_197_matmul_readvariableop_resource=lstm_110_while_lstm_cell_197_matmul_readvariableop_resource_0"╠
clstm_110_while_tensorarrayv2read_tensorlistgetitem_lstm_110_tensorarrayunstack_tensorlistfromtensorelstm_110_while_tensorarrayv2read_tensorlistgetitem_lstm_110_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOp3lstm_110/while/lstm_cell_197/BiasAdd/ReadVariableOp2h
2lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp2lstm_110/while/lstm_cell_197/MatMul/ReadVariableOp2l
4lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp4lstm_110/while/lstm_cell_197/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
В
ш
/__inference_lstm_cell_197_layer_call_fn_1196284

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1191803o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
║
╚
while_cond_1191307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1191307___redundant_placeholder05
1while_while_cond_1191307___redundant_placeholder15
1while_while_cond_1191307___redundant_placeholder25
1while_while_cond_1191307___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
сS
й
)sequential_36_lstm_108_while_body_1190668J
Fsequential_36_lstm_108_while_sequential_36_lstm_108_while_loop_counterP
Lsequential_36_lstm_108_while_sequential_36_lstm_108_while_maximum_iterations,
(sequential_36_lstm_108_while_placeholder.
*sequential_36_lstm_108_while_placeholder_1.
*sequential_36_lstm_108_while_placeholder_2.
*sequential_36_lstm_108_while_placeholder_3I
Esequential_36_lstm_108_while_sequential_36_lstm_108_strided_slice_1_0є
Ђsequential_36_lstm_108_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_108_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_36_lstm_108_while_lstm_cell_195_matmul_readvariableop_resource_0:	љ`
Msequential_36_lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource_0:	dљ[
Lsequential_36_lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource_0:	љ)
%sequential_36_lstm_108_while_identity+
'sequential_36_lstm_108_while_identity_1+
'sequential_36_lstm_108_while_identity_2+
'sequential_36_lstm_108_while_identity_3+
'sequential_36_lstm_108_while_identity_4+
'sequential_36_lstm_108_while_identity_5G
Csequential_36_lstm_108_while_sequential_36_lstm_108_strided_slice_1Ѓ
sequential_36_lstm_108_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_108_tensorarrayunstack_tensorlistfromtensor\
Isequential_36_lstm_108_while_lstm_cell_195_matmul_readvariableop_resource:	љ^
Ksequential_36_lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource:	dљY
Jsequential_36_lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource:	љѕбAsequential_36/lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOpб@sequential_36/lstm_108/while/lstm_cell_195/MatMul/ReadVariableOpбBsequential_36/lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOpЪ
Nsequential_36/lstm_108/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       џ
@sequential_36/lstm_108/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_36_lstm_108_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_108_tensorarrayunstack_tensorlistfromtensor_0(sequential_36_lstm_108_while_placeholderWsequential_36/lstm_108/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0═
@sequential_36/lstm_108/while/lstm_cell_195/MatMul/ReadVariableOpReadVariableOpKsequential_36_lstm_108_while_lstm_cell_195_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0Ђ
1sequential_36/lstm_108/while/lstm_cell_195/MatMulMatMulGsequential_36/lstm_108/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_36/lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЛ
Bsequential_36/lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOpMsequential_36_lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0У
3sequential_36/lstm_108/while/lstm_cell_195/MatMul_1MatMul*sequential_36_lstm_108_while_placeholder_2Jsequential_36/lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љТ
.sequential_36/lstm_108/while/lstm_cell_195/addAddV2;sequential_36/lstm_108/while/lstm_cell_195/MatMul:product:0=sequential_36/lstm_108/while/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љ╦
Asequential_36/lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOpLsequential_36_lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0№
2sequential_36/lstm_108/while/lstm_cell_195/BiasAddBiasAdd2sequential_36/lstm_108/while/lstm_cell_195/add:z:0Isequential_36/lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ|
:sequential_36/lstm_108/while/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_36/lstm_108/while/lstm_cell_195/splitSplitCsequential_36/lstm_108/while/lstm_cell_195/split/split_dim:output:0;sequential_36/lstm_108/while/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitф
2sequential_36/lstm_108/while/lstm_cell_195/SigmoidSigmoid9sequential_36/lstm_108/while/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dг
4sequential_36/lstm_108/while/lstm_cell_195/Sigmoid_1Sigmoid9sequential_36/lstm_108/while/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         d═
.sequential_36/lstm_108/while/lstm_cell_195/mulMul8sequential_36/lstm_108/while/lstm_cell_195/Sigmoid_1:y:0*sequential_36_lstm_108_while_placeholder_3*
T0*'
_output_shapes
:         dц
/sequential_36/lstm_108/while/lstm_cell_195/ReluRelu9sequential_36/lstm_108/while/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЯ
0sequential_36/lstm_108/while/lstm_cell_195/mul_1Mul6sequential_36/lstm_108/while/lstm_cell_195/Sigmoid:y:0=sequential_36/lstm_108/while/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dН
0sequential_36/lstm_108/while/lstm_cell_195/add_1AddV22sequential_36/lstm_108/while/lstm_cell_195/mul:z:04sequential_36/lstm_108/while/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dг
4sequential_36/lstm_108/while/lstm_cell_195/Sigmoid_2Sigmoid9sequential_36/lstm_108/while/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dА
1sequential_36/lstm_108/while/lstm_cell_195/Relu_1Relu4sequential_36/lstm_108/while/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dС
0sequential_36/lstm_108/while/lstm_cell_195/mul_2Mul8sequential_36/lstm_108/while/lstm_cell_195/Sigmoid_2:y:0?sequential_36/lstm_108/while/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dб
Asequential_36/lstm_108/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_36_lstm_108_while_placeholder_1(sequential_36_lstm_108_while_placeholder4sequential_36/lstm_108/while/lstm_cell_195/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_36/lstm_108/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_36/lstm_108/while/addAddV2(sequential_36_lstm_108_while_placeholder+sequential_36/lstm_108/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_36/lstm_108/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_36/lstm_108/while/add_1AddV2Fsequential_36_lstm_108_while_sequential_36_lstm_108_while_loop_counter-sequential_36/lstm_108/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_36/lstm_108/while/IdentityIdentity&sequential_36/lstm_108/while/add_1:z:0"^sequential_36/lstm_108/while/NoOp*
T0*
_output_shapes
: к
'sequential_36/lstm_108/while/Identity_1IdentityLsequential_36_lstm_108_while_sequential_36_lstm_108_while_maximum_iterations"^sequential_36/lstm_108/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_36/lstm_108/while/Identity_2Identity$sequential_36/lstm_108/while/add:z:0"^sequential_36/lstm_108/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_36/lstm_108/while/Identity_3IdentityQsequential_36/lstm_108/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_36/lstm_108/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_36/lstm_108/while/Identity_4Identity4sequential_36/lstm_108/while/lstm_cell_195/mul_2:z:0"^sequential_36/lstm_108/while/NoOp*
T0*'
_output_shapes
:         d┐
'sequential_36/lstm_108/while/Identity_5Identity4sequential_36/lstm_108/while/lstm_cell_195/add_1:z:0"^sequential_36/lstm_108/while/NoOp*
T0*'
_output_shapes
:         d»
!sequential_36/lstm_108/while/NoOpNoOpB^sequential_36/lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOpA^sequential_36/lstm_108/while/lstm_cell_195/MatMul/ReadVariableOpC^sequential_36/lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_36_lstm_108_while_identity.sequential_36/lstm_108/while/Identity:output:0"[
'sequential_36_lstm_108_while_identity_10sequential_36/lstm_108/while/Identity_1:output:0"[
'sequential_36_lstm_108_while_identity_20sequential_36/lstm_108/while/Identity_2:output:0"[
'sequential_36_lstm_108_while_identity_30sequential_36/lstm_108/while/Identity_3:output:0"[
'sequential_36_lstm_108_while_identity_40sequential_36/lstm_108/while/Identity_4:output:0"[
'sequential_36_lstm_108_while_identity_50sequential_36/lstm_108/while/Identity_5:output:0"џ
Jsequential_36_lstm_108_while_lstm_cell_195_biasadd_readvariableop_resourceLsequential_36_lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource_0"ю
Ksequential_36_lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resourceMsequential_36_lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource_0"ў
Isequential_36_lstm_108_while_lstm_cell_195_matmul_readvariableop_resourceKsequential_36_lstm_108_while_lstm_cell_195_matmul_readvariableop_resource_0"ї
Csequential_36_lstm_108_while_sequential_36_lstm_108_strided_slice_1Esequential_36_lstm_108_while_sequential_36_lstm_108_strided_slice_1_0"Ё
sequential_36_lstm_108_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_108_tensorarrayunstack_tensorlistfromtensorЂsequential_36_lstm_108_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_108_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2є
Asequential_36/lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOpAsequential_36/lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOp2ё
@sequential_36/lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp@sequential_36/lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp2ѕ
Bsequential_36/lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOpBsequential_36/lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
љ
Х
*__inference_lstm_110_layer_call_fn_1195458
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_110_layer_call_and_return_conditional_losses_1192077o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
╚	
Ш
E__inference_dense_36_layer_call_and_return_conditional_losses_1192553

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
Ј#
ы
while_body_1191658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_196_1191682_0:	d╚0
while_lstm_cell_196_1191684_0:	2╚,
while_lstm_cell_196_1191686_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_196_1191682:	d╚.
while_lstm_cell_196_1191684:	2╚*
while_lstm_cell_196_1191686:	╚ѕб+while/lstm_cell_196/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_196/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_196_1191682_0while_lstm_cell_196_1191684_0while_lstm_cell_196_1191686_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1191599П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_196/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_196/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_196/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_196/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_196_1191682while_lstm_cell_196_1191682_0"<
while_lstm_cell_196_1191684while_lstm_cell_196_1191684_0"<
while_lstm_cell_196_1191686while_lstm_cell_196_1191686_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_196/StatefulPartitionedCall+while/lstm_cell_196/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_1195967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1195967___redundant_placeholder05
1while_while_cond_1195967___redundant_placeholder15
1while_while_cond_1195967___redundant_placeholder25
1while_while_cond_1195967___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_1194922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1194922___redundant_placeholder05
1while_while_cond_1194922___redundant_placeholder15
1while_while_cond_1194922___redundant_placeholder25
1while_while_cond_1194922___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Г
╣
*__inference_lstm_108_layer_call_fn_1194226
inputs_0
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_108_layer_call_and_return_conditional_losses_1191377|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
»8
ј
E__inference_lstm_109_layer_call_and_return_conditional_losses_1191536

inputs(
lstm_cell_196_1191454:	d╚(
lstm_cell_196_1191456:	2╚$
lstm_cell_196_1191458:	╚
identityѕб%lstm_cell_196/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask■
%lstm_cell_196/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_196_1191454lstm_cell_196_1191456lstm_cell_196_1191458*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1191453n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_196_1191454lstm_cell_196_1191456lstm_cell_196_1191458*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1191467*
condR
while_cond_1191466*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2v
NoOpNoOp&^lstm_cell_196/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_196/StatefulPartitionedCall%lstm_cell_196/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
╚	
Ш
E__inference_dense_36_layer_call_and_return_conditional_losses_1196071

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
─8
н
while_body_1195539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_197_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_197_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_197_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_197_matmul_readvariableop_resource:2(F
4while_lstm_cell_197_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_197_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_197/BiasAdd/ReadVariableOpб)while/lstm_cell_197/MatMul/ReadVariableOpб+while/lstm_cell_197/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_197/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_197_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_197/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_197_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_197/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_197/addAddV2$while/lstm_cell_197/MatMul:product:0&while/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_197_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_197/BiasAddBiasAddwhile/lstm_cell_197/add:z:02while/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_197/splitSplit,while/lstm_cell_197/split/split_dim:output:0$while/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_197/SigmoidSigmoid"while/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_1Sigmoid"while/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_197/mulMul!while/lstm_cell_197/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_197/ReluRelu"while/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_197/mul_1Mulwhile/lstm_cell_197/Sigmoid:y:0&while/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_197/add_1AddV2while/lstm_cell_197/mul:z:0while/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_2Sigmoid"while/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_197/Relu_1Reluwhile/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_197/mul_2Mul!while/lstm_cell_197/Sigmoid_2:y:0(while/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_197/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_197/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_197/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_197/BiasAdd/ReadVariableOp*^while/lstm_cell_197/MatMul/ReadVariableOp,^while/lstm_cell_197/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_197_biasadd_readvariableop_resource5while_lstm_cell_197_biasadd_readvariableop_resource_0"n
4while_lstm_cell_197_matmul_1_readvariableop_resource6while_lstm_cell_197_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_197_matmul_readvariableop_resource4while_lstm_cell_197_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_197/BiasAdd/ReadVariableOp*while/lstm_cell_197/BiasAdd/ReadVariableOp2V
)while/lstm_cell_197/MatMul/ReadVariableOp)while/lstm_cell_197/MatMul/ReadVariableOp2Z
+while/lstm_cell_197/MatMul_1/ReadVariableOp+while/lstm_cell_197/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
аK
Ц
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195150
inputs_0?
,lstm_cell_196_matmul_readvariableop_resource:	d╚A
.lstm_cell_196_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_196_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_196/BiasAdd/ReadVariableOpб#lstm_cell_196/MatMul/ReadVariableOpб%lstm_cell_196/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_196/MatMul/ReadVariableOpReadVariableOp,lstm_cell_196_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_196/MatMulMatMulstrided_slice_2:output:0+lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_196_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_196/MatMul_1MatMulzeros:output:0-lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_196/addAddV2lstm_cell_196/MatMul:product:0 lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_196_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_196/BiasAddBiasAddlstm_cell_196/add:z:0,lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_196/splitSplit&lstm_cell_196/split/split_dim:output:0lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_196/SigmoidSigmoidlstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_1Sigmoidlstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_196/mulMullstm_cell_196/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_196/ReluRelulstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_196/mul_1Mullstm_cell_196/Sigmoid:y:0 lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_196/add_1AddV2lstm_cell_196/mul:z:0lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_2Sigmoidlstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_196/Relu_1Relulstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_196/mul_2Mullstm_cell_196/Sigmoid_2:y:0"lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_196_matmul_readvariableop_resource.lstm_cell_196_matmul_1_readvariableop_resource-lstm_cell_196_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1195066*
condR
while_cond_1195065*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2├
NoOpNoOp%^lstm_cell_196/BiasAdd/ReadVariableOp$^lstm_cell_196/MatMul/ReadVariableOp&^lstm_cell_196/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_196/BiasAdd/ReadVariableOp$lstm_cell_196/BiasAdd/ReadVariableOp2J
#lstm_cell_196/MatMul/ReadVariableOp#lstm_cell_196/MatMul/ReadVariableOp2N
%lstm_cell_196/MatMul_1/ReadVariableOp%lstm_cell_196/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
аK
Ц
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194391
inputs_0?
,lstm_cell_195_matmul_readvariableop_resource:	љA
.lstm_cell_195_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_195_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_195/BiasAdd/ReadVariableOpб#lstm_cell_195/MatMul/ReadVariableOpб%lstm_cell_195/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_195/MatMul/ReadVariableOpReadVariableOp,lstm_cell_195_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_195/MatMulMatMulstrided_slice_2:output:0+lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_195_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_195/MatMul_1MatMulzeros:output:0-lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_195/addAddV2lstm_cell_195/MatMul:product:0 lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_195_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_195/BiasAddBiasAddlstm_cell_195/add:z:0,lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_195/splitSplit&lstm_cell_195/split/split_dim:output:0lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_195/SigmoidSigmoidlstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_1Sigmoidlstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_195/mulMullstm_cell_195/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_195/ReluRelulstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_195/mul_1Mullstm_cell_195/Sigmoid:y:0 lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_195/add_1AddV2lstm_cell_195/mul:z:0lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_2Sigmoidlstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_195/Relu_1Relulstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_195/mul_2Mullstm_cell_195/Sigmoid_2:y:0"lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_195_matmul_readvariableop_resource.lstm_cell_195_matmul_1_readvariableop_resource-lstm_cell_195_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1194307*
condR
while_cond_1194306*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d├
NoOpNoOp%^lstm_cell_195/BiasAdd/ReadVariableOp$^lstm_cell_195/MatMul/ReadVariableOp&^lstm_cell_195/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_195/BiasAdd/ReadVariableOp$lstm_cell_195/BiasAdd/ReadVariableOp2J
#lstm_cell_195/MatMul/ReadVariableOp#lstm_cell_195/MatMul/ReadVariableOp2N
%lstm_cell_195/MatMul_1/ReadVariableOp%lstm_cell_195/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
е8
І
E__inference_lstm_110_layer_call_and_return_conditional_losses_1191886

inputs'
lstm_cell_197_1191804:2('
lstm_cell_197_1191806:
(#
lstm_cell_197_1191808:(
identityѕб%lstm_cell_197/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask■
%lstm_cell_197/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_197_1191804lstm_cell_197_1191806lstm_cell_197_1191808*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1191803n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_197_1191804lstm_cell_197_1191806lstm_cell_197_1191808*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1191817*
condR
while_cond_1191816*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         
v
NoOpNoOp&^lstm_cell_197/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_197/StatefulPartitionedCall%lstm_cell_197/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
Л8
┌
while_body_1194923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_196_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_196_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_196_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_196_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_196_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_196_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_196/BiasAdd/ReadVariableOpб)while/lstm_cell_196/MatMul/ReadVariableOpб+while/lstm_cell_196/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_196/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_196_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_196/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_196_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_196/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_196/addAddV2$while/lstm_cell_196/MatMul:product:0&while/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_196_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_196/BiasAddBiasAddwhile/lstm_cell_196/add:z:02while/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_196/splitSplit,while/lstm_cell_196/split/split_dim:output:0$while/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_196/SigmoidSigmoid"while/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_1Sigmoid"while/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_196/mulMul!while/lstm_cell_196/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_196/ReluRelu"while/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_196/mul_1Mulwhile/lstm_cell_196/Sigmoid:y:0&while/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_196/add_1AddV2while/lstm_cell_196/mul:z:0while/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_2Sigmoid"while/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_196/Relu_1Reluwhile/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_196/mul_2Mul!while/lstm_cell_196/Sigmoid_2:y:0(while/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_196/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_196/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_196/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_196/BiasAdd/ReadVariableOp*^while/lstm_cell_196/MatMul/ReadVariableOp,^while/lstm_cell_196/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_196_biasadd_readvariableop_resource5while_lstm_cell_196_biasadd_readvariableop_resource_0"n
4while_lstm_cell_196_matmul_1_readvariableop_resource6while_lstm_cell_196_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_196_matmul_readvariableop_resource4while_lstm_cell_196_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_196/BiasAdd/ReadVariableOp*while/lstm_cell_196/BiasAdd/ReadVariableOp2V
)while/lstm_cell_196/MatMul/ReadVariableOp)while/lstm_cell_196/MatMul/ReadVariableOp2Z
+while/lstm_cell_196/MatMul_1/ReadVariableOp+while/lstm_cell_196/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
аK
Ц
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195007
inputs_0?
,lstm_cell_196_matmul_readvariableop_resource:	d╚A
.lstm_cell_196_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_196_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_196/BiasAdd/ReadVariableOpб#lstm_cell_196/MatMul/ReadVariableOpб%lstm_cell_196/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_196/MatMul/ReadVariableOpReadVariableOp,lstm_cell_196_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_196/MatMulMatMulstrided_slice_2:output:0+lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_196_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_196/MatMul_1MatMulzeros:output:0-lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_196/addAddV2lstm_cell_196/MatMul:product:0 lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_196_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_196/BiasAddBiasAddlstm_cell_196/add:z:0,lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_196/splitSplit&lstm_cell_196/split/split_dim:output:0lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_196/SigmoidSigmoidlstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_1Sigmoidlstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_196/mulMullstm_cell_196/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_196/ReluRelulstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_196/mul_1Mullstm_cell_196/Sigmoid:y:0 lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_196/add_1AddV2lstm_cell_196/mul:z:0lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_2Sigmoidlstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_196/Relu_1Relulstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_196/mul_2Mullstm_cell_196/Sigmoid_2:y:0"lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_196_matmul_readvariableop_resource.lstm_cell_196_matmul_1_readvariableop_resource-lstm_cell_196_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1194923*
condR
while_cond_1194922*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2├
NoOpNoOp%^lstm_cell_196/BiasAdd/ReadVariableOp$^lstm_cell_196/MatMul/ReadVariableOp&^lstm_cell_196/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_196/BiasAdd/ReadVariableOp$lstm_cell_196/BiasAdd/ReadVariableOp2J
#lstm_cell_196/MatMul/ReadVariableOp#lstm_cell_196/MatMul/ReadVariableOp2N
%lstm_cell_196/MatMul_1/ReadVariableOp%lstm_cell_196/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
и

Ч
lstm_110_while_cond_1193686.
*lstm_110_while_lstm_110_while_loop_counter4
0lstm_110_while_lstm_110_while_maximum_iterations
lstm_110_while_placeholder 
lstm_110_while_placeholder_1 
lstm_110_while_placeholder_2 
lstm_110_while_placeholder_30
,lstm_110_while_less_lstm_110_strided_slice_1G
Clstm_110_while_lstm_110_while_cond_1193686___redundant_placeholder0G
Clstm_110_while_lstm_110_while_cond_1193686___redundant_placeholder1G
Clstm_110_while_lstm_110_while_cond_1193686___redundant_placeholder2G
Clstm_110_while_lstm_110_while_cond_1193686___redundant_placeholder3
lstm_110_while_identity
є
lstm_110/while/LessLesslstm_110_while_placeholder,lstm_110_while_less_lstm_110_strided_slice_1*
T0*
_output_shapes
: ]
lstm_110/while/IdentityIdentitylstm_110/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_110_while_identity lstm_110/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
─
Ќ
*__inference_dense_36_layer_call_fn_1196061

inputs
unknown:

	unknown_0:
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_1192553o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
В
ш
/__inference_lstm_cell_197_layer_call_fn_1196301

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1191949o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
РJ
Б
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195293

inputs?
,lstm_cell_196_matmul_readvariableop_resource:	d╚A
.lstm_cell_196_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_196_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_196/BiasAdd/ReadVariableOpб#lstm_cell_196/MatMul/ReadVariableOpб%lstm_cell_196/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_196/MatMul/ReadVariableOpReadVariableOp,lstm_cell_196_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_196/MatMulMatMulstrided_slice_2:output:0+lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_196_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_196/MatMul_1MatMulzeros:output:0-lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_196/addAddV2lstm_cell_196/MatMul:product:0 lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_196_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_196/BiasAddBiasAddlstm_cell_196/add:z:0,lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_196/splitSplit&lstm_cell_196/split/split_dim:output:0lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_196/SigmoidSigmoidlstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_1Sigmoidlstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_196/mulMullstm_cell_196/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_196/ReluRelulstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_196/mul_1Mullstm_cell_196/Sigmoid:y:0 lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_196/add_1AddV2lstm_cell_196/mul:z:0lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_2Sigmoidlstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_196/Relu_1Relulstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_196/mul_2Mullstm_cell_196/Sigmoid_2:y:0"lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_196_matmul_readvariableop_resource.lstm_cell_196_matmul_1_readvariableop_resource-lstm_cell_196_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1195209*
condR
while_cond_1195208*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_196/BiasAdd/ReadVariableOp$^lstm_cell_196/MatMul/ReadVariableOp&^lstm_cell_196/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_196/BiasAdd/ReadVariableOp$lstm_cell_196/BiasAdd/ReadVariableOp2J
#lstm_cell_196/MatMul/ReadVariableOp#lstm_cell_196/MatMul/ReadVariableOp2N
%lstm_cell_196/MatMul_1/ReadVariableOp%lstm_cell_196/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
─8
н
while_body_1195968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_197_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_197_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_197_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_197_matmul_readvariableop_resource:2(F
4while_lstm_cell_197_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_197_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_197/BiasAdd/ReadVariableOpб)while/lstm_cell_197/MatMul/ReadVariableOpб+while/lstm_cell_197/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_197/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_197_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_197/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_197_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_197/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_197/addAddV2$while/lstm_cell_197/MatMul:product:0&while/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_197_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_197/BiasAddBiasAddwhile/lstm_cell_197/add:z:02while/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_197/splitSplit,while/lstm_cell_197/split/split_dim:output:0$while/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_197/SigmoidSigmoid"while/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_1Sigmoid"while/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_197/mulMul!while/lstm_cell_197/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_197/ReluRelu"while/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_197/mul_1Mulwhile/lstm_cell_197/Sigmoid:y:0&while/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_197/add_1AddV2while/lstm_cell_197/mul:z:0while/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_2Sigmoid"while/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_197/Relu_1Reluwhile/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_197/mul_2Mul!while/lstm_cell_197/Sigmoid_2:y:0(while/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_197/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_197/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_197/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_197/BiasAdd/ReadVariableOp*^while/lstm_cell_197/MatMul/ReadVariableOp,^while/lstm_cell_197/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_197_biasadd_readvariableop_resource5while_lstm_cell_197_biasadd_readvariableop_resource_0"n
4while_lstm_cell_197_matmul_1_readvariableop_resource6while_lstm_cell_197_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_197_matmul_readvariableop_resource4while_lstm_cell_197_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_197/BiasAdd/ReadVariableOp*while/lstm_cell_197/BiasAdd/ReadVariableOp2V
)while/lstm_cell_197/MatMul/ReadVariableOp)while/lstm_cell_197/MatMul/ReadVariableOp2Z
+while/lstm_cell_197/MatMul_1/ReadVariableOp+while/lstm_cell_197/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_1194307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_195_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_195_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_195_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_195_matmul_readvariableop_resource:	љG
4while_lstm_cell_195_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_195_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_195/BiasAdd/ReadVariableOpб)while/lstm_cell_195/MatMul/ReadVariableOpб+while/lstm_cell_195/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_195/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_195_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_195/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_195_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_195/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_195/addAddV2$while/lstm_cell_195/MatMul:product:0&while/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_195_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_195/BiasAddBiasAddwhile/lstm_cell_195/add:z:02while/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_195/splitSplit,while/lstm_cell_195/split/split_dim:output:0$while/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_195/SigmoidSigmoid"while/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_1Sigmoid"while/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_195/mulMul!while/lstm_cell_195/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_195/ReluRelu"while/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_195/mul_1Mulwhile/lstm_cell_195/Sigmoid:y:0&while/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_195/add_1AddV2while/lstm_cell_195/mul:z:0while/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_2Sigmoid"while/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_195/Relu_1Reluwhile/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_195/mul_2Mul!while/lstm_cell_195/Sigmoid_2:y:0(while/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_195/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_195/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_195/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_195/BiasAdd/ReadVariableOp*^while/lstm_cell_195/MatMul/ReadVariableOp,^while/lstm_cell_195/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_195_biasadd_readvariableop_resource5while_lstm_cell_195_biasadd_readvariableop_resource_0"n
4while_lstm_cell_195_matmul_1_readvariableop_resource6while_lstm_cell_195_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_195_matmul_readvariableop_resource4while_lstm_cell_195_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_195/BiasAdd/ReadVariableOp*while/lstm_cell_195/BiasAdd/ReadVariableOp2V
)while/lstm_cell_195/MatMul/ReadVariableOp)while/lstm_cell_195/MatMul/ReadVariableOp2Z
+while/lstm_cell_195/MatMul_1/ReadVariableOp+while/lstm_cell_195/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_1191466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1191466___redundant_placeholder05
1while_while_cond_1191466___redundant_placeholder15
1while_while_cond_1191466___redundant_placeholder25
1while_while_cond_1191466___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_1192007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1192007___redundant_placeholder05
1while_while_cond_1192007___redundant_placeholder15
1while_while_cond_1192007___redundant_placeholder25
1while_while_cond_1192007___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
ПJ
а
E__inference_lstm_110_layer_call_and_return_conditional_losses_1192751

inputs>
,lstm_cell_197_matmul_readvariableop_resource:2(@
.lstm_cell_197_matmul_1_readvariableop_resource:
(;
-lstm_cell_197_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_197/BiasAdd/ReadVariableOpб#lstm_cell_197/MatMul/ReadVariableOpб%lstm_cell_197/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_197/MatMul/ReadVariableOpReadVariableOp,lstm_cell_197_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_197/MatMulMatMulstrided_slice_2:output:0+lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_197_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_197/MatMul_1MatMulzeros:output:0-lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_197/addAddV2lstm_cell_197/MatMul:product:0 lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_197_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_197/BiasAddBiasAddlstm_cell_197/add:z:0,lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_197/splitSplit&lstm_cell_197/split/split_dim:output:0lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_197/SigmoidSigmoidlstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_1Sigmoidlstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_197/mulMullstm_cell_197/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_197/ReluRelulstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_197/mul_1Mullstm_cell_197/Sigmoid:y:0 lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_197/add_1AddV2lstm_cell_197/mul:z:0lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_2Sigmoidlstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_197/Relu_1Relulstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_197/mul_2Mullstm_cell_197/Sigmoid_2:y:0"lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_197_matmul_readvariableop_resource.lstm_cell_197_matmul_1_readvariableop_resource-lstm_cell_197_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1192667*
condR
while_cond_1192666*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         
├
NoOpNoOp%^lstm_cell_197/BiasAdd/ReadVariableOp$^lstm_cell_197/MatMul/ReadVariableOp&^lstm_cell_197/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_197/BiasAdd/ReadVariableOp$lstm_cell_197/BiasAdd/ReadVariableOp2J
#lstm_cell_197/MatMul/ReadVariableOp#lstm_cell_197/MatMul/ReadVariableOp2N
%lstm_cell_197/MatMul_1/ReadVariableOp%lstm_cell_197/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_1192666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1192666___redundant_placeholder05
1while_while_cond_1192666___redundant_placeholder15
1while_while_cond_1192666___redundant_placeholder25
1while_while_cond_1192666___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Г
╣
*__inference_lstm_109_layer_call_fn_1194831
inputs_0
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_109_layer_call_and_return_conditional_losses_1191536|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
┐
ћ
)sequential_36_lstm_109_while_cond_1190806J
Fsequential_36_lstm_109_while_sequential_36_lstm_109_while_loop_counterP
Lsequential_36_lstm_109_while_sequential_36_lstm_109_while_maximum_iterations,
(sequential_36_lstm_109_while_placeholder.
*sequential_36_lstm_109_while_placeholder_1.
*sequential_36_lstm_109_while_placeholder_2.
*sequential_36_lstm_109_while_placeholder_3L
Hsequential_36_lstm_109_while_less_sequential_36_lstm_109_strided_slice_1c
_sequential_36_lstm_109_while_sequential_36_lstm_109_while_cond_1190806___redundant_placeholder0c
_sequential_36_lstm_109_while_sequential_36_lstm_109_while_cond_1190806___redundant_placeholder1c
_sequential_36_lstm_109_while_sequential_36_lstm_109_while_cond_1190806___redundant_placeholder2c
_sequential_36_lstm_109_while_sequential_36_lstm_109_while_cond_1190806___redundant_placeholder3)
%sequential_36_lstm_109_while_identity
Й
!sequential_36/lstm_109/while/LessLess(sequential_36_lstm_109_while_placeholderHsequential_36_lstm_109_while_less_sequential_36_lstm_109_strided_slice_1*
T0*
_output_shapes
: y
%sequential_36/lstm_109/while/IdentityIdentity%sequential_36/lstm_109/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_36_lstm_109_while_identity.sequential_36/lstm_109/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_1195351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1195351___redundant_placeholder05
1while_while_cond_1195351___redundant_placeholder15
1while_while_cond_1195351___redundant_placeholder25
1while_while_cond_1195351___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
»8
ј
E__inference_lstm_109_layer_call_and_return_conditional_losses_1191727

inputs(
lstm_cell_196_1191645:	d╚(
lstm_cell_196_1191647:	2╚$
lstm_cell_196_1191649:	╚
identityѕб%lstm_cell_196/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask■
%lstm_cell_196/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_196_1191645lstm_cell_196_1191647lstm_cell_196_1191649*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1191599n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_196_1191645lstm_cell_196_1191647lstm_cell_196_1191649*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1191658*
condR
while_cond_1191657*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2v
NoOpNoOp&^lstm_cell_196/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_196/StatefulPartitionedCall%lstm_cell_196/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
Н
Ё
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1196333

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
║
╚
while_cond_1195824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1195824___redundant_placeholder05
1while_while_cond_1195824___redundant_placeholder15
1while_while_cond_1195824___redundant_placeholder25
1while_while_cond_1195824___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_108_while_cond_1193835.
*lstm_108_while_lstm_108_while_loop_counter4
0lstm_108_while_lstm_108_while_maximum_iterations
lstm_108_while_placeholder 
lstm_108_while_placeholder_1 
lstm_108_while_placeholder_2 
lstm_108_while_placeholder_30
,lstm_108_while_less_lstm_108_strided_slice_1G
Clstm_108_while_lstm_108_while_cond_1193835___redundant_placeholder0G
Clstm_108_while_lstm_108_while_cond_1193835___redundant_placeholder1G
Clstm_108_while_lstm_108_while_cond_1193835___redundant_placeholder2G
Clstm_108_while_lstm_108_while_cond_1193835___redundant_placeholder3
lstm_108_while_identity
є
lstm_108/while/LessLesslstm_108_while_placeholder,lstm_108_while_less_lstm_108_strided_slice_1*
T0*
_output_shapes
: ]
lstm_108/while/IdentityIdentitylstm_108/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_108_while_identity lstm_108/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
к
э
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193149

inputs#
lstm_108_1193122:	љ#
lstm_108_1193124:	dљ
lstm_108_1193126:	љ#
lstm_109_1193129:	d╚#
lstm_109_1193131:	2╚
lstm_109_1193133:	╚"
lstm_110_1193136:2("
lstm_110_1193138:
(
lstm_110_1193140:("
dense_36_1193143:

dense_36_1193145:
identityѕб dense_36/StatefulPartitionedCallб lstm_108/StatefulPartitionedCallб lstm_109/StatefulPartitionedCallб lstm_110/StatefulPartitionedCallІ
 lstm_108/StatefulPartitionedCallStatefulPartitionedCallinputslstm_108_1193122lstm_108_1193124lstm_108_1193126*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_108_layer_call_and_return_conditional_losses_1193081«
 lstm_109/StatefulPartitionedCallStatefulPartitionedCall)lstm_108/StatefulPartitionedCall:output:0lstm_109_1193129lstm_109_1193131lstm_109_1193133*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_109_layer_call_and_return_conditional_losses_1192916ф
 lstm_110/StatefulPartitionedCallStatefulPartitionedCall)lstm_109/StatefulPartitionedCall:output:0lstm_110_1193136lstm_110_1193138lstm_110_1193140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_110_layer_call_and_return_conditional_losses_1192751ќ
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)lstm_110/StatefulPartitionedCall:output:0dense_36_1193143dense_36_1193145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_1192553x
IdentityIdentity)dense_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_36/StatefulPartitionedCall!^lstm_108/StatefulPartitionedCall!^lstm_109/StatefulPartitionedCall!^lstm_110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 lstm_108/StatefulPartitionedCall lstm_108/StatefulPartitionedCall2D
 lstm_109/StatefulPartitionedCall lstm_109/StatefulPartitionedCall2D
 lstm_110/StatefulPartitionedCall lstm_110/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_1195208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1195208___redundant_placeholder05
1while_while_cond_1195208___redundant_placeholder15
1while_while_cond_1195208___redundant_placeholder25
1while_while_cond_1195208___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Э
┤
*__inference_lstm_110_layer_call_fn_1195469

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_110_layer_call_and_return_conditional_losses_1192535o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Л8
┌
while_body_1192997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_195_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_195_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_195_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_195_matmul_readvariableop_resource:	љG
4while_lstm_cell_195_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_195_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_195/BiasAdd/ReadVariableOpб)while/lstm_cell_195/MatMul/ReadVariableOpб+while/lstm_cell_195/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_195/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_195_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_195/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_195_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_195/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_195/addAddV2$while/lstm_cell_195/MatMul:product:0&while/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_195_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_195/BiasAddBiasAddwhile/lstm_cell_195/add:z:02while/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_195/splitSplit,while/lstm_cell_195/split/split_dim:output:0$while/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_195/SigmoidSigmoid"while/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_1Sigmoid"while/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_195/mulMul!while/lstm_cell_195/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_195/ReluRelu"while/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_195/mul_1Mulwhile/lstm_cell_195/Sigmoid:y:0&while/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_195/add_1AddV2while/lstm_cell_195/mul:z:0while/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_2Sigmoid"while/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_195/Relu_1Reluwhile/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_195/mul_2Mul!while/lstm_cell_195/Sigmoid_2:y:0(while/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_195/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_195/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_195/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_195/BiasAdd/ReadVariableOp*^while/lstm_cell_195/MatMul/ReadVariableOp,^while/lstm_cell_195/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_195_biasadd_readvariableop_resource5while_lstm_cell_195_biasadd_readvariableop_resource_0"n
4while_lstm_cell_195_matmul_1_readvariableop_resource6while_lstm_cell_195_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_195_matmul_readvariableop_resource4while_lstm_cell_195_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_195/BiasAdd/ReadVariableOp*while/lstm_cell_195/BiasAdd/ReadVariableOp2V
)while/lstm_cell_195/MatMul/ReadVariableOp)while/lstm_cell_195/MatMul/ReadVariableOp2Z
+while/lstm_cell_195/MatMul_1/ReadVariableOp+while/lstm_cell_195/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_109_layer_call_and_return_conditional_losses_1192916

inputs?
,lstm_cell_196_matmul_readvariableop_resource:	d╚A
.lstm_cell_196_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_196_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_196/BiasAdd/ReadVariableOpб#lstm_cell_196/MatMul/ReadVariableOpб%lstm_cell_196/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_196/MatMul/ReadVariableOpReadVariableOp,lstm_cell_196_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_196/MatMulMatMulstrided_slice_2:output:0+lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_196_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_196/MatMul_1MatMulzeros:output:0-lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_196/addAddV2lstm_cell_196/MatMul:product:0 lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_196_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_196/BiasAddBiasAddlstm_cell_196/add:z:0,lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_196/splitSplit&lstm_cell_196/split/split_dim:output:0lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_196/SigmoidSigmoidlstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_1Sigmoidlstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_196/mulMullstm_cell_196/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_196/ReluRelulstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_196/mul_1Mullstm_cell_196/Sigmoid:y:0 lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_196/add_1AddV2lstm_cell_196/mul:z:0lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_196/Sigmoid_2Sigmoidlstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_196/Relu_1Relulstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_196/mul_2Mullstm_cell_196/Sigmoid_2:y:0"lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_196_matmul_readvariableop_resource.lstm_cell_196_matmul_1_readvariableop_resource-lstm_cell_196_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1192832*
condR
while_cond_1192831*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_196/BiasAdd/ReadVariableOp$^lstm_cell_196/MatMul/ReadVariableOp&^lstm_cell_196/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_196/BiasAdd/ReadVariableOp$lstm_cell_196/BiasAdd/ReadVariableOp2J
#lstm_cell_196/MatMul/ReadVariableOp#lstm_cell_196/MatMul/ReadVariableOp2N
%lstm_cell_196/MatMul_1/ReadVariableOp%lstm_cell_196/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
ПJ
а
E__inference_lstm_110_layer_call_and_return_conditional_losses_1195909

inputs>
,lstm_cell_197_matmul_readvariableop_resource:2(@
.lstm_cell_197_matmul_1_readvariableop_resource:
(;
-lstm_cell_197_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_197/BiasAdd/ReadVariableOpб#lstm_cell_197/MatMul/ReadVariableOpб%lstm_cell_197/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_197/MatMul/ReadVariableOpReadVariableOp,lstm_cell_197_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_197/MatMulMatMulstrided_slice_2:output:0+lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_197_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_197/MatMul_1MatMulzeros:output:0-lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_197/addAddV2lstm_cell_197/MatMul:product:0 lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_197_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_197/BiasAddBiasAddlstm_cell_197/add:z:0,lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_197/splitSplit&lstm_cell_197/split/split_dim:output:0lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_197/SigmoidSigmoidlstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_1Sigmoidlstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_197/mulMullstm_cell_197/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_197/ReluRelulstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_197/mul_1Mullstm_cell_197/Sigmoid:y:0 lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_197/add_1AddV2lstm_cell_197/mul:z:0lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_2Sigmoidlstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_197/Relu_1Relulstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_197/mul_2Mullstm_cell_197/Sigmoid_2:y:0"lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_197_matmul_readvariableop_resource.lstm_cell_197_matmul_1_readvariableop_resource-lstm_cell_197_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1195825*
condR
while_cond_1195824*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         
├
NoOpNoOp%^lstm_cell_197/BiasAdd/ReadVariableOp$^lstm_cell_197/MatMul/ReadVariableOp&^lstm_cell_197/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_197/BiasAdd/ReadVariableOp$lstm_cell_197/BiasAdd/ReadVariableOp2J
#lstm_cell_197/MatMul/ReadVariableOp#lstm_cell_197/MatMul/ReadVariableOp2N
%lstm_cell_197/MatMul_1/ReadVariableOp%lstm_cell_197/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
─8
н
while_body_1195825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_197_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_197_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_197_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_197_matmul_readvariableop_resource:2(F
4while_lstm_cell_197_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_197_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_197/BiasAdd/ReadVariableOpб)while/lstm_cell_197/MatMul/ReadVariableOpб+while/lstm_cell_197/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_197/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_197_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_197/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_197_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_197/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_197/addAddV2$while/lstm_cell_197/MatMul:product:0&while/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_197_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_197/BiasAddBiasAddwhile/lstm_cell_197/add:z:02while/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_197/splitSplit,while/lstm_cell_197/split/split_dim:output:0$while/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_197/SigmoidSigmoid"while/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_1Sigmoid"while/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_197/mulMul!while/lstm_cell_197/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_197/ReluRelu"while/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_197/mul_1Mulwhile/lstm_cell_197/Sigmoid:y:0&while/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_197/add_1AddV2while/lstm_cell_197/mul:z:0while/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_2Sigmoid"while/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_197/Relu_1Reluwhile/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_197/mul_2Mul!while/lstm_cell_197/Sigmoid_2:y:0(while/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_197/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_197/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_197/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_197/BiasAdd/ReadVariableOp*^while/lstm_cell_197/MatMul/ReadVariableOp,^while/lstm_cell_197/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_197_biasadd_readvariableop_resource5while_lstm_cell_197_biasadd_readvariableop_resource_0"n
4while_lstm_cell_197_matmul_1_readvariableop_resource6while_lstm_cell_197_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_197_matmul_readvariableop_resource4while_lstm_cell_197_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_197/BiasAdd/ReadVariableOp*while/lstm_cell_197/BiasAdd/ReadVariableOp2V
)while/lstm_cell_197/MatMul/ReadVariableOp)while/lstm_cell_197/MatMul/ReadVariableOp2Z
+while/lstm_cell_197/MatMul_1/ReadVariableOp+while/lstm_cell_197/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_108_layer_call_and_return_conditional_losses_1192235

inputs?
,lstm_cell_195_matmul_readvariableop_resource:	љA
.lstm_cell_195_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_195_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_195/BiasAdd/ReadVariableOpб#lstm_cell_195/MatMul/ReadVariableOpб%lstm_cell_195/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_195/MatMul/ReadVariableOpReadVariableOp,lstm_cell_195_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_195/MatMulMatMulstrided_slice_2:output:0+lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_195_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_195/MatMul_1MatMulzeros:output:0-lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_195/addAddV2lstm_cell_195/MatMul:product:0 lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_195_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_195/BiasAddBiasAddlstm_cell_195/add:z:0,lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_195/splitSplit&lstm_cell_195/split/split_dim:output:0lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_195/SigmoidSigmoidlstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_1Sigmoidlstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_195/mulMullstm_cell_195/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_195/ReluRelulstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_195/mul_1Mullstm_cell_195/Sigmoid:y:0 lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_195/add_1AddV2lstm_cell_195/mul:z:0lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_2Sigmoidlstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_195/Relu_1Relulstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_195/mul_2Mullstm_cell_195/Sigmoid_2:y:0"lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_195_matmul_readvariableop_resource.lstm_cell_195_matmul_1_readvariableop_resource-lstm_cell_195_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1192151*
condR
while_cond_1192150*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_195/BiasAdd/ReadVariableOp$^lstm_cell_195/MatMul/ReadVariableOp&^lstm_cell_195/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_195/BiasAdd/ReadVariableOp$lstm_cell_195/BiasAdd/ReadVariableOp2J
#lstm_cell_195/MatMul/ReadVariableOp#lstm_cell_195/MatMul/ReadVariableOp2N
%lstm_cell_195/MatMul_1/ReadVariableOp%lstm_cell_195/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_1192301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_196_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_196_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_196_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_196_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_196_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_196_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_196/BiasAdd/ReadVariableOpб)while/lstm_cell_196/MatMul/ReadVariableOpб+while/lstm_cell_196/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_196/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_196_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_196/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_196_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_196/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_196/addAddV2$while/lstm_cell_196/MatMul:product:0&while/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_196_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_196/BiasAddBiasAddwhile/lstm_cell_196/add:z:02while/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_196/splitSplit,while/lstm_cell_196/split/split_dim:output:0$while/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_196/SigmoidSigmoid"while/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_1Sigmoid"while/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_196/mulMul!while/lstm_cell_196/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_196/ReluRelu"while/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_196/mul_1Mulwhile/lstm_cell_196/Sigmoid:y:0&while/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_196/add_1AddV2while/lstm_cell_196/mul:z:0while/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_2Sigmoid"while/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_196/Relu_1Reluwhile/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_196/mul_2Mul!while/lstm_cell_196/Sigmoid_2:y:0(while/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_196/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_196/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_196/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_196/BiasAdd/ReadVariableOp*^while/lstm_cell_196/MatMul/ReadVariableOp,^while/lstm_cell_196/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_196_biasadd_readvariableop_resource5while_lstm_cell_196_biasadd_readvariableop_resource_0"n
4while_lstm_cell_196_matmul_1_readvariableop_resource6while_lstm_cell_196_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_196_matmul_readvariableop_resource4while_lstm_cell_196_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_196/BiasAdd/ReadVariableOp*while/lstm_cell_196/BiasAdd/ReadVariableOp2V
)while/lstm_cell_196/MatMul/ReadVariableOp)while/lstm_cell_196/MatMul/ReadVariableOp2Z
+while/lstm_cell_196/MatMul_1/ReadVariableOp+while/lstm_cell_196/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
аK
Ц
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194534
inputs_0?
,lstm_cell_195_matmul_readvariableop_resource:	љA
.lstm_cell_195_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_195_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_195/BiasAdd/ReadVariableOpб#lstm_cell_195/MatMul/ReadVariableOpб%lstm_cell_195/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_195/MatMul/ReadVariableOpReadVariableOp,lstm_cell_195_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_195/MatMulMatMulstrided_slice_2:output:0+lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_195_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_195/MatMul_1MatMulzeros:output:0-lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_195/addAddV2lstm_cell_195/MatMul:product:0 lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_195_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_195/BiasAddBiasAddlstm_cell_195/add:z:0,lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_195/splitSplit&lstm_cell_195/split/split_dim:output:0lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_195/SigmoidSigmoidlstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_1Sigmoidlstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_195/mulMullstm_cell_195/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_195/ReluRelulstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_195/mul_1Mullstm_cell_195/Sigmoid:y:0 lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_195/add_1AddV2lstm_cell_195/mul:z:0lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_2Sigmoidlstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_195/Relu_1Relulstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_195/mul_2Mullstm_cell_195/Sigmoid_2:y:0"lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_195_matmul_readvariableop_resource.lstm_cell_195_matmul_1_readvariableop_resource-lstm_cell_195_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1194450*
condR
while_cond_1194449*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d├
NoOpNoOp%^lstm_cell_195/BiasAdd/ReadVariableOp$^lstm_cell_195/MatMul/ReadVariableOp&^lstm_cell_195/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_195/BiasAdd/ReadVariableOp$lstm_cell_195/BiasAdd/ReadVariableOp2J
#lstm_cell_195/MatMul/ReadVariableOp#lstm_cell_195/MatMul/ReadVariableOp2N
%lstm_cell_195/MatMul_1/ReadVariableOp%lstm_cell_195/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
ПJ
а
E__inference_lstm_110_layer_call_and_return_conditional_losses_1196052

inputs>
,lstm_cell_197_matmul_readvariableop_resource:2(@
.lstm_cell_197_matmul_1_readvariableop_resource:
(;
-lstm_cell_197_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_197/BiasAdd/ReadVariableOpб#lstm_cell_197/MatMul/ReadVariableOpб%lstm_cell_197/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_197/MatMul/ReadVariableOpReadVariableOp,lstm_cell_197_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_197/MatMulMatMulstrided_slice_2:output:0+lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_197_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_197/MatMul_1MatMulzeros:output:0-lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_197/addAddV2lstm_cell_197/MatMul:product:0 lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_197_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_197/BiasAddBiasAddlstm_cell_197/add:z:0,lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_197/splitSplit&lstm_cell_197/split/split_dim:output:0lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_197/SigmoidSigmoidlstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_1Sigmoidlstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_197/mulMullstm_cell_197/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_197/ReluRelulstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_197/mul_1Mullstm_cell_197/Sigmoid:y:0 lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_197/add_1AddV2lstm_cell_197/mul:z:0lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_2Sigmoidlstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_197/Relu_1Relulstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_197/mul_2Mullstm_cell_197/Sigmoid_2:y:0"lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_197_matmul_readvariableop_resource.lstm_cell_197_matmul_1_readvariableop_resource-lstm_cell_197_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1195968*
condR
while_cond_1195967*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         
├
NoOpNoOp%^lstm_cell_197/BiasAdd/ReadVariableOp$^lstm_cell_197/MatMul/ReadVariableOp&^lstm_cell_197/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_197/BiasAdd/ReadVariableOp$lstm_cell_197/BiasAdd/ReadVariableOp2J
#lstm_cell_197/MatMul/ReadVariableOp#lstm_cell_197/MatMul/ReadVariableOp2N
%lstm_cell_197/MatMul_1/ReadVariableOp%lstm_cell_197/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1196235

inputs
states_0
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
О
є
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1191599

inputs

states
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates
»8
ј
E__inference_lstm_108_layer_call_and_return_conditional_losses_1191186

inputs(
lstm_cell_195_1191104:	љ(
lstm_cell_195_1191106:	dљ$
lstm_cell_195_1191108:	љ
identityѕб%lstm_cell_195/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask■
%lstm_cell_195/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_195_1191104lstm_cell_195_1191106lstm_cell_195_1191108*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1191103n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_195_1191104lstm_cell_195_1191106lstm_cell_195_1191108*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1191117*
condR
while_cond_1191116*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  dv
NoOpNoOp&^lstm_cell_195/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_195/StatefulPartitionedCall%lstm_cell_195/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Ѓ
и
*__inference_lstm_108_layer_call_fn_1194237

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_108_layer_call_and_return_conditional_losses_1192235s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
АC
Щ

lstm_109_while_body_1193548.
*lstm_109_while_lstm_109_while_loop_counter4
0lstm_109_while_lstm_109_while_maximum_iterations
lstm_109_while_placeholder 
lstm_109_while_placeholder_1 
lstm_109_while_placeholder_2 
lstm_109_while_placeholder_3-
)lstm_109_while_lstm_109_strided_slice_1_0i
elstm_109_while_tensorarrayv2read_tensorlistgetitem_lstm_109_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_109_while_lstm_cell_196_matmul_readvariableop_resource_0:	d╚R
?lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource_0:	2╚M
>lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource_0:	╚
lstm_109_while_identity
lstm_109_while_identity_1
lstm_109_while_identity_2
lstm_109_while_identity_3
lstm_109_while_identity_4
lstm_109_while_identity_5+
'lstm_109_while_lstm_109_strided_slice_1g
clstm_109_while_tensorarrayv2read_tensorlistgetitem_lstm_109_tensorarrayunstack_tensorlistfromtensorN
;lstm_109_while_lstm_cell_196_matmul_readvariableop_resource:	d╚P
=lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource:	2╚K
<lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource:	╚ѕб3lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOpб2lstm_109/while/lstm_cell_196/MatMul/ReadVariableOpб4lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOpЉ
@lstm_109/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_109/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_109_while_tensorarrayv2read_tensorlistgetitem_lstm_109_tensorarrayunstack_tensorlistfromtensor_0lstm_109_while_placeholderIlstm_109/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_109/while/lstm_cell_196/MatMul/ReadVariableOpReadVariableOp=lstm_109_while_lstm_cell_196_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_109/while/lstm_cell_196/MatMulMatMul9lstm_109/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp?lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_109/while/lstm_cell_196/MatMul_1MatMullstm_109_while_placeholder_2<lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_109/while/lstm_cell_196/addAddV2-lstm_109/while/lstm_cell_196/MatMul:product:0/lstm_109/while/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp>lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_109/while/lstm_cell_196/BiasAddBiasAdd$lstm_109/while/lstm_cell_196/add:z:0;lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_109/while/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_109/while/lstm_cell_196/splitSplit5lstm_109/while/lstm_cell_196/split/split_dim:output:0-lstm_109/while/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_109/while/lstm_cell_196/SigmoidSigmoid+lstm_109/while/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_109/while/lstm_cell_196/Sigmoid_1Sigmoid+lstm_109/while/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_109/while/lstm_cell_196/mulMul*lstm_109/while/lstm_cell_196/Sigmoid_1:y:0lstm_109_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_109/while/lstm_cell_196/ReluRelu+lstm_109/while/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_109/while/lstm_cell_196/mul_1Mul(lstm_109/while/lstm_cell_196/Sigmoid:y:0/lstm_109/while/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_109/while/lstm_cell_196/add_1AddV2$lstm_109/while/lstm_cell_196/mul:z:0&lstm_109/while/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_109/while/lstm_cell_196/Sigmoid_2Sigmoid+lstm_109/while/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_109/while/lstm_cell_196/Relu_1Relu&lstm_109/while/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_109/while/lstm_cell_196/mul_2Mul*lstm_109/while/lstm_cell_196/Sigmoid_2:y:01lstm_109/while/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_109/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_109_while_placeholder_1lstm_109_while_placeholder&lstm_109/while/lstm_cell_196/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_109/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_109/while/addAddV2lstm_109_while_placeholderlstm_109/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_109/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_109/while/add_1AddV2*lstm_109_while_lstm_109_while_loop_counterlstm_109/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_109/while/IdentityIdentitylstm_109/while/add_1:z:0^lstm_109/while/NoOp*
T0*
_output_shapes
: ј
lstm_109/while/Identity_1Identity0lstm_109_while_lstm_109_while_maximum_iterations^lstm_109/while/NoOp*
T0*
_output_shapes
: t
lstm_109/while/Identity_2Identitylstm_109/while/add:z:0^lstm_109/while/NoOp*
T0*
_output_shapes
: А
lstm_109/while/Identity_3IdentityClstm_109/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_109/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_109/while/Identity_4Identity&lstm_109/while/lstm_cell_196/mul_2:z:0^lstm_109/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_109/while/Identity_5Identity&lstm_109/while/lstm_cell_196/add_1:z:0^lstm_109/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_109/while/NoOpNoOp4^lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOp3^lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp5^lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_109_while_identity lstm_109/while/Identity:output:0"?
lstm_109_while_identity_1"lstm_109/while/Identity_1:output:0"?
lstm_109_while_identity_2"lstm_109/while/Identity_2:output:0"?
lstm_109_while_identity_3"lstm_109/while/Identity_3:output:0"?
lstm_109_while_identity_4"lstm_109/while/Identity_4:output:0"?
lstm_109_while_identity_5"lstm_109/while/Identity_5:output:0"T
'lstm_109_while_lstm_109_strided_slice_1)lstm_109_while_lstm_109_strided_slice_1_0"~
<lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource>lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource_0"ђ
=lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource?lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource_0"|
;lstm_109_while_lstm_cell_196_matmul_readvariableop_resource=lstm_109_while_lstm_cell_196_matmul_readvariableop_resource_0"╠
clstm_109_while_tensorarrayv2read_tensorlistgetitem_lstm_109_tensorarrayunstack_tensorlistfromtensorelstm_109_while_tensorarrayv2read_tensorlistgetitem_lstm_109_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOp3lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOp2h
2lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp2lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp2l
4lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp4lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
О
є
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1191249

inputs

states
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates
Л8
┌
while_body_1192151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_195_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_195_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_195_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_195_matmul_readvariableop_resource:	љG
4while_lstm_cell_195_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_195_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_195/BiasAdd/ReadVariableOpб)while/lstm_cell_195/MatMul/ReadVariableOpб+while/lstm_cell_195/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_195/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_195_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_195/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_195_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_195/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_195/addAddV2$while/lstm_cell_195/MatMul:product:0&while/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_195_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_195/BiasAddBiasAddwhile/lstm_cell_195/add:z:02while/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_195/splitSplit,while/lstm_cell_195/split/split_dim:output:0$while/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_195/SigmoidSigmoid"while/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_1Sigmoid"while/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_195/mulMul!while/lstm_cell_195/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_195/ReluRelu"while/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_195/mul_1Mulwhile/lstm_cell_195/Sigmoid:y:0&while/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_195/add_1AddV2while/lstm_cell_195/mul:z:0while/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_195/Sigmoid_2Sigmoid"while/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_195/Relu_1Reluwhile/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_195/mul_2Mul!while/lstm_cell_195/Sigmoid_2:y:0(while/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_195/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_195/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_195/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_195/BiasAdd/ReadVariableOp*^while/lstm_cell_195/MatMul/ReadVariableOp,^while/lstm_cell_195/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_195_biasadd_readvariableop_resource5while_lstm_cell_195_biasadd_readvariableop_resource_0"n
4while_lstm_cell_195_matmul_1_readvariableop_resource6while_lstm_cell_195_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_195_matmul_readvariableop_resource4while_lstm_cell_195_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_195/BiasAdd/ReadVariableOp*while/lstm_cell_195/BiasAdd/ReadVariableOp2V
)while/lstm_cell_195/MatMul/ReadVariableOp)while/lstm_cell_195/MatMul/ReadVariableOp2Z
+while/lstm_cell_195/MatMul_1/ReadVariableOp+while/lstm_cell_195/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
ПJ
а
E__inference_lstm_110_layer_call_and_return_conditional_losses_1192535

inputs>
,lstm_cell_197_matmul_readvariableop_resource:2(@
.lstm_cell_197_matmul_1_readvariableop_resource:
(;
-lstm_cell_197_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_197/BiasAdd/ReadVariableOpб#lstm_cell_197/MatMul/ReadVariableOpб%lstm_cell_197/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_197/MatMul/ReadVariableOpReadVariableOp,lstm_cell_197_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_197/MatMulMatMulstrided_slice_2:output:0+lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_197_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_197/MatMul_1MatMulzeros:output:0-lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_197/addAddV2lstm_cell_197/MatMul:product:0 lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_197_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_197/BiasAddBiasAddlstm_cell_197/add:z:0,lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_197/splitSplit&lstm_cell_197/split/split_dim:output:0lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_197/SigmoidSigmoidlstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_1Sigmoidlstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_197/mulMullstm_cell_197/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_197/ReluRelulstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_197/mul_1Mullstm_cell_197/Sigmoid:y:0 lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_197/add_1AddV2lstm_cell_197/mul:z:0lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_2Sigmoidlstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_197/Relu_1Relulstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_197/mul_2Mullstm_cell_197/Sigmoid_2:y:0"lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_197_matmul_readvariableop_resource.lstm_cell_197_matmul_1_readvariableop_resource-lstm_cell_197_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1192451*
condR
while_cond_1192450*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         
├
NoOpNoOp%^lstm_cell_197/BiasAdd/ReadVariableOp$^lstm_cell_197/MatMul/ReadVariableOp&^lstm_cell_197/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_197/BiasAdd/ReadVariableOp$lstm_cell_197/BiasAdd/ReadVariableOp2J
#lstm_cell_197/MatMul/ReadVariableOp#lstm_cell_197/MatMul/ReadVariableOp2N
%lstm_cell_197/MatMul_1/ReadVariableOp%lstm_cell_197/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_1192150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1192150___redundant_placeholder05
1while_while_cond_1192150___redundant_placeholder15
1while_while_cond_1192150___redundant_placeholder25
1while_while_cond_1192150___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
№
Э
/__inference_lstm_cell_195_layer_call_fn_1196105

inputs
states_0
states_1
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1191249o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
Л8
┌
while_body_1195066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_196_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_196_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_196_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_196_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_196_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_196_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_196/BiasAdd/ReadVariableOpб)while/lstm_cell_196/MatMul/ReadVariableOpб+while/lstm_cell_196/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_196/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_196_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_196/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_196_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_196/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_196/addAddV2$while/lstm_cell_196/MatMul:product:0&while/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_196_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_196/BiasAddBiasAddwhile/lstm_cell_196/add:z:02while/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_196/splitSplit,while/lstm_cell_196/split/split_dim:output:0$while/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_196/SigmoidSigmoid"while/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_1Sigmoid"while/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_196/mulMul!while/lstm_cell_196/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_196/ReluRelu"while/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_196/mul_1Mulwhile/lstm_cell_196/Sigmoid:y:0&while/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_196/add_1AddV2while/lstm_cell_196/mul:z:0while/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_2Sigmoid"while/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_196/Relu_1Reluwhile/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_196/mul_2Mul!while/lstm_cell_196/Sigmoid_2:y:0(while/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_196/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_196/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_196/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_196/BiasAdd/ReadVariableOp*^while/lstm_cell_196/MatMul/ReadVariableOp,^while/lstm_cell_196/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_196_biasadd_readvariableop_resource5while_lstm_cell_196_biasadd_readvariableop_resource_0"n
4while_lstm_cell_196_matmul_1_readvariableop_resource6while_lstm_cell_196_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_196_matmul_readvariableop_resource4while_lstm_cell_196_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_196/BiasAdd/ReadVariableOp*while/lstm_cell_196/BiasAdd/ReadVariableOp2V
)while/lstm_cell_196/MatMul/ReadVariableOp)while/lstm_cell_196/MatMul/ReadVariableOp2Z
+while/lstm_cell_196/MatMul_1/ReadVariableOp+while/lstm_cell_196/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_1192450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1192450___redundant_placeholder05
1while_while_cond_1192450___redundant_placeholder15
1while_while_cond_1192450___redundant_placeholder25
1while_while_cond_1192450___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
АC
Щ

lstm_109_while_body_1193975.
*lstm_109_while_lstm_109_while_loop_counter4
0lstm_109_while_lstm_109_while_maximum_iterations
lstm_109_while_placeholder 
lstm_109_while_placeholder_1 
lstm_109_while_placeholder_2 
lstm_109_while_placeholder_3-
)lstm_109_while_lstm_109_strided_slice_1_0i
elstm_109_while_tensorarrayv2read_tensorlistgetitem_lstm_109_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_109_while_lstm_cell_196_matmul_readvariableop_resource_0:	d╚R
?lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource_0:	2╚M
>lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource_0:	╚
lstm_109_while_identity
lstm_109_while_identity_1
lstm_109_while_identity_2
lstm_109_while_identity_3
lstm_109_while_identity_4
lstm_109_while_identity_5+
'lstm_109_while_lstm_109_strided_slice_1g
clstm_109_while_tensorarrayv2read_tensorlistgetitem_lstm_109_tensorarrayunstack_tensorlistfromtensorN
;lstm_109_while_lstm_cell_196_matmul_readvariableop_resource:	d╚P
=lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource:	2╚K
<lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource:	╚ѕб3lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOpб2lstm_109/while/lstm_cell_196/MatMul/ReadVariableOpб4lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOpЉ
@lstm_109/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_109/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_109_while_tensorarrayv2read_tensorlistgetitem_lstm_109_tensorarrayunstack_tensorlistfromtensor_0lstm_109_while_placeholderIlstm_109/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_109/while/lstm_cell_196/MatMul/ReadVariableOpReadVariableOp=lstm_109_while_lstm_cell_196_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_109/while/lstm_cell_196/MatMulMatMul9lstm_109/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp?lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_109/while/lstm_cell_196/MatMul_1MatMullstm_109_while_placeholder_2<lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_109/while/lstm_cell_196/addAddV2-lstm_109/while/lstm_cell_196/MatMul:product:0/lstm_109/while/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp>lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_109/while/lstm_cell_196/BiasAddBiasAdd$lstm_109/while/lstm_cell_196/add:z:0;lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_109/while/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_109/while/lstm_cell_196/splitSplit5lstm_109/while/lstm_cell_196/split/split_dim:output:0-lstm_109/while/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_109/while/lstm_cell_196/SigmoidSigmoid+lstm_109/while/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_109/while/lstm_cell_196/Sigmoid_1Sigmoid+lstm_109/while/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_109/while/lstm_cell_196/mulMul*lstm_109/while/lstm_cell_196/Sigmoid_1:y:0lstm_109_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_109/while/lstm_cell_196/ReluRelu+lstm_109/while/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_109/while/lstm_cell_196/mul_1Mul(lstm_109/while/lstm_cell_196/Sigmoid:y:0/lstm_109/while/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_109/while/lstm_cell_196/add_1AddV2$lstm_109/while/lstm_cell_196/mul:z:0&lstm_109/while/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_109/while/lstm_cell_196/Sigmoid_2Sigmoid+lstm_109/while/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_109/while/lstm_cell_196/Relu_1Relu&lstm_109/while/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_109/while/lstm_cell_196/mul_2Mul*lstm_109/while/lstm_cell_196/Sigmoid_2:y:01lstm_109/while/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_109/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_109_while_placeholder_1lstm_109_while_placeholder&lstm_109/while/lstm_cell_196/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_109/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_109/while/addAddV2lstm_109_while_placeholderlstm_109/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_109/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_109/while/add_1AddV2*lstm_109_while_lstm_109_while_loop_counterlstm_109/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_109/while/IdentityIdentitylstm_109/while/add_1:z:0^lstm_109/while/NoOp*
T0*
_output_shapes
: ј
lstm_109/while/Identity_1Identity0lstm_109_while_lstm_109_while_maximum_iterations^lstm_109/while/NoOp*
T0*
_output_shapes
: t
lstm_109/while/Identity_2Identitylstm_109/while/add:z:0^lstm_109/while/NoOp*
T0*
_output_shapes
: А
lstm_109/while/Identity_3IdentityClstm_109/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_109/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_109/while/Identity_4Identity&lstm_109/while/lstm_cell_196/mul_2:z:0^lstm_109/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_109/while/Identity_5Identity&lstm_109/while/lstm_cell_196/add_1:z:0^lstm_109/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_109/while/NoOpNoOp4^lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOp3^lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp5^lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_109_while_identity lstm_109/while/Identity:output:0"?
lstm_109_while_identity_1"lstm_109/while/Identity_1:output:0"?
lstm_109_while_identity_2"lstm_109/while/Identity_2:output:0"?
lstm_109_while_identity_3"lstm_109/while/Identity_3:output:0"?
lstm_109_while_identity_4"lstm_109/while/Identity_4:output:0"?
lstm_109_while_identity_5"lstm_109/while/Identity_5:output:0"T
'lstm_109_while_lstm_109_strided_slice_1)lstm_109_while_lstm_109_strided_slice_1_0"~
<lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource>lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource_0"ђ
=lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource?lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource_0"|
;lstm_109_while_lstm_cell_196_matmul_readvariableop_resource=lstm_109_while_lstm_cell_196_matmul_readvariableop_resource_0"╠
clstm_109_while_tensorarrayv2read_tensorlistgetitem_lstm_109_tensorarrayunstack_tensorlistfromtensorelstm_109_while_tensorarrayv2read_tensorlistgetitem_lstm_109_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOp3lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOp2h
2lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp2lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp2l
4lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp4lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Г
╣
*__inference_lstm_108_layer_call_fn_1194215
inputs_0
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_108_layer_call_and_return_conditional_losses_1191186|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
║
╚
while_cond_1195065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1195065___redundant_placeholder05
1while_while_cond_1195065___redundant_placeholder15
1while_while_cond_1195065___redundant_placeholder25
1while_while_cond_1195065___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_1192996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1192996___redundant_placeholder05
1while_while_cond_1192996___redundant_placeholder15
1while_while_cond_1192996___redundant_placeholder25
1while_while_cond_1192996___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_1191116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1191116___redundant_placeholder05
1while_while_cond_1191116___redundant_placeholder15
1while_while_cond_1191116___redundant_placeholder25
1while_while_cond_1191116___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
ии
н
"__inference__wrapped_model_1191036
lstm_108_inputV
Csequential_36_lstm_108_lstm_cell_195_matmul_readvariableop_resource:	љX
Esequential_36_lstm_108_lstm_cell_195_matmul_1_readvariableop_resource:	dљS
Dsequential_36_lstm_108_lstm_cell_195_biasadd_readvariableop_resource:	љV
Csequential_36_lstm_109_lstm_cell_196_matmul_readvariableop_resource:	d╚X
Esequential_36_lstm_109_lstm_cell_196_matmul_1_readvariableop_resource:	2╚S
Dsequential_36_lstm_109_lstm_cell_196_biasadd_readvariableop_resource:	╚U
Csequential_36_lstm_110_lstm_cell_197_matmul_readvariableop_resource:2(W
Esequential_36_lstm_110_lstm_cell_197_matmul_1_readvariableop_resource:
(R
Dsequential_36_lstm_110_lstm_cell_197_biasadd_readvariableop_resource:(G
5sequential_36_dense_36_matmul_readvariableop_resource:
D
6sequential_36_dense_36_biasadd_readvariableop_resource:
identityѕб-sequential_36/dense_36/BiasAdd/ReadVariableOpб,sequential_36/dense_36/MatMul/ReadVariableOpб;sequential_36/lstm_108/lstm_cell_195/BiasAdd/ReadVariableOpб:sequential_36/lstm_108/lstm_cell_195/MatMul/ReadVariableOpб<sequential_36/lstm_108/lstm_cell_195/MatMul_1/ReadVariableOpбsequential_36/lstm_108/whileб;sequential_36/lstm_109/lstm_cell_196/BiasAdd/ReadVariableOpб:sequential_36/lstm_109/lstm_cell_196/MatMul/ReadVariableOpб<sequential_36/lstm_109/lstm_cell_196/MatMul_1/ReadVariableOpбsequential_36/lstm_109/whileб;sequential_36/lstm_110/lstm_cell_197/BiasAdd/ReadVariableOpб:sequential_36/lstm_110/lstm_cell_197/MatMul/ReadVariableOpб<sequential_36/lstm_110/lstm_cell_197/MatMul_1/ReadVariableOpбsequential_36/lstm_110/whileZ
sequential_36/lstm_108/ShapeShapelstm_108_input*
T0*
_output_shapes
:t
*sequential_36/lstm_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_36/lstm_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_36/lstm_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_36/lstm_108/strided_sliceStridedSlice%sequential_36/lstm_108/Shape:output:03sequential_36/lstm_108/strided_slice/stack:output:05sequential_36/lstm_108/strided_slice/stack_1:output:05sequential_36/lstm_108/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_36/lstm_108/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dИ
#sequential_36/lstm_108/zeros/packedPack-sequential_36/lstm_108/strided_slice:output:0.sequential_36/lstm_108/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_36/lstm_108/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_36/lstm_108/zerosFill,sequential_36/lstm_108/zeros/packed:output:0+sequential_36/lstm_108/zeros/Const:output:0*
T0*'
_output_shapes
:         di
'sequential_36/lstm_108/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╝
%sequential_36/lstm_108/zeros_1/packedPack-sequential_36/lstm_108/strided_slice:output:00sequential_36/lstm_108/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_36/lstm_108/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_36/lstm_108/zeros_1Fill.sequential_36/lstm_108/zeros_1/packed:output:0-sequential_36/lstm_108/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dz
%sequential_36/lstm_108/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
 sequential_36/lstm_108/transpose	Transposelstm_108_input.sequential_36/lstm_108/transpose/perm:output:0*
T0*+
_output_shapes
:         r
sequential_36/lstm_108/Shape_1Shape$sequential_36/lstm_108/transpose:y:0*
T0*
_output_shapes
:v
,sequential_36/lstm_108/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_36/lstm_108/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_36/lstm_108/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_36/lstm_108/strided_slice_1StridedSlice'sequential_36/lstm_108/Shape_1:output:05sequential_36/lstm_108/strided_slice_1/stack:output:07sequential_36/lstm_108/strided_slice_1/stack_1:output:07sequential_36/lstm_108/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_36/lstm_108/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_36/lstm_108/TensorArrayV2TensorListReserve;sequential_36/lstm_108/TensorArrayV2/element_shape:output:0/sequential_36/lstm_108/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_36/lstm_108/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ц
>sequential_36/lstm_108/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_36/lstm_108/transpose:y:0Usequential_36/lstm_108/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_36/lstm_108/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_36/lstm_108/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_36/lstm_108/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_36/lstm_108/strided_slice_2StridedSlice$sequential_36/lstm_108/transpose:y:05sequential_36/lstm_108/strided_slice_2/stack:output:07sequential_36/lstm_108/strided_slice_2/stack_1:output:07sequential_36/lstm_108/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┐
:sequential_36/lstm_108/lstm_cell_195/MatMul/ReadVariableOpReadVariableOpCsequential_36_lstm_108_lstm_cell_195_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0П
+sequential_36/lstm_108/lstm_cell_195/MatMulMatMul/sequential_36/lstm_108/strided_slice_2:output:0Bsequential_36/lstm_108/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ├
<sequential_36/lstm_108/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOpEsequential_36_lstm_108_lstm_cell_195_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0О
-sequential_36/lstm_108/lstm_cell_195/MatMul_1MatMul%sequential_36/lstm_108/zeros:output:0Dsequential_36/lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љн
(sequential_36/lstm_108/lstm_cell_195/addAddV25sequential_36/lstm_108/lstm_cell_195/MatMul:product:07sequential_36/lstm_108/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љй
;sequential_36/lstm_108/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOpDsequential_36_lstm_108_lstm_cell_195_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0П
,sequential_36/lstm_108/lstm_cell_195/BiasAddBiasAdd,sequential_36/lstm_108/lstm_cell_195/add:z:0Csequential_36/lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љv
4sequential_36/lstm_108/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_36/lstm_108/lstm_cell_195/splitSplit=sequential_36/lstm_108/lstm_cell_195/split/split_dim:output:05sequential_36/lstm_108/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitъ
,sequential_36/lstm_108/lstm_cell_195/SigmoidSigmoid3sequential_36/lstm_108/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dа
.sequential_36/lstm_108/lstm_cell_195/Sigmoid_1Sigmoid3sequential_36/lstm_108/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dЙ
(sequential_36/lstm_108/lstm_cell_195/mulMul2sequential_36/lstm_108/lstm_cell_195/Sigmoid_1:y:0'sequential_36/lstm_108/zeros_1:output:0*
T0*'
_output_shapes
:         dў
)sequential_36/lstm_108/lstm_cell_195/ReluRelu3sequential_36/lstm_108/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         d╬
*sequential_36/lstm_108/lstm_cell_195/mul_1Mul0sequential_36/lstm_108/lstm_cell_195/Sigmoid:y:07sequential_36/lstm_108/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         d├
*sequential_36/lstm_108/lstm_cell_195/add_1AddV2,sequential_36/lstm_108/lstm_cell_195/mul:z:0.sequential_36/lstm_108/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dа
.sequential_36/lstm_108/lstm_cell_195/Sigmoid_2Sigmoid3sequential_36/lstm_108/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dЋ
+sequential_36/lstm_108/lstm_cell_195/Relu_1Relu.sequential_36/lstm_108/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dм
*sequential_36/lstm_108/lstm_cell_195/mul_2Mul2sequential_36/lstm_108/lstm_cell_195/Sigmoid_2:y:09sequential_36/lstm_108/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dЁ
4sequential_36/lstm_108/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   §
&sequential_36/lstm_108/TensorArrayV2_1TensorListReserve=sequential_36/lstm_108/TensorArrayV2_1/element_shape:output:0/sequential_36/lstm_108/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_36/lstm_108/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_36/lstm_108/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_36/lstm_108/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_36/lstm_108/whileWhile2sequential_36/lstm_108/while/loop_counter:output:08sequential_36/lstm_108/while/maximum_iterations:output:0$sequential_36/lstm_108/time:output:0/sequential_36/lstm_108/TensorArrayV2_1:handle:0%sequential_36/lstm_108/zeros:output:0'sequential_36/lstm_108/zeros_1:output:0/sequential_36/lstm_108/strided_slice_1:output:0Nsequential_36/lstm_108/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_36_lstm_108_lstm_cell_195_matmul_readvariableop_resourceEsequential_36_lstm_108_lstm_cell_195_matmul_1_readvariableop_resourceDsequential_36_lstm_108_lstm_cell_195_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_36_lstm_108_while_body_1190668*5
cond-R+
)sequential_36_lstm_108_while_cond_1190667*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations ў
Gsequential_36/lstm_108/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Є
9sequential_36/lstm_108/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_36/lstm_108/while:output:3Psequential_36/lstm_108/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0
,sequential_36/lstm_108/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_36/lstm_108/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_36/lstm_108/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_36/lstm_108/strided_slice_3StridedSliceBsequential_36/lstm_108/TensorArrayV2Stack/TensorListStack:tensor:05sequential_36/lstm_108/strided_slice_3/stack:output:07sequential_36/lstm_108/strided_slice_3/stack_1:output:07sequential_36/lstm_108/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask|
'sequential_36/lstm_108/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_36/lstm_108/transpose_1	TransposeBsequential_36/lstm_108/TensorArrayV2Stack/TensorListStack:tensor:00sequential_36/lstm_108/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_36/lstm_108/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_36/lstm_109/ShapeShape&sequential_36/lstm_108/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_36/lstm_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_36/lstm_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_36/lstm_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_36/lstm_109/strided_sliceStridedSlice%sequential_36/lstm_109/Shape:output:03sequential_36/lstm_109/strided_slice/stack:output:05sequential_36/lstm_109/strided_slice/stack_1:output:05sequential_36/lstm_109/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_36/lstm_109/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2И
#sequential_36/lstm_109/zeros/packedPack-sequential_36/lstm_109/strided_slice:output:0.sequential_36/lstm_109/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_36/lstm_109/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_36/lstm_109/zerosFill,sequential_36/lstm_109/zeros/packed:output:0+sequential_36/lstm_109/zeros/Const:output:0*
T0*'
_output_shapes
:         2i
'sequential_36/lstm_109/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╝
%sequential_36/lstm_109/zeros_1/packedPack-sequential_36/lstm_109/strided_slice:output:00sequential_36/lstm_109/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_36/lstm_109/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_36/lstm_109/zeros_1Fill.sequential_36/lstm_109/zeros_1/packed:output:0-sequential_36/lstm_109/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2z
%sequential_36/lstm_109/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_36/lstm_109/transpose	Transpose&sequential_36/lstm_108/transpose_1:y:0.sequential_36/lstm_109/transpose/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_36/lstm_109/Shape_1Shape$sequential_36/lstm_109/transpose:y:0*
T0*
_output_shapes
:v
,sequential_36/lstm_109/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_36/lstm_109/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_36/lstm_109/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_36/lstm_109/strided_slice_1StridedSlice'sequential_36/lstm_109/Shape_1:output:05sequential_36/lstm_109/strided_slice_1/stack:output:07sequential_36/lstm_109/strided_slice_1/stack_1:output:07sequential_36/lstm_109/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_36/lstm_109/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_36/lstm_109/TensorArrayV2TensorListReserve;sequential_36/lstm_109/TensorArrayV2/element_shape:output:0/sequential_36/lstm_109/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_36/lstm_109/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ц
>sequential_36/lstm_109/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_36/lstm_109/transpose:y:0Usequential_36/lstm_109/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_36/lstm_109/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_36/lstm_109/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_36/lstm_109/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_36/lstm_109/strided_slice_2StridedSlice$sequential_36/lstm_109/transpose:y:05sequential_36/lstm_109/strided_slice_2/stack:output:07sequential_36/lstm_109/strided_slice_2/stack_1:output:07sequential_36/lstm_109/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┐
:sequential_36/lstm_109/lstm_cell_196/MatMul/ReadVariableOpReadVariableOpCsequential_36_lstm_109_lstm_cell_196_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0П
+sequential_36/lstm_109/lstm_cell_196/MatMulMatMul/sequential_36/lstm_109/strided_slice_2:output:0Bsequential_36/lstm_109/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚├
<sequential_36/lstm_109/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOpEsequential_36_lstm_109_lstm_cell_196_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0О
-sequential_36/lstm_109/lstm_cell_196/MatMul_1MatMul%sequential_36/lstm_109/zeros:output:0Dsequential_36/lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚н
(sequential_36/lstm_109/lstm_cell_196/addAddV25sequential_36/lstm_109/lstm_cell_196/MatMul:product:07sequential_36/lstm_109/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚й
;sequential_36/lstm_109/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOpDsequential_36_lstm_109_lstm_cell_196_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0П
,sequential_36/lstm_109/lstm_cell_196/BiasAddBiasAdd,sequential_36/lstm_109/lstm_cell_196/add:z:0Csequential_36/lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚v
4sequential_36/lstm_109/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_36/lstm_109/lstm_cell_196/splitSplit=sequential_36/lstm_109/lstm_cell_196/split/split_dim:output:05sequential_36/lstm_109/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitъ
,sequential_36/lstm_109/lstm_cell_196/SigmoidSigmoid3sequential_36/lstm_109/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2а
.sequential_36/lstm_109/lstm_cell_196/Sigmoid_1Sigmoid3sequential_36/lstm_109/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2Й
(sequential_36/lstm_109/lstm_cell_196/mulMul2sequential_36/lstm_109/lstm_cell_196/Sigmoid_1:y:0'sequential_36/lstm_109/zeros_1:output:0*
T0*'
_output_shapes
:         2ў
)sequential_36/lstm_109/lstm_cell_196/ReluRelu3sequential_36/lstm_109/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2╬
*sequential_36/lstm_109/lstm_cell_196/mul_1Mul0sequential_36/lstm_109/lstm_cell_196/Sigmoid:y:07sequential_36/lstm_109/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2├
*sequential_36/lstm_109/lstm_cell_196/add_1AddV2,sequential_36/lstm_109/lstm_cell_196/mul:z:0.sequential_36/lstm_109/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2а
.sequential_36/lstm_109/lstm_cell_196/Sigmoid_2Sigmoid3sequential_36/lstm_109/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2Ћ
+sequential_36/lstm_109/lstm_cell_196/Relu_1Relu.sequential_36/lstm_109/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2м
*sequential_36/lstm_109/lstm_cell_196/mul_2Mul2sequential_36/lstm_109/lstm_cell_196/Sigmoid_2:y:09sequential_36/lstm_109/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ё
4sequential_36/lstm_109/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   §
&sequential_36/lstm_109/TensorArrayV2_1TensorListReserve=sequential_36/lstm_109/TensorArrayV2_1/element_shape:output:0/sequential_36/lstm_109/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_36/lstm_109/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_36/lstm_109/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_36/lstm_109/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_36/lstm_109/whileWhile2sequential_36/lstm_109/while/loop_counter:output:08sequential_36/lstm_109/while/maximum_iterations:output:0$sequential_36/lstm_109/time:output:0/sequential_36/lstm_109/TensorArrayV2_1:handle:0%sequential_36/lstm_109/zeros:output:0'sequential_36/lstm_109/zeros_1:output:0/sequential_36/lstm_109/strided_slice_1:output:0Nsequential_36/lstm_109/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_36_lstm_109_lstm_cell_196_matmul_readvariableop_resourceEsequential_36_lstm_109_lstm_cell_196_matmul_1_readvariableop_resourceDsequential_36_lstm_109_lstm_cell_196_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_36_lstm_109_while_body_1190807*5
cond-R+
)sequential_36_lstm_109_while_cond_1190806*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations ў
Gsequential_36/lstm_109/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Є
9sequential_36/lstm_109/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_36/lstm_109/while:output:3Psequential_36/lstm_109/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0
,sequential_36/lstm_109/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_36/lstm_109/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_36/lstm_109/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_36/lstm_109/strided_slice_3StridedSliceBsequential_36/lstm_109/TensorArrayV2Stack/TensorListStack:tensor:05sequential_36/lstm_109/strided_slice_3/stack:output:07sequential_36/lstm_109/strided_slice_3/stack_1:output:07sequential_36/lstm_109/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask|
'sequential_36/lstm_109/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_36/lstm_109/transpose_1	TransposeBsequential_36/lstm_109/TensorArrayV2Stack/TensorListStack:tensor:00sequential_36/lstm_109/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_36/lstm_109/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_36/lstm_110/ShapeShape&sequential_36/lstm_109/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_36/lstm_110/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_36/lstm_110/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_36/lstm_110/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_36/lstm_110/strided_sliceStridedSlice%sequential_36/lstm_110/Shape:output:03sequential_36/lstm_110/strided_slice/stack:output:05sequential_36/lstm_110/strided_slice/stack_1:output:05sequential_36/lstm_110/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_36/lstm_110/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
И
#sequential_36/lstm_110/zeros/packedPack-sequential_36/lstm_110/strided_slice:output:0.sequential_36/lstm_110/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_36/lstm_110/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_36/lstm_110/zerosFill,sequential_36/lstm_110/zeros/packed:output:0+sequential_36/lstm_110/zeros/Const:output:0*
T0*'
_output_shapes
:         
i
'sequential_36/lstm_110/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╝
%sequential_36/lstm_110/zeros_1/packedPack-sequential_36/lstm_110/strided_slice:output:00sequential_36/lstm_110/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_36/lstm_110/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_36/lstm_110/zeros_1Fill.sequential_36/lstm_110/zeros_1/packed:output:0-sequential_36/lstm_110/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
z
%sequential_36/lstm_110/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_36/lstm_110/transpose	Transpose&sequential_36/lstm_109/transpose_1:y:0.sequential_36/lstm_110/transpose/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_36/lstm_110/Shape_1Shape$sequential_36/lstm_110/transpose:y:0*
T0*
_output_shapes
:v
,sequential_36/lstm_110/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_36/lstm_110/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_36/lstm_110/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_36/lstm_110/strided_slice_1StridedSlice'sequential_36/lstm_110/Shape_1:output:05sequential_36/lstm_110/strided_slice_1/stack:output:07sequential_36/lstm_110/strided_slice_1/stack_1:output:07sequential_36/lstm_110/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_36/lstm_110/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_36/lstm_110/TensorArrayV2TensorListReserve;sequential_36/lstm_110/TensorArrayV2/element_shape:output:0/sequential_36/lstm_110/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_36/lstm_110/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ц
>sequential_36/lstm_110/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_36/lstm_110/transpose:y:0Usequential_36/lstm_110/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_36/lstm_110/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_36/lstm_110/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_36/lstm_110/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_36/lstm_110/strided_slice_2StridedSlice$sequential_36/lstm_110/transpose:y:05sequential_36/lstm_110/strided_slice_2/stack:output:07sequential_36/lstm_110/strided_slice_2/stack_1:output:07sequential_36/lstm_110/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskЙ
:sequential_36/lstm_110/lstm_cell_197/MatMul/ReadVariableOpReadVariableOpCsequential_36_lstm_110_lstm_cell_197_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▄
+sequential_36/lstm_110/lstm_cell_197/MatMulMatMul/sequential_36/lstm_110/strided_slice_2:output:0Bsequential_36/lstm_110/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┬
<sequential_36/lstm_110/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOpEsequential_36_lstm_110_lstm_cell_197_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0о
-sequential_36/lstm_110/lstm_cell_197/MatMul_1MatMul%sequential_36/lstm_110/zeros:output:0Dsequential_36/lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (М
(sequential_36/lstm_110/lstm_cell_197/addAddV25sequential_36/lstm_110/lstm_cell_197/MatMul:product:07sequential_36/lstm_110/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (╝
;sequential_36/lstm_110/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOpDsequential_36_lstm_110_lstm_cell_197_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▄
,sequential_36/lstm_110/lstm_cell_197/BiasAddBiasAdd,sequential_36/lstm_110/lstm_cell_197/add:z:0Csequential_36/lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (v
4sequential_36/lstm_110/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_36/lstm_110/lstm_cell_197/splitSplit=sequential_36/lstm_110/lstm_cell_197/split/split_dim:output:05sequential_36/lstm_110/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitъ
,sequential_36/lstm_110/lstm_cell_197/SigmoidSigmoid3sequential_36/lstm_110/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
а
.sequential_36/lstm_110/lstm_cell_197/Sigmoid_1Sigmoid3sequential_36/lstm_110/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
Й
(sequential_36/lstm_110/lstm_cell_197/mulMul2sequential_36/lstm_110/lstm_cell_197/Sigmoid_1:y:0'sequential_36/lstm_110/zeros_1:output:0*
T0*'
_output_shapes
:         
ў
)sequential_36/lstm_110/lstm_cell_197/ReluRelu3sequential_36/lstm_110/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
╬
*sequential_36/lstm_110/lstm_cell_197/mul_1Mul0sequential_36/lstm_110/lstm_cell_197/Sigmoid:y:07sequential_36/lstm_110/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
├
*sequential_36/lstm_110/lstm_cell_197/add_1AddV2,sequential_36/lstm_110/lstm_cell_197/mul:z:0.sequential_36/lstm_110/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
а
.sequential_36/lstm_110/lstm_cell_197/Sigmoid_2Sigmoid3sequential_36/lstm_110/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
Ћ
+sequential_36/lstm_110/lstm_cell_197/Relu_1Relu.sequential_36/lstm_110/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
м
*sequential_36/lstm_110/lstm_cell_197/mul_2Mul2sequential_36/lstm_110/lstm_cell_197/Sigmoid_2:y:09sequential_36/lstm_110/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ё
4sequential_36/lstm_110/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   §
&sequential_36/lstm_110/TensorArrayV2_1TensorListReserve=sequential_36/lstm_110/TensorArrayV2_1/element_shape:output:0/sequential_36/lstm_110/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_36/lstm_110/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_36/lstm_110/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_36/lstm_110/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_36/lstm_110/whileWhile2sequential_36/lstm_110/while/loop_counter:output:08sequential_36/lstm_110/while/maximum_iterations:output:0$sequential_36/lstm_110/time:output:0/sequential_36/lstm_110/TensorArrayV2_1:handle:0%sequential_36/lstm_110/zeros:output:0'sequential_36/lstm_110/zeros_1:output:0/sequential_36/lstm_110/strided_slice_1:output:0Nsequential_36/lstm_110/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_36_lstm_110_lstm_cell_197_matmul_readvariableop_resourceEsequential_36_lstm_110_lstm_cell_197_matmul_1_readvariableop_resourceDsequential_36_lstm_110_lstm_cell_197_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_36_lstm_110_while_body_1190946*5
cond-R+
)sequential_36_lstm_110_while_cond_1190945*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations ў
Gsequential_36/lstm_110/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Є
9sequential_36/lstm_110/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_36/lstm_110/while:output:3Psequential_36/lstm_110/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0
,sequential_36/lstm_110/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_36/lstm_110/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_36/lstm_110/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_36/lstm_110/strided_slice_3StridedSliceBsequential_36/lstm_110/TensorArrayV2Stack/TensorListStack:tensor:05sequential_36/lstm_110/strided_slice_3/stack:output:07sequential_36/lstm_110/strided_slice_3/stack_1:output:07sequential_36/lstm_110/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask|
'sequential_36/lstm_110/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_36/lstm_110/transpose_1	TransposeBsequential_36/lstm_110/TensorArrayV2Stack/TensorListStack:tensor:00sequential_36/lstm_110/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
r
sequential_36/lstm_110/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    б
,sequential_36/dense_36/MatMul/ReadVariableOpReadVariableOp5sequential_36_dense_36_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0└
sequential_36/dense_36/MatMulMatMul/sequential_36/lstm_110/strided_slice_3:output:04sequential_36/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_36/dense_36/BiasAdd/ReadVariableOpReadVariableOp6sequential_36_dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_36/dense_36/BiasAddBiasAdd'sequential_36/dense_36/MatMul:product:05sequential_36/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_36/dense_36/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp.^sequential_36/dense_36/BiasAdd/ReadVariableOp-^sequential_36/dense_36/MatMul/ReadVariableOp<^sequential_36/lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp;^sequential_36/lstm_108/lstm_cell_195/MatMul/ReadVariableOp=^sequential_36/lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp^sequential_36/lstm_108/while<^sequential_36/lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp;^sequential_36/lstm_109/lstm_cell_196/MatMul/ReadVariableOp=^sequential_36/lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp^sequential_36/lstm_109/while<^sequential_36/lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp;^sequential_36/lstm_110/lstm_cell_197/MatMul/ReadVariableOp=^sequential_36/lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp^sequential_36/lstm_110/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2^
-sequential_36/dense_36/BiasAdd/ReadVariableOp-sequential_36/dense_36/BiasAdd/ReadVariableOp2\
,sequential_36/dense_36/MatMul/ReadVariableOp,sequential_36/dense_36/MatMul/ReadVariableOp2z
;sequential_36/lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp;sequential_36/lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp2x
:sequential_36/lstm_108/lstm_cell_195/MatMul/ReadVariableOp:sequential_36/lstm_108/lstm_cell_195/MatMul/ReadVariableOp2|
<sequential_36/lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp<sequential_36/lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp2<
sequential_36/lstm_108/whilesequential_36/lstm_108/while2z
;sequential_36/lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp;sequential_36/lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp2x
:sequential_36/lstm_109/lstm_cell_196/MatMul/ReadVariableOp:sequential_36/lstm_109/lstm_cell_196/MatMul/ReadVariableOp2|
<sequential_36/lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp<sequential_36/lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp2<
sequential_36/lstm_109/whilesequential_36/lstm_109/while2z
;sequential_36/lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp;sequential_36/lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp2x
:sequential_36/lstm_110/lstm_cell_197/MatMul/ReadVariableOp:sequential_36/lstm_110/lstm_cell_197/MatMul/ReadVariableOp2|
<sequential_36/lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp<sequential_36/lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp2<
sequential_36/lstm_110/whilesequential_36/lstm_110/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_108_input
РJ
Б
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194820

inputs?
,lstm_cell_195_matmul_readvariableop_resource:	љA
.lstm_cell_195_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_195_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_195/BiasAdd/ReadVariableOpб#lstm_cell_195/MatMul/ReadVariableOpб%lstm_cell_195/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_195/MatMul/ReadVariableOpReadVariableOp,lstm_cell_195_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_195/MatMulMatMulstrided_slice_2:output:0+lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_195_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_195/MatMul_1MatMulzeros:output:0-lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_195/addAddV2lstm_cell_195/MatMul:product:0 lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_195_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_195/BiasAddBiasAddlstm_cell_195/add:z:0,lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_195/splitSplit&lstm_cell_195/split/split_dim:output:0lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_195/SigmoidSigmoidlstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_1Sigmoidlstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_195/mulMullstm_cell_195/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_195/ReluRelulstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_195/mul_1Mullstm_cell_195/Sigmoid:y:0 lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_195/add_1AddV2lstm_cell_195/mul:z:0lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_2Sigmoidlstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_195/Relu_1Relulstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_195/mul_2Mullstm_cell_195/Sigmoid_2:y:0"lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_195_matmul_readvariableop_resource.lstm_cell_195_matmul_1_readvariableop_resource-lstm_cell_195_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1194736*
condR
while_cond_1194735*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_195/BiasAdd/ReadVariableOp$^lstm_cell_195/MatMul/ReadVariableOp&^lstm_cell_195/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_195/BiasAdd/ReadVariableOp$lstm_cell_195/BiasAdd/ReadVariableOp2J
#lstm_cell_195/MatMul/ReadVariableOp#lstm_cell_195/MatMul/ReadVariableOp2N
%lstm_cell_195/MatMul_1/ReadVariableOp%lstm_cell_195/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
и

Ч
lstm_108_while_cond_1193408.
*lstm_108_while_lstm_108_while_loop_counter4
0lstm_108_while_lstm_108_while_maximum_iterations
lstm_108_while_placeholder 
lstm_108_while_placeholder_1 
lstm_108_while_placeholder_2 
lstm_108_while_placeholder_30
,lstm_108_while_less_lstm_108_strided_slice_1G
Clstm_108_while_lstm_108_while_cond_1193408___redundant_placeholder0G
Clstm_108_while_lstm_108_while_cond_1193408___redundant_placeholder1G
Clstm_108_while_lstm_108_while_cond_1193408___redundant_placeholder2G
Clstm_108_while_lstm_108_while_cond_1193408___redundant_placeholder3
lstm_108_while_identity
є
lstm_108/while/LessLesslstm_108_while_placeholder,lstm_108_while_less_lstm_108_strided_slice_1*
T0*
_output_shapes
: ]
lstm_108/while/IdentityIdentitylstm_108/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_108_while_identity lstm_108/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
АC
Щ

lstm_108_while_body_1193836.
*lstm_108_while_lstm_108_while_loop_counter4
0lstm_108_while_lstm_108_while_maximum_iterations
lstm_108_while_placeholder 
lstm_108_while_placeholder_1 
lstm_108_while_placeholder_2 
lstm_108_while_placeholder_3-
)lstm_108_while_lstm_108_strided_slice_1_0i
elstm_108_while_tensorarrayv2read_tensorlistgetitem_lstm_108_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_108_while_lstm_cell_195_matmul_readvariableop_resource_0:	љR
?lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource_0:	dљM
>lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource_0:	љ
lstm_108_while_identity
lstm_108_while_identity_1
lstm_108_while_identity_2
lstm_108_while_identity_3
lstm_108_while_identity_4
lstm_108_while_identity_5+
'lstm_108_while_lstm_108_strided_slice_1g
clstm_108_while_tensorarrayv2read_tensorlistgetitem_lstm_108_tensorarrayunstack_tensorlistfromtensorN
;lstm_108_while_lstm_cell_195_matmul_readvariableop_resource:	љP
=lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource:	dљK
<lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource:	љѕб3lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOpб2lstm_108/while/lstm_cell_195/MatMul/ReadVariableOpб4lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOpЉ
@lstm_108/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_108/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_108_while_tensorarrayv2read_tensorlistgetitem_lstm_108_tensorarrayunstack_tensorlistfromtensor_0lstm_108_while_placeholderIlstm_108/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_108/while/lstm_cell_195/MatMul/ReadVariableOpReadVariableOp=lstm_108_while_lstm_cell_195_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_108/while/lstm_cell_195/MatMulMatMul9lstm_108/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp?lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_108/while/lstm_cell_195/MatMul_1MatMullstm_108_while_placeholder_2<lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_108/while/lstm_cell_195/addAddV2-lstm_108/while/lstm_cell_195/MatMul:product:0/lstm_108/while/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp>lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_108/while/lstm_cell_195/BiasAddBiasAdd$lstm_108/while/lstm_cell_195/add:z:0;lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_108/while/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_108/while/lstm_cell_195/splitSplit5lstm_108/while/lstm_cell_195/split/split_dim:output:0-lstm_108/while/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_108/while/lstm_cell_195/SigmoidSigmoid+lstm_108/while/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_108/while/lstm_cell_195/Sigmoid_1Sigmoid+lstm_108/while/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_108/while/lstm_cell_195/mulMul*lstm_108/while/lstm_cell_195/Sigmoid_1:y:0lstm_108_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_108/while/lstm_cell_195/ReluRelu+lstm_108/while/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_108/while/lstm_cell_195/mul_1Mul(lstm_108/while/lstm_cell_195/Sigmoid:y:0/lstm_108/while/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_108/while/lstm_cell_195/add_1AddV2$lstm_108/while/lstm_cell_195/mul:z:0&lstm_108/while/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_108/while/lstm_cell_195/Sigmoid_2Sigmoid+lstm_108/while/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_108/while/lstm_cell_195/Relu_1Relu&lstm_108/while/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_108/while/lstm_cell_195/mul_2Mul*lstm_108/while/lstm_cell_195/Sigmoid_2:y:01lstm_108/while/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_108/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_108_while_placeholder_1lstm_108_while_placeholder&lstm_108/while/lstm_cell_195/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_108/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_108/while/addAddV2lstm_108_while_placeholderlstm_108/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_108/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_108/while/add_1AddV2*lstm_108_while_lstm_108_while_loop_counterlstm_108/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_108/while/IdentityIdentitylstm_108/while/add_1:z:0^lstm_108/while/NoOp*
T0*
_output_shapes
: ј
lstm_108/while/Identity_1Identity0lstm_108_while_lstm_108_while_maximum_iterations^lstm_108/while/NoOp*
T0*
_output_shapes
: t
lstm_108/while/Identity_2Identitylstm_108/while/add:z:0^lstm_108/while/NoOp*
T0*
_output_shapes
: А
lstm_108/while/Identity_3IdentityClstm_108/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_108/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_108/while/Identity_4Identity&lstm_108/while/lstm_cell_195/mul_2:z:0^lstm_108/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_108/while/Identity_5Identity&lstm_108/while/lstm_cell_195/add_1:z:0^lstm_108/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_108/while/NoOpNoOp4^lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOp3^lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp5^lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_108_while_identity lstm_108/while/Identity:output:0"?
lstm_108_while_identity_1"lstm_108/while/Identity_1:output:0"?
lstm_108_while_identity_2"lstm_108/while/Identity_2:output:0"?
lstm_108_while_identity_3"lstm_108/while/Identity_3:output:0"?
lstm_108_while_identity_4"lstm_108/while/Identity_4:output:0"?
lstm_108_while_identity_5"lstm_108/while/Identity_5:output:0"T
'lstm_108_while_lstm_108_strided_slice_1)lstm_108_while_lstm_108_strided_slice_1_0"~
<lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource>lstm_108_while_lstm_cell_195_biasadd_readvariableop_resource_0"ђ
=lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource?lstm_108_while_lstm_cell_195_matmul_1_readvariableop_resource_0"|
;lstm_108_while_lstm_cell_195_matmul_readvariableop_resource=lstm_108_while_lstm_cell_195_matmul_readvariableop_resource_0"╠
clstm_108_while_tensorarrayv2read_tensorlistgetitem_lstm_108_tensorarrayunstack_tensorlistfromtensorelstm_108_while_tensorarrayv2read_tensorlistgetitem_lstm_108_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOp3lstm_108/while/lstm_cell_195/BiasAdd/ReadVariableOp2h
2lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp2lstm_108/while/lstm_cell_195/MatMul/ReadVariableOp2l
4lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp4lstm_108/while/lstm_cell_195/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Ѓ
и
*__inference_lstm_108_layer_call_fn_1194248

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_108_layer_call_and_return_conditional_losses_1193081s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
сS
й
)sequential_36_lstm_109_while_body_1190807J
Fsequential_36_lstm_109_while_sequential_36_lstm_109_while_loop_counterP
Lsequential_36_lstm_109_while_sequential_36_lstm_109_while_maximum_iterations,
(sequential_36_lstm_109_while_placeholder.
*sequential_36_lstm_109_while_placeholder_1.
*sequential_36_lstm_109_while_placeholder_2.
*sequential_36_lstm_109_while_placeholder_3I
Esequential_36_lstm_109_while_sequential_36_lstm_109_strided_slice_1_0є
Ђsequential_36_lstm_109_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_109_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_36_lstm_109_while_lstm_cell_196_matmul_readvariableop_resource_0:	d╚`
Msequential_36_lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource_0:	2╚[
Lsequential_36_lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource_0:	╚)
%sequential_36_lstm_109_while_identity+
'sequential_36_lstm_109_while_identity_1+
'sequential_36_lstm_109_while_identity_2+
'sequential_36_lstm_109_while_identity_3+
'sequential_36_lstm_109_while_identity_4+
'sequential_36_lstm_109_while_identity_5G
Csequential_36_lstm_109_while_sequential_36_lstm_109_strided_slice_1Ѓ
sequential_36_lstm_109_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_109_tensorarrayunstack_tensorlistfromtensor\
Isequential_36_lstm_109_while_lstm_cell_196_matmul_readvariableop_resource:	d╚^
Ksequential_36_lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource:	2╚Y
Jsequential_36_lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource:	╚ѕбAsequential_36/lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOpб@sequential_36/lstm_109/while/lstm_cell_196/MatMul/ReadVariableOpбBsequential_36/lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOpЪ
Nsequential_36/lstm_109/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   џ
@sequential_36/lstm_109/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_36_lstm_109_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_109_tensorarrayunstack_tensorlistfromtensor_0(sequential_36_lstm_109_while_placeholderWsequential_36/lstm_109/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0═
@sequential_36/lstm_109/while/lstm_cell_196/MatMul/ReadVariableOpReadVariableOpKsequential_36_lstm_109_while_lstm_cell_196_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0Ђ
1sequential_36/lstm_109/while/lstm_cell_196/MatMulMatMulGsequential_36/lstm_109/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_36/lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Л
Bsequential_36/lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOpMsequential_36_lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0У
3sequential_36/lstm_109/while/lstm_cell_196/MatMul_1MatMul*sequential_36_lstm_109_while_placeholder_2Jsequential_36/lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Т
.sequential_36/lstm_109/while/lstm_cell_196/addAddV2;sequential_36/lstm_109/while/lstm_cell_196/MatMul:product:0=sequential_36/lstm_109/while/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚╦
Asequential_36/lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOpLsequential_36_lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0№
2sequential_36/lstm_109/while/lstm_cell_196/BiasAddBiasAdd2sequential_36/lstm_109/while/lstm_cell_196/add:z:0Isequential_36/lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚|
:sequential_36/lstm_109/while/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_36/lstm_109/while/lstm_cell_196/splitSplitCsequential_36/lstm_109/while/lstm_cell_196/split/split_dim:output:0;sequential_36/lstm_109/while/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitф
2sequential_36/lstm_109/while/lstm_cell_196/SigmoidSigmoid9sequential_36/lstm_109/while/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2г
4sequential_36/lstm_109/while/lstm_cell_196/Sigmoid_1Sigmoid9sequential_36/lstm_109/while/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2═
.sequential_36/lstm_109/while/lstm_cell_196/mulMul8sequential_36/lstm_109/while/lstm_cell_196/Sigmoid_1:y:0*sequential_36_lstm_109_while_placeholder_3*
T0*'
_output_shapes
:         2ц
/sequential_36/lstm_109/while/lstm_cell_196/ReluRelu9sequential_36/lstm_109/while/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Я
0sequential_36/lstm_109/while/lstm_cell_196/mul_1Mul6sequential_36/lstm_109/while/lstm_cell_196/Sigmoid:y:0=sequential_36/lstm_109/while/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2Н
0sequential_36/lstm_109/while/lstm_cell_196/add_1AddV22sequential_36/lstm_109/while/lstm_cell_196/mul:z:04sequential_36/lstm_109/while/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2г
4sequential_36/lstm_109/while/lstm_cell_196/Sigmoid_2Sigmoid9sequential_36/lstm_109/while/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2А
1sequential_36/lstm_109/while/lstm_cell_196/Relu_1Relu4sequential_36/lstm_109/while/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2С
0sequential_36/lstm_109/while/lstm_cell_196/mul_2Mul8sequential_36/lstm_109/while/lstm_cell_196/Sigmoid_2:y:0?sequential_36/lstm_109/while/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2б
Asequential_36/lstm_109/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_36_lstm_109_while_placeholder_1(sequential_36_lstm_109_while_placeholder4sequential_36/lstm_109/while/lstm_cell_196/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_36/lstm_109/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_36/lstm_109/while/addAddV2(sequential_36_lstm_109_while_placeholder+sequential_36/lstm_109/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_36/lstm_109/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_36/lstm_109/while/add_1AddV2Fsequential_36_lstm_109_while_sequential_36_lstm_109_while_loop_counter-sequential_36/lstm_109/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_36/lstm_109/while/IdentityIdentity&sequential_36/lstm_109/while/add_1:z:0"^sequential_36/lstm_109/while/NoOp*
T0*
_output_shapes
: к
'sequential_36/lstm_109/while/Identity_1IdentityLsequential_36_lstm_109_while_sequential_36_lstm_109_while_maximum_iterations"^sequential_36/lstm_109/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_36/lstm_109/while/Identity_2Identity$sequential_36/lstm_109/while/add:z:0"^sequential_36/lstm_109/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_36/lstm_109/while/Identity_3IdentityQsequential_36/lstm_109/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_36/lstm_109/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_36/lstm_109/while/Identity_4Identity4sequential_36/lstm_109/while/lstm_cell_196/mul_2:z:0"^sequential_36/lstm_109/while/NoOp*
T0*'
_output_shapes
:         2┐
'sequential_36/lstm_109/while/Identity_5Identity4sequential_36/lstm_109/while/lstm_cell_196/add_1:z:0"^sequential_36/lstm_109/while/NoOp*
T0*'
_output_shapes
:         2»
!sequential_36/lstm_109/while/NoOpNoOpB^sequential_36/lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOpA^sequential_36/lstm_109/while/lstm_cell_196/MatMul/ReadVariableOpC^sequential_36/lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_36_lstm_109_while_identity.sequential_36/lstm_109/while/Identity:output:0"[
'sequential_36_lstm_109_while_identity_10sequential_36/lstm_109/while/Identity_1:output:0"[
'sequential_36_lstm_109_while_identity_20sequential_36/lstm_109/while/Identity_2:output:0"[
'sequential_36_lstm_109_while_identity_30sequential_36/lstm_109/while/Identity_3:output:0"[
'sequential_36_lstm_109_while_identity_40sequential_36/lstm_109/while/Identity_4:output:0"[
'sequential_36_lstm_109_while_identity_50sequential_36/lstm_109/while/Identity_5:output:0"џ
Jsequential_36_lstm_109_while_lstm_cell_196_biasadd_readvariableop_resourceLsequential_36_lstm_109_while_lstm_cell_196_biasadd_readvariableop_resource_0"ю
Ksequential_36_lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resourceMsequential_36_lstm_109_while_lstm_cell_196_matmul_1_readvariableop_resource_0"ў
Isequential_36_lstm_109_while_lstm_cell_196_matmul_readvariableop_resourceKsequential_36_lstm_109_while_lstm_cell_196_matmul_readvariableop_resource_0"ї
Csequential_36_lstm_109_while_sequential_36_lstm_109_strided_slice_1Esequential_36_lstm_109_while_sequential_36_lstm_109_strided_slice_1_0"Ё
sequential_36_lstm_109_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_109_tensorarrayunstack_tensorlistfromtensorЂsequential_36_lstm_109_while_tensorarrayv2read_tensorlistgetitem_sequential_36_lstm_109_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2є
Asequential_36/lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOpAsequential_36/lstm_109/while/lstm_cell_196/BiasAdd/ReadVariableOp2ё
@sequential_36/lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp@sequential_36/lstm_109/while/lstm_cell_196/MatMul/ReadVariableOp2ѕ
Bsequential_36/lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOpBsequential_36/lstm_109/while/lstm_cell_196/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194677

inputs?
,lstm_cell_195_matmul_readvariableop_resource:	љA
.lstm_cell_195_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_195_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_195/BiasAdd/ReadVariableOpб#lstm_cell_195/MatMul/ReadVariableOpб%lstm_cell_195/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_195/MatMul/ReadVariableOpReadVariableOp,lstm_cell_195_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_195/MatMulMatMulstrided_slice_2:output:0+lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_195_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_195/MatMul_1MatMulzeros:output:0-lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_195/addAddV2lstm_cell_195/MatMul:product:0 lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_195_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_195/BiasAddBiasAddlstm_cell_195/add:z:0,lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_195/splitSplit&lstm_cell_195/split/split_dim:output:0lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_195/SigmoidSigmoidlstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_1Sigmoidlstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_195/mulMullstm_cell_195/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_195/ReluRelulstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_195/mul_1Mullstm_cell_195/Sigmoid:y:0 lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_195/add_1AddV2lstm_cell_195/mul:z:0lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_195/Sigmoid_2Sigmoidlstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_195/Relu_1Relulstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_195/mul_2Mullstm_cell_195/Sigmoid_2:y:0"lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_195_matmul_readvariableop_resource.lstm_cell_195_matmul_1_readvariableop_resource-lstm_cell_195_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1194593*
condR
while_cond_1194592*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_195/BiasAdd/ReadVariableOp$^lstm_cell_195/MatMul/ReadVariableOp&^lstm_cell_195/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_195/BiasAdd/ReadVariableOp$lstm_cell_195/BiasAdd/ReadVariableOp2J
#lstm_cell_195/MatMul/ReadVariableOp#lstm_cell_195/MatMul/ReadVariableOp2N
%lstm_cell_195/MatMul_1/ReadVariableOp%lstm_cell_195/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
љ
Х
*__inference_lstm_110_layer_call_fn_1195447
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_110_layer_call_and_return_conditional_losses_1191886o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
я
 
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193261
lstm_108_input#
lstm_108_1193234:	љ#
lstm_108_1193236:	dљ
lstm_108_1193238:	љ#
lstm_109_1193241:	d╚#
lstm_109_1193243:	2╚
lstm_109_1193245:	╚"
lstm_110_1193248:2("
lstm_110_1193250:
(
lstm_110_1193252:("
dense_36_1193255:

dense_36_1193257:
identityѕб dense_36/StatefulPartitionedCallб lstm_108/StatefulPartitionedCallб lstm_109/StatefulPartitionedCallб lstm_110/StatefulPartitionedCallЊ
 lstm_108/StatefulPartitionedCallStatefulPartitionedCalllstm_108_inputlstm_108_1193234lstm_108_1193236lstm_108_1193238*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_108_layer_call_and_return_conditional_losses_1193081«
 lstm_109/StatefulPartitionedCallStatefulPartitionedCall)lstm_108/StatefulPartitionedCall:output:0lstm_109_1193241lstm_109_1193243lstm_109_1193245*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_109_layer_call_and_return_conditional_losses_1192916ф
 lstm_110/StatefulPartitionedCallStatefulPartitionedCall)lstm_109/StatefulPartitionedCall:output:0lstm_110_1193248lstm_110_1193250lstm_110_1193252*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_110_layer_call_and_return_conditional_losses_1192751ќ
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)lstm_110/StatefulPartitionedCall:output:0dense_36_1193255dense_36_1193257*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_1192553x
IdentityIdentity)dense_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_36/StatefulPartitionedCall!^lstm_108/StatefulPartitionedCall!^lstm_109/StatefulPartitionedCall!^lstm_110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 lstm_108/StatefulPartitionedCall lstm_108/StatefulPartitionedCall2D
 lstm_109/StatefulPartitionedCall lstm_109/StatefulPartitionedCall2D
 lstm_110/StatefulPartitionedCall lstm_110/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_108_input
њK
б
E__inference_lstm_110_layer_call_and_return_conditional_losses_1195623
inputs_0>
,lstm_cell_197_matmul_readvariableop_resource:2(@
.lstm_cell_197_matmul_1_readvariableop_resource:
(;
-lstm_cell_197_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_197/BiasAdd/ReadVariableOpб#lstm_cell_197/MatMul/ReadVariableOpб%lstm_cell_197/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_197/MatMul/ReadVariableOpReadVariableOp,lstm_cell_197_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_197/MatMulMatMulstrided_slice_2:output:0+lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_197_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_197/MatMul_1MatMulzeros:output:0-lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_197/addAddV2lstm_cell_197/MatMul:product:0 lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_197_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_197/BiasAddBiasAddlstm_cell_197/add:z:0,lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_197/splitSplit&lstm_cell_197/split/split_dim:output:0lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_197/SigmoidSigmoidlstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_1Sigmoidlstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_197/mulMullstm_cell_197/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_197/ReluRelulstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_197/mul_1Mullstm_cell_197/Sigmoid:y:0 lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_197/add_1AddV2lstm_cell_197/mul:z:0lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_197/Sigmoid_2Sigmoidlstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_197/Relu_1Relulstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_197/mul_2Mullstm_cell_197/Sigmoid_2:y:0"lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_197_matmul_readvariableop_resource.lstm_cell_197_matmul_1_readvariableop_resource-lstm_cell_197_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1195539*
condR
while_cond_1195538*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         
├
NoOpNoOp%^lstm_cell_197/BiasAdd/ReadVariableOp$^lstm_cell_197/MatMul/ReadVariableOp&^lstm_cell_197/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_197/BiasAdd/ReadVariableOp$lstm_cell_197/BiasAdd/ReadVariableOp2J
#lstm_cell_197/MatMul/ReadVariableOp#lstm_cell_197/MatMul/ReadVariableOp2N
%lstm_cell_197/MatMul_1/ReadVariableOp%lstm_cell_197/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
»8
ј
E__inference_lstm_108_layer_call_and_return_conditional_losses_1191377

inputs(
lstm_cell_195_1191295:	љ(
lstm_cell_195_1191297:	dљ$
lstm_cell_195_1191299:	љ
identityѕб%lstm_cell_195/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask■
%lstm_cell_195/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_195_1191295lstm_cell_195_1191297lstm_cell_195_1191299*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1191249n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_195_1191295lstm_cell_195_1191297lstm_cell_195_1191299*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1191308*
condR
while_cond_1191307*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  dv
NoOpNoOp&^lstm_cell_195/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_195/StatefulPartitionedCall%lstm_cell_195/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Л8
┌
while_body_1192832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_196_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_196_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_196_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_196_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_196_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_196_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_196/BiasAdd/ReadVariableOpб)while/lstm_cell_196/MatMul/ReadVariableOpб+while/lstm_cell_196/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_196/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_196_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_196/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_196_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_196/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_196/addAddV2$while/lstm_cell_196/MatMul:product:0&while/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_196_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_196/BiasAddBiasAddwhile/lstm_cell_196/add:z:02while/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_196/splitSplit,while/lstm_cell_196/split/split_dim:output:0$while/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_196/SigmoidSigmoid"while/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_1Sigmoid"while/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_196/mulMul!while/lstm_cell_196/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_196/ReluRelu"while/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_196/mul_1Mulwhile/lstm_cell_196/Sigmoid:y:0&while/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_196/add_1AddV2while/lstm_cell_196/mul:z:0while/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_196/Sigmoid_2Sigmoid"while/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_196/Relu_1Reluwhile/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_196/mul_2Mul!while/lstm_cell_196/Sigmoid_2:y:0(while/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_196/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_196/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_196/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_196/BiasAdd/ReadVariableOp*^while/lstm_cell_196/MatMul/ReadVariableOp,^while/lstm_cell_196/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_196_biasadd_readvariableop_resource5while_lstm_cell_196_biasadd_readvariableop_resource_0"n
4while_lstm_cell_196_matmul_1_readvariableop_resource6while_lstm_cell_196_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_196_matmul_readvariableop_resource4while_lstm_cell_196_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_196/BiasAdd/ReadVariableOp*while/lstm_cell_196/BiasAdd/ReadVariableOp2V
)while/lstm_cell_196/MatMul/ReadVariableOp)while/lstm_cell_196/MatMul/ReadVariableOp2Z
+while/lstm_cell_196/MatMul_1/ReadVariableOp+while/lstm_cell_196/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
е8
І
E__inference_lstm_110_layer_call_and_return_conditional_losses_1192077

inputs'
lstm_cell_197_1191995:2('
lstm_cell_197_1191997:
(#
lstm_cell_197_1191999:(
identityѕб%lstm_cell_197/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask■
%lstm_cell_197/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_197_1191995lstm_cell_197_1191997lstm_cell_197_1191999*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1191949n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_197_1191995lstm_cell_197_1191997lstm_cell_197_1191999*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1192008*
condR
while_cond_1192007*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         
v
NoOpNoOp&^lstm_cell_197/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_197/StatefulPartitionedCall%lstm_cell_197/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
║
╚
while_cond_1195538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1195538___redundant_placeholder05
1while_while_cond_1195538___redundant_placeholder15
1while_while_cond_1195538___redundant_placeholder25
1while_while_cond_1195538___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
▀
ѕ
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1196267

inputs
states_0
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
▄

Џ
/__inference_sequential_36_layer_call_fn_1193323

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_36_layer_call_and_return_conditional_losses_1192560o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
и

Ч
lstm_109_while_cond_1193547.
*lstm_109_while_lstm_109_while_loop_counter4
0lstm_109_while_lstm_109_while_maximum_iterations
lstm_109_while_placeholder 
lstm_109_while_placeholder_1 
lstm_109_while_placeholder_2 
lstm_109_while_placeholder_30
,lstm_109_while_less_lstm_109_strided_slice_1G
Clstm_109_while_lstm_109_while_cond_1193547___redundant_placeholder0G
Clstm_109_while_lstm_109_while_cond_1193547___redundant_placeholder1G
Clstm_109_while_lstm_109_while_cond_1193547___redundant_placeholder2G
Clstm_109_while_lstm_109_while_cond_1193547___redundant_placeholder3
lstm_109_while_identity
є
lstm_109/while/LessLesslstm_109_while_placeholder,lstm_109_while_less_lstm_109_strided_slice_1*
T0*
_output_shapes
: ]
lstm_109/while/IdentityIdentitylstm_109/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_109_while_identity lstm_109/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_1194592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1194592___redundant_placeholder05
1while_while_cond_1194592___redundant_placeholder15
1while_while_cond_1194592___redundant_placeholder25
1while_while_cond_1194592___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
жЂ
ќ
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193777

inputsH
5lstm_108_lstm_cell_195_matmul_readvariableop_resource:	љJ
7lstm_108_lstm_cell_195_matmul_1_readvariableop_resource:	dљE
6lstm_108_lstm_cell_195_biasadd_readvariableop_resource:	љH
5lstm_109_lstm_cell_196_matmul_readvariableop_resource:	d╚J
7lstm_109_lstm_cell_196_matmul_1_readvariableop_resource:	2╚E
6lstm_109_lstm_cell_196_biasadd_readvariableop_resource:	╚G
5lstm_110_lstm_cell_197_matmul_readvariableop_resource:2(I
7lstm_110_lstm_cell_197_matmul_1_readvariableop_resource:
(D
6lstm_110_lstm_cell_197_biasadd_readvariableop_resource:(9
'dense_36_matmul_readvariableop_resource:
6
(dense_36_biasadd_readvariableop_resource:
identityѕбdense_36/BiasAdd/ReadVariableOpбdense_36/MatMul/ReadVariableOpб-lstm_108/lstm_cell_195/BiasAdd/ReadVariableOpб,lstm_108/lstm_cell_195/MatMul/ReadVariableOpб.lstm_108/lstm_cell_195/MatMul_1/ReadVariableOpбlstm_108/whileб-lstm_109/lstm_cell_196/BiasAdd/ReadVariableOpб,lstm_109/lstm_cell_196/MatMul/ReadVariableOpб.lstm_109/lstm_cell_196/MatMul_1/ReadVariableOpбlstm_109/whileб-lstm_110/lstm_cell_197/BiasAdd/ReadVariableOpб,lstm_110/lstm_cell_197/MatMul/ReadVariableOpб.lstm_110/lstm_cell_197/MatMul_1/ReadVariableOpбlstm_110/whileD
lstm_108/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_108/strided_sliceStridedSlicelstm_108/Shape:output:0%lstm_108/strided_slice/stack:output:0'lstm_108/strided_slice/stack_1:output:0'lstm_108/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_108/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_108/zeros/packedPacklstm_108/strided_slice:output:0 lstm_108/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_108/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_108/zerosFilllstm_108/zeros/packed:output:0lstm_108/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_108/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_108/zeros_1/packedPacklstm_108/strided_slice:output:0"lstm_108/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_108/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_108/zeros_1Fill lstm_108/zeros_1/packed:output:0lstm_108/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_108/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_108/transpose	Transposeinputs lstm_108/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_108/Shape_1Shapelstm_108/transpose:y:0*
T0*
_output_shapes
:h
lstm_108/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_108/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_108/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_108/strided_slice_1StridedSlicelstm_108/Shape_1:output:0'lstm_108/strided_slice_1/stack:output:0)lstm_108/strided_slice_1/stack_1:output:0)lstm_108/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_108/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_108/TensorArrayV2TensorListReserve-lstm_108/TensorArrayV2/element_shape:output:0!lstm_108/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_108/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_108/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_108/transpose:y:0Glstm_108/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_108/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_108/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_108/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_108/strided_slice_2StridedSlicelstm_108/transpose:y:0'lstm_108/strided_slice_2/stack:output:0)lstm_108/strided_slice_2/stack_1:output:0)lstm_108/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_108/lstm_cell_195/MatMul/ReadVariableOpReadVariableOp5lstm_108_lstm_cell_195_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_108/lstm_cell_195/MatMulMatMul!lstm_108/strided_slice_2:output:04lstm_108/lstm_cell_195/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_108/lstm_cell_195/MatMul_1/ReadVariableOpReadVariableOp7lstm_108_lstm_cell_195_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_108/lstm_cell_195/MatMul_1MatMullstm_108/zeros:output:06lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_108/lstm_cell_195/addAddV2'lstm_108/lstm_cell_195/MatMul:product:0)lstm_108/lstm_cell_195/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_108/lstm_cell_195/BiasAdd/ReadVariableOpReadVariableOp6lstm_108_lstm_cell_195_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_108/lstm_cell_195/BiasAddBiasAddlstm_108/lstm_cell_195/add:z:05lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_108/lstm_cell_195/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_108/lstm_cell_195/splitSplit/lstm_108/lstm_cell_195/split/split_dim:output:0'lstm_108/lstm_cell_195/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_108/lstm_cell_195/SigmoidSigmoid%lstm_108/lstm_cell_195/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_108/lstm_cell_195/Sigmoid_1Sigmoid%lstm_108/lstm_cell_195/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_108/lstm_cell_195/mulMul$lstm_108/lstm_cell_195/Sigmoid_1:y:0lstm_108/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_108/lstm_cell_195/ReluRelu%lstm_108/lstm_cell_195/split:output:2*
T0*'
_output_shapes
:         dц
lstm_108/lstm_cell_195/mul_1Mul"lstm_108/lstm_cell_195/Sigmoid:y:0)lstm_108/lstm_cell_195/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_108/lstm_cell_195/add_1AddV2lstm_108/lstm_cell_195/mul:z:0 lstm_108/lstm_cell_195/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_108/lstm_cell_195/Sigmoid_2Sigmoid%lstm_108/lstm_cell_195/split:output:3*
T0*'
_output_shapes
:         dy
lstm_108/lstm_cell_195/Relu_1Relu lstm_108/lstm_cell_195/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_108/lstm_cell_195/mul_2Mul$lstm_108/lstm_cell_195/Sigmoid_2:y:0+lstm_108/lstm_cell_195/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_108/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_108/TensorArrayV2_1TensorListReserve/lstm_108/TensorArrayV2_1/element_shape:output:0!lstm_108/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_108/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_108/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_108/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_108/whileWhile$lstm_108/while/loop_counter:output:0*lstm_108/while/maximum_iterations:output:0lstm_108/time:output:0!lstm_108/TensorArrayV2_1:handle:0lstm_108/zeros:output:0lstm_108/zeros_1:output:0!lstm_108/strided_slice_1:output:0@lstm_108/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_108_lstm_cell_195_matmul_readvariableop_resource7lstm_108_lstm_cell_195_matmul_1_readvariableop_resource6lstm_108_lstm_cell_195_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_108_while_body_1193409*'
condR
lstm_108_while_cond_1193408*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_108/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_108/TensorArrayV2Stack/TensorListStackTensorListStacklstm_108/while:output:3Blstm_108/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_108/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_108/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_108/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_108/strided_slice_3StridedSlice4lstm_108/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_108/strided_slice_3/stack:output:0)lstm_108/strided_slice_3/stack_1:output:0)lstm_108/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_108/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_108/transpose_1	Transpose4lstm_108/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_108/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_108/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_109/ShapeShapelstm_108/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_109/strided_sliceStridedSlicelstm_109/Shape:output:0%lstm_109/strided_slice/stack:output:0'lstm_109/strided_slice/stack_1:output:0'lstm_109/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_109/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_109/zeros/packedPacklstm_109/strided_slice:output:0 lstm_109/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_109/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_109/zerosFilllstm_109/zeros/packed:output:0lstm_109/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_109/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_109/zeros_1/packedPacklstm_109/strided_slice:output:0"lstm_109/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_109/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_109/zeros_1Fill lstm_109/zeros_1/packed:output:0lstm_109/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_109/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_109/transpose	Transposelstm_108/transpose_1:y:0 lstm_109/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_109/Shape_1Shapelstm_109/transpose:y:0*
T0*
_output_shapes
:h
lstm_109/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_109/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_109/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_109/strided_slice_1StridedSlicelstm_109/Shape_1:output:0'lstm_109/strided_slice_1/stack:output:0)lstm_109/strided_slice_1/stack_1:output:0)lstm_109/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_109/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_109/TensorArrayV2TensorListReserve-lstm_109/TensorArrayV2/element_shape:output:0!lstm_109/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_109/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_109/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_109/transpose:y:0Glstm_109/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_109/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_109/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_109/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_109/strided_slice_2StridedSlicelstm_109/transpose:y:0'lstm_109/strided_slice_2/stack:output:0)lstm_109/strided_slice_2/stack_1:output:0)lstm_109/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_109/lstm_cell_196/MatMul/ReadVariableOpReadVariableOp5lstm_109_lstm_cell_196_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_109/lstm_cell_196/MatMulMatMul!lstm_109/strided_slice_2:output:04lstm_109/lstm_cell_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_109/lstm_cell_196/MatMul_1/ReadVariableOpReadVariableOp7lstm_109_lstm_cell_196_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_109/lstm_cell_196/MatMul_1MatMullstm_109/zeros:output:06lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_109/lstm_cell_196/addAddV2'lstm_109/lstm_cell_196/MatMul:product:0)lstm_109/lstm_cell_196/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_109/lstm_cell_196/BiasAdd/ReadVariableOpReadVariableOp6lstm_109_lstm_cell_196_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_109/lstm_cell_196/BiasAddBiasAddlstm_109/lstm_cell_196/add:z:05lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_109/lstm_cell_196/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_109/lstm_cell_196/splitSplit/lstm_109/lstm_cell_196/split/split_dim:output:0'lstm_109/lstm_cell_196/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_109/lstm_cell_196/SigmoidSigmoid%lstm_109/lstm_cell_196/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_109/lstm_cell_196/Sigmoid_1Sigmoid%lstm_109/lstm_cell_196/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_109/lstm_cell_196/mulMul$lstm_109/lstm_cell_196/Sigmoid_1:y:0lstm_109/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_109/lstm_cell_196/ReluRelu%lstm_109/lstm_cell_196/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_109/lstm_cell_196/mul_1Mul"lstm_109/lstm_cell_196/Sigmoid:y:0)lstm_109/lstm_cell_196/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_109/lstm_cell_196/add_1AddV2lstm_109/lstm_cell_196/mul:z:0 lstm_109/lstm_cell_196/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_109/lstm_cell_196/Sigmoid_2Sigmoid%lstm_109/lstm_cell_196/split:output:3*
T0*'
_output_shapes
:         2y
lstm_109/lstm_cell_196/Relu_1Relu lstm_109/lstm_cell_196/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_109/lstm_cell_196/mul_2Mul$lstm_109/lstm_cell_196/Sigmoid_2:y:0+lstm_109/lstm_cell_196/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_109/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_109/TensorArrayV2_1TensorListReserve/lstm_109/TensorArrayV2_1/element_shape:output:0!lstm_109/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_109/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_109/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_109/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_109/whileWhile$lstm_109/while/loop_counter:output:0*lstm_109/while/maximum_iterations:output:0lstm_109/time:output:0!lstm_109/TensorArrayV2_1:handle:0lstm_109/zeros:output:0lstm_109/zeros_1:output:0!lstm_109/strided_slice_1:output:0@lstm_109/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_109_lstm_cell_196_matmul_readvariableop_resource7lstm_109_lstm_cell_196_matmul_1_readvariableop_resource6lstm_109_lstm_cell_196_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_109_while_body_1193548*'
condR
lstm_109_while_cond_1193547*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_109/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_109/TensorArrayV2Stack/TensorListStackTensorListStacklstm_109/while:output:3Blstm_109/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_109/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_109/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_109/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_109/strided_slice_3StridedSlice4lstm_109/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_109/strided_slice_3/stack:output:0)lstm_109/strided_slice_3/stack_1:output:0)lstm_109/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_109/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_109/transpose_1	Transpose4lstm_109/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_109/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_109/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_110/ShapeShapelstm_109/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_110/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_110/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_110/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_110/strided_sliceStridedSlicelstm_110/Shape:output:0%lstm_110/strided_slice/stack:output:0'lstm_110/strided_slice/stack_1:output:0'lstm_110/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_110/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_110/zeros/packedPacklstm_110/strided_slice:output:0 lstm_110/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_110/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_110/zerosFilllstm_110/zeros/packed:output:0lstm_110/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_110/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_110/zeros_1/packedPacklstm_110/strided_slice:output:0"lstm_110/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_110/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_110/zeros_1Fill lstm_110/zeros_1/packed:output:0lstm_110/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_110/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_110/transpose	Transposelstm_109/transpose_1:y:0 lstm_110/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_110/Shape_1Shapelstm_110/transpose:y:0*
T0*
_output_shapes
:h
lstm_110/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_110/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_110/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_110/strided_slice_1StridedSlicelstm_110/Shape_1:output:0'lstm_110/strided_slice_1/stack:output:0)lstm_110/strided_slice_1/stack_1:output:0)lstm_110/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_110/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_110/TensorArrayV2TensorListReserve-lstm_110/TensorArrayV2/element_shape:output:0!lstm_110/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_110/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_110/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_110/transpose:y:0Glstm_110/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_110/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_110/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_110/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_110/strided_slice_2StridedSlicelstm_110/transpose:y:0'lstm_110/strided_slice_2/stack:output:0)lstm_110/strided_slice_2/stack_1:output:0)lstm_110/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_110/lstm_cell_197/MatMul/ReadVariableOpReadVariableOp5lstm_110_lstm_cell_197_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_110/lstm_cell_197/MatMulMatMul!lstm_110/strided_slice_2:output:04lstm_110/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_110/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp7lstm_110_lstm_cell_197_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_110/lstm_cell_197/MatMul_1MatMullstm_110/zeros:output:06lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_110/lstm_cell_197/addAddV2'lstm_110/lstm_cell_197/MatMul:product:0)lstm_110/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_110/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp6lstm_110_lstm_cell_197_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_110/lstm_cell_197/BiasAddBiasAddlstm_110/lstm_cell_197/add:z:05lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_110/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_110/lstm_cell_197/splitSplit/lstm_110/lstm_cell_197/split/split_dim:output:0'lstm_110/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_110/lstm_cell_197/SigmoidSigmoid%lstm_110/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_110/lstm_cell_197/Sigmoid_1Sigmoid%lstm_110/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_110/lstm_cell_197/mulMul$lstm_110/lstm_cell_197/Sigmoid_1:y:0lstm_110/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_110/lstm_cell_197/ReluRelu%lstm_110/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_110/lstm_cell_197/mul_1Mul"lstm_110/lstm_cell_197/Sigmoid:y:0)lstm_110/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_110/lstm_cell_197/add_1AddV2lstm_110/lstm_cell_197/mul:z:0 lstm_110/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_110/lstm_cell_197/Sigmoid_2Sigmoid%lstm_110/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
y
lstm_110/lstm_cell_197/Relu_1Relu lstm_110/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_110/lstm_cell_197/mul_2Mul$lstm_110/lstm_cell_197/Sigmoid_2:y:0+lstm_110/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_110/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_110/TensorArrayV2_1TensorListReserve/lstm_110/TensorArrayV2_1/element_shape:output:0!lstm_110/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_110/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_110/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_110/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_110/whileWhile$lstm_110/while/loop_counter:output:0*lstm_110/while/maximum_iterations:output:0lstm_110/time:output:0!lstm_110/TensorArrayV2_1:handle:0lstm_110/zeros:output:0lstm_110/zeros_1:output:0!lstm_110/strided_slice_1:output:0@lstm_110/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_110_lstm_cell_197_matmul_readvariableop_resource7lstm_110_lstm_cell_197_matmul_1_readvariableop_resource6lstm_110_lstm_cell_197_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_110_while_body_1193687*'
condR
lstm_110_while_cond_1193686*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_110/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_110/TensorArrayV2Stack/TensorListStackTensorListStacklstm_110/while:output:3Blstm_110/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_110/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_110/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_110/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_110/strided_slice_3StridedSlice4lstm_110/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_110/strided_slice_3/stack:output:0)lstm_110/strided_slice_3/stack_1:output:0)lstm_110/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_110/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_110/transpose_1	Transpose4lstm_110/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_110/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_110/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_36/MatMulMatMul!lstm_110/strided_slice_3:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_36/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp.^lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp-^lstm_108/lstm_cell_195/MatMul/ReadVariableOp/^lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp^lstm_108/while.^lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp-^lstm_109/lstm_cell_196/MatMul/ReadVariableOp/^lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp^lstm_109/while.^lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp-^lstm_110/lstm_cell_197/MatMul/ReadVariableOp/^lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp^lstm_110/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2^
-lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp-lstm_108/lstm_cell_195/BiasAdd/ReadVariableOp2\
,lstm_108/lstm_cell_195/MatMul/ReadVariableOp,lstm_108/lstm_cell_195/MatMul/ReadVariableOp2`
.lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp.lstm_108/lstm_cell_195/MatMul_1/ReadVariableOp2 
lstm_108/whilelstm_108/while2^
-lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp-lstm_109/lstm_cell_196/BiasAdd/ReadVariableOp2\
,lstm_109/lstm_cell_196/MatMul/ReadVariableOp,lstm_109/lstm_cell_196/MatMul/ReadVariableOp2`
.lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp.lstm_109/lstm_cell_196/MatMul_1/ReadVariableOp2 
lstm_109/whilelstm_109/while2^
-lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp-lstm_110/lstm_cell_197/BiasAdd/ReadVariableOp2\
,lstm_110/lstm_cell_197/MatMul/ReadVariableOp,lstm_110/lstm_cell_197/MatMul/ReadVariableOp2`
.lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp.lstm_110/lstm_cell_197/MatMul_1/ReadVariableOp2 
lstm_110/whilelstm_110/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
№
Э
/__inference_lstm_cell_196_layer_call_fn_1196203

inputs
states_0
states_1
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1191599o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
┬

Ў
%__inference_signature_wrapper_1193296
lstm_108_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCalllstm_108_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__wrapped_model_1191036o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_108_input
║
╚
while_cond_1194449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1194449___redundant_placeholder05
1while_while_cond_1194449___redundant_placeholder15
1while_while_cond_1194449___redundant_placeholder25
1while_while_cond_1194449___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Ј#
ы
while_body_1191467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_196_1191491_0:	d╚0
while_lstm_cell_196_1191493_0:	2╚,
while_lstm_cell_196_1191495_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_196_1191491:	d╚.
while_lstm_cell_196_1191493:	2╚*
while_lstm_cell_196_1191495:	╚ѕб+while/lstm_cell_196/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_196/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_196_1191491_0while_lstm_cell_196_1191493_0while_lstm_cell_196_1191495_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1191453П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_196/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_196/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_196/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_196/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_196_1191491while_lstm_cell_196_1191491_0"<
while_lstm_cell_196_1191493while_lstm_cell_196_1191493_0"<
while_lstm_cell_196_1191495while_lstm_cell_196_1191495_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_196/StatefulPartitionedCall+while/lstm_cell_196/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
О
є
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1191103

inputs

states
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates
Ѓ
и
*__inference_lstm_109_layer_call_fn_1194864

inputs
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_109_layer_call_and_return_conditional_losses_1192916s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
═
Ѓ
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1191803

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:OK
'
_output_shapes
:         

 
_user_specified_namestates:OK
'
_output_shapes
:         

 
_user_specified_namestates
─8
н
while_body_1192667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_197_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_197_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_197_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_197_matmul_readvariableop_resource:2(F
4while_lstm_cell_197_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_197_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_197/BiasAdd/ReadVariableOpб)while/lstm_cell_197/MatMul/ReadVariableOpб+while/lstm_cell_197/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_197/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_197_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_197/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_197/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_197_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_197/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_197/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_197/addAddV2$while/lstm_cell_197/MatMul:product:0&while/lstm_cell_197/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_197/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_197_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_197/BiasAddBiasAddwhile/lstm_cell_197/add:z:02while/lstm_cell_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_197/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_197/splitSplit,while/lstm_cell_197/split/split_dim:output:0$while/lstm_cell_197/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_197/SigmoidSigmoid"while/lstm_cell_197/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_1Sigmoid"while/lstm_cell_197/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_197/mulMul!while/lstm_cell_197/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_197/ReluRelu"while/lstm_cell_197/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_197/mul_1Mulwhile/lstm_cell_197/Sigmoid:y:0&while/lstm_cell_197/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_197/add_1AddV2while/lstm_cell_197/mul:z:0while/lstm_cell_197/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_197/Sigmoid_2Sigmoid"while/lstm_cell_197/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_197/Relu_1Reluwhile/lstm_cell_197/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_197/mul_2Mul!while/lstm_cell_197/Sigmoid_2:y:0(while/lstm_cell_197/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_197/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_197/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_197/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_197/BiasAdd/ReadVariableOp*^while/lstm_cell_197/MatMul/ReadVariableOp,^while/lstm_cell_197/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_197_biasadd_readvariableop_resource5while_lstm_cell_197_biasadd_readvariableop_resource_0"n
4while_lstm_cell_197_matmul_1_readvariableop_resource6while_lstm_cell_197_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_197_matmul_readvariableop_resource4while_lstm_cell_197_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_197/BiasAdd/ReadVariableOp*while/lstm_cell_197/BiasAdd/ReadVariableOp2V
)while/lstm_cell_197/MatMul/ReadVariableOp)while/lstm_cell_197/MatMul/ReadVariableOp2Z
+while/lstm_cell_197/MatMul_1/ReadVariableOp+while/lstm_cell_197/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: "ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*й
serving_defaultЕ
M
lstm_108_input;
 serving_default_lstm_108_input:0         <
dense_360
StatefulPartitionedCall:0         tensorflow/serving/predict:шЛ
ф
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
ј__call__
+Ј&call_and_return_all_conditional_losses
љ_default_save_signature"
_tf_keras_sequential
Ж
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Љ__call__
+њ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Ж
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Њ__call__
+ћ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Ж
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
Ћ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Р

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
Ќ__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3mђ4mЂ5mѓ!vЃ"vё-vЁ.vє/vЄ0vѕ1vЅ2vі3vІ4vї5vЇ"
	optimizer
-
Ўserving_default"
signature_map
 "
trackable_dict_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
ј__call__
љ_default_save_signature
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
ѕ
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
џ__call__
+Џ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
Љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
ѕ
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
ю__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
Њ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
ѕ
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
ъ__call__
+Ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
Ћ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_36/kernel
:2dense_36/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
Ќ__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	љ2lstm_108/lstm_cell_108/kernel
::8	dљ2'lstm_108/lstm_cell_108/recurrent_kernel
*:(љ2lstm_108/lstm_cell_108/bias
0:.	d╚2lstm_109/lstm_cell_109/kernel
::8	2╚2'lstm_109/lstm_cell_109/recurrent_kernel
*:(╚2lstm_109/lstm_cell_109/bias
/:-2(2lstm_110/lstm_cell_110/kernel
9:7
(2'lstm_110/lstm_cell_110/recurrent_kernel
):'(2lstm_110/lstm_cell_110/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
d0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
џ__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
░
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
ю__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
░
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
ъ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ttotal
	ucount
v	variables
w	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
t0
u1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
&:$
2Adam/dense_36/kernel/m
 :2Adam/dense_36/bias/m
5:3	љ2$Adam/lstm_108/lstm_cell_108/kernel/m
?:=	dљ2.Adam/lstm_108/lstm_cell_108/recurrent_kernel/m
/:-љ2"Adam/lstm_108/lstm_cell_108/bias/m
5:3	d╚2$Adam/lstm_109/lstm_cell_109/kernel/m
?:=	2╚2.Adam/lstm_109/lstm_cell_109/recurrent_kernel/m
/:-╚2"Adam/lstm_109/lstm_cell_109/bias/m
4:22(2$Adam/lstm_110/lstm_cell_110/kernel/m
>:<
(2.Adam/lstm_110/lstm_cell_110/recurrent_kernel/m
.:,(2"Adam/lstm_110/lstm_cell_110/bias/m
&:$
2Adam/dense_36/kernel/v
 :2Adam/dense_36/bias/v
5:3	љ2$Adam/lstm_108/lstm_cell_108/kernel/v
?:=	dљ2.Adam/lstm_108/lstm_cell_108/recurrent_kernel/v
/:-љ2"Adam/lstm_108/lstm_cell_108/bias/v
5:3	d╚2$Adam/lstm_109/lstm_cell_109/kernel/v
?:=	2╚2.Adam/lstm_109/lstm_cell_109/recurrent_kernel/v
/:-╚2"Adam/lstm_109/lstm_cell_109/bias/v
4:22(2$Adam/lstm_110/lstm_cell_110/kernel/v
>:<
(2.Adam/lstm_110/lstm_cell_110/recurrent_kernel/v
.:,(2"Adam/lstm_110/lstm_cell_110/bias/v
і2Є
/__inference_sequential_36_layer_call_fn_1192585
/__inference_sequential_36_layer_call_fn_1193323
/__inference_sequential_36_layer_call_fn_1193350
/__inference_sequential_36_layer_call_fn_1193201└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ш2з
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193777
J__inference_sequential_36_layer_call_and_return_conditional_losses_1194204
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193231
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193261└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
нBЛ
"__inference__wrapped_model_1191036lstm_108_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
І2ѕ
*__inference_lstm_108_layer_call_fn_1194215
*__inference_lstm_108_layer_call_fn_1194226
*__inference_lstm_108_layer_call_fn_1194237
*__inference_lstm_108_layer_call_fn_1194248Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194391
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194534
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194677
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194820Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
І2ѕ
*__inference_lstm_109_layer_call_fn_1194831
*__inference_lstm_109_layer_call_fn_1194842
*__inference_lstm_109_layer_call_fn_1194853
*__inference_lstm_109_layer_call_fn_1194864Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195007
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195150
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195293
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195436Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
І2ѕ
*__inference_lstm_110_layer_call_fn_1195447
*__inference_lstm_110_layer_call_fn_1195458
*__inference_lstm_110_layer_call_fn_1195469
*__inference_lstm_110_layer_call_fn_1195480Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_110_layer_call_and_return_conditional_losses_1195623
E__inference_lstm_110_layer_call_and_return_conditional_losses_1195766
E__inference_lstm_110_layer_call_and_return_conditional_losses_1195909
E__inference_lstm_110_layer_call_and_return_conditional_losses_1196052Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
н2Л
*__inference_dense_36_layer_call_fn_1196061б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_dense_36_layer_call_and_return_conditional_losses_1196071б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
МBл
%__inference_signature_wrapper_1193296lstm_108_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
д2Б
/__inference_lstm_cell_195_layer_call_fn_1196088
/__inference_lstm_cell_195_layer_call_fn_1196105Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1196137
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1196169Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
д2Б
/__inference_lstm_cell_196_layer_call_fn_1196186
/__inference_lstm_cell_196_layer_call_fn_1196203Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1196235
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1196267Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
д2Б
/__inference_lstm_cell_197_layer_call_fn_1196284
/__inference_lstm_cell_197_layer_call_fn_1196301Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1196333
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1196365Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 Ц
"__inference__wrapped_model_1191036-./012345!";б8
1б.
,і)
lstm_108_input         
ф "3ф0
.
dense_36"і
dense_36         Ц
E__inference_dense_36_layer_call_and_return_conditional_losses_1196071\!"/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ }
*__inference_dense_36_layer_call_fn_1196061O!"/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194391і-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "2б/
(і%
0                  d
џ н
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194534і-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "2б/
(і%
0                  d
џ ║
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194677q-./?б<
5б2
$і!
inputs         

 
p 

 
ф ")б&
і
0         d
џ ║
E__inference_lstm_108_layer_call_and_return_conditional_losses_1194820q-./?б<
5б2
$і!
inputs         

 
p

 
ф ")б&
і
0         d
џ Ф
*__inference_lstm_108_layer_call_fn_1194215}-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%і"                  dФ
*__inference_lstm_108_layer_call_fn_1194226}-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%і"                  dњ
*__inference_lstm_108_layer_call_fn_1194237d-./?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_108_layer_call_fn_1194248d-./?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195007і012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "2б/
(і%
0                  2
џ н
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195150і012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "2б/
(і%
0                  2
џ ║
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195293q012?б<
5б2
$і!
inputs         d

 
p 

 
ф ")б&
і
0         2
џ ║
E__inference_lstm_109_layer_call_and_return_conditional_losses_1195436q012?б<
5б2
$і!
inputs         d

 
p

 
ф ")б&
і
0         2
џ Ф
*__inference_lstm_109_layer_call_fn_1194831}012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "%і"                  2Ф
*__inference_lstm_109_layer_call_fn_1194842}012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "%і"                  2њ
*__inference_lstm_109_layer_call_fn_1194853d012?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_109_layer_call_fn_1194864d012?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_110_layer_call_and_return_conditional_losses_1195623}345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p 

 
ф "%б"
і
0         

џ к
E__inference_lstm_110_layer_call_and_return_conditional_losses_1195766}345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p

 
ф "%б"
і
0         

џ Х
E__inference_lstm_110_layer_call_and_return_conditional_losses_1195909m345?б<
5б2
$і!
inputs         2

 
p 

 
ф "%б"
і
0         

џ Х
E__inference_lstm_110_layer_call_and_return_conditional_losses_1196052m345?б<
5б2
$і!
inputs         2

 
p

 
ф "%б"
і
0         

џ ъ
*__inference_lstm_110_layer_call_fn_1195447p345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p 

 
ф "і         
ъ
*__inference_lstm_110_layer_call_fn_1195458p345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p

 
ф "і         
ј
*__inference_lstm_110_layer_call_fn_1195469`345?б<
5б2
$і!
inputs         2

 
p 

 
ф "і         
ј
*__inference_lstm_110_layer_call_fn_1195480`345?б<
5б2
$і!
inputs         2

 
p

 
ф "і         
╠
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1196137§-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p 
ф "sбp
iбf
і
0/0         d
EџB
і
0/1/0         d
і
0/1/1         d
џ ╠
J__inference_lstm_cell_195_layer_call_and_return_conditional_losses_1196169§-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p
ф "sбp
iбf
і
0/0         d
EџB
і
0/1/0         d
і
0/1/1         d
џ А
/__inference_lstm_cell_195_layer_call_fn_1196088ь-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p 
ф "cб`
і
0         d
Aџ>
і
1/0         d
і
1/1         dА
/__inference_lstm_cell_195_layer_call_fn_1196105ь-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p
ф "cб`
і
0         d
Aџ>
і
1/0         d
і
1/1         d╠
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1196235§012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p 
ф "sбp
iбf
і
0/0         2
EџB
і
0/1/0         2
і
0/1/1         2
џ ╠
J__inference_lstm_cell_196_layer_call_and_return_conditional_losses_1196267§012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p
ф "sбp
iбf
і
0/0         2
EџB
і
0/1/0         2
і
0/1/1         2
џ А
/__inference_lstm_cell_196_layer_call_fn_1196186ь012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p 
ф "cб`
і
0         2
Aџ>
і
1/0         2
і
1/1         2А
/__inference_lstm_cell_196_layer_call_fn_1196203ь012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p
ф "cб`
і
0         2
Aџ>
і
1/0         2
і
1/1         2╠
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1196333§345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p 
ф "sбp
iбf
і
0/0         

EџB
і
0/1/0         

і
0/1/1         

џ ╠
J__inference_lstm_cell_197_layer_call_and_return_conditional_losses_1196365§345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p
ф "sбp
iбf
і
0/0         

EџB
і
0/1/0         

і
0/1/1         

џ А
/__inference_lstm_cell_197_layer_call_fn_1196284ь345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p 
ф "cб`
і
0         

Aџ>
і
1/0         

і
1/1         
А
/__inference_lstm_cell_197_layer_call_fn_1196301ь345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p
ф "cб`
і
0         

Aџ>
і
1/0         

і
1/1         
К
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193231y-./012345!"Cб@
9б6
,і)
lstm_108_input         
p 

 
ф "%б"
і
0         
џ К
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193261y-./012345!"Cб@
9б6
,і)
lstm_108_input         
p

 
ф "%б"
і
0         
џ ┐
J__inference_sequential_36_layer_call_and_return_conditional_losses_1193777q-./012345!";б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         
џ ┐
J__inference_sequential_36_layer_call_and_return_conditional_losses_1194204q-./012345!";б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         
џ Ъ
/__inference_sequential_36_layer_call_fn_1192585l-./012345!"Cб@
9б6
,і)
lstm_108_input         
p 

 
ф "і         Ъ
/__inference_sequential_36_layer_call_fn_1193201l-./012345!"Cб@
9б6
,і)
lstm_108_input         
p

 
ф "і         Ќ
/__inference_sequential_36_layer_call_fn_1193323d-./012345!";б8
1б.
$і!
inputs         
p 

 
ф "і         Ќ
/__inference_sequential_36_layer_call_fn_1193350d-./012345!";б8
1б.
$і!
inputs         
p

 
ф "і         ╗
%__inference_signature_wrapper_1193296Љ-./012345!"MбJ
б 
Cф@
>
lstm_108_input,і)
lstm_108_input         "3ф0
.
dense_36"і
dense_36         
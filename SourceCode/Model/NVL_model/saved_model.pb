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
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_57/kernel
s
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes

:
*
dtype0
r
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_57/bias
k
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
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
lstm_171/lstm_cell_171/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_171/lstm_cell_171/kernel
љ
1lstm_171/lstm_cell_171/kernel/Read/ReadVariableOpReadVariableOplstm_171/lstm_cell_171/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_171/lstm_cell_171/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_171/lstm_cell_171/recurrent_kernel
ц
;lstm_171/lstm_cell_171/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_171/lstm_cell_171/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_171/lstm_cell_171/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_171/lstm_cell_171/bias
ѕ
/lstm_171/lstm_cell_171/bias/Read/ReadVariableOpReadVariableOplstm_171/lstm_cell_171/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_172/lstm_cell_172/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_172/lstm_cell_172/kernel
љ
1lstm_172/lstm_cell_172/kernel/Read/ReadVariableOpReadVariableOplstm_172/lstm_cell_172/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_172/lstm_cell_172/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_172/lstm_cell_172/recurrent_kernel
ц
;lstm_172/lstm_cell_172/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_172/lstm_cell_172/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_172/lstm_cell_172/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_172/lstm_cell_172/bias
ѕ
/lstm_172/lstm_cell_172/bias/Read/ReadVariableOpReadVariableOplstm_172/lstm_cell_172/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_173/lstm_cell_173/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_173/lstm_cell_173/kernel
Ј
1lstm_173/lstm_cell_173/kernel/Read/ReadVariableOpReadVariableOplstm_173/lstm_cell_173/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_173/lstm_cell_173/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_173/lstm_cell_173/recurrent_kernel
Б
;lstm_173/lstm_cell_173/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_173/lstm_cell_173/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_173/lstm_cell_173/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_173/lstm_cell_173/bias
Є
/lstm_173/lstm_cell_173/bias/Read/ReadVariableOpReadVariableOplstm_173/lstm_cell_173/bias*
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
Adam/dense_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_57/kernel/m
Ђ
*Adam/dense_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/m*
_output_shapes

:
*
dtype0
ђ
Adam/dense_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_57/bias/m
y
(Adam/dense_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_171/lstm_cell_171/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_171/lstm_cell_171/kernel/m
ъ
8Adam/lstm_171/lstm_cell_171/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_171/lstm_cell_171/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_171/lstm_cell_171/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_171/lstm_cell_171/recurrent_kernel/m
▓
BAdam/lstm_171/lstm_cell_171/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_171/lstm_cell_171/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_171/lstm_cell_171/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_171/lstm_cell_171/bias/m
ќ
6Adam/lstm_171/lstm_cell_171/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_171/lstm_cell_171/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_172/lstm_cell_172/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_172/lstm_cell_172/kernel/m
ъ
8Adam/lstm_172/lstm_cell_172/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_172/lstm_cell_172/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_172/lstm_cell_172/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_172/lstm_cell_172/recurrent_kernel/m
▓
BAdam/lstm_172/lstm_cell_172/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_172/lstm_cell_172/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_172/lstm_cell_172/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_172/lstm_cell_172/bias/m
ќ
6Adam/lstm_172/lstm_cell_172/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_172/lstm_cell_172/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_173/lstm_cell_173/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_173/lstm_cell_173/kernel/m
Ю
8Adam/lstm_173/lstm_cell_173/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_173/lstm_cell_173/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_173/lstm_cell_173/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_173/lstm_cell_173/recurrent_kernel/m
▒
BAdam/lstm_173/lstm_cell_173/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_173/lstm_cell_173/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_173/lstm_cell_173/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_173/lstm_cell_173/bias/m
Ћ
6Adam/lstm_173/lstm_cell_173/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_173/lstm_cell_173/bias/m*
_output_shapes
:(*
dtype0
ѕ
Adam/dense_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_57/kernel/v
Ђ
*Adam/dense_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/v*
_output_shapes

:
*
dtype0
ђ
Adam/dense_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_57/bias/v
y
(Adam/dense_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_171/lstm_cell_171/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_171/lstm_cell_171/kernel/v
ъ
8Adam/lstm_171/lstm_cell_171/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_171/lstm_cell_171/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_171/lstm_cell_171/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_171/lstm_cell_171/recurrent_kernel/v
▓
BAdam/lstm_171/lstm_cell_171/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_171/lstm_cell_171/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_171/lstm_cell_171/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_171/lstm_cell_171/bias/v
ќ
6Adam/lstm_171/lstm_cell_171/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_171/lstm_cell_171/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_172/lstm_cell_172/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_172/lstm_cell_172/kernel/v
ъ
8Adam/lstm_172/lstm_cell_172/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_172/lstm_cell_172/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_172/lstm_cell_172/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_172/lstm_cell_172/recurrent_kernel/v
▓
BAdam/lstm_172/lstm_cell_172/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_172/lstm_cell_172/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_172/lstm_cell_172/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_172/lstm_cell_172/bias/v
ќ
6Adam/lstm_172/lstm_cell_172/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_172/lstm_cell_172/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_173/lstm_cell_173/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_173/lstm_cell_173/kernel/v
Ю
8Adam/lstm_173/lstm_cell_173/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_173/lstm_cell_173/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_173/lstm_cell_173/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_173/lstm_cell_173/recurrent_kernel/v
▒
BAdam/lstm_173/lstm_cell_173/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_173/lstm_cell_173/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_173/lstm_cell_173/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_173/lstm_cell_173/bias/v
Ћ
6Adam/lstm_173/lstm_cell_173/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_173/lstm_cell_173/bias/v*
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
VARIABLE_VALUEdense_57/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_57/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_171/lstm_cell_171/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_171/lstm_cell_171/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_171/lstm_cell_171/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_172/lstm_cell_172/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_172/lstm_cell_172/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_172/lstm_cell_172/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_173/lstm_cell_173/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_173/lstm_cell_173/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_173/lstm_cell_173/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_57/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_57/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_171/lstm_cell_171/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_171/lstm_cell_171/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_171/lstm_cell_171/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_172/lstm_cell_172/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_172/lstm_cell_172/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_172/lstm_cell_172/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_173/lstm_cell_173/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_173/lstm_cell_173/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_173/lstm_cell_173/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_57/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_57/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_171/lstm_cell_171/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_171/lstm_cell_171/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_171/lstm_cell_171/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_172/lstm_cell_172/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_172/lstm_cell_172/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_172/lstm_cell_172/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_173/lstm_cell_173/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_173/lstm_cell_173/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_173/lstm_cell_173/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_171_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_171_inputlstm_171/lstm_cell_171/kernel'lstm_171/lstm_cell_171/recurrent_kernellstm_171/lstm_cell_171/biaslstm_172/lstm_cell_172/kernel'lstm_172/lstm_cell_172/recurrent_kernellstm_172/lstm_cell_172/biaslstm_173/lstm_cell_173/kernel'lstm_173/lstm_cell_173/recurrent_kernellstm_173/lstm_cell_173/biasdense_57/kerneldense_57/bias*
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
%__inference_signature_wrapper_3025993
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Й
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_171/lstm_cell_171/kernel/Read/ReadVariableOp;lstm_171/lstm_cell_171/recurrent_kernel/Read/ReadVariableOp/lstm_171/lstm_cell_171/bias/Read/ReadVariableOp1lstm_172/lstm_cell_172/kernel/Read/ReadVariableOp;lstm_172/lstm_cell_172/recurrent_kernel/Read/ReadVariableOp/lstm_172/lstm_cell_172/bias/Read/ReadVariableOp1lstm_173/lstm_cell_173/kernel/Read/ReadVariableOp;lstm_173/lstm_cell_173/recurrent_kernel/Read/ReadVariableOp/lstm_173/lstm_cell_173/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_57/kernel/m/Read/ReadVariableOp(Adam/dense_57/bias/m/Read/ReadVariableOp8Adam/lstm_171/lstm_cell_171/kernel/m/Read/ReadVariableOpBAdam/lstm_171/lstm_cell_171/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_171/lstm_cell_171/bias/m/Read/ReadVariableOp8Adam/lstm_172/lstm_cell_172/kernel/m/Read/ReadVariableOpBAdam/lstm_172/lstm_cell_172/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_172/lstm_cell_172/bias/m/Read/ReadVariableOp8Adam/lstm_173/lstm_cell_173/kernel/m/Read/ReadVariableOpBAdam/lstm_173/lstm_cell_173/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_173/lstm_cell_173/bias/m/Read/ReadVariableOp*Adam/dense_57/kernel/v/Read/ReadVariableOp(Adam/dense_57/bias/v/Read/ReadVariableOp8Adam/lstm_171/lstm_cell_171/kernel/v/Read/ReadVariableOpBAdam/lstm_171/lstm_cell_171/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_171/lstm_cell_171/bias/v/Read/ReadVariableOp8Adam/lstm_172/lstm_cell_172/kernel/v/Read/ReadVariableOpBAdam/lstm_172/lstm_cell_172/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_172/lstm_cell_172/bias/v/Read/ReadVariableOp8Adam/lstm_173/lstm_cell_173/kernel/v/Read/ReadVariableOpBAdam/lstm_173/lstm_cell_173/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_173/lstm_cell_173/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3029205
Ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_57/kerneldense_57/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_171/lstm_cell_171/kernel'lstm_171/lstm_cell_171/recurrent_kernellstm_171/lstm_cell_171/biaslstm_172/lstm_cell_172/kernel'lstm_172/lstm_cell_172/recurrent_kernellstm_172/lstm_cell_172/biaslstm_173/lstm_cell_173/kernel'lstm_173/lstm_cell_173/recurrent_kernellstm_173/lstm_cell_173/biastotalcountAdam/dense_57/kernel/mAdam/dense_57/bias/m$Adam/lstm_171/lstm_cell_171/kernel/m.Adam/lstm_171/lstm_cell_171/recurrent_kernel/m"Adam/lstm_171/lstm_cell_171/bias/m$Adam/lstm_172/lstm_cell_172/kernel/m.Adam/lstm_172/lstm_cell_172/recurrent_kernel/m"Adam/lstm_172/lstm_cell_172/bias/m$Adam/lstm_173/lstm_cell_173/kernel/m.Adam/lstm_173/lstm_cell_173/recurrent_kernel/m"Adam/lstm_173/lstm_cell_173/bias/mAdam/dense_57/kernel/vAdam/dense_57/bias/v$Adam/lstm_171/lstm_cell_171/kernel/v.Adam/lstm_171/lstm_cell_171/recurrent_kernel/v"Adam/lstm_171/lstm_cell_171/bias/v$Adam/lstm_172/lstm_cell_172/kernel/v.Adam/lstm_172/lstm_cell_172/recurrent_kernel/v"Adam/lstm_172/lstm_cell_172/bias/v$Adam/lstm_173/lstm_cell_173/kernel/v.Adam/lstm_173/lstm_cell_173/recurrent_kernel/v"Adam/lstm_173/lstm_cell_173/bias/v*4
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
#__inference__traced_restore_3029335Ћш+
Г
╣
*__inference_lstm_171_layer_call_fn_3026912
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3023883|
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
№
Э
/__inference_lstm_cell_499_layer_call_fn_3028900

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
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3024296o
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
ПJ
а
E__inference_lstm_173_layer_call_and_return_conditional_losses_3025448

inputs>
,lstm_cell_500_matmul_readvariableop_resource:2(@
.lstm_cell_500_matmul_1_readvariableop_resource:
(;
-lstm_cell_500_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_500/BiasAdd/ReadVariableOpб#lstm_cell_500/MatMul/ReadVariableOpб%lstm_cell_500/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_500/MatMul/ReadVariableOpReadVariableOp,lstm_cell_500_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_500/MatMulMatMulstrided_slice_2:output:0+lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_500_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_500/MatMul_1MatMulzeros:output:0-lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_500/addAddV2lstm_cell_500/MatMul:product:0 lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_500_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_500/BiasAddBiasAddlstm_cell_500/add:z:0,lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_500/splitSplit&lstm_cell_500/split/split_dim:output:0lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_500/SigmoidSigmoidlstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_1Sigmoidlstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_500/mulMullstm_cell_500/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_500/ReluRelulstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_500/mul_1Mullstm_cell_500/Sigmoid:y:0 lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_500/add_1AddV2lstm_cell_500/mul:z:0lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_2Sigmoidlstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_500/Relu_1Relulstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_500/mul_2Mullstm_cell_500/Sigmoid_2:y:0"lstm_cell_500/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_500_matmul_readvariableop_resource.lstm_cell_500_matmul_1_readvariableop_resource-lstm_cell_500_biasadd_readvariableop_resource*
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
while_body_3025364*
condR
while_cond_3025363*K
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
NoOpNoOp%^lstm_cell_500/BiasAdd/ReadVariableOp$^lstm_cell_500/MatMul/ReadVariableOp&^lstm_cell_500/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_500/BiasAdd/ReadVariableOp$lstm_cell_500/BiasAdd/ReadVariableOp2J
#lstm_cell_500/MatMul/ReadVariableOp#lstm_cell_500/MatMul/ReadVariableOp2N
%lstm_cell_500/MatMul_1/ReadVariableOp%lstm_cell_500/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3028964

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
З

Б
/__inference_sequential_57_layer_call_fn_3025282
lstm_171_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_171_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025257o
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
_user_specified_namelstm_171_input
О
є
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3023946

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
*__inference_lstm_171_layer_call_fn_3026934

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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3024932s
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
║
╚
while_cond_3027619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3027619___redundant_placeholder05
1while_while_cond_3027619___redundant_placeholder15
1while_while_cond_3027619___redundant_placeholder25
1while_while_cond_3027619___redundant_placeholder3
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
═
Ѓ
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3024500

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
║
╚
while_cond_3025147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3025147___redundant_placeholder05
1while_while_cond_3025147___redundant_placeholder15
1while_while_cond_3025147___redundant_placeholder25
1while_while_cond_3025147___redundant_placeholder3
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
жЂ
ќ
J__inference_sequential_57_layer_call_and_return_conditional_losses_3026474

inputsH
5lstm_171_lstm_cell_498_matmul_readvariableop_resource:	љJ
7lstm_171_lstm_cell_498_matmul_1_readvariableop_resource:	dљE
6lstm_171_lstm_cell_498_biasadd_readvariableop_resource:	љH
5lstm_172_lstm_cell_499_matmul_readvariableop_resource:	d╚J
7lstm_172_lstm_cell_499_matmul_1_readvariableop_resource:	2╚E
6lstm_172_lstm_cell_499_biasadd_readvariableop_resource:	╚G
5lstm_173_lstm_cell_500_matmul_readvariableop_resource:2(I
7lstm_173_lstm_cell_500_matmul_1_readvariableop_resource:
(D
6lstm_173_lstm_cell_500_biasadd_readvariableop_resource:(9
'dense_57_matmul_readvariableop_resource:
6
(dense_57_biasadd_readvariableop_resource:
identityѕбdense_57/BiasAdd/ReadVariableOpбdense_57/MatMul/ReadVariableOpб-lstm_171/lstm_cell_498/BiasAdd/ReadVariableOpб,lstm_171/lstm_cell_498/MatMul/ReadVariableOpб.lstm_171/lstm_cell_498/MatMul_1/ReadVariableOpбlstm_171/whileб-lstm_172/lstm_cell_499/BiasAdd/ReadVariableOpб,lstm_172/lstm_cell_499/MatMul/ReadVariableOpб.lstm_172/lstm_cell_499/MatMul_1/ReadVariableOpбlstm_172/whileб-lstm_173/lstm_cell_500/BiasAdd/ReadVariableOpб,lstm_173/lstm_cell_500/MatMul/ReadVariableOpб.lstm_173/lstm_cell_500/MatMul_1/ReadVariableOpбlstm_173/whileD
lstm_171/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_171/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_171/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_171/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_171/strided_sliceStridedSlicelstm_171/Shape:output:0%lstm_171/strided_slice/stack:output:0'lstm_171/strided_slice/stack_1:output:0'lstm_171/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_171/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_171/zeros/packedPacklstm_171/strided_slice:output:0 lstm_171/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_171/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_171/zerosFilllstm_171/zeros/packed:output:0lstm_171/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_171/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_171/zeros_1/packedPacklstm_171/strided_slice:output:0"lstm_171/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_171/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_171/zeros_1Fill lstm_171/zeros_1/packed:output:0lstm_171/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_171/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_171/transpose	Transposeinputs lstm_171/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_171/Shape_1Shapelstm_171/transpose:y:0*
T0*
_output_shapes
:h
lstm_171/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_171/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_171/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_171/strided_slice_1StridedSlicelstm_171/Shape_1:output:0'lstm_171/strided_slice_1/stack:output:0)lstm_171/strided_slice_1/stack_1:output:0)lstm_171/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_171/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_171/TensorArrayV2TensorListReserve-lstm_171/TensorArrayV2/element_shape:output:0!lstm_171/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_171/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_171/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_171/transpose:y:0Glstm_171/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_171/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_171/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_171/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_171/strided_slice_2StridedSlicelstm_171/transpose:y:0'lstm_171/strided_slice_2/stack:output:0)lstm_171/strided_slice_2/stack_1:output:0)lstm_171/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_171/lstm_cell_498/MatMul/ReadVariableOpReadVariableOp5lstm_171_lstm_cell_498_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_171/lstm_cell_498/MatMulMatMul!lstm_171/strided_slice_2:output:04lstm_171/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_171/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp7lstm_171_lstm_cell_498_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_171/lstm_cell_498/MatMul_1MatMullstm_171/zeros:output:06lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_171/lstm_cell_498/addAddV2'lstm_171/lstm_cell_498/MatMul:product:0)lstm_171/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_171/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp6lstm_171_lstm_cell_498_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_171/lstm_cell_498/BiasAddBiasAddlstm_171/lstm_cell_498/add:z:05lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_171/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_171/lstm_cell_498/splitSplit/lstm_171/lstm_cell_498/split/split_dim:output:0'lstm_171/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_171/lstm_cell_498/SigmoidSigmoid%lstm_171/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_171/lstm_cell_498/Sigmoid_1Sigmoid%lstm_171/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_171/lstm_cell_498/mulMul$lstm_171/lstm_cell_498/Sigmoid_1:y:0lstm_171/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_171/lstm_cell_498/ReluRelu%lstm_171/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dц
lstm_171/lstm_cell_498/mul_1Mul"lstm_171/lstm_cell_498/Sigmoid:y:0)lstm_171/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_171/lstm_cell_498/add_1AddV2lstm_171/lstm_cell_498/mul:z:0 lstm_171/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_171/lstm_cell_498/Sigmoid_2Sigmoid%lstm_171/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dy
lstm_171/lstm_cell_498/Relu_1Relu lstm_171/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_171/lstm_cell_498/mul_2Mul$lstm_171/lstm_cell_498/Sigmoid_2:y:0+lstm_171/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_171/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_171/TensorArrayV2_1TensorListReserve/lstm_171/TensorArrayV2_1/element_shape:output:0!lstm_171/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_171/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_171/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_171/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_171/whileWhile$lstm_171/while/loop_counter:output:0*lstm_171/while/maximum_iterations:output:0lstm_171/time:output:0!lstm_171/TensorArrayV2_1:handle:0lstm_171/zeros:output:0lstm_171/zeros_1:output:0!lstm_171/strided_slice_1:output:0@lstm_171/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_171_lstm_cell_498_matmul_readvariableop_resource7lstm_171_lstm_cell_498_matmul_1_readvariableop_resource6lstm_171_lstm_cell_498_biasadd_readvariableop_resource*
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
lstm_171_while_body_3026106*'
condR
lstm_171_while_cond_3026105*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_171/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_171/TensorArrayV2Stack/TensorListStackTensorListStacklstm_171/while:output:3Blstm_171/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_171/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_171/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_171/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_171/strided_slice_3StridedSlice4lstm_171/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_171/strided_slice_3/stack:output:0)lstm_171/strided_slice_3/stack_1:output:0)lstm_171/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_171/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_171/transpose_1	Transpose4lstm_171/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_171/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_171/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_172/ShapeShapelstm_171/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_172/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_172/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_172/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_172/strided_sliceStridedSlicelstm_172/Shape:output:0%lstm_172/strided_slice/stack:output:0'lstm_172/strided_slice/stack_1:output:0'lstm_172/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_172/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_172/zeros/packedPacklstm_172/strided_slice:output:0 lstm_172/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_172/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_172/zerosFilllstm_172/zeros/packed:output:0lstm_172/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_172/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_172/zeros_1/packedPacklstm_172/strided_slice:output:0"lstm_172/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_172/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_172/zeros_1Fill lstm_172/zeros_1/packed:output:0lstm_172/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_172/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_172/transpose	Transposelstm_171/transpose_1:y:0 lstm_172/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_172/Shape_1Shapelstm_172/transpose:y:0*
T0*
_output_shapes
:h
lstm_172/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_172/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_172/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_172/strided_slice_1StridedSlicelstm_172/Shape_1:output:0'lstm_172/strided_slice_1/stack:output:0)lstm_172/strided_slice_1/stack_1:output:0)lstm_172/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_172/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_172/TensorArrayV2TensorListReserve-lstm_172/TensorArrayV2/element_shape:output:0!lstm_172/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_172/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_172/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_172/transpose:y:0Glstm_172/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_172/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_172/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_172/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_172/strided_slice_2StridedSlicelstm_172/transpose:y:0'lstm_172/strided_slice_2/stack:output:0)lstm_172/strided_slice_2/stack_1:output:0)lstm_172/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_172/lstm_cell_499/MatMul/ReadVariableOpReadVariableOp5lstm_172_lstm_cell_499_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_172/lstm_cell_499/MatMulMatMul!lstm_172/strided_slice_2:output:04lstm_172/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_172/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp7lstm_172_lstm_cell_499_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_172/lstm_cell_499/MatMul_1MatMullstm_172/zeros:output:06lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_172/lstm_cell_499/addAddV2'lstm_172/lstm_cell_499/MatMul:product:0)lstm_172/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_172/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp6lstm_172_lstm_cell_499_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_172/lstm_cell_499/BiasAddBiasAddlstm_172/lstm_cell_499/add:z:05lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_172/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_172/lstm_cell_499/splitSplit/lstm_172/lstm_cell_499/split/split_dim:output:0'lstm_172/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_172/lstm_cell_499/SigmoidSigmoid%lstm_172/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_172/lstm_cell_499/Sigmoid_1Sigmoid%lstm_172/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_172/lstm_cell_499/mulMul$lstm_172/lstm_cell_499/Sigmoid_1:y:0lstm_172/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_172/lstm_cell_499/ReluRelu%lstm_172/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_172/lstm_cell_499/mul_1Mul"lstm_172/lstm_cell_499/Sigmoid:y:0)lstm_172/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_172/lstm_cell_499/add_1AddV2lstm_172/lstm_cell_499/mul:z:0 lstm_172/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_172/lstm_cell_499/Sigmoid_2Sigmoid%lstm_172/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2y
lstm_172/lstm_cell_499/Relu_1Relu lstm_172/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_172/lstm_cell_499/mul_2Mul$lstm_172/lstm_cell_499/Sigmoid_2:y:0+lstm_172/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_172/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_172/TensorArrayV2_1TensorListReserve/lstm_172/TensorArrayV2_1/element_shape:output:0!lstm_172/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_172/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_172/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_172/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_172/whileWhile$lstm_172/while/loop_counter:output:0*lstm_172/while/maximum_iterations:output:0lstm_172/time:output:0!lstm_172/TensorArrayV2_1:handle:0lstm_172/zeros:output:0lstm_172/zeros_1:output:0!lstm_172/strided_slice_1:output:0@lstm_172/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_172_lstm_cell_499_matmul_readvariableop_resource7lstm_172_lstm_cell_499_matmul_1_readvariableop_resource6lstm_172_lstm_cell_499_biasadd_readvariableop_resource*
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
lstm_172_while_body_3026245*'
condR
lstm_172_while_cond_3026244*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_172/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_172/TensorArrayV2Stack/TensorListStackTensorListStacklstm_172/while:output:3Blstm_172/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_172/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_172/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_172/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_172/strided_slice_3StridedSlice4lstm_172/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_172/strided_slice_3/stack:output:0)lstm_172/strided_slice_3/stack_1:output:0)lstm_172/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_172/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_172/transpose_1	Transpose4lstm_172/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_172/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_172/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_173/ShapeShapelstm_172/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_173/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_173/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_173/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_173/strided_sliceStridedSlicelstm_173/Shape:output:0%lstm_173/strided_slice/stack:output:0'lstm_173/strided_slice/stack_1:output:0'lstm_173/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_173/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_173/zeros/packedPacklstm_173/strided_slice:output:0 lstm_173/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_173/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_173/zerosFilllstm_173/zeros/packed:output:0lstm_173/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_173/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_173/zeros_1/packedPacklstm_173/strided_slice:output:0"lstm_173/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_173/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_173/zeros_1Fill lstm_173/zeros_1/packed:output:0lstm_173/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_173/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_173/transpose	Transposelstm_172/transpose_1:y:0 lstm_173/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_173/Shape_1Shapelstm_173/transpose:y:0*
T0*
_output_shapes
:h
lstm_173/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_173/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_173/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_173/strided_slice_1StridedSlicelstm_173/Shape_1:output:0'lstm_173/strided_slice_1/stack:output:0)lstm_173/strided_slice_1/stack_1:output:0)lstm_173/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_173/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_173/TensorArrayV2TensorListReserve-lstm_173/TensorArrayV2/element_shape:output:0!lstm_173/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_173/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_173/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_173/transpose:y:0Glstm_173/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_173/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_173/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_173/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_173/strided_slice_2StridedSlicelstm_173/transpose:y:0'lstm_173/strided_slice_2/stack:output:0)lstm_173/strided_slice_2/stack_1:output:0)lstm_173/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_173/lstm_cell_500/MatMul/ReadVariableOpReadVariableOp5lstm_173_lstm_cell_500_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_173/lstm_cell_500/MatMulMatMul!lstm_173/strided_slice_2:output:04lstm_173/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_173/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp7lstm_173_lstm_cell_500_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_173/lstm_cell_500/MatMul_1MatMullstm_173/zeros:output:06lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_173/lstm_cell_500/addAddV2'lstm_173/lstm_cell_500/MatMul:product:0)lstm_173/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_173/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp6lstm_173_lstm_cell_500_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_173/lstm_cell_500/BiasAddBiasAddlstm_173/lstm_cell_500/add:z:05lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_173/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_173/lstm_cell_500/splitSplit/lstm_173/lstm_cell_500/split/split_dim:output:0'lstm_173/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_173/lstm_cell_500/SigmoidSigmoid%lstm_173/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_173/lstm_cell_500/Sigmoid_1Sigmoid%lstm_173/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_173/lstm_cell_500/mulMul$lstm_173/lstm_cell_500/Sigmoid_1:y:0lstm_173/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_173/lstm_cell_500/ReluRelu%lstm_173/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_173/lstm_cell_500/mul_1Mul"lstm_173/lstm_cell_500/Sigmoid:y:0)lstm_173/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_173/lstm_cell_500/add_1AddV2lstm_173/lstm_cell_500/mul:z:0 lstm_173/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_173/lstm_cell_500/Sigmoid_2Sigmoid%lstm_173/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
y
lstm_173/lstm_cell_500/Relu_1Relu lstm_173/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_173/lstm_cell_500/mul_2Mul$lstm_173/lstm_cell_500/Sigmoid_2:y:0+lstm_173/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_173/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_173/TensorArrayV2_1TensorListReserve/lstm_173/TensorArrayV2_1/element_shape:output:0!lstm_173/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_173/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_173/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_173/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_173/whileWhile$lstm_173/while/loop_counter:output:0*lstm_173/while/maximum_iterations:output:0lstm_173/time:output:0!lstm_173/TensorArrayV2_1:handle:0lstm_173/zeros:output:0lstm_173/zeros_1:output:0!lstm_173/strided_slice_1:output:0@lstm_173/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_173_lstm_cell_500_matmul_readvariableop_resource7lstm_173_lstm_cell_500_matmul_1_readvariableop_resource6lstm_173_lstm_cell_500_biasadd_readvariableop_resource*
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
lstm_173_while_body_3026384*'
condR
lstm_173_while_cond_3026383*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_173/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_173/TensorArrayV2Stack/TensorListStackTensorListStacklstm_173/while:output:3Blstm_173/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_173/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_173/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_173/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_173/strided_slice_3StridedSlice4lstm_173/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_173/strided_slice_3/stack:output:0)lstm_173/strided_slice_3/stack_1:output:0)lstm_173/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_173/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_173/transpose_1	Transpose4lstm_173/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_173/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_173/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_57/MatMulMatMul!lstm_173/strided_slice_3:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_57/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp.^lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp-^lstm_171/lstm_cell_498/MatMul/ReadVariableOp/^lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp^lstm_171/while.^lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp-^lstm_172/lstm_cell_499/MatMul/ReadVariableOp/^lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp^lstm_172/while.^lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp-^lstm_173/lstm_cell_500/MatMul/ReadVariableOp/^lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp^lstm_173/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2^
-lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp-lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp2\
,lstm_171/lstm_cell_498/MatMul/ReadVariableOp,lstm_171/lstm_cell_498/MatMul/ReadVariableOp2`
.lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp.lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp2 
lstm_171/whilelstm_171/while2^
-lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp-lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp2\
,lstm_172/lstm_cell_499/MatMul/ReadVariableOp,lstm_172/lstm_cell_499/MatMul/ReadVariableOp2`
.lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp.lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp2 
lstm_172/whilelstm_172/while2^
-lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp-lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp2\
,lstm_173/lstm_cell_500/MatMul/ReadVariableOp,lstm_173/lstm_cell_500/MatMul/ReadVariableOp2`
.lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp.lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp2 
lstm_173/whilelstm_173/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_3024354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3024354___redundant_placeholder05
1while_while_cond_3024354___redundant_placeholder15
1while_while_cond_3024354___redundant_placeholder25
1while_while_cond_3024354___redundant_placeholder3
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3024074

inputs(
lstm_cell_498_3023992:	љ(
lstm_cell_498_3023994:	dљ$
lstm_cell_498_3023996:	љ
identityѕб%lstm_cell_498/StatefulPartitionedCallбwhile;
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
%lstm_cell_498/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_498_3023992lstm_cell_498_3023994lstm_cell_498_3023996*
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
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3023946n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_498_3023992lstm_cell_498_3023994lstm_cell_498_3023996*
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
while_body_3024005*
condR
while_cond_3024004*K
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
NoOpNoOp&^lstm_cell_498/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_498/StatefulPartitionedCall%lstm_cell_498/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Л8
┌
while_body_3024848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_498_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_498_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_498_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_498_matmul_readvariableop_resource:	љG
4while_lstm_cell_498_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_498_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_498/BiasAdd/ReadVariableOpб)while/lstm_cell_498/MatMul/ReadVariableOpб+while/lstm_cell_498/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_498/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_498_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_498/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_498_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_498/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_498/addAddV2$while/lstm_cell_498/MatMul:product:0&while/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_498_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_498/BiasAddBiasAddwhile/lstm_cell_498/add:z:02while/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_498/splitSplit,while/lstm_cell_498/split/split_dim:output:0$while/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_498/SigmoidSigmoid"while/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_1Sigmoid"while/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_498/mulMul!while/lstm_cell_498/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_498/ReluRelu"while/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_498/mul_1Mulwhile/lstm_cell_498/Sigmoid:y:0&while/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_498/add_1AddV2while/lstm_cell_498/mul:z:0while/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_2Sigmoid"while/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_498/Relu_1Reluwhile/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_498/mul_2Mul!while/lstm_cell_498/Sigmoid_2:y:0(while/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_498/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_498/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_498/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_498/BiasAdd/ReadVariableOp*^while/lstm_cell_498/MatMul/ReadVariableOp,^while/lstm_cell_498/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_498_biasadd_readvariableop_resource5while_lstm_cell_498_biasadd_readvariableop_resource_0"n
4while_lstm_cell_498_matmul_1_readvariableop_resource6while_lstm_cell_498_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_498_matmul_readvariableop_resource4while_lstm_cell_498_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_498/BiasAdd/ReadVariableOp*while/lstm_cell_498/BiasAdd/ReadVariableOp2V
)while/lstm_cell_498/MatMul/ReadVariableOp)while/lstm_cell_498/MatMul/ReadVariableOp2Z
+while/lstm_cell_498/MatMul_1/ReadVariableOp+while/lstm_cell_498/MatMul_1/ReadVariableOp: 
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
while_body_3027004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_498_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_498_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_498_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_498_matmul_readvariableop_resource:	љG
4while_lstm_cell_498_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_498_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_498/BiasAdd/ReadVariableOpб)while/lstm_cell_498/MatMul/ReadVariableOpб+while/lstm_cell_498/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_498/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_498_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_498/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_498_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_498/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_498/addAddV2$while/lstm_cell_498/MatMul:product:0&while/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_498_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_498/BiasAddBiasAddwhile/lstm_cell_498/add:z:02while/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_498/splitSplit,while/lstm_cell_498/split/split_dim:output:0$while/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_498/SigmoidSigmoid"while/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_1Sigmoid"while/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_498/mulMul!while/lstm_cell_498/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_498/ReluRelu"while/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_498/mul_1Mulwhile/lstm_cell_498/Sigmoid:y:0&while/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_498/add_1AddV2while/lstm_cell_498/mul:z:0while/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_2Sigmoid"while/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_498/Relu_1Reluwhile/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_498/mul_2Mul!while/lstm_cell_498/Sigmoid_2:y:0(while/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_498/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_498/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_498/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_498/BiasAdd/ReadVariableOp*^while/lstm_cell_498/MatMul/ReadVariableOp,^while/lstm_cell_498/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_498_biasadd_readvariableop_resource5while_lstm_cell_498_biasadd_readvariableop_resource_0"n
4while_lstm_cell_498_matmul_1_readvariableop_resource6while_lstm_cell_498_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_498_matmul_readvariableop_resource4while_lstm_cell_498_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_498/BiasAdd/ReadVariableOp*while/lstm_cell_498/BiasAdd/ReadVariableOp2V
)while/lstm_cell_498/MatMul/ReadVariableOp)while/lstm_cell_498/MatMul/ReadVariableOp2Z
+while/lstm_cell_498/MatMul_1/ReadVariableOp+while/lstm_cell_498/MatMul_1/ReadVariableOp: 
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
Г
╣
*__inference_lstm_172_layer_call_fn_3027528
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3024233|
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
Ѓ
и
*__inference_lstm_172_layer_call_fn_3027561

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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3025613s
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
║
╚
while_cond_3027146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3027146___redundant_placeholder05
1while_while_cond_3027146___redundant_placeholder15
1while_while_cond_3027146___redundant_placeholder25
1while_while_cond_3027146___redundant_placeholder3
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
я
 
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025958
lstm_171_input#
lstm_171_3025931:	љ#
lstm_171_3025933:	dљ
lstm_171_3025935:	љ#
lstm_172_3025938:	d╚#
lstm_172_3025940:	2╚
lstm_172_3025942:	╚"
lstm_173_3025945:2("
lstm_173_3025947:
(
lstm_173_3025949:("
dense_57_3025952:

dense_57_3025954:
identityѕб dense_57/StatefulPartitionedCallб lstm_171/StatefulPartitionedCallб lstm_172/StatefulPartitionedCallб lstm_173/StatefulPartitionedCallЊ
 lstm_171/StatefulPartitionedCallStatefulPartitionedCalllstm_171_inputlstm_171_3025931lstm_171_3025933lstm_171_3025935*
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3025778«
 lstm_172/StatefulPartitionedCallStatefulPartitionedCall)lstm_171/StatefulPartitionedCall:output:0lstm_172_3025938lstm_172_3025940lstm_172_3025942*
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3025613ф
 lstm_173/StatefulPartitionedCallStatefulPartitionedCall)lstm_172/StatefulPartitionedCall:output:0lstm_173_3025945lstm_173_3025947lstm_173_3025949*
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3025448ќ
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)lstm_173/StatefulPartitionedCall:output:0dense_57_3025952dense_57_3025954*
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
E__inference_dense_57_layer_call_and_return_conditional_losses_3025250x
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_57/StatefulPartitionedCall!^lstm_171/StatefulPartitionedCall!^lstm_172/StatefulPartitionedCall!^lstm_173/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 lstm_171/StatefulPartitionedCall lstm_171/StatefulPartitionedCall2D
 lstm_172/StatefulPartitionedCall lstm_172/StatefulPartitionedCall2D
 lstm_173/StatefulPartitionedCall lstm_173/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_171_input
┐
ћ
)sequential_57_lstm_172_while_cond_3023503J
Fsequential_57_lstm_172_while_sequential_57_lstm_172_while_loop_counterP
Lsequential_57_lstm_172_while_sequential_57_lstm_172_while_maximum_iterations,
(sequential_57_lstm_172_while_placeholder.
*sequential_57_lstm_172_while_placeholder_1.
*sequential_57_lstm_172_while_placeholder_2.
*sequential_57_lstm_172_while_placeholder_3L
Hsequential_57_lstm_172_while_less_sequential_57_lstm_172_strided_slice_1c
_sequential_57_lstm_172_while_sequential_57_lstm_172_while_cond_3023503___redundant_placeholder0c
_sequential_57_lstm_172_while_sequential_57_lstm_172_while_cond_3023503___redundant_placeholder1c
_sequential_57_lstm_172_while_sequential_57_lstm_172_while_cond_3023503___redundant_placeholder2c
_sequential_57_lstm_172_while_sequential_57_lstm_172_while_cond_3023503___redundant_placeholder3)
%sequential_57_lstm_172_while_identity
Й
!sequential_57/lstm_172/while/LessLess(sequential_57_lstm_172_while_placeholderHsequential_57_lstm_172_while_less_sequential_57_lstm_172_strided_slice_1*
T0*
_output_shapes
: y
%sequential_57/lstm_172/while/IdentityIdentity%sequential_57/lstm_172/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_57_lstm_172_while_identity.sequential_57/lstm_172/while/Identity:output:0*(
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
ћC
З

lstm_173_while_body_3026384.
*lstm_173_while_lstm_173_while_loop_counter4
0lstm_173_while_lstm_173_while_maximum_iterations
lstm_173_while_placeholder 
lstm_173_while_placeholder_1 
lstm_173_while_placeholder_2 
lstm_173_while_placeholder_3-
)lstm_173_while_lstm_173_strided_slice_1_0i
elstm_173_while_tensorarrayv2read_tensorlistgetitem_lstm_173_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_173_while_lstm_cell_500_matmul_readvariableop_resource_0:2(Q
?lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource_0:
(L
>lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource_0:(
lstm_173_while_identity
lstm_173_while_identity_1
lstm_173_while_identity_2
lstm_173_while_identity_3
lstm_173_while_identity_4
lstm_173_while_identity_5+
'lstm_173_while_lstm_173_strided_slice_1g
clstm_173_while_tensorarrayv2read_tensorlistgetitem_lstm_173_tensorarrayunstack_tensorlistfromtensorM
;lstm_173_while_lstm_cell_500_matmul_readvariableop_resource:2(O
=lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource:
(J
<lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource:(ѕб3lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOpб2lstm_173/while/lstm_cell_500/MatMul/ReadVariableOpб4lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOpЉ
@lstm_173/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_173/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_173_while_tensorarrayv2read_tensorlistgetitem_lstm_173_tensorarrayunstack_tensorlistfromtensor_0lstm_173_while_placeholderIlstm_173/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_173/while/lstm_cell_500/MatMul/ReadVariableOpReadVariableOp=lstm_173_while_lstm_cell_500_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_173/while/lstm_cell_500/MatMulMatMul9lstm_173/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp?lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_173/while/lstm_cell_500/MatMul_1MatMullstm_173_while_placeholder_2<lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_173/while/lstm_cell_500/addAddV2-lstm_173/while/lstm_cell_500/MatMul:product:0/lstm_173/while/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp>lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_173/while/lstm_cell_500/BiasAddBiasAdd$lstm_173/while/lstm_cell_500/add:z:0;lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_173/while/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_173/while/lstm_cell_500/splitSplit5lstm_173/while/lstm_cell_500/split/split_dim:output:0-lstm_173/while/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_173/while/lstm_cell_500/SigmoidSigmoid+lstm_173/while/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_173/while/lstm_cell_500/Sigmoid_1Sigmoid+lstm_173/while/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_173/while/lstm_cell_500/mulMul*lstm_173/while/lstm_cell_500/Sigmoid_1:y:0lstm_173_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_173/while/lstm_cell_500/ReluRelu+lstm_173/while/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_173/while/lstm_cell_500/mul_1Mul(lstm_173/while/lstm_cell_500/Sigmoid:y:0/lstm_173/while/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_173/while/lstm_cell_500/add_1AddV2$lstm_173/while/lstm_cell_500/mul:z:0&lstm_173/while/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_173/while/lstm_cell_500/Sigmoid_2Sigmoid+lstm_173/while/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_173/while/lstm_cell_500/Relu_1Relu&lstm_173/while/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_173/while/lstm_cell_500/mul_2Mul*lstm_173/while/lstm_cell_500/Sigmoid_2:y:01lstm_173/while/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_173/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_173_while_placeholder_1lstm_173_while_placeholder&lstm_173/while/lstm_cell_500/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_173/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_173/while/addAddV2lstm_173_while_placeholderlstm_173/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_173/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_173/while/add_1AddV2*lstm_173_while_lstm_173_while_loop_counterlstm_173/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_173/while/IdentityIdentitylstm_173/while/add_1:z:0^lstm_173/while/NoOp*
T0*
_output_shapes
: ј
lstm_173/while/Identity_1Identity0lstm_173_while_lstm_173_while_maximum_iterations^lstm_173/while/NoOp*
T0*
_output_shapes
: t
lstm_173/while/Identity_2Identitylstm_173/while/add:z:0^lstm_173/while/NoOp*
T0*
_output_shapes
: А
lstm_173/while/Identity_3IdentityClstm_173/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_173/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_173/while/Identity_4Identity&lstm_173/while/lstm_cell_500/mul_2:z:0^lstm_173/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_173/while/Identity_5Identity&lstm_173/while/lstm_cell_500/add_1:z:0^lstm_173/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_173/while/NoOpNoOp4^lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOp3^lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp5^lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_173_while_identity lstm_173/while/Identity:output:0"?
lstm_173_while_identity_1"lstm_173/while/Identity_1:output:0"?
lstm_173_while_identity_2"lstm_173/while/Identity_2:output:0"?
lstm_173_while_identity_3"lstm_173/while/Identity_3:output:0"?
lstm_173_while_identity_4"lstm_173/while/Identity_4:output:0"?
lstm_173_while_identity_5"lstm_173/while/Identity_5:output:0"T
'lstm_173_while_lstm_173_strided_slice_1)lstm_173_while_lstm_173_strided_slice_1_0"~
<lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource>lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource_0"ђ
=lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource?lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource_0"|
;lstm_173_while_lstm_cell_500_matmul_readvariableop_resource=lstm_173_while_lstm_cell_500_matmul_readvariableop_resource_0"╠
clstm_173_while_tensorarrayv2read_tensorlistgetitem_lstm_173_tensorarrayunstack_tensorlistfromtensorelstm_173_while_tensorarrayv2read_tensorlistgetitem_lstm_173_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOp3lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOp2h
2lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp2lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp2l
4lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp4lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp: 
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
─8
н
while_body_3025148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_500_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_500_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_500_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_500_matmul_readvariableop_resource:2(F
4while_lstm_cell_500_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_500_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_500/BiasAdd/ReadVariableOpб)while/lstm_cell_500/MatMul/ReadVariableOpб+while/lstm_cell_500/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_500/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_500_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_500/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_500_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_500/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_500/addAddV2$while/lstm_cell_500/MatMul:product:0&while/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_500_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_500/BiasAddBiasAddwhile/lstm_cell_500/add:z:02while/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_500/splitSplit,while/lstm_cell_500/split/split_dim:output:0$while/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_500/SigmoidSigmoid"while/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_1Sigmoid"while/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_500/mulMul!while/lstm_cell_500/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_500/ReluRelu"while/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_500/mul_1Mulwhile/lstm_cell_500/Sigmoid:y:0&while/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_500/add_1AddV2while/lstm_cell_500/mul:z:0while/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_2Sigmoid"while/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_500/Relu_1Reluwhile/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_500/mul_2Mul!while/lstm_cell_500/Sigmoid_2:y:0(while/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_500/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_500/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_500/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_500/BiasAdd/ReadVariableOp*^while/lstm_cell_500/MatMul/ReadVariableOp,^while/lstm_cell_500/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_500_biasadd_readvariableop_resource5while_lstm_cell_500_biasadd_readvariableop_resource_0"n
4while_lstm_cell_500_matmul_1_readvariableop_resource6while_lstm_cell_500_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_500_matmul_readvariableop_resource4while_lstm_cell_500_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_500/BiasAdd/ReadVariableOp*while/lstm_cell_500/BiasAdd/ReadVariableOp2V
)while/lstm_cell_500/MatMul/ReadVariableOp)while/lstm_cell_500/MatMul/ReadVariableOp2Z
+while/lstm_cell_500/MatMul_1/ReadVariableOp+while/lstm_cell_500/MatMul_1/ReadVariableOp: 
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
─8
н
while_body_3028522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_500_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_500_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_500_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_500_matmul_readvariableop_resource:2(F
4while_lstm_cell_500_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_500_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_500/BiasAdd/ReadVariableOpб)while/lstm_cell_500/MatMul/ReadVariableOpб+while/lstm_cell_500/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_500/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_500_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_500/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_500_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_500/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_500/addAddV2$while/lstm_cell_500/MatMul:product:0&while/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_500_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_500/BiasAddBiasAddwhile/lstm_cell_500/add:z:02while/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_500/splitSplit,while/lstm_cell_500/split/split_dim:output:0$while/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_500/SigmoidSigmoid"while/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_1Sigmoid"while/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_500/mulMul!while/lstm_cell_500/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_500/ReluRelu"while/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_500/mul_1Mulwhile/lstm_cell_500/Sigmoid:y:0&while/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_500/add_1AddV2while/lstm_cell_500/mul:z:0while/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_2Sigmoid"while/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_500/Relu_1Reluwhile/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_500/mul_2Mul!while/lstm_cell_500/Sigmoid_2:y:0(while/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_500/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_500/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_500/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_500/BiasAdd/ReadVariableOp*^while/lstm_cell_500/MatMul/ReadVariableOp,^while/lstm_cell_500/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_500_biasadd_readvariableop_resource5while_lstm_cell_500_biasadd_readvariableop_resource_0"n
4while_lstm_cell_500_matmul_1_readvariableop_resource6while_lstm_cell_500_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_500_matmul_readvariableop_resource4while_lstm_cell_500_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_500/BiasAdd/ReadVariableOp*while/lstm_cell_500/BiasAdd/ReadVariableOp2V
)while/lstm_cell_500/MatMul/ReadVariableOp)while/lstm_cell_500/MatMul/ReadVariableOp2Z
+while/lstm_cell_500/MatMul_1/ReadVariableOp+while/lstm_cell_500/MatMul_1/ReadVariableOp: 
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
и

Ч
lstm_171_while_cond_3026105.
*lstm_171_while_lstm_171_while_loop_counter4
0lstm_171_while_lstm_171_while_maximum_iterations
lstm_171_while_placeholder 
lstm_171_while_placeholder_1 
lstm_171_while_placeholder_2 
lstm_171_while_placeholder_30
,lstm_171_while_less_lstm_171_strided_slice_1G
Clstm_171_while_lstm_171_while_cond_3026105___redundant_placeholder0G
Clstm_171_while_lstm_171_while_cond_3026105___redundant_placeholder1G
Clstm_171_while_lstm_171_while_cond_3026105___redundant_placeholder2G
Clstm_171_while_lstm_171_while_cond_3026105___redundant_placeholder3
lstm_171_while_identity
є
lstm_171/while/LessLesslstm_171_while_placeholder,lstm_171_while_less_lstm_171_strided_slice_1*
T0*
_output_shapes
: ]
lstm_171/while/IdentityIdentitylstm_171/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_171_while_identity lstm_171/while/Identity:output:0*(
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
е8
І
E__inference_lstm_173_layer_call_and_return_conditional_losses_3024774

inputs'
lstm_cell_500_3024692:2('
lstm_cell_500_3024694:
(#
lstm_cell_500_3024696:(
identityѕб%lstm_cell_500/StatefulPartitionedCallбwhile;
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
%lstm_cell_500/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_500_3024692lstm_cell_500_3024694lstm_cell_500_3024696*
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
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3024646n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_500_3024692lstm_cell_500_3024694lstm_cell_500_3024696*
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
while_body_3024705*
condR
while_cond_3024704*K
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
NoOpNoOp&^lstm_cell_500/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_500/StatefulPartitionedCall%lstm_cell_500/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
и

Ч
lstm_171_while_cond_3026532.
*lstm_171_while_lstm_171_while_loop_counter4
0lstm_171_while_lstm_171_while_maximum_iterations
lstm_171_while_placeholder 
lstm_171_while_placeholder_1 
lstm_171_while_placeholder_2 
lstm_171_while_placeholder_30
,lstm_171_while_less_lstm_171_strided_slice_1G
Clstm_171_while_lstm_171_while_cond_3026532___redundant_placeholder0G
Clstm_171_while_lstm_171_while_cond_3026532___redundant_placeholder1G
Clstm_171_while_lstm_171_while_cond_3026532___redundant_placeholder2G
Clstm_171_while_lstm_171_while_cond_3026532___redundant_placeholder3
lstm_171_while_identity
є
lstm_171/while/LessLesslstm_171_while_placeholder,lstm_171_while_less_lstm_171_strided_slice_1*
T0*
_output_shapes
: ]
lstm_171/while/IdentityIdentitylstm_171/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_171_while_identity lstm_171/while/Identity:output:0*(
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
Э
┤
*__inference_lstm_173_layer_call_fn_3028177

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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3025448o
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
З

Б
/__inference_sequential_57_layer_call_fn_3025898
lstm_171_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_171_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025846o
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
_user_specified_namelstm_171_input
║
╚
while_cond_3027289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3027289___redundant_placeholder05
1while_while_cond_3027289___redundant_placeholder15
1while_while_cond_3027289___redundant_placeholder25
1while_while_cond_3027289___redundant_placeholder3
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
▀
ѕ
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3028834

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
║
╚
while_cond_3024004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3024004___redundant_placeholder05
1while_while_cond_3024004___redundant_placeholder15
1while_while_cond_3024004___redundant_placeholder25
1while_while_cond_3024004___redundant_placeholder3
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
"__inference__wrapped_model_3023733
lstm_171_inputV
Csequential_57_lstm_171_lstm_cell_498_matmul_readvariableop_resource:	љX
Esequential_57_lstm_171_lstm_cell_498_matmul_1_readvariableop_resource:	dљS
Dsequential_57_lstm_171_lstm_cell_498_biasadd_readvariableop_resource:	љV
Csequential_57_lstm_172_lstm_cell_499_matmul_readvariableop_resource:	d╚X
Esequential_57_lstm_172_lstm_cell_499_matmul_1_readvariableop_resource:	2╚S
Dsequential_57_lstm_172_lstm_cell_499_biasadd_readvariableop_resource:	╚U
Csequential_57_lstm_173_lstm_cell_500_matmul_readvariableop_resource:2(W
Esequential_57_lstm_173_lstm_cell_500_matmul_1_readvariableop_resource:
(R
Dsequential_57_lstm_173_lstm_cell_500_biasadd_readvariableop_resource:(G
5sequential_57_dense_57_matmul_readvariableop_resource:
D
6sequential_57_dense_57_biasadd_readvariableop_resource:
identityѕб-sequential_57/dense_57/BiasAdd/ReadVariableOpб,sequential_57/dense_57/MatMul/ReadVariableOpб;sequential_57/lstm_171/lstm_cell_498/BiasAdd/ReadVariableOpб:sequential_57/lstm_171/lstm_cell_498/MatMul/ReadVariableOpб<sequential_57/lstm_171/lstm_cell_498/MatMul_1/ReadVariableOpбsequential_57/lstm_171/whileб;sequential_57/lstm_172/lstm_cell_499/BiasAdd/ReadVariableOpб:sequential_57/lstm_172/lstm_cell_499/MatMul/ReadVariableOpб<sequential_57/lstm_172/lstm_cell_499/MatMul_1/ReadVariableOpбsequential_57/lstm_172/whileб;sequential_57/lstm_173/lstm_cell_500/BiasAdd/ReadVariableOpб:sequential_57/lstm_173/lstm_cell_500/MatMul/ReadVariableOpб<sequential_57/lstm_173/lstm_cell_500/MatMul_1/ReadVariableOpбsequential_57/lstm_173/whileZ
sequential_57/lstm_171/ShapeShapelstm_171_input*
T0*
_output_shapes
:t
*sequential_57/lstm_171/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_57/lstm_171/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_57/lstm_171/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_57/lstm_171/strided_sliceStridedSlice%sequential_57/lstm_171/Shape:output:03sequential_57/lstm_171/strided_slice/stack:output:05sequential_57/lstm_171/strided_slice/stack_1:output:05sequential_57/lstm_171/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_57/lstm_171/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dИ
#sequential_57/lstm_171/zeros/packedPack-sequential_57/lstm_171/strided_slice:output:0.sequential_57/lstm_171/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_57/lstm_171/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_57/lstm_171/zerosFill,sequential_57/lstm_171/zeros/packed:output:0+sequential_57/lstm_171/zeros/Const:output:0*
T0*'
_output_shapes
:         di
'sequential_57/lstm_171/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╝
%sequential_57/lstm_171/zeros_1/packedPack-sequential_57/lstm_171/strided_slice:output:00sequential_57/lstm_171/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_57/lstm_171/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_57/lstm_171/zeros_1Fill.sequential_57/lstm_171/zeros_1/packed:output:0-sequential_57/lstm_171/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dz
%sequential_57/lstm_171/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
 sequential_57/lstm_171/transpose	Transposelstm_171_input.sequential_57/lstm_171/transpose/perm:output:0*
T0*+
_output_shapes
:         r
sequential_57/lstm_171/Shape_1Shape$sequential_57/lstm_171/transpose:y:0*
T0*
_output_shapes
:v
,sequential_57/lstm_171/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_57/lstm_171/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_57/lstm_171/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_57/lstm_171/strided_slice_1StridedSlice'sequential_57/lstm_171/Shape_1:output:05sequential_57/lstm_171/strided_slice_1/stack:output:07sequential_57/lstm_171/strided_slice_1/stack_1:output:07sequential_57/lstm_171/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_57/lstm_171/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_57/lstm_171/TensorArrayV2TensorListReserve;sequential_57/lstm_171/TensorArrayV2/element_shape:output:0/sequential_57/lstm_171/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_57/lstm_171/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ц
>sequential_57/lstm_171/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_57/lstm_171/transpose:y:0Usequential_57/lstm_171/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_57/lstm_171/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_57/lstm_171/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_57/lstm_171/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_57/lstm_171/strided_slice_2StridedSlice$sequential_57/lstm_171/transpose:y:05sequential_57/lstm_171/strided_slice_2/stack:output:07sequential_57/lstm_171/strided_slice_2/stack_1:output:07sequential_57/lstm_171/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┐
:sequential_57/lstm_171/lstm_cell_498/MatMul/ReadVariableOpReadVariableOpCsequential_57_lstm_171_lstm_cell_498_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0П
+sequential_57/lstm_171/lstm_cell_498/MatMulMatMul/sequential_57/lstm_171/strided_slice_2:output:0Bsequential_57/lstm_171/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ├
<sequential_57/lstm_171/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOpEsequential_57_lstm_171_lstm_cell_498_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0О
-sequential_57/lstm_171/lstm_cell_498/MatMul_1MatMul%sequential_57/lstm_171/zeros:output:0Dsequential_57/lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љн
(sequential_57/lstm_171/lstm_cell_498/addAddV25sequential_57/lstm_171/lstm_cell_498/MatMul:product:07sequential_57/lstm_171/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љй
;sequential_57/lstm_171/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOpDsequential_57_lstm_171_lstm_cell_498_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0П
,sequential_57/lstm_171/lstm_cell_498/BiasAddBiasAdd,sequential_57/lstm_171/lstm_cell_498/add:z:0Csequential_57/lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љv
4sequential_57/lstm_171/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_57/lstm_171/lstm_cell_498/splitSplit=sequential_57/lstm_171/lstm_cell_498/split/split_dim:output:05sequential_57/lstm_171/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitъ
,sequential_57/lstm_171/lstm_cell_498/SigmoidSigmoid3sequential_57/lstm_171/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dа
.sequential_57/lstm_171/lstm_cell_498/Sigmoid_1Sigmoid3sequential_57/lstm_171/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dЙ
(sequential_57/lstm_171/lstm_cell_498/mulMul2sequential_57/lstm_171/lstm_cell_498/Sigmoid_1:y:0'sequential_57/lstm_171/zeros_1:output:0*
T0*'
_output_shapes
:         dў
)sequential_57/lstm_171/lstm_cell_498/ReluRelu3sequential_57/lstm_171/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         d╬
*sequential_57/lstm_171/lstm_cell_498/mul_1Mul0sequential_57/lstm_171/lstm_cell_498/Sigmoid:y:07sequential_57/lstm_171/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         d├
*sequential_57/lstm_171/lstm_cell_498/add_1AddV2,sequential_57/lstm_171/lstm_cell_498/mul:z:0.sequential_57/lstm_171/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dа
.sequential_57/lstm_171/lstm_cell_498/Sigmoid_2Sigmoid3sequential_57/lstm_171/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dЋ
+sequential_57/lstm_171/lstm_cell_498/Relu_1Relu.sequential_57/lstm_171/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dм
*sequential_57/lstm_171/lstm_cell_498/mul_2Mul2sequential_57/lstm_171/lstm_cell_498/Sigmoid_2:y:09sequential_57/lstm_171/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dЁ
4sequential_57/lstm_171/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   §
&sequential_57/lstm_171/TensorArrayV2_1TensorListReserve=sequential_57/lstm_171/TensorArrayV2_1/element_shape:output:0/sequential_57/lstm_171/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_57/lstm_171/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_57/lstm_171/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_57/lstm_171/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_57/lstm_171/whileWhile2sequential_57/lstm_171/while/loop_counter:output:08sequential_57/lstm_171/while/maximum_iterations:output:0$sequential_57/lstm_171/time:output:0/sequential_57/lstm_171/TensorArrayV2_1:handle:0%sequential_57/lstm_171/zeros:output:0'sequential_57/lstm_171/zeros_1:output:0/sequential_57/lstm_171/strided_slice_1:output:0Nsequential_57/lstm_171/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_57_lstm_171_lstm_cell_498_matmul_readvariableop_resourceEsequential_57_lstm_171_lstm_cell_498_matmul_1_readvariableop_resourceDsequential_57_lstm_171_lstm_cell_498_biasadd_readvariableop_resource*
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
)sequential_57_lstm_171_while_body_3023365*5
cond-R+
)sequential_57_lstm_171_while_cond_3023364*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations ў
Gsequential_57/lstm_171/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Є
9sequential_57/lstm_171/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_57/lstm_171/while:output:3Psequential_57/lstm_171/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0
,sequential_57/lstm_171/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_57/lstm_171/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_57/lstm_171/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_57/lstm_171/strided_slice_3StridedSliceBsequential_57/lstm_171/TensorArrayV2Stack/TensorListStack:tensor:05sequential_57/lstm_171/strided_slice_3/stack:output:07sequential_57/lstm_171/strided_slice_3/stack_1:output:07sequential_57/lstm_171/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask|
'sequential_57/lstm_171/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_57/lstm_171/transpose_1	TransposeBsequential_57/lstm_171/TensorArrayV2Stack/TensorListStack:tensor:00sequential_57/lstm_171/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_57/lstm_171/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_57/lstm_172/ShapeShape&sequential_57/lstm_171/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_57/lstm_172/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_57/lstm_172/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_57/lstm_172/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_57/lstm_172/strided_sliceStridedSlice%sequential_57/lstm_172/Shape:output:03sequential_57/lstm_172/strided_slice/stack:output:05sequential_57/lstm_172/strided_slice/stack_1:output:05sequential_57/lstm_172/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_57/lstm_172/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2И
#sequential_57/lstm_172/zeros/packedPack-sequential_57/lstm_172/strided_slice:output:0.sequential_57/lstm_172/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_57/lstm_172/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_57/lstm_172/zerosFill,sequential_57/lstm_172/zeros/packed:output:0+sequential_57/lstm_172/zeros/Const:output:0*
T0*'
_output_shapes
:         2i
'sequential_57/lstm_172/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╝
%sequential_57/lstm_172/zeros_1/packedPack-sequential_57/lstm_172/strided_slice:output:00sequential_57/lstm_172/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_57/lstm_172/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_57/lstm_172/zeros_1Fill.sequential_57/lstm_172/zeros_1/packed:output:0-sequential_57/lstm_172/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2z
%sequential_57/lstm_172/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_57/lstm_172/transpose	Transpose&sequential_57/lstm_171/transpose_1:y:0.sequential_57/lstm_172/transpose/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_57/lstm_172/Shape_1Shape$sequential_57/lstm_172/transpose:y:0*
T0*
_output_shapes
:v
,sequential_57/lstm_172/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_57/lstm_172/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_57/lstm_172/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_57/lstm_172/strided_slice_1StridedSlice'sequential_57/lstm_172/Shape_1:output:05sequential_57/lstm_172/strided_slice_1/stack:output:07sequential_57/lstm_172/strided_slice_1/stack_1:output:07sequential_57/lstm_172/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_57/lstm_172/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_57/lstm_172/TensorArrayV2TensorListReserve;sequential_57/lstm_172/TensorArrayV2/element_shape:output:0/sequential_57/lstm_172/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_57/lstm_172/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ц
>sequential_57/lstm_172/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_57/lstm_172/transpose:y:0Usequential_57/lstm_172/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_57/lstm_172/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_57/lstm_172/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_57/lstm_172/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_57/lstm_172/strided_slice_2StridedSlice$sequential_57/lstm_172/transpose:y:05sequential_57/lstm_172/strided_slice_2/stack:output:07sequential_57/lstm_172/strided_slice_2/stack_1:output:07sequential_57/lstm_172/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┐
:sequential_57/lstm_172/lstm_cell_499/MatMul/ReadVariableOpReadVariableOpCsequential_57_lstm_172_lstm_cell_499_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0П
+sequential_57/lstm_172/lstm_cell_499/MatMulMatMul/sequential_57/lstm_172/strided_slice_2:output:0Bsequential_57/lstm_172/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚├
<sequential_57/lstm_172/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOpEsequential_57_lstm_172_lstm_cell_499_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0О
-sequential_57/lstm_172/lstm_cell_499/MatMul_1MatMul%sequential_57/lstm_172/zeros:output:0Dsequential_57/lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚н
(sequential_57/lstm_172/lstm_cell_499/addAddV25sequential_57/lstm_172/lstm_cell_499/MatMul:product:07sequential_57/lstm_172/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚й
;sequential_57/lstm_172/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOpDsequential_57_lstm_172_lstm_cell_499_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0П
,sequential_57/lstm_172/lstm_cell_499/BiasAddBiasAdd,sequential_57/lstm_172/lstm_cell_499/add:z:0Csequential_57/lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚v
4sequential_57/lstm_172/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_57/lstm_172/lstm_cell_499/splitSplit=sequential_57/lstm_172/lstm_cell_499/split/split_dim:output:05sequential_57/lstm_172/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitъ
,sequential_57/lstm_172/lstm_cell_499/SigmoidSigmoid3sequential_57/lstm_172/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2а
.sequential_57/lstm_172/lstm_cell_499/Sigmoid_1Sigmoid3sequential_57/lstm_172/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2Й
(sequential_57/lstm_172/lstm_cell_499/mulMul2sequential_57/lstm_172/lstm_cell_499/Sigmoid_1:y:0'sequential_57/lstm_172/zeros_1:output:0*
T0*'
_output_shapes
:         2ў
)sequential_57/lstm_172/lstm_cell_499/ReluRelu3sequential_57/lstm_172/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2╬
*sequential_57/lstm_172/lstm_cell_499/mul_1Mul0sequential_57/lstm_172/lstm_cell_499/Sigmoid:y:07sequential_57/lstm_172/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2├
*sequential_57/lstm_172/lstm_cell_499/add_1AddV2,sequential_57/lstm_172/lstm_cell_499/mul:z:0.sequential_57/lstm_172/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2а
.sequential_57/lstm_172/lstm_cell_499/Sigmoid_2Sigmoid3sequential_57/lstm_172/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2Ћ
+sequential_57/lstm_172/lstm_cell_499/Relu_1Relu.sequential_57/lstm_172/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2м
*sequential_57/lstm_172/lstm_cell_499/mul_2Mul2sequential_57/lstm_172/lstm_cell_499/Sigmoid_2:y:09sequential_57/lstm_172/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ё
4sequential_57/lstm_172/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   §
&sequential_57/lstm_172/TensorArrayV2_1TensorListReserve=sequential_57/lstm_172/TensorArrayV2_1/element_shape:output:0/sequential_57/lstm_172/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_57/lstm_172/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_57/lstm_172/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_57/lstm_172/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_57/lstm_172/whileWhile2sequential_57/lstm_172/while/loop_counter:output:08sequential_57/lstm_172/while/maximum_iterations:output:0$sequential_57/lstm_172/time:output:0/sequential_57/lstm_172/TensorArrayV2_1:handle:0%sequential_57/lstm_172/zeros:output:0'sequential_57/lstm_172/zeros_1:output:0/sequential_57/lstm_172/strided_slice_1:output:0Nsequential_57/lstm_172/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_57_lstm_172_lstm_cell_499_matmul_readvariableop_resourceEsequential_57_lstm_172_lstm_cell_499_matmul_1_readvariableop_resourceDsequential_57_lstm_172_lstm_cell_499_biasadd_readvariableop_resource*
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
)sequential_57_lstm_172_while_body_3023504*5
cond-R+
)sequential_57_lstm_172_while_cond_3023503*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations ў
Gsequential_57/lstm_172/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Є
9sequential_57/lstm_172/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_57/lstm_172/while:output:3Psequential_57/lstm_172/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0
,sequential_57/lstm_172/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_57/lstm_172/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_57/lstm_172/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_57/lstm_172/strided_slice_3StridedSliceBsequential_57/lstm_172/TensorArrayV2Stack/TensorListStack:tensor:05sequential_57/lstm_172/strided_slice_3/stack:output:07sequential_57/lstm_172/strided_slice_3/stack_1:output:07sequential_57/lstm_172/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask|
'sequential_57/lstm_172/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_57/lstm_172/transpose_1	TransposeBsequential_57/lstm_172/TensorArrayV2Stack/TensorListStack:tensor:00sequential_57/lstm_172/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_57/lstm_172/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_57/lstm_173/ShapeShape&sequential_57/lstm_172/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_57/lstm_173/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_57/lstm_173/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_57/lstm_173/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_57/lstm_173/strided_sliceStridedSlice%sequential_57/lstm_173/Shape:output:03sequential_57/lstm_173/strided_slice/stack:output:05sequential_57/lstm_173/strided_slice/stack_1:output:05sequential_57/lstm_173/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_57/lstm_173/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
И
#sequential_57/lstm_173/zeros/packedPack-sequential_57/lstm_173/strided_slice:output:0.sequential_57/lstm_173/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_57/lstm_173/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_57/lstm_173/zerosFill,sequential_57/lstm_173/zeros/packed:output:0+sequential_57/lstm_173/zeros/Const:output:0*
T0*'
_output_shapes
:         
i
'sequential_57/lstm_173/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╝
%sequential_57/lstm_173/zeros_1/packedPack-sequential_57/lstm_173/strided_slice:output:00sequential_57/lstm_173/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_57/lstm_173/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_57/lstm_173/zeros_1Fill.sequential_57/lstm_173/zeros_1/packed:output:0-sequential_57/lstm_173/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
z
%sequential_57/lstm_173/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_57/lstm_173/transpose	Transpose&sequential_57/lstm_172/transpose_1:y:0.sequential_57/lstm_173/transpose/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_57/lstm_173/Shape_1Shape$sequential_57/lstm_173/transpose:y:0*
T0*
_output_shapes
:v
,sequential_57/lstm_173/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_57/lstm_173/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_57/lstm_173/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_57/lstm_173/strided_slice_1StridedSlice'sequential_57/lstm_173/Shape_1:output:05sequential_57/lstm_173/strided_slice_1/stack:output:07sequential_57/lstm_173/strided_slice_1/stack_1:output:07sequential_57/lstm_173/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_57/lstm_173/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_57/lstm_173/TensorArrayV2TensorListReserve;sequential_57/lstm_173/TensorArrayV2/element_shape:output:0/sequential_57/lstm_173/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_57/lstm_173/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ц
>sequential_57/lstm_173/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_57/lstm_173/transpose:y:0Usequential_57/lstm_173/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_57/lstm_173/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_57/lstm_173/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_57/lstm_173/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_57/lstm_173/strided_slice_2StridedSlice$sequential_57/lstm_173/transpose:y:05sequential_57/lstm_173/strided_slice_2/stack:output:07sequential_57/lstm_173/strided_slice_2/stack_1:output:07sequential_57/lstm_173/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskЙ
:sequential_57/lstm_173/lstm_cell_500/MatMul/ReadVariableOpReadVariableOpCsequential_57_lstm_173_lstm_cell_500_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▄
+sequential_57/lstm_173/lstm_cell_500/MatMulMatMul/sequential_57/lstm_173/strided_slice_2:output:0Bsequential_57/lstm_173/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┬
<sequential_57/lstm_173/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOpEsequential_57_lstm_173_lstm_cell_500_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0о
-sequential_57/lstm_173/lstm_cell_500/MatMul_1MatMul%sequential_57/lstm_173/zeros:output:0Dsequential_57/lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (М
(sequential_57/lstm_173/lstm_cell_500/addAddV25sequential_57/lstm_173/lstm_cell_500/MatMul:product:07sequential_57/lstm_173/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (╝
;sequential_57/lstm_173/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOpDsequential_57_lstm_173_lstm_cell_500_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▄
,sequential_57/lstm_173/lstm_cell_500/BiasAddBiasAdd,sequential_57/lstm_173/lstm_cell_500/add:z:0Csequential_57/lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (v
4sequential_57/lstm_173/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_57/lstm_173/lstm_cell_500/splitSplit=sequential_57/lstm_173/lstm_cell_500/split/split_dim:output:05sequential_57/lstm_173/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitъ
,sequential_57/lstm_173/lstm_cell_500/SigmoidSigmoid3sequential_57/lstm_173/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
а
.sequential_57/lstm_173/lstm_cell_500/Sigmoid_1Sigmoid3sequential_57/lstm_173/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
Й
(sequential_57/lstm_173/lstm_cell_500/mulMul2sequential_57/lstm_173/lstm_cell_500/Sigmoid_1:y:0'sequential_57/lstm_173/zeros_1:output:0*
T0*'
_output_shapes
:         
ў
)sequential_57/lstm_173/lstm_cell_500/ReluRelu3sequential_57/lstm_173/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
╬
*sequential_57/lstm_173/lstm_cell_500/mul_1Mul0sequential_57/lstm_173/lstm_cell_500/Sigmoid:y:07sequential_57/lstm_173/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
├
*sequential_57/lstm_173/lstm_cell_500/add_1AddV2,sequential_57/lstm_173/lstm_cell_500/mul:z:0.sequential_57/lstm_173/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
а
.sequential_57/lstm_173/lstm_cell_500/Sigmoid_2Sigmoid3sequential_57/lstm_173/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
Ћ
+sequential_57/lstm_173/lstm_cell_500/Relu_1Relu.sequential_57/lstm_173/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
м
*sequential_57/lstm_173/lstm_cell_500/mul_2Mul2sequential_57/lstm_173/lstm_cell_500/Sigmoid_2:y:09sequential_57/lstm_173/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ё
4sequential_57/lstm_173/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   §
&sequential_57/lstm_173/TensorArrayV2_1TensorListReserve=sequential_57/lstm_173/TensorArrayV2_1/element_shape:output:0/sequential_57/lstm_173/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_57/lstm_173/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_57/lstm_173/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_57/lstm_173/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_57/lstm_173/whileWhile2sequential_57/lstm_173/while/loop_counter:output:08sequential_57/lstm_173/while/maximum_iterations:output:0$sequential_57/lstm_173/time:output:0/sequential_57/lstm_173/TensorArrayV2_1:handle:0%sequential_57/lstm_173/zeros:output:0'sequential_57/lstm_173/zeros_1:output:0/sequential_57/lstm_173/strided_slice_1:output:0Nsequential_57/lstm_173/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_57_lstm_173_lstm_cell_500_matmul_readvariableop_resourceEsequential_57_lstm_173_lstm_cell_500_matmul_1_readvariableop_resourceDsequential_57_lstm_173_lstm_cell_500_biasadd_readvariableop_resource*
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
)sequential_57_lstm_173_while_body_3023643*5
cond-R+
)sequential_57_lstm_173_while_cond_3023642*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations ў
Gsequential_57/lstm_173/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Є
9sequential_57/lstm_173/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_57/lstm_173/while:output:3Psequential_57/lstm_173/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0
,sequential_57/lstm_173/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_57/lstm_173/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_57/lstm_173/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_57/lstm_173/strided_slice_3StridedSliceBsequential_57/lstm_173/TensorArrayV2Stack/TensorListStack:tensor:05sequential_57/lstm_173/strided_slice_3/stack:output:07sequential_57/lstm_173/strided_slice_3/stack_1:output:07sequential_57/lstm_173/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask|
'sequential_57/lstm_173/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_57/lstm_173/transpose_1	TransposeBsequential_57/lstm_173/TensorArrayV2Stack/TensorListStack:tensor:00sequential_57/lstm_173/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
r
sequential_57/lstm_173/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    б
,sequential_57/dense_57/MatMul/ReadVariableOpReadVariableOp5sequential_57_dense_57_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0└
sequential_57/dense_57/MatMulMatMul/sequential_57/lstm_173/strided_slice_3:output:04sequential_57/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_57/dense_57/BiasAdd/ReadVariableOpReadVariableOp6sequential_57_dense_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_57/dense_57/BiasAddBiasAdd'sequential_57/dense_57/MatMul:product:05sequential_57/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_57/dense_57/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp.^sequential_57/dense_57/BiasAdd/ReadVariableOp-^sequential_57/dense_57/MatMul/ReadVariableOp<^sequential_57/lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp;^sequential_57/lstm_171/lstm_cell_498/MatMul/ReadVariableOp=^sequential_57/lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp^sequential_57/lstm_171/while<^sequential_57/lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp;^sequential_57/lstm_172/lstm_cell_499/MatMul/ReadVariableOp=^sequential_57/lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp^sequential_57/lstm_172/while<^sequential_57/lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp;^sequential_57/lstm_173/lstm_cell_500/MatMul/ReadVariableOp=^sequential_57/lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp^sequential_57/lstm_173/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2^
-sequential_57/dense_57/BiasAdd/ReadVariableOp-sequential_57/dense_57/BiasAdd/ReadVariableOp2\
,sequential_57/dense_57/MatMul/ReadVariableOp,sequential_57/dense_57/MatMul/ReadVariableOp2z
;sequential_57/lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp;sequential_57/lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp2x
:sequential_57/lstm_171/lstm_cell_498/MatMul/ReadVariableOp:sequential_57/lstm_171/lstm_cell_498/MatMul/ReadVariableOp2|
<sequential_57/lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp<sequential_57/lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp2<
sequential_57/lstm_171/whilesequential_57/lstm_171/while2z
;sequential_57/lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp;sequential_57/lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp2x
:sequential_57/lstm_172/lstm_cell_499/MatMul/ReadVariableOp:sequential_57/lstm_172/lstm_cell_499/MatMul/ReadVariableOp2|
<sequential_57/lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp<sequential_57/lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp2<
sequential_57/lstm_172/whilesequential_57/lstm_172/while2z
;sequential_57/lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp;sequential_57/lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp2x
:sequential_57/lstm_173/lstm_cell_500/MatMul/ReadVariableOp:sequential_57/lstm_173/lstm_cell_500/MatMul/ReadVariableOp2|
<sequential_57/lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp<sequential_57/lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp2<
sequential_57/lstm_173/whilesequential_57/lstm_173/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_171_input
и

Ч
lstm_172_while_cond_3026244.
*lstm_172_while_lstm_172_while_loop_counter4
0lstm_172_while_lstm_172_while_maximum_iterations
lstm_172_while_placeholder 
lstm_172_while_placeholder_1 
lstm_172_while_placeholder_2 
lstm_172_while_placeholder_30
,lstm_172_while_less_lstm_172_strided_slice_1G
Clstm_172_while_lstm_172_while_cond_3026244___redundant_placeholder0G
Clstm_172_while_lstm_172_while_cond_3026244___redundant_placeholder1G
Clstm_172_while_lstm_172_while_cond_3026244___redundant_placeholder2G
Clstm_172_while_lstm_172_while_cond_3026244___redundant_placeholder3
lstm_172_while_identity
є
lstm_172/while/LessLesslstm_172_while_placeholder,lstm_172_while_less_lstm_172_strided_slice_1*
T0*
_output_shapes
: ]
lstm_172/while/IdentityIdentitylstm_172/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_172_while_identity lstm_172/while/Identity:output:0*(
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
Л8
┌
while_body_3024998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_499_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_499_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_499_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_499_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_499_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_499_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_499/BiasAdd/ReadVariableOpб)while/lstm_cell_499/MatMul/ReadVariableOpб+while/lstm_cell_499/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_499/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_499_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_499/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_499_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_499/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_499/addAddV2$while/lstm_cell_499/MatMul:product:0&while/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_499_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_499/BiasAddBiasAddwhile/lstm_cell_499/add:z:02while/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_499/splitSplit,while/lstm_cell_499/split/split_dim:output:0$while/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_499/SigmoidSigmoid"while/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_1Sigmoid"while/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_499/mulMul!while/lstm_cell_499/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_499/ReluRelu"while/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_499/mul_1Mulwhile/lstm_cell_499/Sigmoid:y:0&while/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_499/add_1AddV2while/lstm_cell_499/mul:z:0while/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_2Sigmoid"while/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_499/Relu_1Reluwhile/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_499/mul_2Mul!while/lstm_cell_499/Sigmoid_2:y:0(while/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_499/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_499/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_499/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_499/BiasAdd/ReadVariableOp*^while/lstm_cell_499/MatMul/ReadVariableOp,^while/lstm_cell_499/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_499_biasadd_readvariableop_resource5while_lstm_cell_499_biasadd_readvariableop_resource_0"n
4while_lstm_cell_499_matmul_1_readvariableop_resource6while_lstm_cell_499_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_499_matmul_readvariableop_resource4while_lstm_cell_499_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_499/BiasAdd/ReadVariableOp*while/lstm_cell_499/BiasAdd/ReadVariableOp2V
)while/lstm_cell_499/MatMul/ReadVariableOp)while/lstm_cell_499/MatMul/ReadVariableOp2Z
+while/lstm_cell_499/MatMul_1/ReadVariableOp+while/lstm_cell_499/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027374

inputs?
,lstm_cell_498_matmul_readvariableop_resource:	љA
.lstm_cell_498_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_498_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_498/BiasAdd/ReadVariableOpб#lstm_cell_498/MatMul/ReadVariableOpб%lstm_cell_498/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_498/MatMul/ReadVariableOpReadVariableOp,lstm_cell_498_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_498/MatMulMatMulstrided_slice_2:output:0+lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_498_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_498/MatMul_1MatMulzeros:output:0-lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_498/addAddV2lstm_cell_498/MatMul:product:0 lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_498_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_498/BiasAddBiasAddlstm_cell_498/add:z:0,lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_498/splitSplit&lstm_cell_498/split/split_dim:output:0lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_498/SigmoidSigmoidlstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_1Sigmoidlstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_498/mulMullstm_cell_498/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_498/ReluRelulstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_498/mul_1Mullstm_cell_498/Sigmoid:y:0 lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_498/add_1AddV2lstm_cell_498/mul:z:0lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_2Sigmoidlstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_498/Relu_1Relulstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_498/mul_2Mullstm_cell_498/Sigmoid_2:y:0"lstm_cell_498/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_498_matmul_readvariableop_resource.lstm_cell_498_matmul_1_readvariableop_resource-lstm_cell_498_biasadd_readvariableop_resource*
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
while_body_3027290*
condR
while_cond_3027289*K
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
NoOpNoOp%^lstm_cell_498/BiasAdd/ReadVariableOp$^lstm_cell_498/MatMul/ReadVariableOp&^lstm_cell_498/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_498/BiasAdd/ReadVariableOp$lstm_cell_498/BiasAdd/ReadVariableOp2J
#lstm_cell_498/MatMul/ReadVariableOp#lstm_cell_498/MatMul/ReadVariableOp2N
%lstm_cell_498/MatMul_1/ReadVariableOp%lstm_cell_498/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_3028521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3028521___redundant_placeholder05
1while_while_cond_3028521___redundant_placeholder15
1while_while_cond_3028521___redundant_placeholder25
1while_while_cond_3028521___redundant_placeholder3
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
Л8
┌
while_body_3025529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_499_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_499_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_499_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_499_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_499_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_499_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_499/BiasAdd/ReadVariableOpб)while/lstm_cell_499/MatMul/ReadVariableOpб+while/lstm_cell_499/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_499/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_499_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_499/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_499_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_499/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_499/addAddV2$while/lstm_cell_499/MatMul:product:0&while/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_499_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_499/BiasAddBiasAddwhile/lstm_cell_499/add:z:02while/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_499/splitSplit,while/lstm_cell_499/split/split_dim:output:0$while/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_499/SigmoidSigmoid"while/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_1Sigmoid"while/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_499/mulMul!while/lstm_cell_499/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_499/ReluRelu"while/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_499/mul_1Mulwhile/lstm_cell_499/Sigmoid:y:0&while/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_499/add_1AddV2while/lstm_cell_499/mul:z:0while/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_2Sigmoid"while/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_499/Relu_1Reluwhile/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_499/mul_2Mul!while/lstm_cell_499/Sigmoid_2:y:0(while/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_499/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_499/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_499/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_499/BiasAdd/ReadVariableOp*^while/lstm_cell_499/MatMul/ReadVariableOp,^while/lstm_cell_499/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_499_biasadd_readvariableop_resource5while_lstm_cell_499_biasadd_readvariableop_resource_0"n
4while_lstm_cell_499_matmul_1_readvariableop_resource6while_lstm_cell_499_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_499_matmul_readvariableop_resource4while_lstm_cell_499_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_499/BiasAdd/ReadVariableOp*while/lstm_cell_499/BiasAdd/ReadVariableOp2V
)while/lstm_cell_499/MatMul/ReadVariableOp)while/lstm_cell_499/MatMul/ReadVariableOp2Z
+while/lstm_cell_499/MatMul_1/ReadVariableOp+while/lstm_cell_499/MatMul_1/ReadVariableOp: 
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
№
Э
/__inference_lstm_cell_499_layer_call_fn_3028883

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
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3024150o
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
▀
ѕ
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3028932

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
Н
Ё
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3029062

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
═
Ѓ
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3024646

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
О
є
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3024296

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
Г
╣
*__inference_lstm_171_layer_call_fn_3026923
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3024074|
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
while_cond_3028048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3028048___redundant_placeholder05
1while_while_cond_3028048___redundant_placeholder15
1while_while_cond_3028048___redundant_placeholder25
1while_while_cond_3028048___redundant_placeholder3
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3027990

inputs?
,lstm_cell_499_matmul_readvariableop_resource:	d╚A
.lstm_cell_499_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_499_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_499/BiasAdd/ReadVariableOpб#lstm_cell_499/MatMul/ReadVariableOpб%lstm_cell_499/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_499/MatMul/ReadVariableOpReadVariableOp,lstm_cell_499_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_499/MatMulMatMulstrided_slice_2:output:0+lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_499_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_499/MatMul_1MatMulzeros:output:0-lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_499/addAddV2lstm_cell_499/MatMul:product:0 lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_499_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_499/BiasAddBiasAddlstm_cell_499/add:z:0,lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_499/splitSplit&lstm_cell_499/split/split_dim:output:0lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_499/SigmoidSigmoidlstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_1Sigmoidlstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_499/mulMullstm_cell_499/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_499/ReluRelulstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_499/mul_1Mullstm_cell_499/Sigmoid:y:0 lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_499/add_1AddV2lstm_cell_499/mul:z:0lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_2Sigmoidlstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_499/Relu_1Relulstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_499/mul_2Mullstm_cell_499/Sigmoid_2:y:0"lstm_cell_499/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_499_matmul_readvariableop_resource.lstm_cell_499_matmul_1_readvariableop_resource-lstm_cell_499_biasadd_readvariableop_resource*
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
while_body_3027906*
condR
while_cond_3027905*K
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
NoOpNoOp%^lstm_cell_499/BiasAdd/ReadVariableOp$^lstm_cell_499/MatMul/ReadVariableOp&^lstm_cell_499/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_499/BiasAdd/ReadVariableOp$lstm_cell_499/BiasAdd/ReadVariableOp2J
#lstm_cell_499/MatMul/ReadVariableOp#lstm_cell_499/MatMul/ReadVariableOp2N
%lstm_cell_499/MatMul_1/ReadVariableOp%lstm_cell_499/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Л8
┌
while_body_3025694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_498_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_498_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_498_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_498_matmul_readvariableop_resource:	љG
4while_lstm_cell_498_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_498_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_498/BiasAdd/ReadVariableOpб)while/lstm_cell_498/MatMul/ReadVariableOpб+while/lstm_cell_498/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_498/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_498_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_498/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_498_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_498/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_498/addAddV2$while/lstm_cell_498/MatMul:product:0&while/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_498_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_498/BiasAddBiasAddwhile/lstm_cell_498/add:z:02while/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_498/splitSplit,while/lstm_cell_498/split/split_dim:output:0$while/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_498/SigmoidSigmoid"while/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_1Sigmoid"while/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_498/mulMul!while/lstm_cell_498/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_498/ReluRelu"while/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_498/mul_1Mulwhile/lstm_cell_498/Sigmoid:y:0&while/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_498/add_1AddV2while/lstm_cell_498/mul:z:0while/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_2Sigmoid"while/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_498/Relu_1Reluwhile/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_498/mul_2Mul!while/lstm_cell_498/Sigmoid_2:y:0(while/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_498/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_498/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_498/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_498/BiasAdd/ReadVariableOp*^while/lstm_cell_498/MatMul/ReadVariableOp,^while/lstm_cell_498/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_498_biasadd_readvariableop_resource5while_lstm_cell_498_biasadd_readvariableop_resource_0"n
4while_lstm_cell_498_matmul_1_readvariableop_resource6while_lstm_cell_498_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_498_matmul_readvariableop_resource4while_lstm_cell_498_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_498/BiasAdd/ReadVariableOp*while/lstm_cell_498/BiasAdd/ReadVariableOp2V
)while/lstm_cell_498/MatMul/ReadVariableOp)while/lstm_cell_498/MatMul/ReadVariableOp2Z
+while/lstm_cell_498/MatMul_1/ReadVariableOp+while/lstm_cell_498/MatMul_1/ReadVariableOp: 
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
АC
Щ

lstm_171_while_body_3026533.
*lstm_171_while_lstm_171_while_loop_counter4
0lstm_171_while_lstm_171_while_maximum_iterations
lstm_171_while_placeholder 
lstm_171_while_placeholder_1 
lstm_171_while_placeholder_2 
lstm_171_while_placeholder_3-
)lstm_171_while_lstm_171_strided_slice_1_0i
elstm_171_while_tensorarrayv2read_tensorlistgetitem_lstm_171_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_171_while_lstm_cell_498_matmul_readvariableop_resource_0:	љR
?lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource_0:	dљM
>lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource_0:	љ
lstm_171_while_identity
lstm_171_while_identity_1
lstm_171_while_identity_2
lstm_171_while_identity_3
lstm_171_while_identity_4
lstm_171_while_identity_5+
'lstm_171_while_lstm_171_strided_slice_1g
clstm_171_while_tensorarrayv2read_tensorlistgetitem_lstm_171_tensorarrayunstack_tensorlistfromtensorN
;lstm_171_while_lstm_cell_498_matmul_readvariableop_resource:	љP
=lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource:	dљK
<lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource:	љѕб3lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOpб2lstm_171/while/lstm_cell_498/MatMul/ReadVariableOpб4lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOpЉ
@lstm_171/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_171/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_171_while_tensorarrayv2read_tensorlistgetitem_lstm_171_tensorarrayunstack_tensorlistfromtensor_0lstm_171_while_placeholderIlstm_171/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_171/while/lstm_cell_498/MatMul/ReadVariableOpReadVariableOp=lstm_171_while_lstm_cell_498_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_171/while/lstm_cell_498/MatMulMatMul9lstm_171/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp?lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_171/while/lstm_cell_498/MatMul_1MatMullstm_171_while_placeholder_2<lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_171/while/lstm_cell_498/addAddV2-lstm_171/while/lstm_cell_498/MatMul:product:0/lstm_171/while/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp>lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_171/while/lstm_cell_498/BiasAddBiasAdd$lstm_171/while/lstm_cell_498/add:z:0;lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_171/while/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_171/while/lstm_cell_498/splitSplit5lstm_171/while/lstm_cell_498/split/split_dim:output:0-lstm_171/while/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_171/while/lstm_cell_498/SigmoidSigmoid+lstm_171/while/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_171/while/lstm_cell_498/Sigmoid_1Sigmoid+lstm_171/while/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_171/while/lstm_cell_498/mulMul*lstm_171/while/lstm_cell_498/Sigmoid_1:y:0lstm_171_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_171/while/lstm_cell_498/ReluRelu+lstm_171/while/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_171/while/lstm_cell_498/mul_1Mul(lstm_171/while/lstm_cell_498/Sigmoid:y:0/lstm_171/while/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_171/while/lstm_cell_498/add_1AddV2$lstm_171/while/lstm_cell_498/mul:z:0&lstm_171/while/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_171/while/lstm_cell_498/Sigmoid_2Sigmoid+lstm_171/while/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_171/while/lstm_cell_498/Relu_1Relu&lstm_171/while/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_171/while/lstm_cell_498/mul_2Mul*lstm_171/while/lstm_cell_498/Sigmoid_2:y:01lstm_171/while/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_171/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_171_while_placeholder_1lstm_171_while_placeholder&lstm_171/while/lstm_cell_498/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_171/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_171/while/addAddV2lstm_171_while_placeholderlstm_171/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_171/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_171/while/add_1AddV2*lstm_171_while_lstm_171_while_loop_counterlstm_171/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_171/while/IdentityIdentitylstm_171/while/add_1:z:0^lstm_171/while/NoOp*
T0*
_output_shapes
: ј
lstm_171/while/Identity_1Identity0lstm_171_while_lstm_171_while_maximum_iterations^lstm_171/while/NoOp*
T0*
_output_shapes
: t
lstm_171/while/Identity_2Identitylstm_171/while/add:z:0^lstm_171/while/NoOp*
T0*
_output_shapes
: А
lstm_171/while/Identity_3IdentityClstm_171/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_171/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_171/while/Identity_4Identity&lstm_171/while/lstm_cell_498/mul_2:z:0^lstm_171/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_171/while/Identity_5Identity&lstm_171/while/lstm_cell_498/add_1:z:0^lstm_171/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_171/while/NoOpNoOp4^lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOp3^lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp5^lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_171_while_identity lstm_171/while/Identity:output:0"?
lstm_171_while_identity_1"lstm_171/while/Identity_1:output:0"?
lstm_171_while_identity_2"lstm_171/while/Identity_2:output:0"?
lstm_171_while_identity_3"lstm_171/while/Identity_3:output:0"?
lstm_171_while_identity_4"lstm_171/while/Identity_4:output:0"?
lstm_171_while_identity_5"lstm_171/while/Identity_5:output:0"T
'lstm_171_while_lstm_171_strided_slice_1)lstm_171_while_lstm_171_strided_slice_1_0"~
<lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource>lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource_0"ђ
=lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource?lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource_0"|
;lstm_171_while_lstm_cell_498_matmul_readvariableop_resource=lstm_171_while_lstm_cell_498_matmul_readvariableop_resource_0"╠
clstm_171_while_tensorarrayv2read_tensorlistgetitem_lstm_171_tensorarrayunstack_tensorlistfromtensorelstm_171_while_tensorarrayv2read_tensorlistgetitem_lstm_171_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOp3lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOp2h
2lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp2lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp2l
4lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp4lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp: 
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
while_cond_3028378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3028378___redundant_placeholder05
1while_while_cond_3028378___redundant_placeholder15
1while_while_cond_3028378___redundant_placeholder25
1while_while_cond_3028378___redundant_placeholder3
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
▄

Џ
/__inference_sequential_57_layer_call_fn_3026047

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
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025846o
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
║
╚
while_cond_3023813
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3023813___redundant_placeholder05
1while_while_cond_3023813___redundant_placeholder15
1while_while_cond_3023813___redundant_placeholder25
1while_while_cond_3023813___redundant_placeholder3
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
─8
н
while_body_3028665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_500_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_500_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_500_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_500_matmul_readvariableop_resource:2(F
4while_lstm_cell_500_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_500_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_500/BiasAdd/ReadVariableOpб)while/lstm_cell_500/MatMul/ReadVariableOpб+while/lstm_cell_500/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_500/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_500_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_500/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_500_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_500/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_500/addAddV2$while/lstm_cell_500/MatMul:product:0&while/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_500_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_500/BiasAddBiasAddwhile/lstm_cell_500/add:z:02while/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_500/splitSplit,while/lstm_cell_500/split/split_dim:output:0$while/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_500/SigmoidSigmoid"while/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_1Sigmoid"while/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_500/mulMul!while/lstm_cell_500/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_500/ReluRelu"while/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_500/mul_1Mulwhile/lstm_cell_500/Sigmoid:y:0&while/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_500/add_1AddV2while/lstm_cell_500/mul:z:0while/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_2Sigmoid"while/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_500/Relu_1Reluwhile/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_500/mul_2Mul!while/lstm_cell_500/Sigmoid_2:y:0(while/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_500/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_500/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_500/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_500/BiasAdd/ReadVariableOp*^while/lstm_cell_500/MatMul/ReadVariableOp,^while/lstm_cell_500/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_500_biasadd_readvariableop_resource5while_lstm_cell_500_biasadd_readvariableop_resource_0"n
4while_lstm_cell_500_matmul_1_readvariableop_resource6while_lstm_cell_500_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_500_matmul_readvariableop_resource4while_lstm_cell_500_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_500/BiasAdd/ReadVariableOp*while/lstm_cell_500/BiasAdd/ReadVariableOp2V
)while/lstm_cell_500/MatMul/ReadVariableOp)while/lstm_cell_500/MatMul/ReadVariableOp2Z
+while/lstm_cell_500/MatMul_1/ReadVariableOp+while/lstm_cell_500/MatMul_1/ReadVariableOp: 
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
#__inference__traced_restore_3029335
file_prefix2
 assignvariableop_dense_57_kernel:
.
 assignvariableop_1_dense_57_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_171_lstm_cell_171_kernel:	љM
:assignvariableop_8_lstm_171_lstm_cell_171_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_171_lstm_cell_171_bias:	љD
1assignvariableop_10_lstm_172_lstm_cell_172_kernel:	d╚N
;assignvariableop_11_lstm_172_lstm_cell_172_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_172_lstm_cell_172_bias:	╚C
1assignvariableop_13_lstm_173_lstm_cell_173_kernel:2(M
;assignvariableop_14_lstm_173_lstm_cell_173_recurrent_kernel:
(=
/assignvariableop_15_lstm_173_lstm_cell_173_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_57_kernel_m:
6
(assignvariableop_19_adam_dense_57_bias_m:K
8assignvariableop_20_adam_lstm_171_lstm_cell_171_kernel_m:	љU
Bassignvariableop_21_adam_lstm_171_lstm_cell_171_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_171_lstm_cell_171_bias_m:	љK
8assignvariableop_23_adam_lstm_172_lstm_cell_172_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_172_lstm_cell_172_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_172_lstm_cell_172_bias_m:	╚J
8assignvariableop_26_adam_lstm_173_lstm_cell_173_kernel_m:2(T
Bassignvariableop_27_adam_lstm_173_lstm_cell_173_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_173_lstm_cell_173_bias_m:(<
*assignvariableop_29_adam_dense_57_kernel_v:
6
(assignvariableop_30_adam_dense_57_bias_v:K
8assignvariableop_31_adam_lstm_171_lstm_cell_171_kernel_v:	љU
Bassignvariableop_32_adam_lstm_171_lstm_cell_171_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_171_lstm_cell_171_bias_v:	љK
8assignvariableop_34_adam_lstm_172_lstm_cell_172_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_172_lstm_cell_172_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_172_lstm_cell_172_bias_v:	╚J
8assignvariableop_37_adam_lstm_173_lstm_cell_173_kernel_v:2(T
Bassignvariableop_38_adam_lstm_173_lstm_cell_173_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_173_lstm_cell_173_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_57_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_57_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_171_lstm_cell_171_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_171_lstm_cell_171_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_171_lstm_cell_171_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_172_lstm_cell_172_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_172_lstm_cell_172_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_172_lstm_cell_172_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_173_lstm_cell_173_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_173_lstm_cell_173_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_173_lstm_cell_173_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_57_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_57_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_171_lstm_cell_171_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_171_lstm_cell_171_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_171_lstm_cell_171_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_172_lstm_cell_172_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_172_lstm_cell_172_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_172_lstm_cell_172_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_173_lstm_cell_173_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_173_lstm_cell_173_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_173_lstm_cell_173_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_57_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_57_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_171_lstm_cell_171_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_171_lstm_cell_171_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_171_lstm_cell_171_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_172_lstm_cell_172_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_172_lstm_cell_172_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_172_lstm_cell_172_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_173_lstm_cell_173_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_173_lstm_cell_173_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_173_lstm_cell_173_bias_vIdentity_39:output:0"/device:CPU:0*
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
О
є
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3023800

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
њK
б
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028320
inputs_0>
,lstm_cell_500_matmul_readvariableop_resource:2(@
.lstm_cell_500_matmul_1_readvariableop_resource:
(;
-lstm_cell_500_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_500/BiasAdd/ReadVariableOpб#lstm_cell_500/MatMul/ReadVariableOpб%lstm_cell_500/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_500/MatMul/ReadVariableOpReadVariableOp,lstm_cell_500_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_500/MatMulMatMulstrided_slice_2:output:0+lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_500_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_500/MatMul_1MatMulzeros:output:0-lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_500/addAddV2lstm_cell_500/MatMul:product:0 lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_500_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_500/BiasAddBiasAddlstm_cell_500/add:z:0,lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_500/splitSplit&lstm_cell_500/split/split_dim:output:0lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_500/SigmoidSigmoidlstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_1Sigmoidlstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_500/mulMullstm_cell_500/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_500/ReluRelulstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_500/mul_1Mullstm_cell_500/Sigmoid:y:0 lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_500/add_1AddV2lstm_cell_500/mul:z:0lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_2Sigmoidlstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_500/Relu_1Relulstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_500/mul_2Mullstm_cell_500/Sigmoid_2:y:0"lstm_cell_500/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_500_matmul_readvariableop_resource.lstm_cell_500_matmul_1_readvariableop_resource-lstm_cell_500_biasadd_readvariableop_resource*
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
while_body_3028236*
condR
while_cond_3028235*K
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
NoOpNoOp%^lstm_cell_500/BiasAdd/ReadVariableOp$^lstm_cell_500/MatMul/ReadVariableOp&^lstm_cell_500/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_500/BiasAdd/ReadVariableOp$lstm_cell_500/BiasAdd/ReadVariableOp2J
#lstm_cell_500/MatMul/ReadVariableOp#lstm_cell_500/MatMul/ReadVariableOp2N
%lstm_cell_500/MatMul_1/ReadVariableOp%lstm_cell_500/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
РJ
Б
E__inference_lstm_172_layer_call_and_return_conditional_losses_3028133

inputs?
,lstm_cell_499_matmul_readvariableop_resource:	d╚A
.lstm_cell_499_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_499_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_499/BiasAdd/ReadVariableOpб#lstm_cell_499/MatMul/ReadVariableOpб%lstm_cell_499/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_499/MatMul/ReadVariableOpReadVariableOp,lstm_cell_499_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_499/MatMulMatMulstrided_slice_2:output:0+lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_499_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_499/MatMul_1MatMulzeros:output:0-lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_499/addAddV2lstm_cell_499/MatMul:product:0 lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_499_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_499/BiasAddBiasAddlstm_cell_499/add:z:0,lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_499/splitSplit&lstm_cell_499/split/split_dim:output:0lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_499/SigmoidSigmoidlstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_1Sigmoidlstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_499/mulMullstm_cell_499/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_499/ReluRelulstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_499/mul_1Mullstm_cell_499/Sigmoid:y:0 lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_499/add_1AddV2lstm_cell_499/mul:z:0lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_2Sigmoidlstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_499/Relu_1Relulstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_499/mul_2Mullstm_cell_499/Sigmoid_2:y:0"lstm_cell_499/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_499_matmul_readvariableop_resource.lstm_cell_499_matmul_1_readvariableop_resource-lstm_cell_499_biasadd_readvariableop_resource*
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
while_body_3028049*
condR
while_cond_3028048*K
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
NoOpNoOp%^lstm_cell_499/BiasAdd/ReadVariableOp$^lstm_cell_499/MatMul/ReadVariableOp&^lstm_cell_499/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_499/BiasAdd/ReadVariableOp$lstm_cell_499/BiasAdd/ReadVariableOp2J
#lstm_cell_499/MatMul/ReadVariableOp#lstm_cell_499/MatMul/ReadVariableOp2N
%lstm_cell_499/MatMul_1/ReadVariableOp%lstm_cell_499/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ѓ
и
*__inference_lstm_171_layer_call_fn_3026945

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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3025778s
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
Л8
┌
while_body_3027433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_498_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_498_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_498_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_498_matmul_readvariableop_resource:	љG
4while_lstm_cell_498_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_498_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_498/BiasAdd/ReadVariableOpб)while/lstm_cell_498/MatMul/ReadVariableOpб+while/lstm_cell_498/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_498/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_498_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_498/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_498_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_498/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_498/addAddV2$while/lstm_cell_498/MatMul:product:0&while/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_498_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_498/BiasAddBiasAddwhile/lstm_cell_498/add:z:02while/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_498/splitSplit,while/lstm_cell_498/split/split_dim:output:0$while/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_498/SigmoidSigmoid"while/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_1Sigmoid"while/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_498/mulMul!while/lstm_cell_498/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_498/ReluRelu"while/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_498/mul_1Mulwhile/lstm_cell_498/Sigmoid:y:0&while/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_498/add_1AddV2while/lstm_cell_498/mul:z:0while/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_2Sigmoid"while/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_498/Relu_1Reluwhile/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_498/mul_2Mul!while/lstm_cell_498/Sigmoid_2:y:0(while/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_498/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_498/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_498/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_498/BiasAdd/ReadVariableOp*^while/lstm_cell_498/MatMul/ReadVariableOp,^while/lstm_cell_498/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_498_biasadd_readvariableop_resource5while_lstm_cell_498_biasadd_readvariableop_resource_0"n
4while_lstm_cell_498_matmul_1_readvariableop_resource6while_lstm_cell_498_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_498_matmul_readvariableop_resource4while_lstm_cell_498_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_498/BiasAdd/ReadVariableOp*while/lstm_cell_498/BiasAdd/ReadVariableOp2V
)while/lstm_cell_498/MatMul/ReadVariableOp)while/lstm_cell_498/MatMul/ReadVariableOp2Z
+while/lstm_cell_498/MatMul_1/ReadVariableOp+while/lstm_cell_498/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028749

inputs>
,lstm_cell_500_matmul_readvariableop_resource:2(@
.lstm_cell_500_matmul_1_readvariableop_resource:
(;
-lstm_cell_500_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_500/BiasAdd/ReadVariableOpб#lstm_cell_500/MatMul/ReadVariableOpб%lstm_cell_500/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_500/MatMul/ReadVariableOpReadVariableOp,lstm_cell_500_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_500/MatMulMatMulstrided_slice_2:output:0+lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_500_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_500/MatMul_1MatMulzeros:output:0-lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_500/addAddV2lstm_cell_500/MatMul:product:0 lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_500_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_500/BiasAddBiasAddlstm_cell_500/add:z:0,lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_500/splitSplit&lstm_cell_500/split/split_dim:output:0lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_500/SigmoidSigmoidlstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_1Sigmoidlstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_500/mulMullstm_cell_500/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_500/ReluRelulstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_500/mul_1Mullstm_cell_500/Sigmoid:y:0 lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_500/add_1AddV2lstm_cell_500/mul:z:0lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_2Sigmoidlstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_500/Relu_1Relulstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_500/mul_2Mullstm_cell_500/Sigmoid_2:y:0"lstm_cell_500/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_500_matmul_readvariableop_resource.lstm_cell_500_matmul_1_readvariableop_resource-lstm_cell_500_biasadd_readvariableop_resource*
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
while_body_3028665*
condR
while_cond_3028664*K
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
NoOpNoOp%^lstm_cell_500/BiasAdd/ReadVariableOp$^lstm_cell_500/MatMul/ReadVariableOp&^lstm_cell_500/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_500/BiasAdd/ReadVariableOp$lstm_cell_500/BiasAdd/ReadVariableOp2J
#lstm_cell_500/MatMul/ReadVariableOp#lstm_cell_500/MatMul/ReadVariableOp2N
%lstm_cell_500/MatMul_1/ReadVariableOp%lstm_cell_500/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
оS
и
)sequential_57_lstm_173_while_body_3023643J
Fsequential_57_lstm_173_while_sequential_57_lstm_173_while_loop_counterP
Lsequential_57_lstm_173_while_sequential_57_lstm_173_while_maximum_iterations,
(sequential_57_lstm_173_while_placeholder.
*sequential_57_lstm_173_while_placeholder_1.
*sequential_57_lstm_173_while_placeholder_2.
*sequential_57_lstm_173_while_placeholder_3I
Esequential_57_lstm_173_while_sequential_57_lstm_173_strided_slice_1_0є
Ђsequential_57_lstm_173_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_173_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_57_lstm_173_while_lstm_cell_500_matmul_readvariableop_resource_0:2(_
Msequential_57_lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource_0:
(Z
Lsequential_57_lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource_0:()
%sequential_57_lstm_173_while_identity+
'sequential_57_lstm_173_while_identity_1+
'sequential_57_lstm_173_while_identity_2+
'sequential_57_lstm_173_while_identity_3+
'sequential_57_lstm_173_while_identity_4+
'sequential_57_lstm_173_while_identity_5G
Csequential_57_lstm_173_while_sequential_57_lstm_173_strided_slice_1Ѓ
sequential_57_lstm_173_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_173_tensorarrayunstack_tensorlistfromtensor[
Isequential_57_lstm_173_while_lstm_cell_500_matmul_readvariableop_resource:2(]
Ksequential_57_lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource:
(X
Jsequential_57_lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource:(ѕбAsequential_57/lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOpб@sequential_57/lstm_173/while/lstm_cell_500/MatMul/ReadVariableOpбBsequential_57/lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOpЪ
Nsequential_57/lstm_173/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   џ
@sequential_57/lstm_173/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_57_lstm_173_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_173_tensorarrayunstack_tensorlistfromtensor_0(sequential_57_lstm_173_while_placeholderWsequential_57/lstm_173/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╠
@sequential_57/lstm_173/while/lstm_cell_500/MatMul/ReadVariableOpReadVariableOpKsequential_57_lstm_173_while_lstm_cell_500_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ђ
1sequential_57/lstm_173/while/lstm_cell_500/MatMulMatMulGsequential_57/lstm_173/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_57/lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (л
Bsequential_57/lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOpMsequential_57_lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0у
3sequential_57/lstm_173/while/lstm_cell_500/MatMul_1MatMul*sequential_57_lstm_173_while_placeholder_2Jsequential_57/lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (т
.sequential_57/lstm_173/while/lstm_cell_500/addAddV2;sequential_57/lstm_173/while/lstm_cell_500/MatMul:product:0=sequential_57/lstm_173/while/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (╩
Asequential_57/lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOpLsequential_57_lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ь
2sequential_57/lstm_173/while/lstm_cell_500/BiasAddBiasAdd2sequential_57/lstm_173/while/lstm_cell_500/add:z:0Isequential_57/lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (|
:sequential_57/lstm_173/while/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_57/lstm_173/while/lstm_cell_500/splitSplitCsequential_57/lstm_173/while/lstm_cell_500/split/split_dim:output:0;sequential_57/lstm_173/while/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitф
2sequential_57/lstm_173/while/lstm_cell_500/SigmoidSigmoid9sequential_57/lstm_173/while/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
г
4sequential_57/lstm_173/while/lstm_cell_500/Sigmoid_1Sigmoid9sequential_57/lstm_173/while/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
═
.sequential_57/lstm_173/while/lstm_cell_500/mulMul8sequential_57/lstm_173/while/lstm_cell_500/Sigmoid_1:y:0*sequential_57_lstm_173_while_placeholder_3*
T0*'
_output_shapes
:         
ц
/sequential_57/lstm_173/while/lstm_cell_500/ReluRelu9sequential_57/lstm_173/while/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Я
0sequential_57/lstm_173/while/lstm_cell_500/mul_1Mul6sequential_57/lstm_173/while/lstm_cell_500/Sigmoid:y:0=sequential_57/lstm_173/while/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
Н
0sequential_57/lstm_173/while/lstm_cell_500/add_1AddV22sequential_57/lstm_173/while/lstm_cell_500/mul:z:04sequential_57/lstm_173/while/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
г
4sequential_57/lstm_173/while/lstm_cell_500/Sigmoid_2Sigmoid9sequential_57/lstm_173/while/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
А
1sequential_57/lstm_173/while/lstm_cell_500/Relu_1Relu4sequential_57/lstm_173/while/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
С
0sequential_57/lstm_173/while/lstm_cell_500/mul_2Mul8sequential_57/lstm_173/while/lstm_cell_500/Sigmoid_2:y:0?sequential_57/lstm_173/while/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
б
Asequential_57/lstm_173/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_57_lstm_173_while_placeholder_1(sequential_57_lstm_173_while_placeholder4sequential_57/lstm_173/while/lstm_cell_500/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_57/lstm_173/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_57/lstm_173/while/addAddV2(sequential_57_lstm_173_while_placeholder+sequential_57/lstm_173/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_57/lstm_173/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_57/lstm_173/while/add_1AddV2Fsequential_57_lstm_173_while_sequential_57_lstm_173_while_loop_counter-sequential_57/lstm_173/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_57/lstm_173/while/IdentityIdentity&sequential_57/lstm_173/while/add_1:z:0"^sequential_57/lstm_173/while/NoOp*
T0*
_output_shapes
: к
'sequential_57/lstm_173/while/Identity_1IdentityLsequential_57_lstm_173_while_sequential_57_lstm_173_while_maximum_iterations"^sequential_57/lstm_173/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_57/lstm_173/while/Identity_2Identity$sequential_57/lstm_173/while/add:z:0"^sequential_57/lstm_173/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_57/lstm_173/while/Identity_3IdentityQsequential_57/lstm_173/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_57/lstm_173/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_57/lstm_173/while/Identity_4Identity4sequential_57/lstm_173/while/lstm_cell_500/mul_2:z:0"^sequential_57/lstm_173/while/NoOp*
T0*'
_output_shapes
:         
┐
'sequential_57/lstm_173/while/Identity_5Identity4sequential_57/lstm_173/while/lstm_cell_500/add_1:z:0"^sequential_57/lstm_173/while/NoOp*
T0*'
_output_shapes
:         
»
!sequential_57/lstm_173/while/NoOpNoOpB^sequential_57/lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOpA^sequential_57/lstm_173/while/lstm_cell_500/MatMul/ReadVariableOpC^sequential_57/lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_57_lstm_173_while_identity.sequential_57/lstm_173/while/Identity:output:0"[
'sequential_57_lstm_173_while_identity_10sequential_57/lstm_173/while/Identity_1:output:0"[
'sequential_57_lstm_173_while_identity_20sequential_57/lstm_173/while/Identity_2:output:0"[
'sequential_57_lstm_173_while_identity_30sequential_57/lstm_173/while/Identity_3:output:0"[
'sequential_57_lstm_173_while_identity_40sequential_57/lstm_173/while/Identity_4:output:0"[
'sequential_57_lstm_173_while_identity_50sequential_57/lstm_173/while/Identity_5:output:0"џ
Jsequential_57_lstm_173_while_lstm_cell_500_biasadd_readvariableop_resourceLsequential_57_lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource_0"ю
Ksequential_57_lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resourceMsequential_57_lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource_0"ў
Isequential_57_lstm_173_while_lstm_cell_500_matmul_readvariableop_resourceKsequential_57_lstm_173_while_lstm_cell_500_matmul_readvariableop_resource_0"ї
Csequential_57_lstm_173_while_sequential_57_lstm_173_strided_slice_1Esequential_57_lstm_173_while_sequential_57_lstm_173_strided_slice_1_0"Ё
sequential_57_lstm_173_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_173_tensorarrayunstack_tensorlistfromtensorЂsequential_57_lstm_173_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_173_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2є
Asequential_57/lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOpAsequential_57/lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOp2ё
@sequential_57/lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp@sequential_57/lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp2ѕ
Bsequential_57/lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOpBsequential_57/lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp: 
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
while_cond_3025693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3025693___redundant_placeholder05
1while_while_cond_3025693___redundant_placeholder15
1while_while_cond_3025693___redundant_placeholder25
1while_while_cond_3025693___redundant_placeholder3
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
while_cond_3028235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3028235___redundant_placeholder05
1while_while_cond_3028235___redundant_placeholder15
1while_while_cond_3028235___redundant_placeholder25
1while_while_cond_3028235___redundant_placeholder3
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
while_cond_3027432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3027432___redundant_placeholder05
1while_while_cond_3027432___redundant_placeholder15
1while_while_cond_3027432___redundant_placeholder25
1while_while_cond_3027432___redundant_placeholder3
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
╚	
Ш
E__inference_dense_57_layer_call_and_return_conditional_losses_3028768

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
сS
й
)sequential_57_lstm_171_while_body_3023365J
Fsequential_57_lstm_171_while_sequential_57_lstm_171_while_loop_counterP
Lsequential_57_lstm_171_while_sequential_57_lstm_171_while_maximum_iterations,
(sequential_57_lstm_171_while_placeholder.
*sequential_57_lstm_171_while_placeholder_1.
*sequential_57_lstm_171_while_placeholder_2.
*sequential_57_lstm_171_while_placeholder_3I
Esequential_57_lstm_171_while_sequential_57_lstm_171_strided_slice_1_0є
Ђsequential_57_lstm_171_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_171_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_57_lstm_171_while_lstm_cell_498_matmul_readvariableop_resource_0:	љ`
Msequential_57_lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource_0:	dљ[
Lsequential_57_lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource_0:	љ)
%sequential_57_lstm_171_while_identity+
'sequential_57_lstm_171_while_identity_1+
'sequential_57_lstm_171_while_identity_2+
'sequential_57_lstm_171_while_identity_3+
'sequential_57_lstm_171_while_identity_4+
'sequential_57_lstm_171_while_identity_5G
Csequential_57_lstm_171_while_sequential_57_lstm_171_strided_slice_1Ѓ
sequential_57_lstm_171_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_171_tensorarrayunstack_tensorlistfromtensor\
Isequential_57_lstm_171_while_lstm_cell_498_matmul_readvariableop_resource:	љ^
Ksequential_57_lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource:	dљY
Jsequential_57_lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource:	љѕбAsequential_57/lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOpб@sequential_57/lstm_171/while/lstm_cell_498/MatMul/ReadVariableOpбBsequential_57/lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOpЪ
Nsequential_57/lstm_171/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       џ
@sequential_57/lstm_171/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_57_lstm_171_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_171_tensorarrayunstack_tensorlistfromtensor_0(sequential_57_lstm_171_while_placeholderWsequential_57/lstm_171/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0═
@sequential_57/lstm_171/while/lstm_cell_498/MatMul/ReadVariableOpReadVariableOpKsequential_57_lstm_171_while_lstm_cell_498_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0Ђ
1sequential_57/lstm_171/while/lstm_cell_498/MatMulMatMulGsequential_57/lstm_171/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_57/lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЛ
Bsequential_57/lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOpMsequential_57_lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0У
3sequential_57/lstm_171/while/lstm_cell_498/MatMul_1MatMul*sequential_57_lstm_171_while_placeholder_2Jsequential_57/lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љТ
.sequential_57/lstm_171/while/lstm_cell_498/addAddV2;sequential_57/lstm_171/while/lstm_cell_498/MatMul:product:0=sequential_57/lstm_171/while/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љ╦
Asequential_57/lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOpLsequential_57_lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0№
2sequential_57/lstm_171/while/lstm_cell_498/BiasAddBiasAdd2sequential_57/lstm_171/while/lstm_cell_498/add:z:0Isequential_57/lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ|
:sequential_57/lstm_171/while/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_57/lstm_171/while/lstm_cell_498/splitSplitCsequential_57/lstm_171/while/lstm_cell_498/split/split_dim:output:0;sequential_57/lstm_171/while/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitф
2sequential_57/lstm_171/while/lstm_cell_498/SigmoidSigmoid9sequential_57/lstm_171/while/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dг
4sequential_57/lstm_171/while/lstm_cell_498/Sigmoid_1Sigmoid9sequential_57/lstm_171/while/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         d═
.sequential_57/lstm_171/while/lstm_cell_498/mulMul8sequential_57/lstm_171/while/lstm_cell_498/Sigmoid_1:y:0*sequential_57_lstm_171_while_placeholder_3*
T0*'
_output_shapes
:         dц
/sequential_57/lstm_171/while/lstm_cell_498/ReluRelu9sequential_57/lstm_171/while/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЯ
0sequential_57/lstm_171/while/lstm_cell_498/mul_1Mul6sequential_57/lstm_171/while/lstm_cell_498/Sigmoid:y:0=sequential_57/lstm_171/while/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dН
0sequential_57/lstm_171/while/lstm_cell_498/add_1AddV22sequential_57/lstm_171/while/lstm_cell_498/mul:z:04sequential_57/lstm_171/while/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dг
4sequential_57/lstm_171/while/lstm_cell_498/Sigmoid_2Sigmoid9sequential_57/lstm_171/while/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dА
1sequential_57/lstm_171/while/lstm_cell_498/Relu_1Relu4sequential_57/lstm_171/while/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dС
0sequential_57/lstm_171/while/lstm_cell_498/mul_2Mul8sequential_57/lstm_171/while/lstm_cell_498/Sigmoid_2:y:0?sequential_57/lstm_171/while/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dб
Asequential_57/lstm_171/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_57_lstm_171_while_placeholder_1(sequential_57_lstm_171_while_placeholder4sequential_57/lstm_171/while/lstm_cell_498/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_57/lstm_171/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_57/lstm_171/while/addAddV2(sequential_57_lstm_171_while_placeholder+sequential_57/lstm_171/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_57/lstm_171/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_57/lstm_171/while/add_1AddV2Fsequential_57_lstm_171_while_sequential_57_lstm_171_while_loop_counter-sequential_57/lstm_171/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_57/lstm_171/while/IdentityIdentity&sequential_57/lstm_171/while/add_1:z:0"^sequential_57/lstm_171/while/NoOp*
T0*
_output_shapes
: к
'sequential_57/lstm_171/while/Identity_1IdentityLsequential_57_lstm_171_while_sequential_57_lstm_171_while_maximum_iterations"^sequential_57/lstm_171/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_57/lstm_171/while/Identity_2Identity$sequential_57/lstm_171/while/add:z:0"^sequential_57/lstm_171/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_57/lstm_171/while/Identity_3IdentityQsequential_57/lstm_171/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_57/lstm_171/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_57/lstm_171/while/Identity_4Identity4sequential_57/lstm_171/while/lstm_cell_498/mul_2:z:0"^sequential_57/lstm_171/while/NoOp*
T0*'
_output_shapes
:         d┐
'sequential_57/lstm_171/while/Identity_5Identity4sequential_57/lstm_171/while/lstm_cell_498/add_1:z:0"^sequential_57/lstm_171/while/NoOp*
T0*'
_output_shapes
:         d»
!sequential_57/lstm_171/while/NoOpNoOpB^sequential_57/lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOpA^sequential_57/lstm_171/while/lstm_cell_498/MatMul/ReadVariableOpC^sequential_57/lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_57_lstm_171_while_identity.sequential_57/lstm_171/while/Identity:output:0"[
'sequential_57_lstm_171_while_identity_10sequential_57/lstm_171/while/Identity_1:output:0"[
'sequential_57_lstm_171_while_identity_20sequential_57/lstm_171/while/Identity_2:output:0"[
'sequential_57_lstm_171_while_identity_30sequential_57/lstm_171/while/Identity_3:output:0"[
'sequential_57_lstm_171_while_identity_40sequential_57/lstm_171/while/Identity_4:output:0"[
'sequential_57_lstm_171_while_identity_50sequential_57/lstm_171/while/Identity_5:output:0"џ
Jsequential_57_lstm_171_while_lstm_cell_498_biasadd_readvariableop_resourceLsequential_57_lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource_0"ю
Ksequential_57_lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resourceMsequential_57_lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource_0"ў
Isequential_57_lstm_171_while_lstm_cell_498_matmul_readvariableop_resourceKsequential_57_lstm_171_while_lstm_cell_498_matmul_readvariableop_resource_0"ї
Csequential_57_lstm_171_while_sequential_57_lstm_171_strided_slice_1Esequential_57_lstm_171_while_sequential_57_lstm_171_strided_slice_1_0"Ё
sequential_57_lstm_171_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_171_tensorarrayunstack_tensorlistfromtensorЂsequential_57_lstm_171_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_171_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2є
Asequential_57/lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOpAsequential_57/lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOp2ё
@sequential_57/lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp@sequential_57/lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp2ѕ
Bsequential_57/lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOpBsequential_57/lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp: 
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
while_cond_3027003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3027003___redundant_placeholder05
1while_while_cond_3027003___redundant_placeholder15
1while_while_cond_3027003___redundant_placeholder25
1while_while_cond_3027003___redundant_placeholder3
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
J__inference_sequential_57_layer_call_and_return_conditional_losses_3026901

inputsH
5lstm_171_lstm_cell_498_matmul_readvariableop_resource:	љJ
7lstm_171_lstm_cell_498_matmul_1_readvariableop_resource:	dљE
6lstm_171_lstm_cell_498_biasadd_readvariableop_resource:	љH
5lstm_172_lstm_cell_499_matmul_readvariableop_resource:	d╚J
7lstm_172_lstm_cell_499_matmul_1_readvariableop_resource:	2╚E
6lstm_172_lstm_cell_499_biasadd_readvariableop_resource:	╚G
5lstm_173_lstm_cell_500_matmul_readvariableop_resource:2(I
7lstm_173_lstm_cell_500_matmul_1_readvariableop_resource:
(D
6lstm_173_lstm_cell_500_biasadd_readvariableop_resource:(9
'dense_57_matmul_readvariableop_resource:
6
(dense_57_biasadd_readvariableop_resource:
identityѕбdense_57/BiasAdd/ReadVariableOpбdense_57/MatMul/ReadVariableOpб-lstm_171/lstm_cell_498/BiasAdd/ReadVariableOpб,lstm_171/lstm_cell_498/MatMul/ReadVariableOpб.lstm_171/lstm_cell_498/MatMul_1/ReadVariableOpбlstm_171/whileб-lstm_172/lstm_cell_499/BiasAdd/ReadVariableOpб,lstm_172/lstm_cell_499/MatMul/ReadVariableOpб.lstm_172/lstm_cell_499/MatMul_1/ReadVariableOpбlstm_172/whileб-lstm_173/lstm_cell_500/BiasAdd/ReadVariableOpб,lstm_173/lstm_cell_500/MatMul/ReadVariableOpб.lstm_173/lstm_cell_500/MatMul_1/ReadVariableOpбlstm_173/whileD
lstm_171/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_171/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_171/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_171/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_171/strided_sliceStridedSlicelstm_171/Shape:output:0%lstm_171/strided_slice/stack:output:0'lstm_171/strided_slice/stack_1:output:0'lstm_171/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_171/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_171/zeros/packedPacklstm_171/strided_slice:output:0 lstm_171/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_171/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_171/zerosFilllstm_171/zeros/packed:output:0lstm_171/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_171/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_171/zeros_1/packedPacklstm_171/strided_slice:output:0"lstm_171/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_171/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_171/zeros_1Fill lstm_171/zeros_1/packed:output:0lstm_171/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_171/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_171/transpose	Transposeinputs lstm_171/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_171/Shape_1Shapelstm_171/transpose:y:0*
T0*
_output_shapes
:h
lstm_171/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_171/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_171/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_171/strided_slice_1StridedSlicelstm_171/Shape_1:output:0'lstm_171/strided_slice_1/stack:output:0)lstm_171/strided_slice_1/stack_1:output:0)lstm_171/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_171/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_171/TensorArrayV2TensorListReserve-lstm_171/TensorArrayV2/element_shape:output:0!lstm_171/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_171/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_171/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_171/transpose:y:0Glstm_171/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_171/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_171/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_171/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_171/strided_slice_2StridedSlicelstm_171/transpose:y:0'lstm_171/strided_slice_2/stack:output:0)lstm_171/strided_slice_2/stack_1:output:0)lstm_171/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_171/lstm_cell_498/MatMul/ReadVariableOpReadVariableOp5lstm_171_lstm_cell_498_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_171/lstm_cell_498/MatMulMatMul!lstm_171/strided_slice_2:output:04lstm_171/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_171/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp7lstm_171_lstm_cell_498_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_171/lstm_cell_498/MatMul_1MatMullstm_171/zeros:output:06lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_171/lstm_cell_498/addAddV2'lstm_171/lstm_cell_498/MatMul:product:0)lstm_171/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_171/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp6lstm_171_lstm_cell_498_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_171/lstm_cell_498/BiasAddBiasAddlstm_171/lstm_cell_498/add:z:05lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_171/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_171/lstm_cell_498/splitSplit/lstm_171/lstm_cell_498/split/split_dim:output:0'lstm_171/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_171/lstm_cell_498/SigmoidSigmoid%lstm_171/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_171/lstm_cell_498/Sigmoid_1Sigmoid%lstm_171/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_171/lstm_cell_498/mulMul$lstm_171/lstm_cell_498/Sigmoid_1:y:0lstm_171/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_171/lstm_cell_498/ReluRelu%lstm_171/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dц
lstm_171/lstm_cell_498/mul_1Mul"lstm_171/lstm_cell_498/Sigmoid:y:0)lstm_171/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_171/lstm_cell_498/add_1AddV2lstm_171/lstm_cell_498/mul:z:0 lstm_171/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_171/lstm_cell_498/Sigmoid_2Sigmoid%lstm_171/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dy
lstm_171/lstm_cell_498/Relu_1Relu lstm_171/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_171/lstm_cell_498/mul_2Mul$lstm_171/lstm_cell_498/Sigmoid_2:y:0+lstm_171/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_171/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_171/TensorArrayV2_1TensorListReserve/lstm_171/TensorArrayV2_1/element_shape:output:0!lstm_171/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_171/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_171/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_171/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_171/whileWhile$lstm_171/while/loop_counter:output:0*lstm_171/while/maximum_iterations:output:0lstm_171/time:output:0!lstm_171/TensorArrayV2_1:handle:0lstm_171/zeros:output:0lstm_171/zeros_1:output:0!lstm_171/strided_slice_1:output:0@lstm_171/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_171_lstm_cell_498_matmul_readvariableop_resource7lstm_171_lstm_cell_498_matmul_1_readvariableop_resource6lstm_171_lstm_cell_498_biasadd_readvariableop_resource*
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
lstm_171_while_body_3026533*'
condR
lstm_171_while_cond_3026532*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_171/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_171/TensorArrayV2Stack/TensorListStackTensorListStacklstm_171/while:output:3Blstm_171/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_171/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_171/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_171/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_171/strided_slice_3StridedSlice4lstm_171/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_171/strided_slice_3/stack:output:0)lstm_171/strided_slice_3/stack_1:output:0)lstm_171/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_171/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_171/transpose_1	Transpose4lstm_171/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_171/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_171/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_172/ShapeShapelstm_171/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_172/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_172/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_172/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_172/strided_sliceStridedSlicelstm_172/Shape:output:0%lstm_172/strided_slice/stack:output:0'lstm_172/strided_slice/stack_1:output:0'lstm_172/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_172/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_172/zeros/packedPacklstm_172/strided_slice:output:0 lstm_172/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_172/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_172/zerosFilllstm_172/zeros/packed:output:0lstm_172/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_172/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_172/zeros_1/packedPacklstm_172/strided_slice:output:0"lstm_172/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_172/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_172/zeros_1Fill lstm_172/zeros_1/packed:output:0lstm_172/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_172/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_172/transpose	Transposelstm_171/transpose_1:y:0 lstm_172/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_172/Shape_1Shapelstm_172/transpose:y:0*
T0*
_output_shapes
:h
lstm_172/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_172/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_172/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_172/strided_slice_1StridedSlicelstm_172/Shape_1:output:0'lstm_172/strided_slice_1/stack:output:0)lstm_172/strided_slice_1/stack_1:output:0)lstm_172/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_172/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_172/TensorArrayV2TensorListReserve-lstm_172/TensorArrayV2/element_shape:output:0!lstm_172/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_172/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_172/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_172/transpose:y:0Glstm_172/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_172/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_172/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_172/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_172/strided_slice_2StridedSlicelstm_172/transpose:y:0'lstm_172/strided_slice_2/stack:output:0)lstm_172/strided_slice_2/stack_1:output:0)lstm_172/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_172/lstm_cell_499/MatMul/ReadVariableOpReadVariableOp5lstm_172_lstm_cell_499_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_172/lstm_cell_499/MatMulMatMul!lstm_172/strided_slice_2:output:04lstm_172/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_172/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp7lstm_172_lstm_cell_499_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_172/lstm_cell_499/MatMul_1MatMullstm_172/zeros:output:06lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_172/lstm_cell_499/addAddV2'lstm_172/lstm_cell_499/MatMul:product:0)lstm_172/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_172/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp6lstm_172_lstm_cell_499_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_172/lstm_cell_499/BiasAddBiasAddlstm_172/lstm_cell_499/add:z:05lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_172/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_172/lstm_cell_499/splitSplit/lstm_172/lstm_cell_499/split/split_dim:output:0'lstm_172/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_172/lstm_cell_499/SigmoidSigmoid%lstm_172/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_172/lstm_cell_499/Sigmoid_1Sigmoid%lstm_172/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_172/lstm_cell_499/mulMul$lstm_172/lstm_cell_499/Sigmoid_1:y:0lstm_172/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_172/lstm_cell_499/ReluRelu%lstm_172/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_172/lstm_cell_499/mul_1Mul"lstm_172/lstm_cell_499/Sigmoid:y:0)lstm_172/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_172/lstm_cell_499/add_1AddV2lstm_172/lstm_cell_499/mul:z:0 lstm_172/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_172/lstm_cell_499/Sigmoid_2Sigmoid%lstm_172/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2y
lstm_172/lstm_cell_499/Relu_1Relu lstm_172/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_172/lstm_cell_499/mul_2Mul$lstm_172/lstm_cell_499/Sigmoid_2:y:0+lstm_172/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_172/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_172/TensorArrayV2_1TensorListReserve/lstm_172/TensorArrayV2_1/element_shape:output:0!lstm_172/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_172/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_172/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_172/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_172/whileWhile$lstm_172/while/loop_counter:output:0*lstm_172/while/maximum_iterations:output:0lstm_172/time:output:0!lstm_172/TensorArrayV2_1:handle:0lstm_172/zeros:output:0lstm_172/zeros_1:output:0!lstm_172/strided_slice_1:output:0@lstm_172/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_172_lstm_cell_499_matmul_readvariableop_resource7lstm_172_lstm_cell_499_matmul_1_readvariableop_resource6lstm_172_lstm_cell_499_biasadd_readvariableop_resource*
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
lstm_172_while_body_3026672*'
condR
lstm_172_while_cond_3026671*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_172/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_172/TensorArrayV2Stack/TensorListStackTensorListStacklstm_172/while:output:3Blstm_172/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_172/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_172/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_172/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_172/strided_slice_3StridedSlice4lstm_172/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_172/strided_slice_3/stack:output:0)lstm_172/strided_slice_3/stack_1:output:0)lstm_172/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_172/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_172/transpose_1	Transpose4lstm_172/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_172/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_172/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_173/ShapeShapelstm_172/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_173/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_173/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_173/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_173/strided_sliceStridedSlicelstm_173/Shape:output:0%lstm_173/strided_slice/stack:output:0'lstm_173/strided_slice/stack_1:output:0'lstm_173/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_173/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_173/zeros/packedPacklstm_173/strided_slice:output:0 lstm_173/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_173/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_173/zerosFilllstm_173/zeros/packed:output:0lstm_173/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_173/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_173/zeros_1/packedPacklstm_173/strided_slice:output:0"lstm_173/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_173/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_173/zeros_1Fill lstm_173/zeros_1/packed:output:0lstm_173/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_173/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_173/transpose	Transposelstm_172/transpose_1:y:0 lstm_173/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_173/Shape_1Shapelstm_173/transpose:y:0*
T0*
_output_shapes
:h
lstm_173/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_173/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_173/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_173/strided_slice_1StridedSlicelstm_173/Shape_1:output:0'lstm_173/strided_slice_1/stack:output:0)lstm_173/strided_slice_1/stack_1:output:0)lstm_173/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_173/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_173/TensorArrayV2TensorListReserve-lstm_173/TensorArrayV2/element_shape:output:0!lstm_173/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_173/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_173/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_173/transpose:y:0Glstm_173/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_173/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_173/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_173/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_173/strided_slice_2StridedSlicelstm_173/transpose:y:0'lstm_173/strided_slice_2/stack:output:0)lstm_173/strided_slice_2/stack_1:output:0)lstm_173/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_173/lstm_cell_500/MatMul/ReadVariableOpReadVariableOp5lstm_173_lstm_cell_500_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_173/lstm_cell_500/MatMulMatMul!lstm_173/strided_slice_2:output:04lstm_173/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_173/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp7lstm_173_lstm_cell_500_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_173/lstm_cell_500/MatMul_1MatMullstm_173/zeros:output:06lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_173/lstm_cell_500/addAddV2'lstm_173/lstm_cell_500/MatMul:product:0)lstm_173/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_173/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp6lstm_173_lstm_cell_500_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_173/lstm_cell_500/BiasAddBiasAddlstm_173/lstm_cell_500/add:z:05lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_173/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_173/lstm_cell_500/splitSplit/lstm_173/lstm_cell_500/split/split_dim:output:0'lstm_173/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_173/lstm_cell_500/SigmoidSigmoid%lstm_173/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_173/lstm_cell_500/Sigmoid_1Sigmoid%lstm_173/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_173/lstm_cell_500/mulMul$lstm_173/lstm_cell_500/Sigmoid_1:y:0lstm_173/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_173/lstm_cell_500/ReluRelu%lstm_173/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_173/lstm_cell_500/mul_1Mul"lstm_173/lstm_cell_500/Sigmoid:y:0)lstm_173/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_173/lstm_cell_500/add_1AddV2lstm_173/lstm_cell_500/mul:z:0 lstm_173/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_173/lstm_cell_500/Sigmoid_2Sigmoid%lstm_173/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
y
lstm_173/lstm_cell_500/Relu_1Relu lstm_173/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_173/lstm_cell_500/mul_2Mul$lstm_173/lstm_cell_500/Sigmoid_2:y:0+lstm_173/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_173/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_173/TensorArrayV2_1TensorListReserve/lstm_173/TensorArrayV2_1/element_shape:output:0!lstm_173/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_173/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_173/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_173/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_173/whileWhile$lstm_173/while/loop_counter:output:0*lstm_173/while/maximum_iterations:output:0lstm_173/time:output:0!lstm_173/TensorArrayV2_1:handle:0lstm_173/zeros:output:0lstm_173/zeros_1:output:0!lstm_173/strided_slice_1:output:0@lstm_173/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_173_lstm_cell_500_matmul_readvariableop_resource7lstm_173_lstm_cell_500_matmul_1_readvariableop_resource6lstm_173_lstm_cell_500_biasadd_readvariableop_resource*
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
lstm_173_while_body_3026811*'
condR
lstm_173_while_cond_3026810*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_173/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_173/TensorArrayV2Stack/TensorListStackTensorListStacklstm_173/while:output:3Blstm_173/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_173/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_173/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_173/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_173/strided_slice_3StridedSlice4lstm_173/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_173/strided_slice_3/stack:output:0)lstm_173/strided_slice_3/stack_1:output:0)lstm_173/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_173/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_173/transpose_1	Transpose4lstm_173/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_173/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_173/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_57/MatMulMatMul!lstm_173/strided_slice_3:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_57/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp.^lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp-^lstm_171/lstm_cell_498/MatMul/ReadVariableOp/^lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp^lstm_171/while.^lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp-^lstm_172/lstm_cell_499/MatMul/ReadVariableOp/^lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp^lstm_172/while.^lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp-^lstm_173/lstm_cell_500/MatMul/ReadVariableOp/^lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp^lstm_173/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2^
-lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp-lstm_171/lstm_cell_498/BiasAdd/ReadVariableOp2\
,lstm_171/lstm_cell_498/MatMul/ReadVariableOp,lstm_171/lstm_cell_498/MatMul/ReadVariableOp2`
.lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp.lstm_171/lstm_cell_498/MatMul_1/ReadVariableOp2 
lstm_171/whilelstm_171/while2^
-lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp-lstm_172/lstm_cell_499/BiasAdd/ReadVariableOp2\
,lstm_172/lstm_cell_499/MatMul/ReadVariableOp,lstm_172/lstm_cell_499/MatMul/ReadVariableOp2`
.lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp.lstm_172/lstm_cell_499/MatMul_1/ReadVariableOp2 
lstm_172/whilelstm_172/while2^
-lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp-lstm_173/lstm_cell_500/BiasAdd/ReadVariableOp2\
,lstm_173/lstm_cell_500/MatMul/ReadVariableOp,lstm_173/lstm_cell_500/MatMul/ReadVariableOp2`
.lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp.lstm_173/lstm_cell_500/MatMul_1/ReadVariableOp2 
lstm_173/whilelstm_173/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_171_layer_call_and_return_conditional_losses_3024932

inputs?
,lstm_cell_498_matmul_readvariableop_resource:	љA
.lstm_cell_498_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_498_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_498/BiasAdd/ReadVariableOpб#lstm_cell_498/MatMul/ReadVariableOpб%lstm_cell_498/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_498/MatMul/ReadVariableOpReadVariableOp,lstm_cell_498_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_498/MatMulMatMulstrided_slice_2:output:0+lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_498_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_498/MatMul_1MatMulzeros:output:0-lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_498/addAddV2lstm_cell_498/MatMul:product:0 lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_498_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_498/BiasAddBiasAddlstm_cell_498/add:z:0,lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_498/splitSplit&lstm_cell_498/split/split_dim:output:0lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_498/SigmoidSigmoidlstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_1Sigmoidlstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_498/mulMullstm_cell_498/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_498/ReluRelulstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_498/mul_1Mullstm_cell_498/Sigmoid:y:0 lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_498/add_1AddV2lstm_cell_498/mul:z:0lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_2Sigmoidlstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_498/Relu_1Relulstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_498/mul_2Mullstm_cell_498/Sigmoid_2:y:0"lstm_cell_498/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_498_matmul_readvariableop_resource.lstm_cell_498_matmul_1_readvariableop_resource-lstm_cell_498_biasadd_readvariableop_resource*
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
while_body_3024848*
condR
while_cond_3024847*K
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
NoOpNoOp%^lstm_cell_498/BiasAdd/ReadVariableOp$^lstm_cell_498/MatMul/ReadVariableOp&^lstm_cell_498/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_498/BiasAdd/ReadVariableOp$lstm_cell_498/BiasAdd/ReadVariableOp2J
#lstm_cell_498/MatMul/ReadVariableOp#lstm_cell_498/MatMul/ReadVariableOp2N
%lstm_cell_498/MatMul_1/ReadVariableOp%lstm_cell_498/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
я
 
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025928
lstm_171_input#
lstm_171_3025901:	љ#
lstm_171_3025903:	dљ
lstm_171_3025905:	љ#
lstm_172_3025908:	d╚#
lstm_172_3025910:	2╚
lstm_172_3025912:	╚"
lstm_173_3025915:2("
lstm_173_3025917:
(
lstm_173_3025919:("
dense_57_3025922:

dense_57_3025924:
identityѕб dense_57/StatefulPartitionedCallб lstm_171/StatefulPartitionedCallб lstm_172/StatefulPartitionedCallб lstm_173/StatefulPartitionedCallЊ
 lstm_171/StatefulPartitionedCallStatefulPartitionedCalllstm_171_inputlstm_171_3025901lstm_171_3025903lstm_171_3025905*
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3024932«
 lstm_172/StatefulPartitionedCallStatefulPartitionedCall)lstm_171/StatefulPartitionedCall:output:0lstm_172_3025908lstm_172_3025910lstm_172_3025912*
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3025082ф
 lstm_173/StatefulPartitionedCallStatefulPartitionedCall)lstm_172/StatefulPartitionedCall:output:0lstm_173_3025915lstm_173_3025917lstm_173_3025919*
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3025232ќ
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)lstm_173/StatefulPartitionedCall:output:0dense_57_3025922dense_57_3025924*
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
E__inference_dense_57_layer_call_and_return_conditional_losses_3025250x
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_57/StatefulPartitionedCall!^lstm_171/StatefulPartitionedCall!^lstm_172/StatefulPartitionedCall!^lstm_173/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 lstm_171/StatefulPartitionedCall lstm_171/StatefulPartitionedCall2D
 lstm_172/StatefulPartitionedCall lstm_172/StatefulPartitionedCall2D
 lstm_173/StatefulPartitionedCall lstm_173/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_171_input
аK
Ц
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027231
inputs_0?
,lstm_cell_498_matmul_readvariableop_resource:	љA
.lstm_cell_498_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_498_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_498/BiasAdd/ReadVariableOpб#lstm_cell_498/MatMul/ReadVariableOpб%lstm_cell_498/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_498/MatMul/ReadVariableOpReadVariableOp,lstm_cell_498_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_498/MatMulMatMulstrided_slice_2:output:0+lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_498_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_498/MatMul_1MatMulzeros:output:0-lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_498/addAddV2lstm_cell_498/MatMul:product:0 lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_498_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_498/BiasAddBiasAddlstm_cell_498/add:z:0,lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_498/splitSplit&lstm_cell_498/split/split_dim:output:0lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_498/SigmoidSigmoidlstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_1Sigmoidlstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_498/mulMullstm_cell_498/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_498/ReluRelulstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_498/mul_1Mullstm_cell_498/Sigmoid:y:0 lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_498/add_1AddV2lstm_cell_498/mul:z:0lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_2Sigmoidlstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_498/Relu_1Relulstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_498/mul_2Mullstm_cell_498/Sigmoid_2:y:0"lstm_cell_498/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_498_matmul_readvariableop_resource.lstm_cell_498_matmul_1_readvariableop_resource-lstm_cell_498_biasadd_readvariableop_resource*
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
while_body_3027147*
condR
while_cond_3027146*K
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
NoOpNoOp%^lstm_cell_498/BiasAdd/ReadVariableOp$^lstm_cell_498/MatMul/ReadVariableOp&^lstm_cell_498/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_498/BiasAdd/ReadVariableOp$lstm_cell_498/BiasAdd/ReadVariableOp2J
#lstm_cell_498/MatMul/ReadVariableOp#lstm_cell_498/MatMul/ReadVariableOp2N
%lstm_cell_498/MatMul_1/ReadVariableOp%lstm_cell_498/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
АC
Щ

lstm_172_while_body_3026245.
*lstm_172_while_lstm_172_while_loop_counter4
0lstm_172_while_lstm_172_while_maximum_iterations
lstm_172_while_placeholder 
lstm_172_while_placeholder_1 
lstm_172_while_placeholder_2 
lstm_172_while_placeholder_3-
)lstm_172_while_lstm_172_strided_slice_1_0i
elstm_172_while_tensorarrayv2read_tensorlistgetitem_lstm_172_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_172_while_lstm_cell_499_matmul_readvariableop_resource_0:	d╚R
?lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource_0:	2╚M
>lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource_0:	╚
lstm_172_while_identity
lstm_172_while_identity_1
lstm_172_while_identity_2
lstm_172_while_identity_3
lstm_172_while_identity_4
lstm_172_while_identity_5+
'lstm_172_while_lstm_172_strided_slice_1g
clstm_172_while_tensorarrayv2read_tensorlistgetitem_lstm_172_tensorarrayunstack_tensorlistfromtensorN
;lstm_172_while_lstm_cell_499_matmul_readvariableop_resource:	d╚P
=lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource:	2╚K
<lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource:	╚ѕб3lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOpб2lstm_172/while/lstm_cell_499/MatMul/ReadVariableOpб4lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOpЉ
@lstm_172/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_172/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_172_while_tensorarrayv2read_tensorlistgetitem_lstm_172_tensorarrayunstack_tensorlistfromtensor_0lstm_172_while_placeholderIlstm_172/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_172/while/lstm_cell_499/MatMul/ReadVariableOpReadVariableOp=lstm_172_while_lstm_cell_499_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_172/while/lstm_cell_499/MatMulMatMul9lstm_172/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp?lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_172/while/lstm_cell_499/MatMul_1MatMullstm_172_while_placeholder_2<lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_172/while/lstm_cell_499/addAddV2-lstm_172/while/lstm_cell_499/MatMul:product:0/lstm_172/while/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp>lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_172/while/lstm_cell_499/BiasAddBiasAdd$lstm_172/while/lstm_cell_499/add:z:0;lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_172/while/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_172/while/lstm_cell_499/splitSplit5lstm_172/while/lstm_cell_499/split/split_dim:output:0-lstm_172/while/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_172/while/lstm_cell_499/SigmoidSigmoid+lstm_172/while/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_172/while/lstm_cell_499/Sigmoid_1Sigmoid+lstm_172/while/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_172/while/lstm_cell_499/mulMul*lstm_172/while/lstm_cell_499/Sigmoid_1:y:0lstm_172_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_172/while/lstm_cell_499/ReluRelu+lstm_172/while/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_172/while/lstm_cell_499/mul_1Mul(lstm_172/while/lstm_cell_499/Sigmoid:y:0/lstm_172/while/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_172/while/lstm_cell_499/add_1AddV2$lstm_172/while/lstm_cell_499/mul:z:0&lstm_172/while/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_172/while/lstm_cell_499/Sigmoid_2Sigmoid+lstm_172/while/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_172/while/lstm_cell_499/Relu_1Relu&lstm_172/while/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_172/while/lstm_cell_499/mul_2Mul*lstm_172/while/lstm_cell_499/Sigmoid_2:y:01lstm_172/while/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_172/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_172_while_placeholder_1lstm_172_while_placeholder&lstm_172/while/lstm_cell_499/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_172/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_172/while/addAddV2lstm_172_while_placeholderlstm_172/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_172/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_172/while/add_1AddV2*lstm_172_while_lstm_172_while_loop_counterlstm_172/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_172/while/IdentityIdentitylstm_172/while/add_1:z:0^lstm_172/while/NoOp*
T0*
_output_shapes
: ј
lstm_172/while/Identity_1Identity0lstm_172_while_lstm_172_while_maximum_iterations^lstm_172/while/NoOp*
T0*
_output_shapes
: t
lstm_172/while/Identity_2Identitylstm_172/while/add:z:0^lstm_172/while/NoOp*
T0*
_output_shapes
: А
lstm_172/while/Identity_3IdentityClstm_172/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_172/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_172/while/Identity_4Identity&lstm_172/while/lstm_cell_499/mul_2:z:0^lstm_172/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_172/while/Identity_5Identity&lstm_172/while/lstm_cell_499/add_1:z:0^lstm_172/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_172/while/NoOpNoOp4^lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOp3^lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp5^lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_172_while_identity lstm_172/while/Identity:output:0"?
lstm_172_while_identity_1"lstm_172/while/Identity_1:output:0"?
lstm_172_while_identity_2"lstm_172/while/Identity_2:output:0"?
lstm_172_while_identity_3"lstm_172/while/Identity_3:output:0"?
lstm_172_while_identity_4"lstm_172/while/Identity_4:output:0"?
lstm_172_while_identity_5"lstm_172/while/Identity_5:output:0"T
'lstm_172_while_lstm_172_strided_slice_1)lstm_172_while_lstm_172_strided_slice_1_0"~
<lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource>lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource_0"ђ
=lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource?lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource_0"|
;lstm_172_while_lstm_cell_499_matmul_readvariableop_resource=lstm_172_while_lstm_cell_499_matmul_readvariableop_resource_0"╠
clstm_172_while_tensorarrayv2read_tensorlistgetitem_lstm_172_tensorarrayunstack_tensorlistfromtensorelstm_172_while_tensorarrayv2read_tensorlistgetitem_lstm_172_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOp3lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOp2h
2lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp2lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp2l
4lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp4lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp: 
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
Н
Ё
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3029030

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
РJ
Б
E__inference_lstm_172_layer_call_and_return_conditional_losses_3025082

inputs?
,lstm_cell_499_matmul_readvariableop_resource:	d╚A
.lstm_cell_499_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_499_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_499/BiasAdd/ReadVariableOpб#lstm_cell_499/MatMul/ReadVariableOpб%lstm_cell_499/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_499/MatMul/ReadVariableOpReadVariableOp,lstm_cell_499_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_499/MatMulMatMulstrided_slice_2:output:0+lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_499_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_499/MatMul_1MatMulzeros:output:0-lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_499/addAddV2lstm_cell_499/MatMul:product:0 lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_499_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_499/BiasAddBiasAddlstm_cell_499/add:z:0,lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_499/splitSplit&lstm_cell_499/split/split_dim:output:0lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_499/SigmoidSigmoidlstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_1Sigmoidlstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_499/mulMullstm_cell_499/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_499/ReluRelulstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_499/mul_1Mullstm_cell_499/Sigmoid:y:0 lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_499/add_1AddV2lstm_cell_499/mul:z:0lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_2Sigmoidlstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_499/Relu_1Relulstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_499/mul_2Mullstm_cell_499/Sigmoid_2:y:0"lstm_cell_499/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_499_matmul_readvariableop_resource.lstm_cell_499_matmul_1_readvariableop_resource-lstm_cell_499_biasadd_readvariableop_resource*
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
while_body_3024998*
condR
while_cond_3024997*K
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
NoOpNoOp%^lstm_cell_499/BiasAdd/ReadVariableOp$^lstm_cell_499/MatMul/ReadVariableOp&^lstm_cell_499/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_499/BiasAdd/ReadVariableOp$lstm_cell_499/BiasAdd/ReadVariableOp2J
#lstm_cell_499/MatMul/ReadVariableOp#lstm_cell_499/MatMul/ReadVariableOp2N
%lstm_cell_499/MatMul_1/ReadVariableOp%lstm_cell_499/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
к
э
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025846

inputs#
lstm_171_3025819:	љ#
lstm_171_3025821:	dљ
lstm_171_3025823:	љ#
lstm_172_3025826:	d╚#
lstm_172_3025828:	2╚
lstm_172_3025830:	╚"
lstm_173_3025833:2("
lstm_173_3025835:
(
lstm_173_3025837:("
dense_57_3025840:

dense_57_3025842:
identityѕб dense_57/StatefulPartitionedCallб lstm_171/StatefulPartitionedCallб lstm_172/StatefulPartitionedCallб lstm_173/StatefulPartitionedCallІ
 lstm_171/StatefulPartitionedCallStatefulPartitionedCallinputslstm_171_3025819lstm_171_3025821lstm_171_3025823*
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3025778«
 lstm_172/StatefulPartitionedCallStatefulPartitionedCall)lstm_171/StatefulPartitionedCall:output:0lstm_172_3025826lstm_172_3025828lstm_172_3025830*
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3025613ф
 lstm_173/StatefulPartitionedCallStatefulPartitionedCall)lstm_172/StatefulPartitionedCall:output:0lstm_173_3025833lstm_173_3025835lstm_173_3025837*
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3025448ќ
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)lstm_173/StatefulPartitionedCall:output:0dense_57_3025840dense_57_3025842*
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
E__inference_dense_57_layer_call_and_return_conditional_losses_3025250x
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_57/StatefulPartitionedCall!^lstm_171/StatefulPartitionedCall!^lstm_172/StatefulPartitionedCall!^lstm_173/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 lstm_171/StatefulPartitionedCall lstm_171/StatefulPartitionedCall2D
 lstm_172/StatefulPartitionedCall lstm_172/StatefulPartitionedCall2D
 lstm_173/StatefulPartitionedCall lstm_173/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
»8
ј
E__inference_lstm_171_layer_call_and_return_conditional_losses_3023883

inputs(
lstm_cell_498_3023801:	љ(
lstm_cell_498_3023803:	dљ$
lstm_cell_498_3023805:	љ
identityѕб%lstm_cell_498/StatefulPartitionedCallбwhile;
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
%lstm_cell_498/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_498_3023801lstm_cell_498_3023803lstm_cell_498_3023805*
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
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3023800n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_498_3023801lstm_cell_498_3023803lstm_cell_498_3023805*
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
while_body_3023814*
condR
while_cond_3023813*K
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
NoOpNoOp&^lstm_cell_498/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_498/StatefulPartitionedCall%lstm_cell_498/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Ј#
ы
while_body_3024164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_499_3024188_0:	d╚0
while_lstm_cell_499_3024190_0:	2╚,
while_lstm_cell_499_3024192_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_499_3024188:	d╚.
while_lstm_cell_499_3024190:	2╚*
while_lstm_cell_499_3024192:	╚ѕб+while/lstm_cell_499/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_499/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_499_3024188_0while_lstm_cell_499_3024190_0while_lstm_cell_499_3024192_0*
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
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3024150П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_499/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_499/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_499/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_499/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_499_3024188while_lstm_cell_499_3024188_0"<
while_lstm_cell_499_3024190while_lstm_cell_499_3024190_0"<
while_lstm_cell_499_3024192while_lstm_cell_499_3024192_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_499/StatefulPartitionedCall+while/lstm_cell_499/StatefulPartitionedCall: 
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
Ј#
ы
while_body_3024005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_498_3024029_0:	љ0
while_lstm_cell_498_3024031_0:	dљ,
while_lstm_cell_498_3024033_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_498_3024029:	љ.
while_lstm_cell_498_3024031:	dљ*
while_lstm_cell_498_3024033:	љѕб+while/lstm_cell_498/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_498/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_498_3024029_0while_lstm_cell_498_3024031_0while_lstm_cell_498_3024033_0*
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
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3023946П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_498/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_498/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_498/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_498/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_498_3024029while_lstm_cell_498_3024029_0"<
while_lstm_cell_498_3024031while_lstm_cell_498_3024031_0"<
while_lstm_cell_498_3024033while_lstm_cell_498_3024033_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_498/StatefulPartitionedCall+while/lstm_cell_498/StatefulPartitionedCall: 
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
Ј#
ы
while_body_3023814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_498_3023838_0:	љ0
while_lstm_cell_498_3023840_0:	dљ,
while_lstm_cell_498_3023842_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_498_3023838:	љ.
while_lstm_cell_498_3023840:	dљ*
while_lstm_cell_498_3023842:	љѕб+while/lstm_cell_498/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_498/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_498_3023838_0while_lstm_cell_498_3023840_0while_lstm_cell_498_3023842_0*
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
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3023800П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_498/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_498/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_498/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_498/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_498_3023838while_lstm_cell_498_3023838_0"<
while_lstm_cell_498_3023840while_lstm_cell_498_3023840_0"<
while_lstm_cell_498_3023842while_lstm_cell_498_3023842_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_498/StatefulPartitionedCall+while/lstm_cell_498/StatefulPartitionedCall: 
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
while_cond_3028664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3028664___redundant_placeholder05
1while_while_cond_3028664___redundant_placeholder15
1while_while_cond_3028664___redundant_placeholder25
1while_while_cond_3028664___redundant_placeholder3
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
№
Э
/__inference_lstm_cell_498_layer_call_fn_3028802

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
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3023946o
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
В
ш
/__inference_lstm_cell_500_layer_call_fn_3028981

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
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3024500o
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
┐
ћ
)sequential_57_lstm_171_while_cond_3023364J
Fsequential_57_lstm_171_while_sequential_57_lstm_171_while_loop_counterP
Lsequential_57_lstm_171_while_sequential_57_lstm_171_while_maximum_iterations,
(sequential_57_lstm_171_while_placeholder.
*sequential_57_lstm_171_while_placeholder_1.
*sequential_57_lstm_171_while_placeholder_2.
*sequential_57_lstm_171_while_placeholder_3L
Hsequential_57_lstm_171_while_less_sequential_57_lstm_171_strided_slice_1c
_sequential_57_lstm_171_while_sequential_57_lstm_171_while_cond_3023364___redundant_placeholder0c
_sequential_57_lstm_171_while_sequential_57_lstm_171_while_cond_3023364___redundant_placeholder1c
_sequential_57_lstm_171_while_sequential_57_lstm_171_while_cond_3023364___redundant_placeholder2c
_sequential_57_lstm_171_while_sequential_57_lstm_171_while_cond_3023364___redundant_placeholder3)
%sequential_57_lstm_171_while_identity
Й
!sequential_57/lstm_171/while/LessLess(sequential_57_lstm_171_while_placeholderHsequential_57_lstm_171_while_less_sequential_57_lstm_171_strided_slice_1*
T0*
_output_shapes
: y
%sequential_57/lstm_171/while/IdentityIdentity%sequential_57/lstm_171/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_57_lstm_171_while_identity.sequential_57/lstm_171/while/Identity:output:0*(
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
Г
╣
*__inference_lstm_172_layer_call_fn_3027539
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3024424|
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
ћC
З

lstm_173_while_body_3026811.
*lstm_173_while_lstm_173_while_loop_counter4
0lstm_173_while_lstm_173_while_maximum_iterations
lstm_173_while_placeholder 
lstm_173_while_placeholder_1 
lstm_173_while_placeholder_2 
lstm_173_while_placeholder_3-
)lstm_173_while_lstm_173_strided_slice_1_0i
elstm_173_while_tensorarrayv2read_tensorlistgetitem_lstm_173_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_173_while_lstm_cell_500_matmul_readvariableop_resource_0:2(Q
?lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource_0:
(L
>lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource_0:(
lstm_173_while_identity
lstm_173_while_identity_1
lstm_173_while_identity_2
lstm_173_while_identity_3
lstm_173_while_identity_4
lstm_173_while_identity_5+
'lstm_173_while_lstm_173_strided_slice_1g
clstm_173_while_tensorarrayv2read_tensorlistgetitem_lstm_173_tensorarrayunstack_tensorlistfromtensorM
;lstm_173_while_lstm_cell_500_matmul_readvariableop_resource:2(O
=lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource:
(J
<lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource:(ѕб3lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOpб2lstm_173/while/lstm_cell_500/MatMul/ReadVariableOpб4lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOpЉ
@lstm_173/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_173/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_173_while_tensorarrayv2read_tensorlistgetitem_lstm_173_tensorarrayunstack_tensorlistfromtensor_0lstm_173_while_placeholderIlstm_173/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_173/while/lstm_cell_500/MatMul/ReadVariableOpReadVariableOp=lstm_173_while_lstm_cell_500_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_173/while/lstm_cell_500/MatMulMatMul9lstm_173/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp?lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_173/while/lstm_cell_500/MatMul_1MatMullstm_173_while_placeholder_2<lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_173/while/lstm_cell_500/addAddV2-lstm_173/while/lstm_cell_500/MatMul:product:0/lstm_173/while/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp>lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_173/while/lstm_cell_500/BiasAddBiasAdd$lstm_173/while/lstm_cell_500/add:z:0;lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_173/while/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_173/while/lstm_cell_500/splitSplit5lstm_173/while/lstm_cell_500/split/split_dim:output:0-lstm_173/while/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_173/while/lstm_cell_500/SigmoidSigmoid+lstm_173/while/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_173/while/lstm_cell_500/Sigmoid_1Sigmoid+lstm_173/while/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_173/while/lstm_cell_500/mulMul*lstm_173/while/lstm_cell_500/Sigmoid_1:y:0lstm_173_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_173/while/lstm_cell_500/ReluRelu+lstm_173/while/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_173/while/lstm_cell_500/mul_1Mul(lstm_173/while/lstm_cell_500/Sigmoid:y:0/lstm_173/while/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_173/while/lstm_cell_500/add_1AddV2$lstm_173/while/lstm_cell_500/mul:z:0&lstm_173/while/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_173/while/lstm_cell_500/Sigmoid_2Sigmoid+lstm_173/while/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_173/while/lstm_cell_500/Relu_1Relu&lstm_173/while/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_173/while/lstm_cell_500/mul_2Mul*lstm_173/while/lstm_cell_500/Sigmoid_2:y:01lstm_173/while/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_173/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_173_while_placeholder_1lstm_173_while_placeholder&lstm_173/while/lstm_cell_500/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_173/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_173/while/addAddV2lstm_173_while_placeholderlstm_173/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_173/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_173/while/add_1AddV2*lstm_173_while_lstm_173_while_loop_counterlstm_173/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_173/while/IdentityIdentitylstm_173/while/add_1:z:0^lstm_173/while/NoOp*
T0*
_output_shapes
: ј
lstm_173/while/Identity_1Identity0lstm_173_while_lstm_173_while_maximum_iterations^lstm_173/while/NoOp*
T0*
_output_shapes
: t
lstm_173/while/Identity_2Identitylstm_173/while/add:z:0^lstm_173/while/NoOp*
T0*
_output_shapes
: А
lstm_173/while/Identity_3IdentityClstm_173/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_173/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_173/while/Identity_4Identity&lstm_173/while/lstm_cell_500/mul_2:z:0^lstm_173/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_173/while/Identity_5Identity&lstm_173/while/lstm_cell_500/add_1:z:0^lstm_173/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_173/while/NoOpNoOp4^lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOp3^lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp5^lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_173_while_identity lstm_173/while/Identity:output:0"?
lstm_173_while_identity_1"lstm_173/while/Identity_1:output:0"?
lstm_173_while_identity_2"lstm_173/while/Identity_2:output:0"?
lstm_173_while_identity_3"lstm_173/while/Identity_3:output:0"?
lstm_173_while_identity_4"lstm_173/while/Identity_4:output:0"?
lstm_173_while_identity_5"lstm_173/while/Identity_5:output:0"T
'lstm_173_while_lstm_173_strided_slice_1)lstm_173_while_lstm_173_strided_slice_1_0"~
<lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource>lstm_173_while_lstm_cell_500_biasadd_readvariableop_resource_0"ђ
=lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource?lstm_173_while_lstm_cell_500_matmul_1_readvariableop_resource_0"|
;lstm_173_while_lstm_cell_500_matmul_readvariableop_resource=lstm_173_while_lstm_cell_500_matmul_readvariableop_resource_0"╠
clstm_173_while_tensorarrayv2read_tensorlistgetitem_lstm_173_tensorarrayunstack_tensorlistfromtensorelstm_173_while_tensorarrayv2read_tensorlistgetitem_lstm_173_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOp3lstm_173/while/lstm_cell_500/BiasAdd/ReadVariableOp2h
2lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp2lstm_173/while/lstm_cell_500/MatMul/ReadVariableOp2l
4lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp4lstm_173/while/lstm_cell_500/MatMul_1/ReadVariableOp: 
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
╚	
Ш
E__inference_dense_57_layer_call_and_return_conditional_losses_3025250

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
while_body_3028236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_500_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_500_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_500_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_500_matmul_readvariableop_resource:2(F
4while_lstm_cell_500_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_500_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_500/BiasAdd/ReadVariableOpб)while/lstm_cell_500/MatMul/ReadVariableOpб+while/lstm_cell_500/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_500/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_500_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_500/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_500_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_500/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_500/addAddV2$while/lstm_cell_500/MatMul:product:0&while/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_500_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_500/BiasAddBiasAddwhile/lstm_cell_500/add:z:02while/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_500/splitSplit,while/lstm_cell_500/split/split_dim:output:0$while/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_500/SigmoidSigmoid"while/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_1Sigmoid"while/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_500/mulMul!while/lstm_cell_500/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_500/ReluRelu"while/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_500/mul_1Mulwhile/lstm_cell_500/Sigmoid:y:0&while/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_500/add_1AddV2while/lstm_cell_500/mul:z:0while/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_2Sigmoid"while/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_500/Relu_1Reluwhile/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_500/mul_2Mul!while/lstm_cell_500/Sigmoid_2:y:0(while/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_500/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_500/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_500/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_500/BiasAdd/ReadVariableOp*^while/lstm_cell_500/MatMul/ReadVariableOp,^while/lstm_cell_500/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_500_biasadd_readvariableop_resource5while_lstm_cell_500_biasadd_readvariableop_resource_0"n
4while_lstm_cell_500_matmul_1_readvariableop_resource6while_lstm_cell_500_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_500_matmul_readvariableop_resource4while_lstm_cell_500_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_500/BiasAdd/ReadVariableOp*while/lstm_cell_500/BiasAdd/ReadVariableOp2V
)while/lstm_cell_500/MatMul/ReadVariableOp)while/lstm_cell_500/MatMul/ReadVariableOp2Z
+while/lstm_cell_500/MatMul_1/ReadVariableOp+while/lstm_cell_500/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027088
inputs_0?
,lstm_cell_498_matmul_readvariableop_resource:	љA
.lstm_cell_498_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_498_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_498/BiasAdd/ReadVariableOpб#lstm_cell_498/MatMul/ReadVariableOpб%lstm_cell_498/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_498/MatMul/ReadVariableOpReadVariableOp,lstm_cell_498_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_498/MatMulMatMulstrided_slice_2:output:0+lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_498_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_498/MatMul_1MatMulzeros:output:0-lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_498/addAddV2lstm_cell_498/MatMul:product:0 lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_498_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_498/BiasAddBiasAddlstm_cell_498/add:z:0,lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_498/splitSplit&lstm_cell_498/split/split_dim:output:0lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_498/SigmoidSigmoidlstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_1Sigmoidlstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_498/mulMullstm_cell_498/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_498/ReluRelulstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_498/mul_1Mullstm_cell_498/Sigmoid:y:0 lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_498/add_1AddV2lstm_cell_498/mul:z:0lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_2Sigmoidlstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_498/Relu_1Relulstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_498/mul_2Mullstm_cell_498/Sigmoid_2:y:0"lstm_cell_498/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_498_matmul_readvariableop_resource.lstm_cell_498_matmul_1_readvariableop_resource-lstm_cell_498_biasadd_readvariableop_resource*
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
while_body_3027004*
condR
while_cond_3027003*K
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
NoOpNoOp%^lstm_cell_498/BiasAdd/ReadVariableOp$^lstm_cell_498/MatMul/ReadVariableOp&^lstm_cell_498/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_498/BiasAdd/ReadVariableOp$lstm_cell_498/BiasAdd/ReadVariableOp2J
#lstm_cell_498/MatMul/ReadVariableOp#lstm_cell_498/MatMul/ReadVariableOp2N
%lstm_cell_498/MatMul_1/ReadVariableOp%lstm_cell_498/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
РW
Ъ
 __inference__traced_save_3029205
file_prefix.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_171_lstm_cell_171_kernel_read_readvariableopF
Bsavev2_lstm_171_lstm_cell_171_recurrent_kernel_read_readvariableop:
6savev2_lstm_171_lstm_cell_171_bias_read_readvariableop<
8savev2_lstm_172_lstm_cell_172_kernel_read_readvariableopF
Bsavev2_lstm_172_lstm_cell_172_recurrent_kernel_read_readvariableop:
6savev2_lstm_172_lstm_cell_172_bias_read_readvariableop<
8savev2_lstm_173_lstm_cell_173_kernel_read_readvariableopF
Bsavev2_lstm_173_lstm_cell_173_recurrent_kernel_read_readvariableop:
6savev2_lstm_173_lstm_cell_173_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_57_kernel_m_read_readvariableop3
/savev2_adam_dense_57_bias_m_read_readvariableopC
?savev2_adam_lstm_171_lstm_cell_171_kernel_m_read_readvariableopM
Isavev2_adam_lstm_171_lstm_cell_171_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_171_lstm_cell_171_bias_m_read_readvariableopC
?savev2_adam_lstm_172_lstm_cell_172_kernel_m_read_readvariableopM
Isavev2_adam_lstm_172_lstm_cell_172_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_172_lstm_cell_172_bias_m_read_readvariableopC
?savev2_adam_lstm_173_lstm_cell_173_kernel_m_read_readvariableopM
Isavev2_adam_lstm_173_lstm_cell_173_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_173_lstm_cell_173_bias_m_read_readvariableop5
1savev2_adam_dense_57_kernel_v_read_readvariableop3
/savev2_adam_dense_57_bias_v_read_readvariableopC
?savev2_adam_lstm_171_lstm_cell_171_kernel_v_read_readvariableopM
Isavev2_adam_lstm_171_lstm_cell_171_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_171_lstm_cell_171_bias_v_read_readvariableopC
?savev2_adam_lstm_172_lstm_cell_172_kernel_v_read_readvariableopM
Isavev2_adam_lstm_172_lstm_cell_172_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_172_lstm_cell_172_bias_v_read_readvariableopC
?savev2_adam_lstm_173_lstm_cell_173_kernel_v_read_readvariableopM
Isavev2_adam_lstm_173_lstm_cell_173_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_173_lstm_cell_173_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_171_lstm_cell_171_kernel_read_readvariableopBsavev2_lstm_171_lstm_cell_171_recurrent_kernel_read_readvariableop6savev2_lstm_171_lstm_cell_171_bias_read_readvariableop8savev2_lstm_172_lstm_cell_172_kernel_read_readvariableopBsavev2_lstm_172_lstm_cell_172_recurrent_kernel_read_readvariableop6savev2_lstm_172_lstm_cell_172_bias_read_readvariableop8savev2_lstm_173_lstm_cell_173_kernel_read_readvariableopBsavev2_lstm_173_lstm_cell_173_recurrent_kernel_read_readvariableop6savev2_lstm_173_lstm_cell_173_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_57_kernel_m_read_readvariableop/savev2_adam_dense_57_bias_m_read_readvariableop?savev2_adam_lstm_171_lstm_cell_171_kernel_m_read_readvariableopIsavev2_adam_lstm_171_lstm_cell_171_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_171_lstm_cell_171_bias_m_read_readvariableop?savev2_adam_lstm_172_lstm_cell_172_kernel_m_read_readvariableopIsavev2_adam_lstm_172_lstm_cell_172_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_172_lstm_cell_172_bias_m_read_readvariableop?savev2_adam_lstm_173_lstm_cell_173_kernel_m_read_readvariableopIsavev2_adam_lstm_173_lstm_cell_173_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_173_lstm_cell_173_bias_m_read_readvariableop1savev2_adam_dense_57_kernel_v_read_readvariableop/savev2_adam_dense_57_bias_v_read_readvariableop?savev2_adam_lstm_171_lstm_cell_171_kernel_v_read_readvariableopIsavev2_adam_lstm_171_lstm_cell_171_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_171_lstm_cell_171_bias_v_read_readvariableop?savev2_adam_lstm_172_lstm_cell_172_kernel_v_read_readvariableopIsavev2_adam_lstm_172_lstm_cell_172_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_172_lstm_cell_172_bias_v_read_readvariableop?savev2_adam_lstm_173_lstm_cell_173_kernel_v_read_readvariableopIsavev2_adam_lstm_173_lstm_cell_173_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_173_lstm_cell_173_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
О
є
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3024150

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
№
Э
/__inference_lstm_cell_498_layer_call_fn_3028785

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
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3023800o
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
Ѕ#
в
while_body_3024514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_500_3024538_0:2(/
while_lstm_cell_500_3024540_0:
(+
while_lstm_cell_500_3024542_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_500_3024538:2(-
while_lstm_cell_500_3024540:
()
while_lstm_cell_500_3024542:(ѕб+while/lstm_cell_500/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_500/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_500_3024538_0while_lstm_cell_500_3024540_0while_lstm_cell_500_3024542_0*
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
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3024500П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_500/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_500/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_500/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_500/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_500_3024538while_lstm_cell_500_3024538_0"<
while_lstm_cell_500_3024540while_lstm_cell_500_3024540_0"<
while_lstm_cell_500_3024542while_lstm_cell_500_3024542_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_500/StatefulPartitionedCall+while/lstm_cell_500/StatefulPartitionedCall: 
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
─8
н
while_body_3028379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_500_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_500_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_500_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_500_matmul_readvariableop_resource:2(F
4while_lstm_cell_500_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_500_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_500/BiasAdd/ReadVariableOpб)while/lstm_cell_500/MatMul/ReadVariableOpб+while/lstm_cell_500/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_500/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_500_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_500/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_500_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_500/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_500/addAddV2$while/lstm_cell_500/MatMul:product:0&while/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_500_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_500/BiasAddBiasAddwhile/lstm_cell_500/add:z:02while/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_500/splitSplit,while/lstm_cell_500/split/split_dim:output:0$while/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_500/SigmoidSigmoid"while/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_1Sigmoid"while/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_500/mulMul!while/lstm_cell_500/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_500/ReluRelu"while/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_500/mul_1Mulwhile/lstm_cell_500/Sigmoid:y:0&while/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_500/add_1AddV2while/lstm_cell_500/mul:z:0while/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_2Sigmoid"while/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_500/Relu_1Reluwhile/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_500/mul_2Mul!while/lstm_cell_500/Sigmoid_2:y:0(while/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_500/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_500/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_500/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_500/BiasAdd/ReadVariableOp*^while/lstm_cell_500/MatMul/ReadVariableOp,^while/lstm_cell_500/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_500_biasadd_readvariableop_resource5while_lstm_cell_500_biasadd_readvariableop_resource_0"n
4while_lstm_cell_500_matmul_1_readvariableop_resource6while_lstm_cell_500_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_500_matmul_readvariableop_resource4while_lstm_cell_500_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_500/BiasAdd/ReadVariableOp*while/lstm_cell_500/BiasAdd/ReadVariableOp2V
)while/lstm_cell_500/MatMul/ReadVariableOp)while/lstm_cell_500/MatMul/ReadVariableOp2Z
+while/lstm_cell_500/MatMul_1/ReadVariableOp+while/lstm_cell_500/MatMul_1/ReadVariableOp: 
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
while_cond_3024513
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3024513___redundant_placeholder05
1while_while_cond_3024513___redundant_placeholder15
1while_while_cond_3024513___redundant_placeholder25
1while_while_cond_3024513___redundant_placeholder3
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
lstm_173_while_cond_3026383.
*lstm_173_while_lstm_173_while_loop_counter4
0lstm_173_while_lstm_173_while_maximum_iterations
lstm_173_while_placeholder 
lstm_173_while_placeholder_1 
lstm_173_while_placeholder_2 
lstm_173_while_placeholder_30
,lstm_173_while_less_lstm_173_strided_slice_1G
Clstm_173_while_lstm_173_while_cond_3026383___redundant_placeholder0G
Clstm_173_while_lstm_173_while_cond_3026383___redundant_placeholder1G
Clstm_173_while_lstm_173_while_cond_3026383___redundant_placeholder2G
Clstm_173_while_lstm_173_while_cond_3026383___redundant_placeholder3
lstm_173_while_identity
є
lstm_173/while/LessLesslstm_173_while_placeholder,lstm_173_while_less_lstm_173_strided_slice_1*
T0*
_output_shapes
: ]
lstm_173/while/IdentityIdentitylstm_173/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_173_while_identity lstm_173/while/Identity:output:0*(
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
while_cond_3025363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3025363___redundant_placeholder05
1while_while_cond_3025363___redundant_placeholder15
1while_while_cond_3025363___redundant_placeholder25
1while_while_cond_3025363___redundant_placeholder3
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
њK
б
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028463
inputs_0>
,lstm_cell_500_matmul_readvariableop_resource:2(@
.lstm_cell_500_matmul_1_readvariableop_resource:
(;
-lstm_cell_500_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_500/BiasAdd/ReadVariableOpб#lstm_cell_500/MatMul/ReadVariableOpб%lstm_cell_500/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_500/MatMul/ReadVariableOpReadVariableOp,lstm_cell_500_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_500/MatMulMatMulstrided_slice_2:output:0+lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_500_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_500/MatMul_1MatMulzeros:output:0-lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_500/addAddV2lstm_cell_500/MatMul:product:0 lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_500_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_500/BiasAddBiasAddlstm_cell_500/add:z:0,lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_500/splitSplit&lstm_cell_500/split/split_dim:output:0lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_500/SigmoidSigmoidlstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_1Sigmoidlstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_500/mulMullstm_cell_500/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_500/ReluRelulstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_500/mul_1Mullstm_cell_500/Sigmoid:y:0 lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_500/add_1AddV2lstm_cell_500/mul:z:0lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_2Sigmoidlstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_500/Relu_1Relulstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_500/mul_2Mullstm_cell_500/Sigmoid_2:y:0"lstm_cell_500/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_500_matmul_readvariableop_resource.lstm_cell_500_matmul_1_readvariableop_resource-lstm_cell_500_biasadd_readvariableop_resource*
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
while_body_3028379*
condR
while_cond_3028378*K
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
NoOpNoOp%^lstm_cell_500/BiasAdd/ReadVariableOp$^lstm_cell_500/MatMul/ReadVariableOp&^lstm_cell_500/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_500/BiasAdd/ReadVariableOp$lstm_cell_500/BiasAdd/ReadVariableOp2J
#lstm_cell_500/MatMul/ReadVariableOp#lstm_cell_500/MatMul/ReadVariableOp2N
%lstm_cell_500/MatMul_1/ReadVariableOp%lstm_cell_500/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
РJ
Б
E__inference_lstm_171_layer_call_and_return_conditional_losses_3025778

inputs?
,lstm_cell_498_matmul_readvariableop_resource:	љA
.lstm_cell_498_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_498_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_498/BiasAdd/ReadVariableOpб#lstm_cell_498/MatMul/ReadVariableOpб%lstm_cell_498/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_498/MatMul/ReadVariableOpReadVariableOp,lstm_cell_498_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_498/MatMulMatMulstrided_slice_2:output:0+lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_498_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_498/MatMul_1MatMulzeros:output:0-lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_498/addAddV2lstm_cell_498/MatMul:product:0 lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_498_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_498/BiasAddBiasAddlstm_cell_498/add:z:0,lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_498/splitSplit&lstm_cell_498/split/split_dim:output:0lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_498/SigmoidSigmoidlstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_1Sigmoidlstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_498/mulMullstm_cell_498/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_498/ReluRelulstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_498/mul_1Mullstm_cell_498/Sigmoid:y:0 lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_498/add_1AddV2lstm_cell_498/mul:z:0lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_2Sigmoidlstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_498/Relu_1Relulstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_498/mul_2Mullstm_cell_498/Sigmoid_2:y:0"lstm_cell_498/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_498_matmul_readvariableop_resource.lstm_cell_498_matmul_1_readvariableop_resource-lstm_cell_498_biasadd_readvariableop_resource*
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
while_body_3025694*
condR
while_cond_3025693*K
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
NoOpNoOp%^lstm_cell_498/BiasAdd/ReadVariableOp$^lstm_cell_498/MatMul/ReadVariableOp&^lstm_cell_498/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_498/BiasAdd/ReadVariableOp$lstm_cell_498/BiasAdd/ReadVariableOp2J
#lstm_cell_498/MatMul/ReadVariableOp#lstm_cell_498/MatMul/ReadVariableOp2N
%lstm_cell_498/MatMul_1/ReadVariableOp%lstm_cell_498/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_3024847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3024847___redundant_placeholder05
1while_while_cond_3024847___redundant_placeholder15
1while_while_cond_3024847___redundant_placeholder25
1while_while_cond_3024847___redundant_placeholder3
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
while_cond_3024163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3024163___redundant_placeholder05
1while_while_cond_3024163___redundant_placeholder15
1while_while_cond_3024163___redundant_placeholder25
1while_while_cond_3024163___redundant_placeholder3
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
while_cond_3027762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3027762___redundant_placeholder05
1while_while_cond_3027762___redundant_placeholder15
1while_while_cond_3027762___redundant_placeholder25
1while_while_cond_3027762___redundant_placeholder3
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
ПJ
а
E__inference_lstm_173_layer_call_and_return_conditional_losses_3025232

inputs>
,lstm_cell_500_matmul_readvariableop_resource:2(@
.lstm_cell_500_matmul_1_readvariableop_resource:
(;
-lstm_cell_500_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_500/BiasAdd/ReadVariableOpб#lstm_cell_500/MatMul/ReadVariableOpб%lstm_cell_500/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_500/MatMul/ReadVariableOpReadVariableOp,lstm_cell_500_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_500/MatMulMatMulstrided_slice_2:output:0+lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_500_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_500/MatMul_1MatMulzeros:output:0-lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_500/addAddV2lstm_cell_500/MatMul:product:0 lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_500_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_500/BiasAddBiasAddlstm_cell_500/add:z:0,lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_500/splitSplit&lstm_cell_500/split/split_dim:output:0lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_500/SigmoidSigmoidlstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_1Sigmoidlstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_500/mulMullstm_cell_500/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_500/ReluRelulstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_500/mul_1Mullstm_cell_500/Sigmoid:y:0 lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_500/add_1AddV2lstm_cell_500/mul:z:0lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_2Sigmoidlstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_500/Relu_1Relulstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_500/mul_2Mullstm_cell_500/Sigmoid_2:y:0"lstm_cell_500/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_500_matmul_readvariableop_resource.lstm_cell_500_matmul_1_readvariableop_resource-lstm_cell_500_biasadd_readvariableop_resource*
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
while_body_3025148*
condR
while_cond_3025147*K
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
NoOpNoOp%^lstm_cell_500/BiasAdd/ReadVariableOp$^lstm_cell_500/MatMul/ReadVariableOp&^lstm_cell_500/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_500/BiasAdd/ReadVariableOp$lstm_cell_500/BiasAdd/ReadVariableOp2J
#lstm_cell_500/MatMul/ReadVariableOp#lstm_cell_500/MatMul/ReadVariableOp2N
%lstm_cell_500/MatMul_1/ReadVariableOp%lstm_cell_500/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_3025528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3025528___redundant_placeholder05
1while_while_cond_3025528___redundant_placeholder15
1while_while_cond_3025528___redundant_placeholder25
1while_while_cond_3025528___redundant_placeholder3
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
и

Ч
lstm_173_while_cond_3026810.
*lstm_173_while_lstm_173_while_loop_counter4
0lstm_173_while_lstm_173_while_maximum_iterations
lstm_173_while_placeholder 
lstm_173_while_placeholder_1 
lstm_173_while_placeholder_2 
lstm_173_while_placeholder_30
,lstm_173_while_less_lstm_173_strided_slice_1G
Clstm_173_while_lstm_173_while_cond_3026810___redundant_placeholder0G
Clstm_173_while_lstm_173_while_cond_3026810___redundant_placeholder1G
Clstm_173_while_lstm_173_while_cond_3026810___redundant_placeholder2G
Clstm_173_while_lstm_173_while_cond_3026810___redundant_placeholder3
lstm_173_while_identity
є
lstm_173/while/LessLesslstm_173_while_placeholder,lstm_173_while_less_lstm_173_strided_slice_1*
T0*
_output_shapes
: ]
lstm_173/while/IdentityIdentitylstm_173/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_173_while_identity lstm_173/while/Identity:output:0*(
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

lstm_172_while_body_3026672.
*lstm_172_while_lstm_172_while_loop_counter4
0lstm_172_while_lstm_172_while_maximum_iterations
lstm_172_while_placeholder 
lstm_172_while_placeholder_1 
lstm_172_while_placeholder_2 
lstm_172_while_placeholder_3-
)lstm_172_while_lstm_172_strided_slice_1_0i
elstm_172_while_tensorarrayv2read_tensorlistgetitem_lstm_172_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_172_while_lstm_cell_499_matmul_readvariableop_resource_0:	d╚R
?lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource_0:	2╚M
>lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource_0:	╚
lstm_172_while_identity
lstm_172_while_identity_1
lstm_172_while_identity_2
lstm_172_while_identity_3
lstm_172_while_identity_4
lstm_172_while_identity_5+
'lstm_172_while_lstm_172_strided_slice_1g
clstm_172_while_tensorarrayv2read_tensorlistgetitem_lstm_172_tensorarrayunstack_tensorlistfromtensorN
;lstm_172_while_lstm_cell_499_matmul_readvariableop_resource:	d╚P
=lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource:	2╚K
<lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource:	╚ѕб3lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOpб2lstm_172/while/lstm_cell_499/MatMul/ReadVariableOpб4lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOpЉ
@lstm_172/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_172/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_172_while_tensorarrayv2read_tensorlistgetitem_lstm_172_tensorarrayunstack_tensorlistfromtensor_0lstm_172_while_placeholderIlstm_172/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_172/while/lstm_cell_499/MatMul/ReadVariableOpReadVariableOp=lstm_172_while_lstm_cell_499_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_172/while/lstm_cell_499/MatMulMatMul9lstm_172/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp?lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_172/while/lstm_cell_499/MatMul_1MatMullstm_172_while_placeholder_2<lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_172/while/lstm_cell_499/addAddV2-lstm_172/while/lstm_cell_499/MatMul:product:0/lstm_172/while/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp>lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_172/while/lstm_cell_499/BiasAddBiasAdd$lstm_172/while/lstm_cell_499/add:z:0;lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_172/while/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_172/while/lstm_cell_499/splitSplit5lstm_172/while/lstm_cell_499/split/split_dim:output:0-lstm_172/while/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_172/while/lstm_cell_499/SigmoidSigmoid+lstm_172/while/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_172/while/lstm_cell_499/Sigmoid_1Sigmoid+lstm_172/while/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_172/while/lstm_cell_499/mulMul*lstm_172/while/lstm_cell_499/Sigmoid_1:y:0lstm_172_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_172/while/lstm_cell_499/ReluRelu+lstm_172/while/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_172/while/lstm_cell_499/mul_1Mul(lstm_172/while/lstm_cell_499/Sigmoid:y:0/lstm_172/while/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_172/while/lstm_cell_499/add_1AddV2$lstm_172/while/lstm_cell_499/mul:z:0&lstm_172/while/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_172/while/lstm_cell_499/Sigmoid_2Sigmoid+lstm_172/while/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_172/while/lstm_cell_499/Relu_1Relu&lstm_172/while/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_172/while/lstm_cell_499/mul_2Mul*lstm_172/while/lstm_cell_499/Sigmoid_2:y:01lstm_172/while/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_172/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_172_while_placeholder_1lstm_172_while_placeholder&lstm_172/while/lstm_cell_499/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_172/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_172/while/addAddV2lstm_172_while_placeholderlstm_172/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_172/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_172/while/add_1AddV2*lstm_172_while_lstm_172_while_loop_counterlstm_172/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_172/while/IdentityIdentitylstm_172/while/add_1:z:0^lstm_172/while/NoOp*
T0*
_output_shapes
: ј
lstm_172/while/Identity_1Identity0lstm_172_while_lstm_172_while_maximum_iterations^lstm_172/while/NoOp*
T0*
_output_shapes
: t
lstm_172/while/Identity_2Identitylstm_172/while/add:z:0^lstm_172/while/NoOp*
T0*
_output_shapes
: А
lstm_172/while/Identity_3IdentityClstm_172/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_172/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_172/while/Identity_4Identity&lstm_172/while/lstm_cell_499/mul_2:z:0^lstm_172/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_172/while/Identity_5Identity&lstm_172/while/lstm_cell_499/add_1:z:0^lstm_172/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_172/while/NoOpNoOp4^lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOp3^lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp5^lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_172_while_identity lstm_172/while/Identity:output:0"?
lstm_172_while_identity_1"lstm_172/while/Identity_1:output:0"?
lstm_172_while_identity_2"lstm_172/while/Identity_2:output:0"?
lstm_172_while_identity_3"lstm_172/while/Identity_3:output:0"?
lstm_172_while_identity_4"lstm_172/while/Identity_4:output:0"?
lstm_172_while_identity_5"lstm_172/while/Identity_5:output:0"T
'lstm_172_while_lstm_172_strided_slice_1)lstm_172_while_lstm_172_strided_slice_1_0"~
<lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource>lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource_0"ђ
=lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource?lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource_0"|
;lstm_172_while_lstm_cell_499_matmul_readvariableop_resource=lstm_172_while_lstm_cell_499_matmul_readvariableop_resource_0"╠
clstm_172_while_tensorarrayv2read_tensorlistgetitem_lstm_172_tensorarrayunstack_tensorlistfromtensorelstm_172_while_tensorarrayv2read_tensorlistgetitem_lstm_172_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOp3lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOp2h
2lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp2lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp2l
4lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp4lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp: 
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
Л8
┌
while_body_3027906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_499_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_499_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_499_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_499_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_499_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_499_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_499/BiasAdd/ReadVariableOpб)while/lstm_cell_499/MatMul/ReadVariableOpб+while/lstm_cell_499/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_499/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_499_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_499/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_499_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_499/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_499/addAddV2$while/lstm_cell_499/MatMul:product:0&while/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_499_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_499/BiasAddBiasAddwhile/lstm_cell_499/add:z:02while/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_499/splitSplit,while/lstm_cell_499/split/split_dim:output:0$while/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_499/SigmoidSigmoid"while/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_1Sigmoid"while/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_499/mulMul!while/lstm_cell_499/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_499/ReluRelu"while/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_499/mul_1Mulwhile/lstm_cell_499/Sigmoid:y:0&while/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_499/add_1AddV2while/lstm_cell_499/mul:z:0while/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_2Sigmoid"while/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_499/Relu_1Reluwhile/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_499/mul_2Mul!while/lstm_cell_499/Sigmoid_2:y:0(while/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_499/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_499/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_499/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_499/BiasAdd/ReadVariableOp*^while/lstm_cell_499/MatMul/ReadVariableOp,^while/lstm_cell_499/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_499_biasadd_readvariableop_resource5while_lstm_cell_499_biasadd_readvariableop_resource_0"n
4while_lstm_cell_499_matmul_1_readvariableop_resource6while_lstm_cell_499_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_499_matmul_readvariableop_resource4while_lstm_cell_499_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_499/BiasAdd/ReadVariableOp*while/lstm_cell_499/BiasAdd/ReadVariableOp2V
)while/lstm_cell_499/MatMul/ReadVariableOp)while/lstm_cell_499/MatMul/ReadVariableOp2Z
+while/lstm_cell_499/MatMul_1/ReadVariableOp+while/lstm_cell_499/MatMul_1/ReadVariableOp: 
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
Л8
┌
while_body_3028049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_499_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_499_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_499_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_499_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_499_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_499_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_499/BiasAdd/ReadVariableOpб)while/lstm_cell_499/MatMul/ReadVariableOpб+while/lstm_cell_499/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_499/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_499_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_499/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_499_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_499/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_499/addAddV2$while/lstm_cell_499/MatMul:product:0&while/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_499_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_499/BiasAddBiasAddwhile/lstm_cell_499/add:z:02while/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_499/splitSplit,while/lstm_cell_499/split/split_dim:output:0$while/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_499/SigmoidSigmoid"while/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_1Sigmoid"while/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_499/mulMul!while/lstm_cell_499/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_499/ReluRelu"while/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_499/mul_1Mulwhile/lstm_cell_499/Sigmoid:y:0&while/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_499/add_1AddV2while/lstm_cell_499/mul:z:0while/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_2Sigmoid"while/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_499/Relu_1Reluwhile/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_499/mul_2Mul!while/lstm_cell_499/Sigmoid_2:y:0(while/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_499/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_499/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_499/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_499/BiasAdd/ReadVariableOp*^while/lstm_cell_499/MatMul/ReadVariableOp,^while/lstm_cell_499/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_499_biasadd_readvariableop_resource5while_lstm_cell_499_biasadd_readvariableop_resource_0"n
4while_lstm_cell_499_matmul_1_readvariableop_resource6while_lstm_cell_499_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_499_matmul_readvariableop_resource4while_lstm_cell_499_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_499/BiasAdd/ReadVariableOp*while/lstm_cell_499/BiasAdd/ReadVariableOp2V
)while/lstm_cell_499/MatMul/ReadVariableOp)while/lstm_cell_499/MatMul/ReadVariableOp2Z
+while/lstm_cell_499/MatMul_1/ReadVariableOp+while/lstm_cell_499/MatMul_1/ReadVariableOp: 
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
љ
Х
*__inference_lstm_173_layer_call_fn_3028144
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3024583o
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
▀
ѕ
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3028866

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
В
ш
/__inference_lstm_cell_500_layer_call_fn_3028998

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
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3024646o
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
Л8
┌
while_body_3027620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_499_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_499_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_499_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_499_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_499_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_499_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_499/BiasAdd/ReadVariableOpб)while/lstm_cell_499/MatMul/ReadVariableOpб+while/lstm_cell_499/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_499/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_499_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_499/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_499_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_499/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_499/addAddV2$while/lstm_cell_499/MatMul:product:0&while/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_499_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_499/BiasAddBiasAddwhile/lstm_cell_499/add:z:02while/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_499/splitSplit,while/lstm_cell_499/split/split_dim:output:0$while/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_499/SigmoidSigmoid"while/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_1Sigmoid"while/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_499/mulMul!while/lstm_cell_499/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_499/ReluRelu"while/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_499/mul_1Mulwhile/lstm_cell_499/Sigmoid:y:0&while/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_499/add_1AddV2while/lstm_cell_499/mul:z:0while/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_2Sigmoid"while/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_499/Relu_1Reluwhile/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_499/mul_2Mul!while/lstm_cell_499/Sigmoid_2:y:0(while/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_499/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_499/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_499/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_499/BiasAdd/ReadVariableOp*^while/lstm_cell_499/MatMul/ReadVariableOp,^while/lstm_cell_499/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_499_biasadd_readvariableop_resource5while_lstm_cell_499_biasadd_readvariableop_resource_0"n
4while_lstm_cell_499_matmul_1_readvariableop_resource6while_lstm_cell_499_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_499_matmul_readvariableop_resource4while_lstm_cell_499_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_499/BiasAdd/ReadVariableOp*while/lstm_cell_499/BiasAdd/ReadVariableOp2V
)while/lstm_cell_499/MatMul/ReadVariableOp)while/lstm_cell_499/MatMul/ReadVariableOp2Z
+while/lstm_cell_499/MatMul_1/ReadVariableOp+while/lstm_cell_499/MatMul_1/ReadVariableOp: 
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
while_cond_3024997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3024997___redundant_placeholder05
1while_while_cond_3024997___redundant_placeholder15
1while_while_cond_3024997___redundant_placeholder25
1while_while_cond_3024997___redundant_placeholder3
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
сS
й
)sequential_57_lstm_172_while_body_3023504J
Fsequential_57_lstm_172_while_sequential_57_lstm_172_while_loop_counterP
Lsequential_57_lstm_172_while_sequential_57_lstm_172_while_maximum_iterations,
(sequential_57_lstm_172_while_placeholder.
*sequential_57_lstm_172_while_placeholder_1.
*sequential_57_lstm_172_while_placeholder_2.
*sequential_57_lstm_172_while_placeholder_3I
Esequential_57_lstm_172_while_sequential_57_lstm_172_strided_slice_1_0є
Ђsequential_57_lstm_172_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_172_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_57_lstm_172_while_lstm_cell_499_matmul_readvariableop_resource_0:	d╚`
Msequential_57_lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource_0:	2╚[
Lsequential_57_lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource_0:	╚)
%sequential_57_lstm_172_while_identity+
'sequential_57_lstm_172_while_identity_1+
'sequential_57_lstm_172_while_identity_2+
'sequential_57_lstm_172_while_identity_3+
'sequential_57_lstm_172_while_identity_4+
'sequential_57_lstm_172_while_identity_5G
Csequential_57_lstm_172_while_sequential_57_lstm_172_strided_slice_1Ѓ
sequential_57_lstm_172_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_172_tensorarrayunstack_tensorlistfromtensor\
Isequential_57_lstm_172_while_lstm_cell_499_matmul_readvariableop_resource:	d╚^
Ksequential_57_lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource:	2╚Y
Jsequential_57_lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource:	╚ѕбAsequential_57/lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOpб@sequential_57/lstm_172/while/lstm_cell_499/MatMul/ReadVariableOpбBsequential_57/lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOpЪ
Nsequential_57/lstm_172/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   џ
@sequential_57/lstm_172/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_57_lstm_172_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_172_tensorarrayunstack_tensorlistfromtensor_0(sequential_57_lstm_172_while_placeholderWsequential_57/lstm_172/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0═
@sequential_57/lstm_172/while/lstm_cell_499/MatMul/ReadVariableOpReadVariableOpKsequential_57_lstm_172_while_lstm_cell_499_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0Ђ
1sequential_57/lstm_172/while/lstm_cell_499/MatMulMatMulGsequential_57/lstm_172/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_57/lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Л
Bsequential_57/lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOpMsequential_57_lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0У
3sequential_57/lstm_172/while/lstm_cell_499/MatMul_1MatMul*sequential_57_lstm_172_while_placeholder_2Jsequential_57/lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Т
.sequential_57/lstm_172/while/lstm_cell_499/addAddV2;sequential_57/lstm_172/while/lstm_cell_499/MatMul:product:0=sequential_57/lstm_172/while/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚╦
Asequential_57/lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOpLsequential_57_lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0№
2sequential_57/lstm_172/while/lstm_cell_499/BiasAddBiasAdd2sequential_57/lstm_172/while/lstm_cell_499/add:z:0Isequential_57/lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚|
:sequential_57/lstm_172/while/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_57/lstm_172/while/lstm_cell_499/splitSplitCsequential_57/lstm_172/while/lstm_cell_499/split/split_dim:output:0;sequential_57/lstm_172/while/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitф
2sequential_57/lstm_172/while/lstm_cell_499/SigmoidSigmoid9sequential_57/lstm_172/while/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2г
4sequential_57/lstm_172/while/lstm_cell_499/Sigmoid_1Sigmoid9sequential_57/lstm_172/while/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2═
.sequential_57/lstm_172/while/lstm_cell_499/mulMul8sequential_57/lstm_172/while/lstm_cell_499/Sigmoid_1:y:0*sequential_57_lstm_172_while_placeholder_3*
T0*'
_output_shapes
:         2ц
/sequential_57/lstm_172/while/lstm_cell_499/ReluRelu9sequential_57/lstm_172/while/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Я
0sequential_57/lstm_172/while/lstm_cell_499/mul_1Mul6sequential_57/lstm_172/while/lstm_cell_499/Sigmoid:y:0=sequential_57/lstm_172/while/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2Н
0sequential_57/lstm_172/while/lstm_cell_499/add_1AddV22sequential_57/lstm_172/while/lstm_cell_499/mul:z:04sequential_57/lstm_172/while/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2г
4sequential_57/lstm_172/while/lstm_cell_499/Sigmoid_2Sigmoid9sequential_57/lstm_172/while/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2А
1sequential_57/lstm_172/while/lstm_cell_499/Relu_1Relu4sequential_57/lstm_172/while/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2С
0sequential_57/lstm_172/while/lstm_cell_499/mul_2Mul8sequential_57/lstm_172/while/lstm_cell_499/Sigmoid_2:y:0?sequential_57/lstm_172/while/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2б
Asequential_57/lstm_172/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_57_lstm_172_while_placeholder_1(sequential_57_lstm_172_while_placeholder4sequential_57/lstm_172/while/lstm_cell_499/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_57/lstm_172/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_57/lstm_172/while/addAddV2(sequential_57_lstm_172_while_placeholder+sequential_57/lstm_172/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_57/lstm_172/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_57/lstm_172/while/add_1AddV2Fsequential_57_lstm_172_while_sequential_57_lstm_172_while_loop_counter-sequential_57/lstm_172/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_57/lstm_172/while/IdentityIdentity&sequential_57/lstm_172/while/add_1:z:0"^sequential_57/lstm_172/while/NoOp*
T0*
_output_shapes
: к
'sequential_57/lstm_172/while/Identity_1IdentityLsequential_57_lstm_172_while_sequential_57_lstm_172_while_maximum_iterations"^sequential_57/lstm_172/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_57/lstm_172/while/Identity_2Identity$sequential_57/lstm_172/while/add:z:0"^sequential_57/lstm_172/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_57/lstm_172/while/Identity_3IdentityQsequential_57/lstm_172/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_57/lstm_172/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_57/lstm_172/while/Identity_4Identity4sequential_57/lstm_172/while/lstm_cell_499/mul_2:z:0"^sequential_57/lstm_172/while/NoOp*
T0*'
_output_shapes
:         2┐
'sequential_57/lstm_172/while/Identity_5Identity4sequential_57/lstm_172/while/lstm_cell_499/add_1:z:0"^sequential_57/lstm_172/while/NoOp*
T0*'
_output_shapes
:         2»
!sequential_57/lstm_172/while/NoOpNoOpB^sequential_57/lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOpA^sequential_57/lstm_172/while/lstm_cell_499/MatMul/ReadVariableOpC^sequential_57/lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_57_lstm_172_while_identity.sequential_57/lstm_172/while/Identity:output:0"[
'sequential_57_lstm_172_while_identity_10sequential_57/lstm_172/while/Identity_1:output:0"[
'sequential_57_lstm_172_while_identity_20sequential_57/lstm_172/while/Identity_2:output:0"[
'sequential_57_lstm_172_while_identity_30sequential_57/lstm_172/while/Identity_3:output:0"[
'sequential_57_lstm_172_while_identity_40sequential_57/lstm_172/while/Identity_4:output:0"[
'sequential_57_lstm_172_while_identity_50sequential_57/lstm_172/while/Identity_5:output:0"џ
Jsequential_57_lstm_172_while_lstm_cell_499_biasadd_readvariableop_resourceLsequential_57_lstm_172_while_lstm_cell_499_biasadd_readvariableop_resource_0"ю
Ksequential_57_lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resourceMsequential_57_lstm_172_while_lstm_cell_499_matmul_1_readvariableop_resource_0"ў
Isequential_57_lstm_172_while_lstm_cell_499_matmul_readvariableop_resourceKsequential_57_lstm_172_while_lstm_cell_499_matmul_readvariableop_resource_0"ї
Csequential_57_lstm_172_while_sequential_57_lstm_172_strided_slice_1Esequential_57_lstm_172_while_sequential_57_lstm_172_strided_slice_1_0"Ё
sequential_57_lstm_172_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_172_tensorarrayunstack_tensorlistfromtensorЂsequential_57_lstm_172_while_tensorarrayv2read_tensorlistgetitem_sequential_57_lstm_172_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2є
Asequential_57/lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOpAsequential_57/lstm_172/while/lstm_cell_499/BiasAdd/ReadVariableOp2ё
@sequential_57/lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp@sequential_57/lstm_172/while/lstm_cell_499/MatMul/ReadVariableOp2ѕ
Bsequential_57/lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOpBsequential_57/lstm_172/while/lstm_cell_499/MatMul_1/ReadVariableOp: 
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
к
э
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025257

inputs#
lstm_171_3024933:	љ#
lstm_171_3024935:	dљ
lstm_171_3024937:	љ#
lstm_172_3025083:	d╚#
lstm_172_3025085:	2╚
lstm_172_3025087:	╚"
lstm_173_3025233:2("
lstm_173_3025235:
(
lstm_173_3025237:("
dense_57_3025251:

dense_57_3025253:
identityѕб dense_57/StatefulPartitionedCallб lstm_171/StatefulPartitionedCallб lstm_172/StatefulPartitionedCallб lstm_173/StatefulPartitionedCallІ
 lstm_171/StatefulPartitionedCallStatefulPartitionedCallinputslstm_171_3024933lstm_171_3024935lstm_171_3024937*
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3024932«
 lstm_172/StatefulPartitionedCallStatefulPartitionedCall)lstm_171/StatefulPartitionedCall:output:0lstm_172_3025083lstm_172_3025085lstm_172_3025087*
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3025082ф
 lstm_173/StatefulPartitionedCallStatefulPartitionedCall)lstm_172/StatefulPartitionedCall:output:0lstm_173_3025233lstm_173_3025235lstm_173_3025237*
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3025232ќ
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)lstm_173/StatefulPartitionedCall:output:0dense_57_3025251dense_57_3025253*
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
E__inference_dense_57_layer_call_and_return_conditional_losses_3025250x
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_57/StatefulPartitionedCall!^lstm_171/StatefulPartitionedCall!^lstm_172/StatefulPartitionedCall!^lstm_173/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 lstm_171/StatefulPartitionedCall lstm_171/StatefulPartitionedCall2D
 lstm_172/StatefulPartitionedCall lstm_172/StatefulPartitionedCall2D
 lstm_173/StatefulPartitionedCall lstm_173/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_172_layer_call_and_return_conditional_losses_3025613

inputs?
,lstm_cell_499_matmul_readvariableop_resource:	d╚A
.lstm_cell_499_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_499_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_499/BiasAdd/ReadVariableOpб#lstm_cell_499/MatMul/ReadVariableOpб%lstm_cell_499/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_499/MatMul/ReadVariableOpReadVariableOp,lstm_cell_499_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_499/MatMulMatMulstrided_slice_2:output:0+lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_499_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_499/MatMul_1MatMulzeros:output:0-lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_499/addAddV2lstm_cell_499/MatMul:product:0 lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_499_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_499/BiasAddBiasAddlstm_cell_499/add:z:0,lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_499/splitSplit&lstm_cell_499/split/split_dim:output:0lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_499/SigmoidSigmoidlstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_1Sigmoidlstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_499/mulMullstm_cell_499/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_499/ReluRelulstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_499/mul_1Mullstm_cell_499/Sigmoid:y:0 lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_499/add_1AddV2lstm_cell_499/mul:z:0lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_2Sigmoidlstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_499/Relu_1Relulstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_499/mul_2Mullstm_cell_499/Sigmoid_2:y:0"lstm_cell_499/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_499_matmul_readvariableop_resource.lstm_cell_499_matmul_1_readvariableop_resource-lstm_cell_499_biasadd_readvariableop_resource*
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
while_body_3025529*
condR
while_cond_3025528*K
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
NoOpNoOp%^lstm_cell_499/BiasAdd/ReadVariableOp$^lstm_cell_499/MatMul/ReadVariableOp&^lstm_cell_499/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_499/BiasAdd/ReadVariableOp$lstm_cell_499/BiasAdd/ReadVariableOp2J
#lstm_cell_499/MatMul/ReadVariableOp#lstm_cell_499/MatMul/ReadVariableOp2N
%lstm_cell_499/MatMul_1/ReadVariableOp%lstm_cell_499/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Л8
┌
while_body_3027147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_498_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_498_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_498_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_498_matmul_readvariableop_resource:	љG
4while_lstm_cell_498_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_498_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_498/BiasAdd/ReadVariableOpб)while/lstm_cell_498/MatMul/ReadVariableOpб+while/lstm_cell_498/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_498/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_498_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_498/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_498_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_498/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_498/addAddV2$while/lstm_cell_498/MatMul:product:0&while/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_498_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_498/BiasAddBiasAddwhile/lstm_cell_498/add:z:02while/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_498/splitSplit,while/lstm_cell_498/split/split_dim:output:0$while/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_498/SigmoidSigmoid"while/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_1Sigmoid"while/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_498/mulMul!while/lstm_cell_498/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_498/ReluRelu"while/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_498/mul_1Mulwhile/lstm_cell_498/Sigmoid:y:0&while/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_498/add_1AddV2while/lstm_cell_498/mul:z:0while/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_2Sigmoid"while/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_498/Relu_1Reluwhile/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_498/mul_2Mul!while/lstm_cell_498/Sigmoid_2:y:0(while/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_498/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_498/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_498/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_498/BiasAdd/ReadVariableOp*^while/lstm_cell_498/MatMul/ReadVariableOp,^while/lstm_cell_498/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_498_biasadd_readvariableop_resource5while_lstm_cell_498_biasadd_readvariableop_resource_0"n
4while_lstm_cell_498_matmul_1_readvariableop_resource6while_lstm_cell_498_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_498_matmul_readvariableop_resource4while_lstm_cell_498_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_498/BiasAdd/ReadVariableOp*while/lstm_cell_498/BiasAdd/ReadVariableOp2V
)while/lstm_cell_498/MatMul/ReadVariableOp)while/lstm_cell_498/MatMul/ReadVariableOp2Z
+while/lstm_cell_498/MatMul_1/ReadVariableOp+while/lstm_cell_498/MatMul_1/ReadVariableOp: 
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
»8
ј
E__inference_lstm_172_layer_call_and_return_conditional_losses_3024424

inputs(
lstm_cell_499_3024342:	d╚(
lstm_cell_499_3024344:	2╚$
lstm_cell_499_3024346:	╚
identityѕб%lstm_cell_499/StatefulPartitionedCallбwhile;
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
%lstm_cell_499/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_499_3024342lstm_cell_499_3024344lstm_cell_499_3024346*
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
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3024296n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_499_3024342lstm_cell_499_3024344lstm_cell_499_3024346*
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
while_body_3024355*
condR
while_cond_3024354*K
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
NoOpNoOp&^lstm_cell_499/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_499/StatefulPartitionedCall%lstm_cell_499/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
Ј#
ы
while_body_3024355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_499_3024379_0:	d╚0
while_lstm_cell_499_3024381_0:	2╚,
while_lstm_cell_499_3024383_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_499_3024379:	d╚.
while_lstm_cell_499_3024381:	2╚*
while_lstm_cell_499_3024383:	╚ѕб+while/lstm_cell_499/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_499/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_499_3024379_0while_lstm_cell_499_3024381_0while_lstm_cell_499_3024383_0*
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
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3024296П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_499/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_499/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_499/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_499/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_499_3024379while_lstm_cell_499_3024379_0"<
while_lstm_cell_499_3024381while_lstm_cell_499_3024381_0"<
while_lstm_cell_499_3024383while_lstm_cell_499_3024383_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_499/StatefulPartitionedCall+while/lstm_cell_499/StatefulPartitionedCall: 
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
и

Ч
lstm_172_while_cond_3026671.
*lstm_172_while_lstm_172_while_loop_counter4
0lstm_172_while_lstm_172_while_maximum_iterations
lstm_172_while_placeholder 
lstm_172_while_placeholder_1 
lstm_172_while_placeholder_2 
lstm_172_while_placeholder_30
,lstm_172_while_less_lstm_172_strided_slice_1G
Clstm_172_while_lstm_172_while_cond_3026671___redundant_placeholder0G
Clstm_172_while_lstm_172_while_cond_3026671___redundant_placeholder1G
Clstm_172_while_lstm_172_while_cond_3026671___redundant_placeholder2G
Clstm_172_while_lstm_172_while_cond_3026671___redundant_placeholder3
lstm_172_while_identity
є
lstm_172/while/LessLesslstm_172_while_placeholder,lstm_172_while_less_lstm_172_strided_slice_1*
T0*
_output_shapes
: ]
lstm_172/while/IdentityIdentitylstm_172/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_172_while_identity lstm_172/while/Identity:output:0*(
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
Ѓ
и
*__inference_lstm_172_layer_call_fn_3027550

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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3025082s
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
║
╚
while_cond_3024704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3024704___redundant_placeholder05
1while_while_cond_3024704___redundant_placeholder15
1while_while_cond_3024704___redundant_placeholder25
1while_while_cond_3024704___redundant_placeholder3
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
е8
І
E__inference_lstm_173_layer_call_and_return_conditional_losses_3024583

inputs'
lstm_cell_500_3024501:2('
lstm_cell_500_3024503:
(#
lstm_cell_500_3024505:(
identityѕб%lstm_cell_500/StatefulPartitionedCallбwhile;
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
%lstm_cell_500/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_500_3024501lstm_cell_500_3024503lstm_cell_500_3024505*
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
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3024500n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_500_3024501lstm_cell_500_3024503lstm_cell_500_3024505*
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
while_body_3024514*
condR
while_cond_3024513*K
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
NoOpNoOp&^lstm_cell_500/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_500/StatefulPartitionedCall%lstm_cell_500/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
ПJ
а
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028606

inputs>
,lstm_cell_500_matmul_readvariableop_resource:2(@
.lstm_cell_500_matmul_1_readvariableop_resource:
(;
-lstm_cell_500_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_500/BiasAdd/ReadVariableOpб#lstm_cell_500/MatMul/ReadVariableOpб%lstm_cell_500/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_500/MatMul/ReadVariableOpReadVariableOp,lstm_cell_500_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_500/MatMulMatMulstrided_slice_2:output:0+lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_500_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_500/MatMul_1MatMulzeros:output:0-lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_500/addAddV2lstm_cell_500/MatMul:product:0 lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_500_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_500/BiasAddBiasAddlstm_cell_500/add:z:0,lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_500/splitSplit&lstm_cell_500/split/split_dim:output:0lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_500/SigmoidSigmoidlstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_1Sigmoidlstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_500/mulMullstm_cell_500/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_500/ReluRelulstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_500/mul_1Mullstm_cell_500/Sigmoid:y:0 lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_500/add_1AddV2lstm_cell_500/mul:z:0lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_500/Sigmoid_2Sigmoidlstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_500/Relu_1Relulstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_500/mul_2Mullstm_cell_500/Sigmoid_2:y:0"lstm_cell_500/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_500_matmul_readvariableop_resource.lstm_cell_500_matmul_1_readvariableop_resource-lstm_cell_500_biasadd_readvariableop_resource*
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
while_body_3028522*
condR
while_cond_3028521*K
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
NoOpNoOp%^lstm_cell_500/BiasAdd/ReadVariableOp$^lstm_cell_500/MatMul/ReadVariableOp&^lstm_cell_500/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_500/BiasAdd/ReadVariableOp$lstm_cell_500/BiasAdd/ReadVariableOp2J
#lstm_cell_500/MatMul/ReadVariableOp#lstm_cell_500/MatMul/ReadVariableOp2N
%lstm_cell_500/MatMul_1/ReadVariableOp%lstm_cell_500/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
┐
ћ
)sequential_57_lstm_173_while_cond_3023642J
Fsequential_57_lstm_173_while_sequential_57_lstm_173_while_loop_counterP
Lsequential_57_lstm_173_while_sequential_57_lstm_173_while_maximum_iterations,
(sequential_57_lstm_173_while_placeholder.
*sequential_57_lstm_173_while_placeholder_1.
*sequential_57_lstm_173_while_placeholder_2.
*sequential_57_lstm_173_while_placeholder_3L
Hsequential_57_lstm_173_while_less_sequential_57_lstm_173_strided_slice_1c
_sequential_57_lstm_173_while_sequential_57_lstm_173_while_cond_3023642___redundant_placeholder0c
_sequential_57_lstm_173_while_sequential_57_lstm_173_while_cond_3023642___redundant_placeholder1c
_sequential_57_lstm_173_while_sequential_57_lstm_173_while_cond_3023642___redundant_placeholder2c
_sequential_57_lstm_173_while_sequential_57_lstm_173_while_cond_3023642___redundant_placeholder3)
%sequential_57_lstm_173_while_identity
Й
!sequential_57/lstm_173/while/LessLess(sequential_57_lstm_173_while_placeholderHsequential_57_lstm_173_while_less_sequential_57_lstm_173_strided_slice_1*
T0*
_output_shapes
: y
%sequential_57/lstm_173/while/IdentityIdentity%sequential_57/lstm_173/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_57_lstm_173_while_identity.sequential_57/lstm_173/while/Identity:output:0*(
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
Л8
┌
while_body_3027290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_498_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_498_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_498_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_498_matmul_readvariableop_resource:	љG
4while_lstm_cell_498_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_498_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_498/BiasAdd/ReadVariableOpб)while/lstm_cell_498/MatMul/ReadVariableOpб+while/lstm_cell_498/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_498/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_498_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_498/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_498_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_498/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_498/addAddV2$while/lstm_cell_498/MatMul:product:0&while/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_498_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_498/BiasAddBiasAddwhile/lstm_cell_498/add:z:02while/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_498/splitSplit,while/lstm_cell_498/split/split_dim:output:0$while/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_498/SigmoidSigmoid"while/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_1Sigmoid"while/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_498/mulMul!while/lstm_cell_498/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_498/ReluRelu"while/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_498/mul_1Mulwhile/lstm_cell_498/Sigmoid:y:0&while/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_498/add_1AddV2while/lstm_cell_498/mul:z:0while/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_498/Sigmoid_2Sigmoid"while/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_498/Relu_1Reluwhile/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_498/mul_2Mul!while/lstm_cell_498/Sigmoid_2:y:0(while/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_498/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_498/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_498/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_498/BiasAdd/ReadVariableOp*^while/lstm_cell_498/MatMul/ReadVariableOp,^while/lstm_cell_498/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_498_biasadd_readvariableop_resource5while_lstm_cell_498_biasadd_readvariableop_resource_0"n
4while_lstm_cell_498_matmul_1_readvariableop_resource6while_lstm_cell_498_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_498_matmul_readvariableop_resource4while_lstm_cell_498_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_498/BiasAdd/ReadVariableOp*while/lstm_cell_498/BiasAdd/ReadVariableOp2V
)while/lstm_cell_498/MatMul/ReadVariableOp)while/lstm_cell_498/MatMul/ReadVariableOp2Z
+while/lstm_cell_498/MatMul_1/ReadVariableOp+while/lstm_cell_498/MatMul_1/ReadVariableOp: 
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
»8
ј
E__inference_lstm_172_layer_call_and_return_conditional_losses_3024233

inputs(
lstm_cell_499_3024151:	d╚(
lstm_cell_499_3024153:	2╚$
lstm_cell_499_3024155:	╚
identityѕб%lstm_cell_499/StatefulPartitionedCallбwhile;
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
%lstm_cell_499/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_499_3024151lstm_cell_499_3024153lstm_cell_499_3024155*
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
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3024150n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_499_3024151lstm_cell_499_3024153lstm_cell_499_3024155*
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
while_body_3024164*
condR
while_cond_3024163*K
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
NoOpNoOp&^lstm_cell_499/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_499/StatefulPartitionedCall%lstm_cell_499/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
▄

Џ
/__inference_sequential_57_layer_call_fn_3026020

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
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025257o
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
АC
Щ

lstm_171_while_body_3026106.
*lstm_171_while_lstm_171_while_loop_counter4
0lstm_171_while_lstm_171_while_maximum_iterations
lstm_171_while_placeholder 
lstm_171_while_placeholder_1 
lstm_171_while_placeholder_2 
lstm_171_while_placeholder_3-
)lstm_171_while_lstm_171_strided_slice_1_0i
elstm_171_while_tensorarrayv2read_tensorlistgetitem_lstm_171_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_171_while_lstm_cell_498_matmul_readvariableop_resource_0:	љR
?lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource_0:	dљM
>lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource_0:	љ
lstm_171_while_identity
lstm_171_while_identity_1
lstm_171_while_identity_2
lstm_171_while_identity_3
lstm_171_while_identity_4
lstm_171_while_identity_5+
'lstm_171_while_lstm_171_strided_slice_1g
clstm_171_while_tensorarrayv2read_tensorlistgetitem_lstm_171_tensorarrayunstack_tensorlistfromtensorN
;lstm_171_while_lstm_cell_498_matmul_readvariableop_resource:	љP
=lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource:	dљK
<lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource:	љѕб3lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOpб2lstm_171/while/lstm_cell_498/MatMul/ReadVariableOpб4lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOpЉ
@lstm_171/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_171/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_171_while_tensorarrayv2read_tensorlistgetitem_lstm_171_tensorarrayunstack_tensorlistfromtensor_0lstm_171_while_placeholderIlstm_171/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_171/while/lstm_cell_498/MatMul/ReadVariableOpReadVariableOp=lstm_171_while_lstm_cell_498_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_171/while/lstm_cell_498/MatMulMatMul9lstm_171/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp?lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_171/while/lstm_cell_498/MatMul_1MatMullstm_171_while_placeholder_2<lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_171/while/lstm_cell_498/addAddV2-lstm_171/while/lstm_cell_498/MatMul:product:0/lstm_171/while/lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp>lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_171/while/lstm_cell_498/BiasAddBiasAdd$lstm_171/while/lstm_cell_498/add:z:0;lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_171/while/lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_171/while/lstm_cell_498/splitSplit5lstm_171/while/lstm_cell_498/split/split_dim:output:0-lstm_171/while/lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_171/while/lstm_cell_498/SigmoidSigmoid+lstm_171/while/lstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_171/while/lstm_cell_498/Sigmoid_1Sigmoid+lstm_171/while/lstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_171/while/lstm_cell_498/mulMul*lstm_171/while/lstm_cell_498/Sigmoid_1:y:0lstm_171_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_171/while/lstm_cell_498/ReluRelu+lstm_171/while/lstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_171/while/lstm_cell_498/mul_1Mul(lstm_171/while/lstm_cell_498/Sigmoid:y:0/lstm_171/while/lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_171/while/lstm_cell_498/add_1AddV2$lstm_171/while/lstm_cell_498/mul:z:0&lstm_171/while/lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_171/while/lstm_cell_498/Sigmoid_2Sigmoid+lstm_171/while/lstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_171/while/lstm_cell_498/Relu_1Relu&lstm_171/while/lstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_171/while/lstm_cell_498/mul_2Mul*lstm_171/while/lstm_cell_498/Sigmoid_2:y:01lstm_171/while/lstm_cell_498/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_171/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_171_while_placeholder_1lstm_171_while_placeholder&lstm_171/while/lstm_cell_498/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_171/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_171/while/addAddV2lstm_171_while_placeholderlstm_171/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_171/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_171/while/add_1AddV2*lstm_171_while_lstm_171_while_loop_counterlstm_171/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_171/while/IdentityIdentitylstm_171/while/add_1:z:0^lstm_171/while/NoOp*
T0*
_output_shapes
: ј
lstm_171/while/Identity_1Identity0lstm_171_while_lstm_171_while_maximum_iterations^lstm_171/while/NoOp*
T0*
_output_shapes
: t
lstm_171/while/Identity_2Identitylstm_171/while/add:z:0^lstm_171/while/NoOp*
T0*
_output_shapes
: А
lstm_171/while/Identity_3IdentityClstm_171/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_171/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_171/while/Identity_4Identity&lstm_171/while/lstm_cell_498/mul_2:z:0^lstm_171/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_171/while/Identity_5Identity&lstm_171/while/lstm_cell_498/add_1:z:0^lstm_171/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_171/while/NoOpNoOp4^lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOp3^lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp5^lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_171_while_identity lstm_171/while/Identity:output:0"?
lstm_171_while_identity_1"lstm_171/while/Identity_1:output:0"?
lstm_171_while_identity_2"lstm_171/while/Identity_2:output:0"?
lstm_171_while_identity_3"lstm_171/while/Identity_3:output:0"?
lstm_171_while_identity_4"lstm_171/while/Identity_4:output:0"?
lstm_171_while_identity_5"lstm_171/while/Identity_5:output:0"T
'lstm_171_while_lstm_171_strided_slice_1)lstm_171_while_lstm_171_strided_slice_1_0"~
<lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource>lstm_171_while_lstm_cell_498_biasadd_readvariableop_resource_0"ђ
=lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource?lstm_171_while_lstm_cell_498_matmul_1_readvariableop_resource_0"|
;lstm_171_while_lstm_cell_498_matmul_readvariableop_resource=lstm_171_while_lstm_cell_498_matmul_readvariableop_resource_0"╠
clstm_171_while_tensorarrayv2read_tensorlistgetitem_lstm_171_tensorarrayunstack_tensorlistfromtensorelstm_171_while_tensorarrayv2read_tensorlistgetitem_lstm_171_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOp3lstm_171/while/lstm_cell_498/BiasAdd/ReadVariableOp2h
2lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp2lstm_171/while/lstm_cell_498/MatMul/ReadVariableOp2l
4lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp4lstm_171/while/lstm_cell_498/MatMul_1/ReadVariableOp: 
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
Ѕ#
в
while_body_3024705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_500_3024729_0:2(/
while_lstm_cell_500_3024731_0:
(+
while_lstm_cell_500_3024733_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_500_3024729:2(-
while_lstm_cell_500_3024731:
()
while_lstm_cell_500_3024733:(ѕб+while/lstm_cell_500/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_500/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_500_3024729_0while_lstm_cell_500_3024731_0while_lstm_cell_500_3024733_0*
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
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3024646П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_500/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_500/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_500/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_500/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_500_3024729while_lstm_cell_500_3024729_0"<
while_lstm_cell_500_3024731while_lstm_cell_500_3024731_0"<
while_lstm_cell_500_3024733while_lstm_cell_500_3024733_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_500/StatefulPartitionedCall+while/lstm_cell_500/StatefulPartitionedCall: 
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
while_cond_3027905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3027905___redundant_placeholder05
1while_while_cond_3027905___redundant_placeholder15
1while_while_cond_3027905___redundant_placeholder25
1while_while_cond_3027905___redundant_placeholder3
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
аK
Ц
E__inference_lstm_172_layer_call_and_return_conditional_losses_3027704
inputs_0?
,lstm_cell_499_matmul_readvariableop_resource:	d╚A
.lstm_cell_499_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_499_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_499/BiasAdd/ReadVariableOpб#lstm_cell_499/MatMul/ReadVariableOpб%lstm_cell_499/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_499/MatMul/ReadVariableOpReadVariableOp,lstm_cell_499_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_499/MatMulMatMulstrided_slice_2:output:0+lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_499_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_499/MatMul_1MatMulzeros:output:0-lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_499/addAddV2lstm_cell_499/MatMul:product:0 lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_499_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_499/BiasAddBiasAddlstm_cell_499/add:z:0,lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_499/splitSplit&lstm_cell_499/split/split_dim:output:0lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_499/SigmoidSigmoidlstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_1Sigmoidlstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_499/mulMullstm_cell_499/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_499/ReluRelulstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_499/mul_1Mullstm_cell_499/Sigmoid:y:0 lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_499/add_1AddV2lstm_cell_499/mul:z:0lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_2Sigmoidlstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_499/Relu_1Relulstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_499/mul_2Mullstm_cell_499/Sigmoid_2:y:0"lstm_cell_499/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_499_matmul_readvariableop_resource.lstm_cell_499_matmul_1_readvariableop_resource-lstm_cell_499_biasadd_readvariableop_resource*
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
while_body_3027620*
condR
while_cond_3027619*K
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
NoOpNoOp%^lstm_cell_499/BiasAdd/ReadVariableOp$^lstm_cell_499/MatMul/ReadVariableOp&^lstm_cell_499/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_499/BiasAdd/ReadVariableOp$lstm_cell_499/BiasAdd/ReadVariableOp2J
#lstm_cell_499/MatMul/ReadVariableOp#lstm_cell_499/MatMul/ReadVariableOp2N
%lstm_cell_499/MatMul_1/ReadVariableOp%lstm_cell_499/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
┬

Ў
%__inference_signature_wrapper_3025993
lstm_171_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_171_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3023733o
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
_user_specified_namelstm_171_input
аK
Ц
E__inference_lstm_172_layer_call_and_return_conditional_losses_3027847
inputs_0?
,lstm_cell_499_matmul_readvariableop_resource:	d╚A
.lstm_cell_499_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_499_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_499/BiasAdd/ReadVariableOpб#lstm_cell_499/MatMul/ReadVariableOpб%lstm_cell_499/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_499/MatMul/ReadVariableOpReadVariableOp,lstm_cell_499_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_499/MatMulMatMulstrided_slice_2:output:0+lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_499_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_499/MatMul_1MatMulzeros:output:0-lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_499/addAddV2lstm_cell_499/MatMul:product:0 lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_499_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_499/BiasAddBiasAddlstm_cell_499/add:z:0,lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_499/splitSplit&lstm_cell_499/split/split_dim:output:0lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_499/SigmoidSigmoidlstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_1Sigmoidlstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_499/mulMullstm_cell_499/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_499/ReluRelulstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_499/mul_1Mullstm_cell_499/Sigmoid:y:0 lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_499/add_1AddV2lstm_cell_499/mul:z:0lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_499/Sigmoid_2Sigmoidlstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_499/Relu_1Relulstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_499/mul_2Mullstm_cell_499/Sigmoid_2:y:0"lstm_cell_499/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_499_matmul_readvariableop_resource.lstm_cell_499_matmul_1_readvariableop_resource-lstm_cell_499_biasadd_readvariableop_resource*
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
while_body_3027763*
condR
while_cond_3027762*K
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
NoOpNoOp%^lstm_cell_499/BiasAdd/ReadVariableOp$^lstm_cell_499/MatMul/ReadVariableOp&^lstm_cell_499/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_499/BiasAdd/ReadVariableOp$lstm_cell_499/BiasAdd/ReadVariableOp2J
#lstm_cell_499/MatMul/ReadVariableOp#lstm_cell_499/MatMul/ReadVariableOp2N
%lstm_cell_499/MatMul_1/ReadVariableOp%lstm_cell_499/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
Э
┤
*__inference_lstm_173_layer_call_fn_3028166

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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3025232o
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
љ
Х
*__inference_lstm_173_layer_call_fn_3028155
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3024774o
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
─8
н
while_body_3025364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_500_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_500_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_500_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_500_matmul_readvariableop_resource:2(F
4while_lstm_cell_500_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_500_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_500/BiasAdd/ReadVariableOpб)while/lstm_cell_500/MatMul/ReadVariableOpб+while/lstm_cell_500/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_500/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_500_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_500/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_500/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_500/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_500_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_500/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_500/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_500/addAddV2$while/lstm_cell_500/MatMul:product:0&while/lstm_cell_500/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_500/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_500_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_500/BiasAddBiasAddwhile/lstm_cell_500/add:z:02while/lstm_cell_500/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_500/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_500/splitSplit,while/lstm_cell_500/split/split_dim:output:0$while/lstm_cell_500/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_500/SigmoidSigmoid"while/lstm_cell_500/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_1Sigmoid"while/lstm_cell_500/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_500/mulMul!while/lstm_cell_500/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_500/ReluRelu"while/lstm_cell_500/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_500/mul_1Mulwhile/lstm_cell_500/Sigmoid:y:0&while/lstm_cell_500/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_500/add_1AddV2while/lstm_cell_500/mul:z:0while/lstm_cell_500/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_500/Sigmoid_2Sigmoid"while/lstm_cell_500/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_500/Relu_1Reluwhile/lstm_cell_500/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_500/mul_2Mul!while/lstm_cell_500/Sigmoid_2:y:0(while/lstm_cell_500/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_500/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_500/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_500/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_500/BiasAdd/ReadVariableOp*^while/lstm_cell_500/MatMul/ReadVariableOp,^while/lstm_cell_500/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_500_biasadd_readvariableop_resource5while_lstm_cell_500_biasadd_readvariableop_resource_0"n
4while_lstm_cell_500_matmul_1_readvariableop_resource6while_lstm_cell_500_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_500_matmul_readvariableop_resource4while_lstm_cell_500_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_500/BiasAdd/ReadVariableOp*while/lstm_cell_500/BiasAdd/ReadVariableOp2V
)while/lstm_cell_500/MatMul/ReadVariableOp)while/lstm_cell_500/MatMul/ReadVariableOp2Z
+while/lstm_cell_500/MatMul_1/ReadVariableOp+while/lstm_cell_500/MatMul_1/ReadVariableOp: 
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
while_body_3027763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_499_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_499_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_499_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_499_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_499_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_499_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_499/BiasAdd/ReadVariableOpб)while/lstm_cell_499/MatMul/ReadVariableOpб+while/lstm_cell_499/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_499/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_499_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_499/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_499/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_499/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_499_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_499/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_499/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_499/addAddV2$while/lstm_cell_499/MatMul:product:0&while/lstm_cell_499/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_499/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_499_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_499/BiasAddBiasAddwhile/lstm_cell_499/add:z:02while/lstm_cell_499/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_499/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_499/splitSplit,while/lstm_cell_499/split/split_dim:output:0$while/lstm_cell_499/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_499/SigmoidSigmoid"while/lstm_cell_499/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_1Sigmoid"while/lstm_cell_499/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_499/mulMul!while/lstm_cell_499/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_499/ReluRelu"while/lstm_cell_499/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_499/mul_1Mulwhile/lstm_cell_499/Sigmoid:y:0&while/lstm_cell_499/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_499/add_1AddV2while/lstm_cell_499/mul:z:0while/lstm_cell_499/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_499/Sigmoid_2Sigmoid"while/lstm_cell_499/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_499/Relu_1Reluwhile/lstm_cell_499/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_499/mul_2Mul!while/lstm_cell_499/Sigmoid_2:y:0(while/lstm_cell_499/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_499/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_499/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_499/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_499/BiasAdd/ReadVariableOp*^while/lstm_cell_499/MatMul/ReadVariableOp,^while/lstm_cell_499/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_499_biasadd_readvariableop_resource5while_lstm_cell_499_biasadd_readvariableop_resource_0"n
4while_lstm_cell_499_matmul_1_readvariableop_resource6while_lstm_cell_499_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_499_matmul_readvariableop_resource4while_lstm_cell_499_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_499/BiasAdd/ReadVariableOp*while/lstm_cell_499/BiasAdd/ReadVariableOp2V
)while/lstm_cell_499/MatMul/ReadVariableOp)while/lstm_cell_499/MatMul/ReadVariableOp2Z
+while/lstm_cell_499/MatMul_1/ReadVariableOp+while/lstm_cell_499/MatMul_1/ReadVariableOp: 
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
─
Ќ
*__inference_dense_57_layer_call_fn_3028758

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
E__inference_dense_57_layer_call_and_return_conditional_losses_3025250o
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
РJ
Б
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027517

inputs?
,lstm_cell_498_matmul_readvariableop_resource:	љA
.lstm_cell_498_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_498_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_498/BiasAdd/ReadVariableOpб#lstm_cell_498/MatMul/ReadVariableOpб%lstm_cell_498/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_498/MatMul/ReadVariableOpReadVariableOp,lstm_cell_498_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_498/MatMulMatMulstrided_slice_2:output:0+lstm_cell_498/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_498/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_498_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_498/MatMul_1MatMulzeros:output:0-lstm_cell_498/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_498/addAddV2lstm_cell_498/MatMul:product:0 lstm_cell_498/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_498/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_498_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_498/BiasAddBiasAddlstm_cell_498/add:z:0,lstm_cell_498/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_498/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_498/splitSplit&lstm_cell_498/split/split_dim:output:0lstm_cell_498/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_498/SigmoidSigmoidlstm_cell_498/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_1Sigmoidlstm_cell_498/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_498/mulMullstm_cell_498/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_498/ReluRelulstm_cell_498/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_498/mul_1Mullstm_cell_498/Sigmoid:y:0 lstm_cell_498/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_498/add_1AddV2lstm_cell_498/mul:z:0lstm_cell_498/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_498/Sigmoid_2Sigmoidlstm_cell_498/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_498/Relu_1Relulstm_cell_498/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_498/mul_2Mullstm_cell_498/Sigmoid_2:y:0"lstm_cell_498/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_498_matmul_readvariableop_resource.lstm_cell_498_matmul_1_readvariableop_resource-lstm_cell_498_biasadd_readvariableop_resource*
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
while_body_3027433*
condR
while_cond_3027432*K
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
NoOpNoOp%^lstm_cell_498/BiasAdd/ReadVariableOp$^lstm_cell_498/MatMul/ReadVariableOp&^lstm_cell_498/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_498/BiasAdd/ReadVariableOp$lstm_cell_498/BiasAdd/ReadVariableOp2J
#lstm_cell_498/MatMul/ReadVariableOp#lstm_cell_498/MatMul/ReadVariableOp2N
%lstm_cell_498/MatMul_1/ReadVariableOp%lstm_cell_498/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*й
serving_defaultЕ
M
lstm_171_input;
 serving_default_lstm_171_input:0         <
dense_570
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
2dense_57/kernel
:2dense_57/bias
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
0:.	љ2lstm_171/lstm_cell_171/kernel
::8	dљ2'lstm_171/lstm_cell_171/recurrent_kernel
*:(љ2lstm_171/lstm_cell_171/bias
0:.	d╚2lstm_172/lstm_cell_172/kernel
::8	2╚2'lstm_172/lstm_cell_172/recurrent_kernel
*:(╚2lstm_172/lstm_cell_172/bias
/:-2(2lstm_173/lstm_cell_173/kernel
9:7
(2'lstm_173/lstm_cell_173/recurrent_kernel
):'(2lstm_173/lstm_cell_173/bias
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
2Adam/dense_57/kernel/m
 :2Adam/dense_57/bias/m
5:3	љ2$Adam/lstm_171/lstm_cell_171/kernel/m
?:=	dљ2.Adam/lstm_171/lstm_cell_171/recurrent_kernel/m
/:-љ2"Adam/lstm_171/lstm_cell_171/bias/m
5:3	d╚2$Adam/lstm_172/lstm_cell_172/kernel/m
?:=	2╚2.Adam/lstm_172/lstm_cell_172/recurrent_kernel/m
/:-╚2"Adam/lstm_172/lstm_cell_172/bias/m
4:22(2$Adam/lstm_173/lstm_cell_173/kernel/m
>:<
(2.Adam/lstm_173/lstm_cell_173/recurrent_kernel/m
.:,(2"Adam/lstm_173/lstm_cell_173/bias/m
&:$
2Adam/dense_57/kernel/v
 :2Adam/dense_57/bias/v
5:3	љ2$Adam/lstm_171/lstm_cell_171/kernel/v
?:=	dљ2.Adam/lstm_171/lstm_cell_171/recurrent_kernel/v
/:-љ2"Adam/lstm_171/lstm_cell_171/bias/v
5:3	d╚2$Adam/lstm_172/lstm_cell_172/kernel/v
?:=	2╚2.Adam/lstm_172/lstm_cell_172/recurrent_kernel/v
/:-╚2"Adam/lstm_172/lstm_cell_172/bias/v
4:22(2$Adam/lstm_173/lstm_cell_173/kernel/v
>:<
(2.Adam/lstm_173/lstm_cell_173/recurrent_kernel/v
.:,(2"Adam/lstm_173/lstm_cell_173/bias/v
і2Є
/__inference_sequential_57_layer_call_fn_3025282
/__inference_sequential_57_layer_call_fn_3026020
/__inference_sequential_57_layer_call_fn_3026047
/__inference_sequential_57_layer_call_fn_3025898└
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
J__inference_sequential_57_layer_call_and_return_conditional_losses_3026474
J__inference_sequential_57_layer_call_and_return_conditional_losses_3026901
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025928
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025958└
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
"__inference__wrapped_model_3023733lstm_171_input"ў
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
*__inference_lstm_171_layer_call_fn_3026912
*__inference_lstm_171_layer_call_fn_3026923
*__inference_lstm_171_layer_call_fn_3026934
*__inference_lstm_171_layer_call_fn_3026945Н
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027088
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027231
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027374
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027517Н
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
*__inference_lstm_172_layer_call_fn_3027528
*__inference_lstm_172_layer_call_fn_3027539
*__inference_lstm_172_layer_call_fn_3027550
*__inference_lstm_172_layer_call_fn_3027561Н
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3027704
E__inference_lstm_172_layer_call_and_return_conditional_losses_3027847
E__inference_lstm_172_layer_call_and_return_conditional_losses_3027990
E__inference_lstm_172_layer_call_and_return_conditional_losses_3028133Н
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
*__inference_lstm_173_layer_call_fn_3028144
*__inference_lstm_173_layer_call_fn_3028155
*__inference_lstm_173_layer_call_fn_3028166
*__inference_lstm_173_layer_call_fn_3028177Н
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028320
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028463
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028606
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028749Н
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
*__inference_dense_57_layer_call_fn_3028758б
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
E__inference_dense_57_layer_call_and_return_conditional_losses_3028768б
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
%__inference_signature_wrapper_3025993lstm_171_input"ћ
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
/__inference_lstm_cell_498_layer_call_fn_3028785
/__inference_lstm_cell_498_layer_call_fn_3028802Й
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
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3028834
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3028866Й
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
/__inference_lstm_cell_499_layer_call_fn_3028883
/__inference_lstm_cell_499_layer_call_fn_3028900Й
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
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3028932
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3028964Й
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
/__inference_lstm_cell_500_layer_call_fn_3028981
/__inference_lstm_cell_500_layer_call_fn_3028998Й
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
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3029030
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3029062Й
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
"__inference__wrapped_model_3023733-./012345!";б8
1б.
,і)
lstm_171_input         
ф "3ф0
.
dense_57"і
dense_57         Ц
E__inference_dense_57_layer_call_and_return_conditional_losses_3028768\!"/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ }
*__inference_dense_57_layer_call_fn_3028758O!"/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027088і-./OбL
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027231і-./OбL
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027374q-./?б<
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
E__inference_lstm_171_layer_call_and_return_conditional_losses_3027517q-./?б<
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
*__inference_lstm_171_layer_call_fn_3026912}-./OбL
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
*__inference_lstm_171_layer_call_fn_3026923}-./OбL
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
*__inference_lstm_171_layer_call_fn_3026934d-./?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_171_layer_call_fn_3026945d-./?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_172_layer_call_and_return_conditional_losses_3027704і012OбL
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3027847і012OбL
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3027990q012?б<
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
E__inference_lstm_172_layer_call_and_return_conditional_losses_3028133q012?б<
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
*__inference_lstm_172_layer_call_fn_3027528}012OбL
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
*__inference_lstm_172_layer_call_fn_3027539}012OбL
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
*__inference_lstm_172_layer_call_fn_3027550d012?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_172_layer_call_fn_3027561d012?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028320}345OбL
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028463}345OбL
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028606m345?б<
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
E__inference_lstm_173_layer_call_and_return_conditional_losses_3028749m345?б<
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
*__inference_lstm_173_layer_call_fn_3028144p345OбL
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
*__inference_lstm_173_layer_call_fn_3028155p345OбL
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
*__inference_lstm_173_layer_call_fn_3028166`345?б<
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
*__inference_lstm_173_layer_call_fn_3028177`345?б<
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
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3028834§-./ђб}
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
J__inference_lstm_cell_498_layer_call_and_return_conditional_losses_3028866§-./ђб}
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
/__inference_lstm_cell_498_layer_call_fn_3028785ь-./ђб}
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
/__inference_lstm_cell_498_layer_call_fn_3028802ь-./ђб}
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
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3028932§012ђб}
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
J__inference_lstm_cell_499_layer_call_and_return_conditional_losses_3028964§012ђб}
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
/__inference_lstm_cell_499_layer_call_fn_3028883ь012ђб}
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
/__inference_lstm_cell_499_layer_call_fn_3028900ь012ђб}
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
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3029030§345ђб}
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
J__inference_lstm_cell_500_layer_call_and_return_conditional_losses_3029062§345ђб}
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
/__inference_lstm_cell_500_layer_call_fn_3028981ь345ђб}
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
/__inference_lstm_cell_500_layer_call_fn_3028998ь345ђб}
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
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025928y-./012345!"Cб@
9б6
,і)
lstm_171_input         
p 

 
ф "%б"
і
0         
џ К
J__inference_sequential_57_layer_call_and_return_conditional_losses_3025958y-./012345!"Cб@
9б6
,і)
lstm_171_input         
p

 
ф "%б"
і
0         
џ ┐
J__inference_sequential_57_layer_call_and_return_conditional_losses_3026474q-./012345!";б8
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
J__inference_sequential_57_layer_call_and_return_conditional_losses_3026901q-./012345!";б8
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
/__inference_sequential_57_layer_call_fn_3025282l-./012345!"Cб@
9б6
,і)
lstm_171_input         
p 

 
ф "і         Ъ
/__inference_sequential_57_layer_call_fn_3025898l-./012345!"Cб@
9б6
,і)
lstm_171_input         
p

 
ф "і         Ќ
/__inference_sequential_57_layer_call_fn_3026020d-./012345!";б8
1б.
$і!
inputs         
p 

 
ф "і         Ќ
/__inference_sequential_57_layer_call_fn_3026047d-./012345!";б8
1б.
$і!
inputs         
p

 
ф "і         ╗
%__inference_signature_wrapper_3025993Љ-./012345!"MбJ
б 
Cф@
>
lstm_171_input,і)
lstm_171_input         "3ф0
.
dense_57"і
dense_57         
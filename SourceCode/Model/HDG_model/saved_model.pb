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
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_34/kernel
s
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes

:
*
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
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
lstm_102/lstm_cell_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_102/lstm_cell_102/kernel
љ
1lstm_102/lstm_cell_102/kernel/Read/ReadVariableOpReadVariableOplstm_102/lstm_cell_102/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_102/lstm_cell_102/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_102/lstm_cell_102/recurrent_kernel
ц
;lstm_102/lstm_cell_102/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_102/lstm_cell_102/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_102/lstm_cell_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_102/lstm_cell_102/bias
ѕ
/lstm_102/lstm_cell_102/bias/Read/ReadVariableOpReadVariableOplstm_102/lstm_cell_102/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_103/lstm_cell_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_103/lstm_cell_103/kernel
љ
1lstm_103/lstm_cell_103/kernel/Read/ReadVariableOpReadVariableOplstm_103/lstm_cell_103/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_103/lstm_cell_103/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_103/lstm_cell_103/recurrent_kernel
ц
;lstm_103/lstm_cell_103/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_103/lstm_cell_103/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_103/lstm_cell_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_103/lstm_cell_103/bias
ѕ
/lstm_103/lstm_cell_103/bias/Read/ReadVariableOpReadVariableOplstm_103/lstm_cell_103/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_104/lstm_cell_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_104/lstm_cell_104/kernel
Ј
1lstm_104/lstm_cell_104/kernel/Read/ReadVariableOpReadVariableOplstm_104/lstm_cell_104/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_104/lstm_cell_104/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_104/lstm_cell_104/recurrent_kernel
Б
;lstm_104/lstm_cell_104/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_104/lstm_cell_104/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_104/lstm_cell_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_104/lstm_cell_104/bias
Є
/lstm_104/lstm_cell_104/bias/Read/ReadVariableOpReadVariableOplstm_104/lstm_cell_104/bias*
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
Adam/dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_34/kernel/m
Ђ
*Adam/dense_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/m*
_output_shapes

:
*
dtype0
ђ
Adam/dense_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_34/bias/m
y
(Adam/dense_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_102/lstm_cell_102/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_102/lstm_cell_102/kernel/m
ъ
8Adam/lstm_102/lstm_cell_102/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_102/lstm_cell_102/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_102/lstm_cell_102/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m
▓
BAdam/lstm_102/lstm_cell_102/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_102/lstm_cell_102/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_102/lstm_cell_102/bias/m
ќ
6Adam/lstm_102/lstm_cell_102/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_102/lstm_cell_102/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_103/lstm_cell_103/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_103/lstm_cell_103/kernel/m
ъ
8Adam/lstm_103/lstm_cell_103/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_103/lstm_cell_103/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_103/lstm_cell_103/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_103/lstm_cell_103/recurrent_kernel/m
▓
BAdam/lstm_103/lstm_cell_103/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_103/lstm_cell_103/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_103/lstm_cell_103/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_103/lstm_cell_103/bias/m
ќ
6Adam/lstm_103/lstm_cell_103/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_103/lstm_cell_103/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_104/lstm_cell_104/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_104/lstm_cell_104/kernel/m
Ю
8Adam/lstm_104/lstm_cell_104/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_104/lstm_cell_104/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_104/lstm_cell_104/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_104/lstm_cell_104/recurrent_kernel/m
▒
BAdam/lstm_104/lstm_cell_104/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_104/lstm_cell_104/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_104/lstm_cell_104/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_104/lstm_cell_104/bias/m
Ћ
6Adam/lstm_104/lstm_cell_104/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_104/lstm_cell_104/bias/m*
_output_shapes
:(*
dtype0
ѕ
Adam/dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_34/kernel/v
Ђ
*Adam/dense_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/v*
_output_shapes

:
*
dtype0
ђ
Adam/dense_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_34/bias/v
y
(Adam/dense_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_102/lstm_cell_102/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_102/lstm_cell_102/kernel/v
ъ
8Adam/lstm_102/lstm_cell_102/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_102/lstm_cell_102/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_102/lstm_cell_102/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v
▓
BAdam/lstm_102/lstm_cell_102/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_102/lstm_cell_102/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_102/lstm_cell_102/bias/v
ќ
6Adam/lstm_102/lstm_cell_102/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_102/lstm_cell_102/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_103/lstm_cell_103/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_103/lstm_cell_103/kernel/v
ъ
8Adam/lstm_103/lstm_cell_103/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_103/lstm_cell_103/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_103/lstm_cell_103/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_103/lstm_cell_103/recurrent_kernel/v
▓
BAdam/lstm_103/lstm_cell_103/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_103/lstm_cell_103/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_103/lstm_cell_103/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_103/lstm_cell_103/bias/v
ќ
6Adam/lstm_103/lstm_cell_103/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_103/lstm_cell_103/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_104/lstm_cell_104/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_104/lstm_cell_104/kernel/v
Ю
8Adam/lstm_104/lstm_cell_104/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_104/lstm_cell_104/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_104/lstm_cell_104/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_104/lstm_cell_104/recurrent_kernel/v
▒
BAdam/lstm_104/lstm_cell_104/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_104/lstm_cell_104/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_104/lstm_cell_104/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_104/lstm_cell_104/bias/v
Ћ
6Adam/lstm_104/lstm_cell_104/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_104/lstm_cell_104/bias/v*
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
VARIABLE_VALUEdense_34/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_34/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_102/lstm_cell_102/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_102/lstm_cell_102/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_102/lstm_cell_102/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_103/lstm_cell_103/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_103/lstm_cell_103/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_103/lstm_cell_103/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_104/lstm_cell_104/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_104/lstm_cell_104/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_104/lstm_cell_104/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_34/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_34/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_102/lstm_cell_102/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_102/lstm_cell_102/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_102/lstm_cell_102/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_103/lstm_cell_103/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_103/lstm_cell_103/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_103/lstm_cell_103/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_104/lstm_cell_104/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_104/lstm_cell_104/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_104/lstm_cell_104/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_34/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_34/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_102/lstm_cell_102/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_102/lstm_cell_102/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_102/lstm_cell_102/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_103/lstm_cell_103/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_103/lstm_cell_103/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_103/lstm_cell_103/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_104/lstm_cell_104/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_104/lstm_cell_104/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_104/lstm_cell_104/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_102_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_102_inputlstm_102/lstm_cell_102/kernel'lstm_102/lstm_cell_102/recurrent_kernellstm_102/lstm_cell_102/biaslstm_103/lstm_cell_103/kernel'lstm_103/lstm_cell_103/recurrent_kernellstm_103/lstm_cell_103/biaslstm_104/lstm_cell_104/kernel'lstm_104/lstm_cell_104/recurrent_kernellstm_104/lstm_cell_104/biasdense_34/kerneldense_34/bias*
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
%__inference_signature_wrapper_2065070
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Й
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_102/lstm_cell_102/kernel/Read/ReadVariableOp;lstm_102/lstm_cell_102/recurrent_kernel/Read/ReadVariableOp/lstm_102/lstm_cell_102/bias/Read/ReadVariableOp1lstm_103/lstm_cell_103/kernel/Read/ReadVariableOp;lstm_103/lstm_cell_103/recurrent_kernel/Read/ReadVariableOp/lstm_103/lstm_cell_103/bias/Read/ReadVariableOp1lstm_104/lstm_cell_104/kernel/Read/ReadVariableOp;lstm_104/lstm_cell_104/recurrent_kernel/Read/ReadVariableOp/lstm_104/lstm_cell_104/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_34/kernel/m/Read/ReadVariableOp(Adam/dense_34/bias/m/Read/ReadVariableOp8Adam/lstm_102/lstm_cell_102/kernel/m/Read/ReadVariableOpBAdam/lstm_102/lstm_cell_102/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_102/lstm_cell_102/bias/m/Read/ReadVariableOp8Adam/lstm_103/lstm_cell_103/kernel/m/Read/ReadVariableOpBAdam/lstm_103/lstm_cell_103/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_103/lstm_cell_103/bias/m/Read/ReadVariableOp8Adam/lstm_104/lstm_cell_104/kernel/m/Read/ReadVariableOpBAdam/lstm_104/lstm_cell_104/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_104/lstm_cell_104/bias/m/Read/ReadVariableOp*Adam/dense_34/kernel/v/Read/ReadVariableOp(Adam/dense_34/bias/v/Read/ReadVariableOp8Adam/lstm_102/lstm_cell_102/kernel/v/Read/ReadVariableOpBAdam/lstm_102/lstm_cell_102/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_102/lstm_cell_102/bias/v/Read/ReadVariableOp8Adam/lstm_103/lstm_cell_103/kernel/v/Read/ReadVariableOpBAdam/lstm_103/lstm_cell_103/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_103/lstm_cell_103/bias/v/Read/ReadVariableOp8Adam/lstm_104/lstm_cell_104/kernel/v/Read/ReadVariableOpBAdam/lstm_104/lstm_cell_104/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_104/lstm_cell_104/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2068282
Ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_34/kerneldense_34/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_102/lstm_cell_102/kernel'lstm_102/lstm_cell_102/recurrent_kernellstm_102/lstm_cell_102/biaslstm_103/lstm_cell_103/kernel'lstm_103/lstm_cell_103/recurrent_kernellstm_103/lstm_cell_103/biaslstm_104/lstm_cell_104/kernel'lstm_104/lstm_cell_104/recurrent_kernellstm_104/lstm_cell_104/biastotalcountAdam/dense_34/kernel/mAdam/dense_34/bias/m$Adam/lstm_102/lstm_cell_102/kernel/m.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m"Adam/lstm_102/lstm_cell_102/bias/m$Adam/lstm_103/lstm_cell_103/kernel/m.Adam/lstm_103/lstm_cell_103/recurrent_kernel/m"Adam/lstm_103/lstm_cell_103/bias/m$Adam/lstm_104/lstm_cell_104/kernel/m.Adam/lstm_104/lstm_cell_104/recurrent_kernel/m"Adam/lstm_104/lstm_cell_104/bias/mAdam/dense_34/kernel/vAdam/dense_34/bias/v$Adam/lstm_102/lstm_cell_102/kernel/v.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v"Adam/lstm_102/lstm_cell_102/bias/v$Adam/lstm_103/lstm_cell_103/kernel/v.Adam/lstm_103/lstm_cell_103/recurrent_kernel/v"Adam/lstm_103/lstm_cell_103/bias/v$Adam/lstm_104/lstm_cell_104/kernel/v.Adam/lstm_104/lstm_cell_104/recurrent_kernel/v"Adam/lstm_104/lstm_cell_104/bias/v*4
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
#__inference__traced_restore_2068412Ћш+
аK
Ц
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066165
inputs_0?
,lstm_cell_339_matmul_readvariableop_resource:	љA
.lstm_cell_339_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_339_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_339/BiasAdd/ReadVariableOpб#lstm_cell_339/MatMul/ReadVariableOpб%lstm_cell_339/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2066081*
condR
while_cond_2066080*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
─
Ќ
*__inference_dense_34_layer_call_fn_2067835

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
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327o
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
Г
╣
*__inference_lstm_102_layer_call_fn_2066000
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2063151|
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
while_cond_2063431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063431___redundant_placeholder05
1while_while_cond_2063431___redundant_placeholder15
1while_while_cond_2063431___redundant_placeholder25
1while_while_cond_2063431___redundant_placeholder3
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
▀
ѕ
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068041

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
ПJ
а
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064309

inputs>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_341/BiasAdd/ReadVariableOpб#lstm_cell_341/MatMul/ReadVariableOpб%lstm_cell_341/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2064225*
condR
while_cond_2064224*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
═
Ѓ
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063577

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
Л8
┌
while_body_2066081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	љG
4while_lstm_cell_339_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_339_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_339/BiasAdd/ReadVariableOpб)while/lstm_cell_339/MatMul/ReadVariableOpб+while/lstm_cell_339/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
и

Ч
lstm_103_while_cond_2065748.
*lstm_103_while_lstm_103_while_loop_counter4
0lstm_103_while_lstm_103_while_maximum_iterations
lstm_103_while_placeholder 
lstm_103_while_placeholder_1 
lstm_103_while_placeholder_2 
lstm_103_while_placeholder_30
,lstm_103_while_less_lstm_103_strided_slice_1G
Clstm_103_while_lstm_103_while_cond_2065748___redundant_placeholder0G
Clstm_103_while_lstm_103_while_cond_2065748___redundant_placeholder1G
Clstm_103_while_lstm_103_while_cond_2065748___redundant_placeholder2G
Clstm_103_while_lstm_103_while_cond_2065748___redundant_placeholder3
lstm_103_while_identity
є
lstm_103/while/LessLesslstm_103_while_placeholder,lstm_103_while_less_lstm_103_strided_slice_1*
T0*
_output_shapes
: ]
lstm_103/while/IdentityIdentitylstm_103/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_103_while_identity lstm_103/while/Identity:output:0*(
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
while_body_2066697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_340_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_340/BiasAdd/ReadVariableOpб)while/lstm_cell_340/MatMul/ReadVariableOpб+while/lstm_cell_340/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
while_cond_2064074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2064074___redundant_placeholder05
1while_while_cond_2064074___redundant_placeholder15
1while_while_cond_2064074___redundant_placeholder25
1while_while_cond_2064074___redundant_placeholder3
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
╚	
Ш
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327

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
Л8
┌
while_body_2066840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_340_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_340/BiasAdd/ReadVariableOpб)while/lstm_cell_340/MatMul/ReadVariableOpб+while/lstm_cell_340/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
»8
ј
E__inference_lstm_102_layer_call_and_return_conditional_losses_2062960

inputs(
lstm_cell_339_2062878:	љ(
lstm_cell_339_2062880:	dљ$
lstm_cell_339_2062882:	љ
identityѕб%lstm_cell_339/StatefulPartitionedCallбwhile;
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
%lstm_cell_339/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_339_2062878lstm_cell_339_2062880lstm_cell_339_2062882*
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2062877n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_339_2062878lstm_cell_339_2062880lstm_cell_339_2062882*
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
while_body_2062891*
condR
while_cond_2062890*K
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
NoOpNoOp&^lstm_cell_339/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_339/StatefulPartitionedCall%lstm_cell_339/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
║
╚
while_cond_2064224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2064224___redundant_placeholder05
1while_while_cond_2064224___redundant_placeholder15
1while_while_cond_2064224___redundant_placeholder25
1while_while_cond_2064224___redundant_placeholder3
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
while_cond_2067741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2067741___redundant_placeholder05
1while_while_cond_2067741___redundant_placeholder15
1while_while_cond_2067741___redundant_placeholder25
1while_while_cond_2067741___redundant_placeholder3
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
Ѕ#
в
while_body_2063782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_341_2063806_0:2(/
while_lstm_cell_341_2063808_0:
(+
while_lstm_cell_341_2063810_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_341_2063806:2(-
while_lstm_cell_341_2063808:
()
while_lstm_cell_341_2063810:(ѕб+while/lstm_cell_341/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_341/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_341_2063806_0while_lstm_cell_341_2063808_0while_lstm_cell_341_2063810_0*
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063723П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_341/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_341/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_341/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_341/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_341_2063806while_lstm_cell_341_2063806_0"<
while_lstm_cell_341_2063808while_lstm_cell_341_2063808_0"<
while_lstm_cell_341_2063810while_lstm_cell_341_2063810_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_341/StatefulPartitionedCall+while/lstm_cell_341/StatefulPartitionedCall: 
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067210

inputs?
,lstm_cell_340_matmul_readvariableop_resource:	d╚A
.lstm_cell_340_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_340_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_340/BiasAdd/ReadVariableOpб#lstm_cell_340/MatMul/ReadVariableOpб%lstm_cell_340/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2067126*
condR
while_cond_2067125*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
┬

Ў
%__inference_signature_wrapper_2065070
lstm_102_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2062810o
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
_user_specified_namelstm_102_input
Ј#
ы
while_body_2063432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_340_2063456_0:	d╚0
while_lstm_cell_340_2063458_0:	2╚,
while_lstm_cell_340_2063460_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_340_2063456:	d╚.
while_lstm_cell_340_2063458:	2╚*
while_lstm_cell_340_2063460:	╚ѕб+while/lstm_cell_340/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_340/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_340_2063456_0while_lstm_cell_340_2063458_0while_lstm_cell_340_2063460_0*
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063373П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_340/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_340/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_340/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_340/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_340_2063456while_lstm_cell_340_2063456_0"<
while_lstm_cell_340_2063458while_lstm_cell_340_2063458_0"<
while_lstm_cell_340_2063460while_lstm_cell_340_2063460_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_340/StatefulPartitionedCall+while/lstm_cell_340/StatefulPartitionedCall: 
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
▀
ѕ
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067911

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
РJ
Б
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064690

inputs?
,lstm_cell_340_matmul_readvariableop_resource:	d╚A
.lstm_cell_340_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_340_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_340/BiasAdd/ReadVariableOpб#lstm_cell_340/MatMul/ReadVariableOpб%lstm_cell_340/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2064606*
condR
while_cond_2064605*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Л8
┌
while_body_2064606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_340_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_340/BiasAdd/ReadVariableOpб)while/lstm_cell_340/MatMul/ReadVariableOpб+while/lstm_cell_340/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
АC
Щ

lstm_102_while_body_2065610.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_3-
)lstm_102_while_lstm_102_strided_slice_1_0i
elstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0:	љR
?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0:	dљM
>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0:	љ
lstm_102_while_identity
lstm_102_while_identity_1
lstm_102_while_identity_2
lstm_102_while_identity_3
lstm_102_while_identity_4
lstm_102_while_identity_5+
'lstm_102_while_lstm_102_strided_slice_1g
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorN
;lstm_102_while_lstm_cell_339_matmul_readvariableop_resource:	љP
=lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource:	dљK
<lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource:	љѕб3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpб2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpб4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpЉ
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0lstm_102_while_placeholderIlstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_102/while/lstm_cell_339/MatMulMatMul9lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_102/while/lstm_cell_339/MatMul_1MatMullstm_102_while_placeholder_2<lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_102/while/lstm_cell_339/addAddV2-lstm_102/while/lstm_cell_339/MatMul:product:0/lstm_102/while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_102/while/lstm_cell_339/BiasAddBiasAdd$lstm_102/while/lstm_cell_339/add:z:0;lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_102/while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_102/while/lstm_cell_339/splitSplit5lstm_102/while/lstm_cell_339/split/split_dim:output:0-lstm_102/while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_102/while/lstm_cell_339/SigmoidSigmoid+lstm_102/while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_102/while/lstm_cell_339/Sigmoid_1Sigmoid+lstm_102/while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_102/while/lstm_cell_339/mulMul*lstm_102/while/lstm_cell_339/Sigmoid_1:y:0lstm_102_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_102/while/lstm_cell_339/ReluRelu+lstm_102/while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_102/while/lstm_cell_339/mul_1Mul(lstm_102/while/lstm_cell_339/Sigmoid:y:0/lstm_102/while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_102/while/lstm_cell_339/add_1AddV2$lstm_102/while/lstm_cell_339/mul:z:0&lstm_102/while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_102/while/lstm_cell_339/Sigmoid_2Sigmoid+lstm_102/while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_102/while/lstm_cell_339/Relu_1Relu&lstm_102/while/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_102/while/lstm_cell_339/mul_2Mul*lstm_102/while/lstm_cell_339/Sigmoid_2:y:01lstm_102/while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_102_while_placeholder_1lstm_102_while_placeholder&lstm_102/while/lstm_cell_339/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_102/while/addAddV2lstm_102_while_placeholderlstm_102/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_102/while/add_1AddV2*lstm_102_while_lstm_102_while_loop_counterlstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_102/while/IdentityIdentitylstm_102/while/add_1:z:0^lstm_102/while/NoOp*
T0*
_output_shapes
: ј
lstm_102/while/Identity_1Identity0lstm_102_while_lstm_102_while_maximum_iterations^lstm_102/while/NoOp*
T0*
_output_shapes
: t
lstm_102/while/Identity_2Identitylstm_102/while/add:z:0^lstm_102/while/NoOp*
T0*
_output_shapes
: А
lstm_102/while/Identity_3IdentityClstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_102/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_102/while/Identity_4Identity&lstm_102/while/lstm_cell_339/mul_2:z:0^lstm_102/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_102/while/Identity_5Identity&lstm_102/while/lstm_cell_339/add_1:z:0^lstm_102/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_102/while/NoOpNoOp4^lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_102_while_identity lstm_102/while/Identity:output:0"?
lstm_102_while_identity_1"lstm_102/while/Identity_1:output:0"?
lstm_102_while_identity_2"lstm_102/while/Identity_2:output:0"?
lstm_102_while_identity_3"lstm_102/while/Identity_3:output:0"?
lstm_102_while_identity_4"lstm_102/while/Identity_4:output:0"?
lstm_102_while_identity_5"lstm_102/while/Identity_5:output:0"T
'lstm_102_while_lstm_102_strided_slice_1)lstm_102_while_lstm_102_strided_slice_1_0"~
<lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0"ђ
=lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0"|
;lstm_102_while_lstm_cell_339_matmul_readvariableop_resource=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0"╠
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp2h
2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp2l
4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
и

Ч
lstm_102_while_cond_2065609.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_30
,lstm_102_while_less_lstm_102_strided_slice_1G
Clstm_102_while_lstm_102_while_cond_2065609___redundant_placeholder0G
Clstm_102_while_lstm_102_while_cond_2065609___redundant_placeholder1G
Clstm_102_while_lstm_102_while_cond_2065609___redundant_placeholder2G
Clstm_102_while_lstm_102_while_cond_2065609___redundant_placeholder3
lstm_102_while_identity
є
lstm_102/while/LessLesslstm_102_while_placeholder,lstm_102_while_less_lstm_102_strided_slice_1*
T0*
_output_shapes
: ]
lstm_102/while/IdentityIdentitylstm_102/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_102_while_identity lstm_102/while/Identity:output:0*(
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
и

Ч
lstm_104_while_cond_2065887.
*lstm_104_while_lstm_104_while_loop_counter4
0lstm_104_while_lstm_104_while_maximum_iterations
lstm_104_while_placeholder 
lstm_104_while_placeholder_1 
lstm_104_while_placeholder_2 
lstm_104_while_placeholder_30
,lstm_104_while_less_lstm_104_strided_slice_1G
Clstm_104_while_lstm_104_while_cond_2065887___redundant_placeholder0G
Clstm_104_while_lstm_104_while_cond_2065887___redundant_placeholder1G
Clstm_104_while_lstm_104_while_cond_2065887___redundant_placeholder2G
Clstm_104_while_lstm_104_while_cond_2065887___redundant_placeholder3
lstm_104_while_identity
є
lstm_104/while/LessLesslstm_104_while_placeholder,lstm_104_while_less_lstm_104_strided_slice_1*
T0*
_output_shapes
: ]
lstm_104/while/IdentityIdentitylstm_104/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_104_while_identity lstm_104/while/Identity:output:0*(
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064525

inputs>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_341/BiasAdd/ReadVariableOpб#lstm_cell_341/MatMul/ReadVariableOpб%lstm_cell_341/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2064441*
condR
while_cond_2064440*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_2064770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2064770___redundant_placeholder05
1while_while_cond_2064770___redundant_placeholder15
1while_while_cond_2064770___redundant_placeholder25
1while_while_cond_2064770___redundant_placeholder3
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
е8
І
E__inference_lstm_104_layer_call_and_return_conditional_losses_2063660

inputs'
lstm_cell_341_2063578:2('
lstm_cell_341_2063580:
(#
lstm_cell_341_2063582:(
identityѕб%lstm_cell_341/StatefulPartitionedCallбwhile;
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
%lstm_cell_341/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_341_2063578lstm_cell_341_2063580lstm_cell_341_2063582*
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063577n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_341_2063578lstm_cell_341_2063580lstm_cell_341_2063582*
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
while_body_2063591*
condR
while_cond_2063590*K
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
NoOpNoOp&^lstm_cell_341/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_341/StatefulPartitionedCall%lstm_cell_341/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
АC
Щ

lstm_103_while_body_2065322.
*lstm_103_while_lstm_103_while_loop_counter4
0lstm_103_while_lstm_103_while_maximum_iterations
lstm_103_while_placeholder 
lstm_103_while_placeholder_1 
lstm_103_while_placeholder_2 
lstm_103_while_placeholder_3-
)lstm_103_while_lstm_103_strided_slice_1_0i
elstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0:	d╚R
?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2╚M
>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0:	╚
lstm_103_while_identity
lstm_103_while_identity_1
lstm_103_while_identity_2
lstm_103_while_identity_3
lstm_103_while_identity_4
lstm_103_while_identity_5+
'lstm_103_while_lstm_103_strided_slice_1g
clstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensorN
;lstm_103_while_lstm_cell_340_matmul_readvariableop_resource:	d╚P
=lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource:	2╚K
<lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource:	╚ѕб3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpб2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpб4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpЉ
@lstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0lstm_103_while_placeholderIlstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_103/while/lstm_cell_340/MatMulMatMul9lstm_103/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_103/while/lstm_cell_340/MatMul_1MatMullstm_103_while_placeholder_2<lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_103/while/lstm_cell_340/addAddV2-lstm_103/while/lstm_cell_340/MatMul:product:0/lstm_103/while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_103/while/lstm_cell_340/BiasAddBiasAdd$lstm_103/while/lstm_cell_340/add:z:0;lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_103/while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_103/while/lstm_cell_340/splitSplit5lstm_103/while/lstm_cell_340/split/split_dim:output:0-lstm_103/while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_103/while/lstm_cell_340/SigmoidSigmoid+lstm_103/while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_103/while/lstm_cell_340/Sigmoid_1Sigmoid+lstm_103/while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_103/while/lstm_cell_340/mulMul*lstm_103/while/lstm_cell_340/Sigmoid_1:y:0lstm_103_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_103/while/lstm_cell_340/ReluRelu+lstm_103/while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_103/while/lstm_cell_340/mul_1Mul(lstm_103/while/lstm_cell_340/Sigmoid:y:0/lstm_103/while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_103/while/lstm_cell_340/add_1AddV2$lstm_103/while/lstm_cell_340/mul:z:0&lstm_103/while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_103/while/lstm_cell_340/Sigmoid_2Sigmoid+lstm_103/while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_103/while/lstm_cell_340/Relu_1Relu&lstm_103/while/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_103/while/lstm_cell_340/mul_2Mul*lstm_103/while/lstm_cell_340/Sigmoid_2:y:01lstm_103/while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_103_while_placeholder_1lstm_103_while_placeholder&lstm_103/while/lstm_cell_340/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_103/while/addAddV2lstm_103_while_placeholderlstm_103/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_103/while/add_1AddV2*lstm_103_while_lstm_103_while_loop_counterlstm_103/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_103/while/IdentityIdentitylstm_103/while/add_1:z:0^lstm_103/while/NoOp*
T0*
_output_shapes
: ј
lstm_103/while/Identity_1Identity0lstm_103_while_lstm_103_while_maximum_iterations^lstm_103/while/NoOp*
T0*
_output_shapes
: t
lstm_103/while/Identity_2Identitylstm_103/while/add:z:0^lstm_103/while/NoOp*
T0*
_output_shapes
: А
lstm_103/while/Identity_3IdentityClstm_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_103/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_103/while/Identity_4Identity&lstm_103/while/lstm_cell_340/mul_2:z:0^lstm_103/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_103/while/Identity_5Identity&lstm_103/while/lstm_cell_340/add_1:z:0^lstm_103/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_103/while/NoOpNoOp4^lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp3^lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp5^lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_103_while_identity lstm_103/while/Identity:output:0"?
lstm_103_while_identity_1"lstm_103/while/Identity_1:output:0"?
lstm_103_while_identity_2"lstm_103/while/Identity_2:output:0"?
lstm_103_while_identity_3"lstm_103/while/Identity_3:output:0"?
lstm_103_while_identity_4"lstm_103/while/Identity_4:output:0"?
lstm_103_while_identity_5"lstm_103/while/Identity_5:output:0"T
'lstm_103_while_lstm_103_strided_slice_1)lstm_103_while_lstm_103_strided_slice_1_0"~
<lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0"ђ
=lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0"|
;lstm_103_while_lstm_cell_340_matmul_readvariableop_resource=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0"╠
clstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensorelstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp2h
2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp2l
4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
while_cond_2067598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2067598___redundant_placeholder05
1while_while_cond_2067598___redundant_placeholder15
1while_while_cond_2067598___redundant_placeholder25
1while_while_cond_2067598___redundant_placeholder3
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
while_cond_2064605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2064605___redundant_placeholder05
1while_while_cond_2064605___redundant_placeholder15
1while_while_cond_2064605___redundant_placeholder25
1while_while_cond_2064605___redundant_placeholder3
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066781
inputs_0?
,lstm_cell_340_matmul_readvariableop_resource:	d╚A
.lstm_cell_340_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_340_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_340/BiasAdd/ReadVariableOpб#lstm_cell_340/MatMul/ReadVariableOpб%lstm_cell_340/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2066697*
condR
while_cond_2066696*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
─8
н
while_body_2067599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_341/BiasAdd/ReadVariableOpб)while/lstm_cell_341/MatMul/ReadVariableOpб+while/lstm_cell_341/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
while_cond_2066696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066696___redundant_placeholder05
1while_while_cond_2066696___redundant_placeholder15
1while_while_cond_2066696___redundant_placeholder25
1while_while_cond_2066696___redundant_placeholder3
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
РW
Ъ
 __inference__traced_save_2068282
file_prefix.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_102_lstm_cell_102_kernel_read_readvariableopF
Bsavev2_lstm_102_lstm_cell_102_recurrent_kernel_read_readvariableop:
6savev2_lstm_102_lstm_cell_102_bias_read_readvariableop<
8savev2_lstm_103_lstm_cell_103_kernel_read_readvariableopF
Bsavev2_lstm_103_lstm_cell_103_recurrent_kernel_read_readvariableop:
6savev2_lstm_103_lstm_cell_103_bias_read_readvariableop<
8savev2_lstm_104_lstm_cell_104_kernel_read_readvariableopF
Bsavev2_lstm_104_lstm_cell_104_recurrent_kernel_read_readvariableop:
6savev2_lstm_104_lstm_cell_104_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_34_kernel_m_read_readvariableop3
/savev2_adam_dense_34_bias_m_read_readvariableopC
?savev2_adam_lstm_102_lstm_cell_102_kernel_m_read_readvariableopM
Isavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_102_lstm_cell_102_bias_m_read_readvariableopC
?savev2_adam_lstm_103_lstm_cell_103_kernel_m_read_readvariableopM
Isavev2_adam_lstm_103_lstm_cell_103_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_103_lstm_cell_103_bias_m_read_readvariableopC
?savev2_adam_lstm_104_lstm_cell_104_kernel_m_read_readvariableopM
Isavev2_adam_lstm_104_lstm_cell_104_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_104_lstm_cell_104_bias_m_read_readvariableop5
1savev2_adam_dense_34_kernel_v_read_readvariableop3
/savev2_adam_dense_34_bias_v_read_readvariableopC
?savev2_adam_lstm_102_lstm_cell_102_kernel_v_read_readvariableopM
Isavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_102_lstm_cell_102_bias_v_read_readvariableopC
?savev2_adam_lstm_103_lstm_cell_103_kernel_v_read_readvariableopM
Isavev2_adam_lstm_103_lstm_cell_103_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_103_lstm_cell_103_bias_v_read_readvariableopC
?savev2_adam_lstm_104_lstm_cell_104_kernel_v_read_readvariableopM
Isavev2_adam_lstm_104_lstm_cell_104_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_104_lstm_cell_104_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_102_lstm_cell_102_kernel_read_readvariableopBsavev2_lstm_102_lstm_cell_102_recurrent_kernel_read_readvariableop6savev2_lstm_102_lstm_cell_102_bias_read_readvariableop8savev2_lstm_103_lstm_cell_103_kernel_read_readvariableopBsavev2_lstm_103_lstm_cell_103_recurrent_kernel_read_readvariableop6savev2_lstm_103_lstm_cell_103_bias_read_readvariableop8savev2_lstm_104_lstm_cell_104_kernel_read_readvariableopBsavev2_lstm_104_lstm_cell_104_recurrent_kernel_read_readvariableop6savev2_lstm_104_lstm_cell_104_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_34_kernel_m_read_readvariableop/savev2_adam_dense_34_bias_m_read_readvariableop?savev2_adam_lstm_102_lstm_cell_102_kernel_m_read_readvariableopIsavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_102_lstm_cell_102_bias_m_read_readvariableop?savev2_adam_lstm_103_lstm_cell_103_kernel_m_read_readvariableopIsavev2_adam_lstm_103_lstm_cell_103_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_103_lstm_cell_103_bias_m_read_readvariableop?savev2_adam_lstm_104_lstm_cell_104_kernel_m_read_readvariableopIsavev2_adam_lstm_104_lstm_cell_104_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_104_lstm_cell_104_bias_m_read_readvariableop1savev2_adam_dense_34_kernel_v_read_readvariableop/savev2_adam_dense_34_bias_v_read_readvariableop?savev2_adam_lstm_102_lstm_cell_102_kernel_v_read_readvariableopIsavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_102_lstm_cell_102_bias_v_read_readvariableop?savev2_adam_lstm_103_lstm_cell_103_kernel_v_read_readvariableopIsavev2_adam_lstm_103_lstm_cell_103_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_103_lstm_cell_103_bias_v_read_readvariableop?savev2_adam_lstm_104_lstm_cell_104_kernel_v_read_readvariableopIsavev2_adam_lstm_104_lstm_cell_104_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_104_lstm_cell_104_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063373

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
РJ
Б
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064855

inputs?
,lstm_cell_339_matmul_readvariableop_resource:	љA
.lstm_cell_339_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_339_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_339/BiasAdd/ReadVariableOpб#lstm_cell_339/MatMul/ReadVariableOpб%lstm_cell_339/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2064771*
condR
while_cond_2064770*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ј#
ы
while_body_2063082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_339_2063106_0:	љ0
while_lstm_cell_339_2063108_0:	dљ,
while_lstm_cell_339_2063110_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_339_2063106:	љ.
while_lstm_cell_339_2063108:	dљ*
while_lstm_cell_339_2063110:	љѕб+while/lstm_cell_339/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_339/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_339_2063106_0while_lstm_cell_339_2063108_0while_lstm_cell_339_2063110_0*
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2063023П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_339/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_339/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_339/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_339/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_339_2063106while_lstm_cell_339_2063106_0"<
while_lstm_cell_339_2063108while_lstm_cell_339_2063108_0"<
while_lstm_cell_339_2063110while_lstm_cell_339_2063110_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_339/StatefulPartitionedCall+while/lstm_cell_339/StatefulPartitionedCall: 
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
њK
б
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067397
inputs_0>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_341/BiasAdd/ReadVariableOpб#lstm_cell_341/MatMul/ReadVariableOpб%lstm_cell_341/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2067313*
condR
while_cond_2067312*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
к
э
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064334

inputs#
lstm_102_2064010:	љ#
lstm_102_2064012:	dљ
lstm_102_2064014:	љ#
lstm_103_2064160:	d╚#
lstm_103_2064162:	2╚
lstm_103_2064164:	╚"
lstm_104_2064310:2("
lstm_104_2064312:
(
lstm_104_2064314:("
dense_34_2064328:

dense_34_2064330:
identityѕб dense_34/StatefulPartitionedCallб lstm_102/StatefulPartitionedCallб lstm_103/StatefulPartitionedCallб lstm_104/StatefulPartitionedCallІ
 lstm_102/StatefulPartitionedCallStatefulPartitionedCallinputslstm_102_2064010lstm_102_2064012lstm_102_2064014*
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064009«
 lstm_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0lstm_103_2064160lstm_103_2064162lstm_103_2064164*
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064159ф
 lstm_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_103/StatefulPartitionedCall:output:0lstm_104_2064310lstm_104_2064312lstm_104_2064314*
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064309ќ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)lstm_104/StatefulPartitionedCall:output:0dense_34_2064328dense_34_2064330*
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
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_34/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall!^lstm_103/StatefulPartitionedCall!^lstm_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall2D
 lstm_103/StatefulPartitionedCall lstm_103/StatefulPartitionedCall2D
 lstm_104/StatefulPartitionedCall lstm_104/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
»8
ј
E__inference_lstm_103_layer_call_and_return_conditional_losses_2063501

inputs(
lstm_cell_340_2063419:	d╚(
lstm_cell_340_2063421:	2╚$
lstm_cell_340_2063423:	╚
identityѕб%lstm_cell_340/StatefulPartitionedCallбwhile;
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
%lstm_cell_340/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_340_2063419lstm_cell_340_2063421lstm_cell_340_2063423*
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063373n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_340_2063419lstm_cell_340_2063421lstm_cell_340_2063423*
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
while_body_2063432*
condR
while_cond_2063431*K
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
NoOpNoOp&^lstm_cell_340/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_340/StatefulPartitionedCall%lstm_cell_340/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067943

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
З

Б
/__inference_sequential_34_layer_call_fn_2064975
lstm_102_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064923o
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
_user_specified_namelstm_102_input
─8
н
while_body_2064441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_341/BiasAdd/ReadVariableOpб)while/lstm_cell_341/MatMul/ReadVariableOpб+while/lstm_cell_341/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
жЂ
ќ
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065551

inputsH
5lstm_102_lstm_cell_339_matmul_readvariableop_resource:	љJ
7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource:	dљE
6lstm_102_lstm_cell_339_biasadd_readvariableop_resource:	љH
5lstm_103_lstm_cell_340_matmul_readvariableop_resource:	d╚J
7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource:	2╚E
6lstm_103_lstm_cell_340_biasadd_readvariableop_resource:	╚G
5lstm_104_lstm_cell_341_matmul_readvariableop_resource:2(I
7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource:
(D
6lstm_104_lstm_cell_341_biasadd_readvariableop_resource:(9
'dense_34_matmul_readvariableop_resource:
6
(dense_34_biasadd_readvariableop_resource:
identityѕбdense_34/BiasAdd/ReadVariableOpбdense_34/MatMul/ReadVariableOpб-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOpб,lstm_102/lstm_cell_339/MatMul/ReadVariableOpб.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOpбlstm_102/whileб-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOpб,lstm_103/lstm_cell_340/MatMul/ReadVariableOpб.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOpбlstm_103/whileб-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOpб,lstm_104/lstm_cell_341/MatMul/ReadVariableOpб.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOpбlstm_104/whileD
lstm_102/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_102/strided_sliceStridedSlicelstm_102/Shape:output:0%lstm_102/strided_slice/stack:output:0'lstm_102/strided_slice/stack_1:output:0'lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_102/zeros/packedPacklstm_102/strided_slice:output:0 lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_102/zerosFilllstm_102/zeros/packed:output:0lstm_102/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_102/zeros_1/packedPacklstm_102/strided_slice:output:0"lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_102/zeros_1Fill lstm_102/zeros_1/packed:output:0lstm_102/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_102/transpose	Transposeinputs lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_102/Shape_1Shapelstm_102/transpose:y:0*
T0*
_output_shapes
:h
lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_102/strided_slice_1StridedSlicelstm_102/Shape_1:output:0'lstm_102/strided_slice_1/stack:output:0)lstm_102/strided_slice_1/stack_1:output:0)lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_102/TensorArrayV2TensorListReserve-lstm_102/TensorArrayV2/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_102/transpose:y:0Glstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_102/strided_slice_2StridedSlicelstm_102/transpose:y:0'lstm_102/strided_slice_2/stack:output:0)lstm_102/strided_slice_2/stack_1:output:0)lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_102/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp5lstm_102_lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_102/lstm_cell_339/MatMulMatMul!lstm_102/strided_slice_2:output:04lstm_102/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_102/lstm_cell_339/MatMul_1MatMullstm_102/zeros:output:06lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_102/lstm_cell_339/addAddV2'lstm_102/lstm_cell_339/MatMul:product:0)lstm_102/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp6lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_102/lstm_cell_339/BiasAddBiasAddlstm_102/lstm_cell_339/add:z:05lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_102/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_102/lstm_cell_339/splitSplit/lstm_102/lstm_cell_339/split/split_dim:output:0'lstm_102/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_102/lstm_cell_339/SigmoidSigmoid%lstm_102/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_102/lstm_cell_339/Sigmoid_1Sigmoid%lstm_102/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_102/lstm_cell_339/mulMul$lstm_102/lstm_cell_339/Sigmoid_1:y:0lstm_102/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_102/lstm_cell_339/ReluRelu%lstm_102/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dц
lstm_102/lstm_cell_339/mul_1Mul"lstm_102/lstm_cell_339/Sigmoid:y:0)lstm_102/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_102/lstm_cell_339/add_1AddV2lstm_102/lstm_cell_339/mul:z:0 lstm_102/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_102/lstm_cell_339/Sigmoid_2Sigmoid%lstm_102/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dy
lstm_102/lstm_cell_339/Relu_1Relu lstm_102/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_102/lstm_cell_339/mul_2Mul$lstm_102/lstm_cell_339/Sigmoid_2:y:0+lstm_102/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_102/TensorArrayV2_1TensorListReserve/lstm_102/TensorArrayV2_1/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_102/whileWhile$lstm_102/while/loop_counter:output:0*lstm_102/while/maximum_iterations:output:0lstm_102/time:output:0!lstm_102/TensorArrayV2_1:handle:0lstm_102/zeros:output:0lstm_102/zeros_1:output:0!lstm_102/strided_slice_1:output:0@lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_102_lstm_cell_339_matmul_readvariableop_resource7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource6lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
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
lstm_102_while_body_2065183*'
condR
lstm_102_while_cond_2065182*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_102/TensorArrayV2Stack/TensorListStackTensorListStacklstm_102/while:output:3Blstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_102/strided_slice_3StridedSlice4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_102/strided_slice_3/stack:output:0)lstm_102/strided_slice_3/stack_1:output:0)lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_102/transpose_1	Transpose4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_102/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_103/ShapeShapelstm_102/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_103/strided_sliceStridedSlicelstm_103/Shape:output:0%lstm_103/strided_slice/stack:output:0'lstm_103/strided_slice/stack_1:output:0'lstm_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_103/zeros/packedPacklstm_103/strided_slice:output:0 lstm_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_103/zerosFilllstm_103/zeros/packed:output:0lstm_103/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_103/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_103/zeros_1/packedPacklstm_103/strided_slice:output:0"lstm_103/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_103/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_103/zeros_1Fill lstm_103/zeros_1/packed:output:0lstm_103/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_103/transpose	Transposelstm_102/transpose_1:y:0 lstm_103/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_103/Shape_1Shapelstm_103/transpose:y:0*
T0*
_output_shapes
:h
lstm_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_103/strided_slice_1StridedSlicelstm_103/Shape_1:output:0'lstm_103/strided_slice_1/stack:output:0)lstm_103/strided_slice_1/stack_1:output:0)lstm_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_103/TensorArrayV2TensorListReserve-lstm_103/TensorArrayV2/element_shape:output:0!lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_103/transpose:y:0Glstm_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_103/strided_slice_2StridedSlicelstm_103/transpose:y:0'lstm_103/strided_slice_2/stack:output:0)lstm_103/strided_slice_2/stack_1:output:0)lstm_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_103/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp5lstm_103_lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_103/lstm_cell_340/MatMulMatMul!lstm_103/strided_slice_2:output:04lstm_103/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_103/lstm_cell_340/MatMul_1MatMullstm_103/zeros:output:06lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_103/lstm_cell_340/addAddV2'lstm_103/lstm_cell_340/MatMul:product:0)lstm_103/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp6lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_103/lstm_cell_340/BiasAddBiasAddlstm_103/lstm_cell_340/add:z:05lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_103/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_103/lstm_cell_340/splitSplit/lstm_103/lstm_cell_340/split/split_dim:output:0'lstm_103/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_103/lstm_cell_340/SigmoidSigmoid%lstm_103/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_103/lstm_cell_340/Sigmoid_1Sigmoid%lstm_103/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_103/lstm_cell_340/mulMul$lstm_103/lstm_cell_340/Sigmoid_1:y:0lstm_103/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_103/lstm_cell_340/ReluRelu%lstm_103/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_103/lstm_cell_340/mul_1Mul"lstm_103/lstm_cell_340/Sigmoid:y:0)lstm_103/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_103/lstm_cell_340/add_1AddV2lstm_103/lstm_cell_340/mul:z:0 lstm_103/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_103/lstm_cell_340/Sigmoid_2Sigmoid%lstm_103/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2y
lstm_103/lstm_cell_340/Relu_1Relu lstm_103/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_103/lstm_cell_340/mul_2Mul$lstm_103/lstm_cell_340/Sigmoid_2:y:0+lstm_103/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_103/TensorArrayV2_1TensorListReserve/lstm_103/TensorArrayV2_1/element_shape:output:0!lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_103/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_103/whileWhile$lstm_103/while/loop_counter:output:0*lstm_103/while/maximum_iterations:output:0lstm_103/time:output:0!lstm_103/TensorArrayV2_1:handle:0lstm_103/zeros:output:0lstm_103/zeros_1:output:0!lstm_103/strided_slice_1:output:0@lstm_103/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_103_lstm_cell_340_matmul_readvariableop_resource7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource6lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
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
lstm_103_while_body_2065322*'
condR
lstm_103_while_cond_2065321*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_103/TensorArrayV2Stack/TensorListStackTensorListStacklstm_103/while:output:3Blstm_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_103/strided_slice_3StridedSlice4lstm_103/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_103/strided_slice_3/stack:output:0)lstm_103/strided_slice_3/stack_1:output:0)lstm_103/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_103/transpose_1	Transpose4lstm_103/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_103/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_103/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_104/ShapeShapelstm_103/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_104/strided_sliceStridedSlicelstm_104/Shape:output:0%lstm_104/strided_slice/stack:output:0'lstm_104/strided_slice/stack_1:output:0'lstm_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_104/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_104/zeros/packedPacklstm_104/strided_slice:output:0 lstm_104/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_104/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_104/zerosFilllstm_104/zeros/packed:output:0lstm_104/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_104/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_104/zeros_1/packedPacklstm_104/strided_slice:output:0"lstm_104/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_104/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_104/zeros_1Fill lstm_104/zeros_1/packed:output:0lstm_104/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_104/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_104/transpose	Transposelstm_103/transpose_1:y:0 lstm_104/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_104/Shape_1Shapelstm_104/transpose:y:0*
T0*
_output_shapes
:h
lstm_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_104/strided_slice_1StridedSlicelstm_104/Shape_1:output:0'lstm_104/strided_slice_1/stack:output:0)lstm_104/strided_slice_1/stack_1:output:0)lstm_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_104/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_104/TensorArrayV2TensorListReserve-lstm_104/TensorArrayV2/element_shape:output:0!lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_104/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_104/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_104/transpose:y:0Glstm_104/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_104/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_104/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_104/strided_slice_2StridedSlicelstm_104/transpose:y:0'lstm_104/strided_slice_2/stack:output:0)lstm_104/strided_slice_2/stack_1:output:0)lstm_104/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_104/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp5lstm_104_lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_104/lstm_cell_341/MatMulMatMul!lstm_104/strided_slice_2:output:04lstm_104/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_104/lstm_cell_341/MatMul_1MatMullstm_104/zeros:output:06lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_104/lstm_cell_341/addAddV2'lstm_104/lstm_cell_341/MatMul:product:0)lstm_104/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp6lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_104/lstm_cell_341/BiasAddBiasAddlstm_104/lstm_cell_341/add:z:05lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_104/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_104/lstm_cell_341/splitSplit/lstm_104/lstm_cell_341/split/split_dim:output:0'lstm_104/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_104/lstm_cell_341/SigmoidSigmoid%lstm_104/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_104/lstm_cell_341/Sigmoid_1Sigmoid%lstm_104/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_104/lstm_cell_341/mulMul$lstm_104/lstm_cell_341/Sigmoid_1:y:0lstm_104/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_104/lstm_cell_341/ReluRelu%lstm_104/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_104/lstm_cell_341/mul_1Mul"lstm_104/lstm_cell_341/Sigmoid:y:0)lstm_104/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_104/lstm_cell_341/add_1AddV2lstm_104/lstm_cell_341/mul:z:0 lstm_104/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_104/lstm_cell_341/Sigmoid_2Sigmoid%lstm_104/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
y
lstm_104/lstm_cell_341/Relu_1Relu lstm_104/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_104/lstm_cell_341/mul_2Mul$lstm_104/lstm_cell_341/Sigmoid_2:y:0+lstm_104/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_104/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_104/TensorArrayV2_1TensorListReserve/lstm_104/TensorArrayV2_1/element_shape:output:0!lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_104/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_104/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_104/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_104/whileWhile$lstm_104/while/loop_counter:output:0*lstm_104/while/maximum_iterations:output:0lstm_104/time:output:0!lstm_104/TensorArrayV2_1:handle:0lstm_104/zeros:output:0lstm_104/zeros_1:output:0!lstm_104/strided_slice_1:output:0@lstm_104/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_104_lstm_cell_341_matmul_readvariableop_resource7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource6lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
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
lstm_104_while_body_2065461*'
condR
lstm_104_while_cond_2065460*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_104/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_104/TensorArrayV2Stack/TensorListStackTensorListStacklstm_104/while:output:3Blstm_104/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_104/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_104/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_104/strided_slice_3StridedSlice4lstm_104/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_104/strided_slice_3/stack:output:0)lstm_104/strided_slice_3/stack_1:output:0)lstm_104/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_104/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_104/transpose_1	Transpose4lstm_104/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_104/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_104/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_34/MatMulMatMul!lstm_104/strided_slice_3:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_34/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp.^lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp-^lstm_102/lstm_cell_339/MatMul/ReadVariableOp/^lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp^lstm_102/while.^lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp-^lstm_103/lstm_cell_340/MatMul/ReadVariableOp/^lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp^lstm_103/while.^lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp-^lstm_104/lstm_cell_341/MatMul/ReadVariableOp/^lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp^lstm_104/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2^
-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp2\
,lstm_102/lstm_cell_339/MatMul/ReadVariableOp,lstm_102/lstm_cell_339/MatMul/ReadVariableOp2`
.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp2 
lstm_102/whilelstm_102/while2^
-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp2\
,lstm_103/lstm_cell_340/MatMul/ReadVariableOp,lstm_103/lstm_cell_340/MatMul/ReadVariableOp2`
.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp2 
lstm_103/whilelstm_103/while2^
-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp2\
,lstm_104/lstm_cell_341/MatMul/ReadVariableOp,lstm_104/lstm_cell_341/MatMul/ReadVariableOp2`
.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp2 
lstm_104/whilelstm_104/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ѓ
и
*__inference_lstm_103_layer_call_fn_2066638

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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064690s
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
*__inference_lstm_104_layer_call_fn_2067243

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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064309o
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
Г
╣
*__inference_lstm_103_layer_call_fn_2066616
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2063501|
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
while_body_2063591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_341_2063615_0:2(/
while_lstm_cell_341_2063617_0:
(+
while_lstm_cell_341_2063619_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_341_2063615:2(-
while_lstm_cell_341_2063617:
()
while_lstm_cell_341_2063619:(ѕб+while/lstm_cell_341/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_341/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_341_2063615_0while_lstm_cell_341_2063617_0while_lstm_cell_341_2063619_0*
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063577П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_341/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_341/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_341/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_341/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_341_2063615while_lstm_cell_341_2063615_0"<
while_lstm_cell_341_2063617while_lstm_cell_341_2063617_0"<
while_lstm_cell_341_2063619while_lstm_cell_341_2063619_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_341/StatefulPartitionedCall+while/lstm_cell_341/StatefulPartitionedCall: 
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
*__inference_lstm_102_layer_call_fn_2065989
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2062960|
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
Ј#
ы
while_body_2062891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_339_2062915_0:	љ0
while_lstm_cell_339_2062917_0:	dљ,
while_lstm_cell_339_2062919_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_339_2062915:	љ.
while_lstm_cell_339_2062917:	dљ*
while_lstm_cell_339_2062919:	љѕб+while/lstm_cell_339/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_339/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_339_2062915_0while_lstm_cell_339_2062917_0while_lstm_cell_339_2062919_0*
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2062877П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_339/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_339/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_339/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_339/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_339_2062915while_lstm_cell_339_2062915_0"<
while_lstm_cell_339_2062917while_lstm_cell_339_2062917_0"<
while_lstm_cell_339_2062919while_lstm_cell_339_2062919_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_339/StatefulPartitionedCall+while/lstm_cell_339/StatefulPartitionedCall: 
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
while_body_2063241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_340_2063265_0:	d╚0
while_lstm_cell_340_2063267_0:	2╚,
while_lstm_cell_340_2063269_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_340_2063265:	d╚.
while_lstm_cell_340_2063267:	2╚*
while_lstm_cell_340_2063269:	╚ѕб+while/lstm_cell_340/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_340/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_340_2063265_0while_lstm_cell_340_2063267_0while_lstm_cell_340_2063269_0*
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063227П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_340/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_340/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_340/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_340/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_340_2063265while_lstm_cell_340_2063265_0"<
while_lstm_cell_340_2063267while_lstm_cell_340_2063267_0"<
while_lstm_cell_340_2063269while_lstm_cell_340_2063269_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_340/StatefulPartitionedCall+while/lstm_cell_340/StatefulPartitionedCall: 
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
▄

Џ
/__inference_sequential_34_layer_call_fn_2065124

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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064923o
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
╚	
Ш
E__inference_dense_34_layer_call_and_return_conditional_losses_2067845

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
№
Э
/__inference_lstm_cell_340_layer_call_fn_2067960

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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063227o
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
Л8
┌
while_body_2066224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	љG
4while_lstm_cell_339_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_339_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_339/BiasAdd/ReadVariableOpб)while/lstm_cell_339/MatMul/ReadVariableOpб+while/lstm_cell_339/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
─8
н
while_body_2067742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_341/BiasAdd/ReadVariableOpб)while/lstm_cell_341/MatMul/ReadVariableOpб+while/lstm_cell_341/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
№
Э
/__inference_lstm_cell_340_layer_call_fn_2067977

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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063373o
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
while_cond_2066509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066509___redundant_placeholder05
1while_while_cond_2066509___redundant_placeholder15
1while_while_cond_2066509___redundant_placeholder25
1while_while_cond_2066509___redundant_placeholder3
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
"__inference__wrapped_model_2062810
lstm_102_inputV
Csequential_34_lstm_102_lstm_cell_339_matmul_readvariableop_resource:	љX
Esequential_34_lstm_102_lstm_cell_339_matmul_1_readvariableop_resource:	dљS
Dsequential_34_lstm_102_lstm_cell_339_biasadd_readvariableop_resource:	љV
Csequential_34_lstm_103_lstm_cell_340_matmul_readvariableop_resource:	d╚X
Esequential_34_lstm_103_lstm_cell_340_matmul_1_readvariableop_resource:	2╚S
Dsequential_34_lstm_103_lstm_cell_340_biasadd_readvariableop_resource:	╚U
Csequential_34_lstm_104_lstm_cell_341_matmul_readvariableop_resource:2(W
Esequential_34_lstm_104_lstm_cell_341_matmul_1_readvariableop_resource:
(R
Dsequential_34_lstm_104_lstm_cell_341_biasadd_readvariableop_resource:(G
5sequential_34_dense_34_matmul_readvariableop_resource:
D
6sequential_34_dense_34_biasadd_readvariableop_resource:
identityѕб-sequential_34/dense_34/BiasAdd/ReadVariableOpб,sequential_34/dense_34/MatMul/ReadVariableOpб;sequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOpб:sequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOpб<sequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOpбsequential_34/lstm_102/whileб;sequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOpб:sequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOpб<sequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOpбsequential_34/lstm_103/whileб;sequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOpб:sequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOpб<sequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOpбsequential_34/lstm_104/whileZ
sequential_34/lstm_102/ShapeShapelstm_102_input*
T0*
_output_shapes
:t
*sequential_34/lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_34/lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_34/lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_34/lstm_102/strided_sliceStridedSlice%sequential_34/lstm_102/Shape:output:03sequential_34/lstm_102/strided_slice/stack:output:05sequential_34/lstm_102/strided_slice/stack_1:output:05sequential_34/lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_34/lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dИ
#sequential_34/lstm_102/zeros/packedPack-sequential_34/lstm_102/strided_slice:output:0.sequential_34/lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_34/lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_34/lstm_102/zerosFill,sequential_34/lstm_102/zeros/packed:output:0+sequential_34/lstm_102/zeros/Const:output:0*
T0*'
_output_shapes
:         di
'sequential_34/lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╝
%sequential_34/lstm_102/zeros_1/packedPack-sequential_34/lstm_102/strided_slice:output:00sequential_34/lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_34/lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_34/lstm_102/zeros_1Fill.sequential_34/lstm_102/zeros_1/packed:output:0-sequential_34/lstm_102/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dz
%sequential_34/lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
 sequential_34/lstm_102/transpose	Transposelstm_102_input.sequential_34/lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:         r
sequential_34/lstm_102/Shape_1Shape$sequential_34/lstm_102/transpose:y:0*
T0*
_output_shapes
:v
,sequential_34/lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_34/lstm_102/strided_slice_1StridedSlice'sequential_34/lstm_102/Shape_1:output:05sequential_34/lstm_102/strided_slice_1/stack:output:07sequential_34/lstm_102/strided_slice_1/stack_1:output:07sequential_34/lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_34/lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_34/lstm_102/TensorArrayV2TensorListReserve;sequential_34/lstm_102/TensorArrayV2/element_shape:output:0/sequential_34/lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_34/lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ц
>sequential_34/lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_34/lstm_102/transpose:y:0Usequential_34/lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_34/lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_34/lstm_102/strided_slice_2StridedSlice$sequential_34/lstm_102/transpose:y:05sequential_34/lstm_102/strided_slice_2/stack:output:07sequential_34/lstm_102/strided_slice_2/stack_1:output:07sequential_34/lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┐
:sequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOpReadVariableOpCsequential_34_lstm_102_lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0П
+sequential_34/lstm_102/lstm_cell_339/MatMulMatMul/sequential_34/lstm_102/strided_slice_2:output:0Bsequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ├
<sequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOpEsequential_34_lstm_102_lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0О
-sequential_34/lstm_102/lstm_cell_339/MatMul_1MatMul%sequential_34/lstm_102/zeros:output:0Dsequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љн
(sequential_34/lstm_102/lstm_cell_339/addAddV25sequential_34/lstm_102/lstm_cell_339/MatMul:product:07sequential_34/lstm_102/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љй
;sequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOpDsequential_34_lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0П
,sequential_34/lstm_102/lstm_cell_339/BiasAddBiasAdd,sequential_34/lstm_102/lstm_cell_339/add:z:0Csequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љv
4sequential_34/lstm_102/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_34/lstm_102/lstm_cell_339/splitSplit=sequential_34/lstm_102/lstm_cell_339/split/split_dim:output:05sequential_34/lstm_102/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitъ
,sequential_34/lstm_102/lstm_cell_339/SigmoidSigmoid3sequential_34/lstm_102/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dа
.sequential_34/lstm_102/lstm_cell_339/Sigmoid_1Sigmoid3sequential_34/lstm_102/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dЙ
(sequential_34/lstm_102/lstm_cell_339/mulMul2sequential_34/lstm_102/lstm_cell_339/Sigmoid_1:y:0'sequential_34/lstm_102/zeros_1:output:0*
T0*'
_output_shapes
:         dў
)sequential_34/lstm_102/lstm_cell_339/ReluRelu3sequential_34/lstm_102/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         d╬
*sequential_34/lstm_102/lstm_cell_339/mul_1Mul0sequential_34/lstm_102/lstm_cell_339/Sigmoid:y:07sequential_34/lstm_102/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         d├
*sequential_34/lstm_102/lstm_cell_339/add_1AddV2,sequential_34/lstm_102/lstm_cell_339/mul:z:0.sequential_34/lstm_102/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dа
.sequential_34/lstm_102/lstm_cell_339/Sigmoid_2Sigmoid3sequential_34/lstm_102/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dЋ
+sequential_34/lstm_102/lstm_cell_339/Relu_1Relu.sequential_34/lstm_102/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dм
*sequential_34/lstm_102/lstm_cell_339/mul_2Mul2sequential_34/lstm_102/lstm_cell_339/Sigmoid_2:y:09sequential_34/lstm_102/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dЁ
4sequential_34/lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   §
&sequential_34/lstm_102/TensorArrayV2_1TensorListReserve=sequential_34/lstm_102/TensorArrayV2_1/element_shape:output:0/sequential_34/lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_34/lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_34/lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_34/lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_34/lstm_102/whileWhile2sequential_34/lstm_102/while/loop_counter:output:08sequential_34/lstm_102/while/maximum_iterations:output:0$sequential_34/lstm_102/time:output:0/sequential_34/lstm_102/TensorArrayV2_1:handle:0%sequential_34/lstm_102/zeros:output:0'sequential_34/lstm_102/zeros_1:output:0/sequential_34/lstm_102/strided_slice_1:output:0Nsequential_34/lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_34_lstm_102_lstm_cell_339_matmul_readvariableop_resourceEsequential_34_lstm_102_lstm_cell_339_matmul_1_readvariableop_resourceDsequential_34_lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
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
)sequential_34_lstm_102_while_body_2062442*5
cond-R+
)sequential_34_lstm_102_while_cond_2062441*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations ў
Gsequential_34/lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Є
9sequential_34/lstm_102/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_34/lstm_102/while:output:3Psequential_34/lstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0
,sequential_34/lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_34/lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_34/lstm_102/strided_slice_3StridedSliceBsequential_34/lstm_102/TensorArrayV2Stack/TensorListStack:tensor:05sequential_34/lstm_102/strided_slice_3/stack:output:07sequential_34/lstm_102/strided_slice_3/stack_1:output:07sequential_34/lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask|
'sequential_34/lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_34/lstm_102/transpose_1	TransposeBsequential_34/lstm_102/TensorArrayV2Stack/TensorListStack:tensor:00sequential_34/lstm_102/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_34/lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_34/lstm_103/ShapeShape&sequential_34/lstm_102/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_34/lstm_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_34/lstm_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_34/lstm_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_34/lstm_103/strided_sliceStridedSlice%sequential_34/lstm_103/Shape:output:03sequential_34/lstm_103/strided_slice/stack:output:05sequential_34/lstm_103/strided_slice/stack_1:output:05sequential_34/lstm_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_34/lstm_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2И
#sequential_34/lstm_103/zeros/packedPack-sequential_34/lstm_103/strided_slice:output:0.sequential_34/lstm_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_34/lstm_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_34/lstm_103/zerosFill,sequential_34/lstm_103/zeros/packed:output:0+sequential_34/lstm_103/zeros/Const:output:0*
T0*'
_output_shapes
:         2i
'sequential_34/lstm_103/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╝
%sequential_34/lstm_103/zeros_1/packedPack-sequential_34/lstm_103/strided_slice:output:00sequential_34/lstm_103/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_34/lstm_103/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_34/lstm_103/zeros_1Fill.sequential_34/lstm_103/zeros_1/packed:output:0-sequential_34/lstm_103/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2z
%sequential_34/lstm_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_34/lstm_103/transpose	Transpose&sequential_34/lstm_102/transpose_1:y:0.sequential_34/lstm_103/transpose/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_34/lstm_103/Shape_1Shape$sequential_34/lstm_103/transpose:y:0*
T0*
_output_shapes
:v
,sequential_34/lstm_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_34/lstm_103/strided_slice_1StridedSlice'sequential_34/lstm_103/Shape_1:output:05sequential_34/lstm_103/strided_slice_1/stack:output:07sequential_34/lstm_103/strided_slice_1/stack_1:output:07sequential_34/lstm_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_34/lstm_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_34/lstm_103/TensorArrayV2TensorListReserve;sequential_34/lstm_103/TensorArrayV2/element_shape:output:0/sequential_34/lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_34/lstm_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ц
>sequential_34/lstm_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_34/lstm_103/transpose:y:0Usequential_34/lstm_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_34/lstm_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_34/lstm_103/strided_slice_2StridedSlice$sequential_34/lstm_103/transpose:y:05sequential_34/lstm_103/strided_slice_2/stack:output:07sequential_34/lstm_103/strided_slice_2/stack_1:output:07sequential_34/lstm_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┐
:sequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOpReadVariableOpCsequential_34_lstm_103_lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0П
+sequential_34/lstm_103/lstm_cell_340/MatMulMatMul/sequential_34/lstm_103/strided_slice_2:output:0Bsequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚├
<sequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOpEsequential_34_lstm_103_lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0О
-sequential_34/lstm_103/lstm_cell_340/MatMul_1MatMul%sequential_34/lstm_103/zeros:output:0Dsequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚н
(sequential_34/lstm_103/lstm_cell_340/addAddV25sequential_34/lstm_103/lstm_cell_340/MatMul:product:07sequential_34/lstm_103/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚й
;sequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOpDsequential_34_lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0П
,sequential_34/lstm_103/lstm_cell_340/BiasAddBiasAdd,sequential_34/lstm_103/lstm_cell_340/add:z:0Csequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚v
4sequential_34/lstm_103/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_34/lstm_103/lstm_cell_340/splitSplit=sequential_34/lstm_103/lstm_cell_340/split/split_dim:output:05sequential_34/lstm_103/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitъ
,sequential_34/lstm_103/lstm_cell_340/SigmoidSigmoid3sequential_34/lstm_103/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2а
.sequential_34/lstm_103/lstm_cell_340/Sigmoid_1Sigmoid3sequential_34/lstm_103/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2Й
(sequential_34/lstm_103/lstm_cell_340/mulMul2sequential_34/lstm_103/lstm_cell_340/Sigmoid_1:y:0'sequential_34/lstm_103/zeros_1:output:0*
T0*'
_output_shapes
:         2ў
)sequential_34/lstm_103/lstm_cell_340/ReluRelu3sequential_34/lstm_103/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2╬
*sequential_34/lstm_103/lstm_cell_340/mul_1Mul0sequential_34/lstm_103/lstm_cell_340/Sigmoid:y:07sequential_34/lstm_103/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2├
*sequential_34/lstm_103/lstm_cell_340/add_1AddV2,sequential_34/lstm_103/lstm_cell_340/mul:z:0.sequential_34/lstm_103/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2а
.sequential_34/lstm_103/lstm_cell_340/Sigmoid_2Sigmoid3sequential_34/lstm_103/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2Ћ
+sequential_34/lstm_103/lstm_cell_340/Relu_1Relu.sequential_34/lstm_103/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2м
*sequential_34/lstm_103/lstm_cell_340/mul_2Mul2sequential_34/lstm_103/lstm_cell_340/Sigmoid_2:y:09sequential_34/lstm_103/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ё
4sequential_34/lstm_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   §
&sequential_34/lstm_103/TensorArrayV2_1TensorListReserve=sequential_34/lstm_103/TensorArrayV2_1/element_shape:output:0/sequential_34/lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_34/lstm_103/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_34/lstm_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_34/lstm_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_34/lstm_103/whileWhile2sequential_34/lstm_103/while/loop_counter:output:08sequential_34/lstm_103/while/maximum_iterations:output:0$sequential_34/lstm_103/time:output:0/sequential_34/lstm_103/TensorArrayV2_1:handle:0%sequential_34/lstm_103/zeros:output:0'sequential_34/lstm_103/zeros_1:output:0/sequential_34/lstm_103/strided_slice_1:output:0Nsequential_34/lstm_103/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_34_lstm_103_lstm_cell_340_matmul_readvariableop_resourceEsequential_34_lstm_103_lstm_cell_340_matmul_1_readvariableop_resourceDsequential_34_lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
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
)sequential_34_lstm_103_while_body_2062581*5
cond-R+
)sequential_34_lstm_103_while_cond_2062580*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations ў
Gsequential_34/lstm_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Є
9sequential_34/lstm_103/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_34/lstm_103/while:output:3Psequential_34/lstm_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0
,sequential_34/lstm_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_34/lstm_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_34/lstm_103/strided_slice_3StridedSliceBsequential_34/lstm_103/TensorArrayV2Stack/TensorListStack:tensor:05sequential_34/lstm_103/strided_slice_3/stack:output:07sequential_34/lstm_103/strided_slice_3/stack_1:output:07sequential_34/lstm_103/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask|
'sequential_34/lstm_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_34/lstm_103/transpose_1	TransposeBsequential_34/lstm_103/TensorArrayV2Stack/TensorListStack:tensor:00sequential_34/lstm_103/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_34/lstm_103/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_34/lstm_104/ShapeShape&sequential_34/lstm_103/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_34/lstm_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_34/lstm_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_34/lstm_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_34/lstm_104/strided_sliceStridedSlice%sequential_34/lstm_104/Shape:output:03sequential_34/lstm_104/strided_slice/stack:output:05sequential_34/lstm_104/strided_slice/stack_1:output:05sequential_34/lstm_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_34/lstm_104/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
И
#sequential_34/lstm_104/zeros/packedPack-sequential_34/lstm_104/strided_slice:output:0.sequential_34/lstm_104/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_34/lstm_104/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_34/lstm_104/zerosFill,sequential_34/lstm_104/zeros/packed:output:0+sequential_34/lstm_104/zeros/Const:output:0*
T0*'
_output_shapes
:         
i
'sequential_34/lstm_104/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╝
%sequential_34/lstm_104/zeros_1/packedPack-sequential_34/lstm_104/strided_slice:output:00sequential_34/lstm_104/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_34/lstm_104/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_34/lstm_104/zeros_1Fill.sequential_34/lstm_104/zeros_1/packed:output:0-sequential_34/lstm_104/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
z
%sequential_34/lstm_104/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_34/lstm_104/transpose	Transpose&sequential_34/lstm_103/transpose_1:y:0.sequential_34/lstm_104/transpose/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_34/lstm_104/Shape_1Shape$sequential_34/lstm_104/transpose:y:0*
T0*
_output_shapes
:v
,sequential_34/lstm_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_34/lstm_104/strided_slice_1StridedSlice'sequential_34/lstm_104/Shape_1:output:05sequential_34/lstm_104/strided_slice_1/stack:output:07sequential_34/lstm_104/strided_slice_1/stack_1:output:07sequential_34/lstm_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_34/lstm_104/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_34/lstm_104/TensorArrayV2TensorListReserve;sequential_34/lstm_104/TensorArrayV2/element_shape:output:0/sequential_34/lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_34/lstm_104/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ц
>sequential_34/lstm_104/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_34/lstm_104/transpose:y:0Usequential_34/lstm_104/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_34/lstm_104/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_104/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_104/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_34/lstm_104/strided_slice_2StridedSlice$sequential_34/lstm_104/transpose:y:05sequential_34/lstm_104/strided_slice_2/stack:output:07sequential_34/lstm_104/strided_slice_2/stack_1:output:07sequential_34/lstm_104/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskЙ
:sequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOpReadVariableOpCsequential_34_lstm_104_lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▄
+sequential_34/lstm_104/lstm_cell_341/MatMulMatMul/sequential_34/lstm_104/strided_slice_2:output:0Bsequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┬
<sequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOpEsequential_34_lstm_104_lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0о
-sequential_34/lstm_104/lstm_cell_341/MatMul_1MatMul%sequential_34/lstm_104/zeros:output:0Dsequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (М
(sequential_34/lstm_104/lstm_cell_341/addAddV25sequential_34/lstm_104/lstm_cell_341/MatMul:product:07sequential_34/lstm_104/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (╝
;sequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOpDsequential_34_lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▄
,sequential_34/lstm_104/lstm_cell_341/BiasAddBiasAdd,sequential_34/lstm_104/lstm_cell_341/add:z:0Csequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (v
4sequential_34/lstm_104/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_34/lstm_104/lstm_cell_341/splitSplit=sequential_34/lstm_104/lstm_cell_341/split/split_dim:output:05sequential_34/lstm_104/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitъ
,sequential_34/lstm_104/lstm_cell_341/SigmoidSigmoid3sequential_34/lstm_104/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
а
.sequential_34/lstm_104/lstm_cell_341/Sigmoid_1Sigmoid3sequential_34/lstm_104/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
Й
(sequential_34/lstm_104/lstm_cell_341/mulMul2sequential_34/lstm_104/lstm_cell_341/Sigmoid_1:y:0'sequential_34/lstm_104/zeros_1:output:0*
T0*'
_output_shapes
:         
ў
)sequential_34/lstm_104/lstm_cell_341/ReluRelu3sequential_34/lstm_104/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
╬
*sequential_34/lstm_104/lstm_cell_341/mul_1Mul0sequential_34/lstm_104/lstm_cell_341/Sigmoid:y:07sequential_34/lstm_104/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
├
*sequential_34/lstm_104/lstm_cell_341/add_1AddV2,sequential_34/lstm_104/lstm_cell_341/mul:z:0.sequential_34/lstm_104/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
а
.sequential_34/lstm_104/lstm_cell_341/Sigmoid_2Sigmoid3sequential_34/lstm_104/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
Ћ
+sequential_34/lstm_104/lstm_cell_341/Relu_1Relu.sequential_34/lstm_104/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
м
*sequential_34/lstm_104/lstm_cell_341/mul_2Mul2sequential_34/lstm_104/lstm_cell_341/Sigmoid_2:y:09sequential_34/lstm_104/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ё
4sequential_34/lstm_104/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   §
&sequential_34/lstm_104/TensorArrayV2_1TensorListReserve=sequential_34/lstm_104/TensorArrayV2_1/element_shape:output:0/sequential_34/lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_34/lstm_104/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_34/lstm_104/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_34/lstm_104/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_34/lstm_104/whileWhile2sequential_34/lstm_104/while/loop_counter:output:08sequential_34/lstm_104/while/maximum_iterations:output:0$sequential_34/lstm_104/time:output:0/sequential_34/lstm_104/TensorArrayV2_1:handle:0%sequential_34/lstm_104/zeros:output:0'sequential_34/lstm_104/zeros_1:output:0/sequential_34/lstm_104/strided_slice_1:output:0Nsequential_34/lstm_104/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_34_lstm_104_lstm_cell_341_matmul_readvariableop_resourceEsequential_34_lstm_104_lstm_cell_341_matmul_1_readvariableop_resourceDsequential_34_lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
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
)sequential_34_lstm_104_while_body_2062720*5
cond-R+
)sequential_34_lstm_104_while_cond_2062719*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations ў
Gsequential_34/lstm_104/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Є
9sequential_34/lstm_104/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_34/lstm_104/while:output:3Psequential_34/lstm_104/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0
,sequential_34/lstm_104/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_34/lstm_104/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_104/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_34/lstm_104/strided_slice_3StridedSliceBsequential_34/lstm_104/TensorArrayV2Stack/TensorListStack:tensor:05sequential_34/lstm_104/strided_slice_3/stack:output:07sequential_34/lstm_104/strided_slice_3/stack_1:output:07sequential_34/lstm_104/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask|
'sequential_34/lstm_104/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_34/lstm_104/transpose_1	TransposeBsequential_34/lstm_104/TensorArrayV2Stack/TensorListStack:tensor:00sequential_34/lstm_104/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
r
sequential_34/lstm_104/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    б
,sequential_34/dense_34/MatMul/ReadVariableOpReadVariableOp5sequential_34_dense_34_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0└
sequential_34/dense_34/MatMulMatMul/sequential_34/lstm_104/strided_slice_3:output:04sequential_34/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_34/dense_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_34_dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_34/dense_34/BiasAddBiasAdd'sequential_34/dense_34/MatMul:product:05sequential_34/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_34/dense_34/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp.^sequential_34/dense_34/BiasAdd/ReadVariableOp-^sequential_34/dense_34/MatMul/ReadVariableOp<^sequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp;^sequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOp=^sequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp^sequential_34/lstm_102/while<^sequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp;^sequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOp=^sequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp^sequential_34/lstm_103/while<^sequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp;^sequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOp=^sequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp^sequential_34/lstm_104/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2^
-sequential_34/dense_34/BiasAdd/ReadVariableOp-sequential_34/dense_34/BiasAdd/ReadVariableOp2\
,sequential_34/dense_34/MatMul/ReadVariableOp,sequential_34/dense_34/MatMul/ReadVariableOp2z
;sequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp;sequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp2x
:sequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOp:sequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOp2|
<sequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp<sequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp2<
sequential_34/lstm_102/whilesequential_34/lstm_102/while2z
;sequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp;sequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp2x
:sequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOp:sequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOp2|
<sequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp<sequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp2<
sequential_34/lstm_103/whilesequential_34/lstm_103/while2z
;sequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp;sequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp2x
:sequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOp:sequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOp2|
<sequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp<sequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp2<
sequential_34/lstm_104/whilesequential_34/lstm_104/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_102_input
║
╚
while_cond_2066223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066223___redundant_placeholder05
1while_while_cond_2066223___redundant_placeholder15
1while_while_cond_2066223___redundant_placeholder25
1while_while_cond_2066223___redundant_placeholder3
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
▄

Џ
/__inference_sequential_34_layer_call_fn_2065097

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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064334o
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
О
є
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2062877

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
║
╚
while_cond_2063240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063240___redundant_placeholder05
1while_while_cond_2063240___redundant_placeholder15
1while_while_cond_2063240___redundant_placeholder25
1while_while_cond_2063240___redundant_placeholder3
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064923

inputs#
lstm_102_2064896:	љ#
lstm_102_2064898:	dљ
lstm_102_2064900:	љ#
lstm_103_2064903:	d╚#
lstm_103_2064905:	2╚
lstm_103_2064907:	╚"
lstm_104_2064910:2("
lstm_104_2064912:
(
lstm_104_2064914:("
dense_34_2064917:

dense_34_2064919:
identityѕб dense_34/StatefulPartitionedCallб lstm_102/StatefulPartitionedCallб lstm_103/StatefulPartitionedCallб lstm_104/StatefulPartitionedCallІ
 lstm_102/StatefulPartitionedCallStatefulPartitionedCallinputslstm_102_2064896lstm_102_2064898lstm_102_2064900*
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064855«
 lstm_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0lstm_103_2064903lstm_103_2064905lstm_103_2064907*
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064690ф
 lstm_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_103/StatefulPartitionedCall:output:0lstm_104_2064910lstm_104_2064912lstm_104_2064914*
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064525ќ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)lstm_104/StatefulPartitionedCall:output:0dense_34_2064917dense_34_2064919*
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
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_34/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall!^lstm_103/StatefulPartitionedCall!^lstm_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall2D
 lstm_103/StatefulPartitionedCall lstm_103/StatefulPartitionedCall2D
 lstm_104/StatefulPartitionedCall lstm_104/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_2063081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063081___redundant_placeholder05
1while_while_cond_2063081___redundant_placeholder15
1while_while_cond_2063081___redundant_placeholder25
1while_while_cond_2063081___redundant_placeholder3
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
while_cond_2063781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063781___redundant_placeholder05
1while_while_cond_2063781___redundant_placeholder15
1while_while_cond_2063781___redundant_placeholder25
1while_while_cond_2063781___redundant_placeholder3
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
ћC
З

lstm_104_while_body_2065461.
*lstm_104_while_lstm_104_while_loop_counter4
0lstm_104_while_lstm_104_while_maximum_iterations
lstm_104_while_placeholder 
lstm_104_while_placeholder_1 
lstm_104_while_placeholder_2 
lstm_104_while_placeholder_3-
)lstm_104_while_lstm_104_strided_slice_1_0i
elstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0:2(Q
?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(L
>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0:(
lstm_104_while_identity
lstm_104_while_identity_1
lstm_104_while_identity_2
lstm_104_while_identity_3
lstm_104_while_identity_4
lstm_104_while_identity_5+
'lstm_104_while_lstm_104_strided_slice_1g
clstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensorM
;lstm_104_while_lstm_cell_341_matmul_readvariableop_resource:2(O
=lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource:
(J
<lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource:(ѕб3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpб2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpб4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpЉ
@lstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_104/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0lstm_104_while_placeholderIlstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_104/while/lstm_cell_341/MatMulMatMul9lstm_104/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_104/while/lstm_cell_341/MatMul_1MatMullstm_104_while_placeholder_2<lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_104/while/lstm_cell_341/addAddV2-lstm_104/while/lstm_cell_341/MatMul:product:0/lstm_104/while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_104/while/lstm_cell_341/BiasAddBiasAdd$lstm_104/while/lstm_cell_341/add:z:0;lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_104/while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_104/while/lstm_cell_341/splitSplit5lstm_104/while/lstm_cell_341/split/split_dim:output:0-lstm_104/while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_104/while/lstm_cell_341/SigmoidSigmoid+lstm_104/while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_104/while/lstm_cell_341/Sigmoid_1Sigmoid+lstm_104/while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_104/while/lstm_cell_341/mulMul*lstm_104/while/lstm_cell_341/Sigmoid_1:y:0lstm_104_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_104/while/lstm_cell_341/ReluRelu+lstm_104/while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_104/while/lstm_cell_341/mul_1Mul(lstm_104/while/lstm_cell_341/Sigmoid:y:0/lstm_104/while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_104/while/lstm_cell_341/add_1AddV2$lstm_104/while/lstm_cell_341/mul:z:0&lstm_104/while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_104/while/lstm_cell_341/Sigmoid_2Sigmoid+lstm_104/while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_104/while/lstm_cell_341/Relu_1Relu&lstm_104/while/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_104/while/lstm_cell_341/mul_2Mul*lstm_104/while/lstm_cell_341/Sigmoid_2:y:01lstm_104/while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_104/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_104_while_placeholder_1lstm_104_while_placeholder&lstm_104/while/lstm_cell_341/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_104/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_104/while/addAddV2lstm_104_while_placeholderlstm_104/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_104/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_104/while/add_1AddV2*lstm_104_while_lstm_104_while_loop_counterlstm_104/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_104/while/IdentityIdentitylstm_104/while/add_1:z:0^lstm_104/while/NoOp*
T0*
_output_shapes
: ј
lstm_104/while/Identity_1Identity0lstm_104_while_lstm_104_while_maximum_iterations^lstm_104/while/NoOp*
T0*
_output_shapes
: t
lstm_104/while/Identity_2Identitylstm_104/while/add:z:0^lstm_104/while/NoOp*
T0*
_output_shapes
: А
lstm_104/while/Identity_3IdentityClstm_104/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_104/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_104/while/Identity_4Identity&lstm_104/while/lstm_cell_341/mul_2:z:0^lstm_104/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_104/while/Identity_5Identity&lstm_104/while/lstm_cell_341/add_1:z:0^lstm_104/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_104/while/NoOpNoOp4^lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp3^lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp5^lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_104_while_identity lstm_104/while/Identity:output:0"?
lstm_104_while_identity_1"lstm_104/while/Identity_1:output:0"?
lstm_104_while_identity_2"lstm_104/while/Identity_2:output:0"?
lstm_104_while_identity_3"lstm_104/while/Identity_3:output:0"?
lstm_104_while_identity_4"lstm_104/while/Identity_4:output:0"?
lstm_104_while_identity_5"lstm_104/while/Identity_5:output:0"T
'lstm_104_while_lstm_104_strided_slice_1)lstm_104_while_lstm_104_strided_slice_1_0"~
<lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0"ђ
=lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0"|
;lstm_104_while_lstm_cell_341_matmul_readvariableop_resource=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0"╠
clstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensorelstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp2h
2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp2l
4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
№
Э
/__inference_lstm_cell_339_layer_call_fn_2067862

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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2062877o
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
Уц
ќ
#__inference__traced_restore_2068412
file_prefix2
 assignvariableop_dense_34_kernel:
.
 assignvariableop_1_dense_34_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_102_lstm_cell_102_kernel:	љM
:assignvariableop_8_lstm_102_lstm_cell_102_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_102_lstm_cell_102_bias:	љD
1assignvariableop_10_lstm_103_lstm_cell_103_kernel:	d╚N
;assignvariableop_11_lstm_103_lstm_cell_103_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_103_lstm_cell_103_bias:	╚C
1assignvariableop_13_lstm_104_lstm_cell_104_kernel:2(M
;assignvariableop_14_lstm_104_lstm_cell_104_recurrent_kernel:
(=
/assignvariableop_15_lstm_104_lstm_cell_104_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_34_kernel_m:
6
(assignvariableop_19_adam_dense_34_bias_m:K
8assignvariableop_20_adam_lstm_102_lstm_cell_102_kernel_m:	љU
Bassignvariableop_21_adam_lstm_102_lstm_cell_102_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_102_lstm_cell_102_bias_m:	љK
8assignvariableop_23_adam_lstm_103_lstm_cell_103_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_103_lstm_cell_103_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_103_lstm_cell_103_bias_m:	╚J
8assignvariableop_26_adam_lstm_104_lstm_cell_104_kernel_m:2(T
Bassignvariableop_27_adam_lstm_104_lstm_cell_104_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_104_lstm_cell_104_bias_m:(<
*assignvariableop_29_adam_dense_34_kernel_v:
6
(assignvariableop_30_adam_dense_34_bias_v:K
8assignvariableop_31_adam_lstm_102_lstm_cell_102_kernel_v:	љU
Bassignvariableop_32_adam_lstm_102_lstm_cell_102_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_102_lstm_cell_102_bias_v:	љK
8assignvariableop_34_adam_lstm_103_lstm_cell_103_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_103_lstm_cell_103_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_103_lstm_cell_103_bias_v:	╚J
8assignvariableop_37_adam_lstm_104_lstm_cell_104_kernel_v:2(T
Bassignvariableop_38_adam_lstm_104_lstm_cell_104_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_104_lstm_cell_104_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_34_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_34_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_102_lstm_cell_102_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_102_lstm_cell_102_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_102_lstm_cell_102_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_103_lstm_cell_103_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_103_lstm_cell_103_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_103_lstm_cell_103_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_104_lstm_cell_104_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_104_lstm_cell_104_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_104_lstm_cell_104_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_34_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_34_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_102_lstm_cell_102_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_102_lstm_cell_102_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_102_lstm_cell_102_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_103_lstm_cell_103_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_103_lstm_cell_103_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_103_lstm_cell_103_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_104_lstm_cell_104_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_104_lstm_cell_104_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_104_lstm_cell_104_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_34_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_34_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_102_lstm_cell_102_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_102_lstm_cell_102_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_102_lstm_cell_102_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_103_lstm_cell_103_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_103_lstm_cell_103_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_103_lstm_cell_103_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_104_lstm_cell_104_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_104_lstm_cell_104_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_104_lstm_cell_104_bias_vIdentity_39:output:0"/device:CPU:0*
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
РJ
Б
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066451

inputs?
,lstm_cell_339_matmul_readvariableop_resource:	љA
.lstm_cell_339_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_339_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_339/BiasAdd/ReadVariableOpб#lstm_cell_339/MatMul/ReadVariableOpб%lstm_cell_339/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2066367*
condR
while_cond_2066366*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
О
є
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063227

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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068107

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
е8
І
E__inference_lstm_104_layer_call_and_return_conditional_losses_2063851

inputs'
lstm_cell_341_2063769:2('
lstm_cell_341_2063771:
(#
lstm_cell_341_2063773:(
identityѕб%lstm_cell_341/StatefulPartitionedCallбwhile;
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
%lstm_cell_341/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_341_2063769lstm_cell_341_2063771lstm_cell_341_2063773*
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063723n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_341_2063769lstm_cell_341_2063771lstm_cell_341_2063773*
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
while_body_2063782*
condR
while_cond_2063781*K
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
NoOpNoOp&^lstm_cell_341/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_341/StatefulPartitionedCall%lstm_cell_341/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064009

inputs?
,lstm_cell_339_matmul_readvariableop_resource:	љA
.lstm_cell_339_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_339_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_339/BiasAdd/ReadVariableOpб#lstm_cell_339/MatMul/ReadVariableOpб%lstm_cell_339/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2063925*
condR
while_cond_2063924*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
оS
и
)sequential_34_lstm_104_while_body_2062720J
Fsequential_34_lstm_104_while_sequential_34_lstm_104_while_loop_counterP
Lsequential_34_lstm_104_while_sequential_34_lstm_104_while_maximum_iterations,
(sequential_34_lstm_104_while_placeholder.
*sequential_34_lstm_104_while_placeholder_1.
*sequential_34_lstm_104_while_placeholder_2.
*sequential_34_lstm_104_while_placeholder_3I
Esequential_34_lstm_104_while_sequential_34_lstm_104_strided_slice_1_0є
Ђsequential_34_lstm_104_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_104_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_34_lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0:2(_
Msequential_34_lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(Z
Lsequential_34_lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0:()
%sequential_34_lstm_104_while_identity+
'sequential_34_lstm_104_while_identity_1+
'sequential_34_lstm_104_while_identity_2+
'sequential_34_lstm_104_while_identity_3+
'sequential_34_lstm_104_while_identity_4+
'sequential_34_lstm_104_while_identity_5G
Csequential_34_lstm_104_while_sequential_34_lstm_104_strided_slice_1Ѓ
sequential_34_lstm_104_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_104_tensorarrayunstack_tensorlistfromtensor[
Isequential_34_lstm_104_while_lstm_cell_341_matmul_readvariableop_resource:2(]
Ksequential_34_lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource:
(X
Jsequential_34_lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource:(ѕбAsequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpб@sequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpбBsequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpЪ
Nsequential_34/lstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   џ
@sequential_34/lstm_104/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_34_lstm_104_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_104_tensorarrayunstack_tensorlistfromtensor_0(sequential_34_lstm_104_while_placeholderWsequential_34/lstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╠
@sequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOpKsequential_34_lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ђ
1sequential_34/lstm_104/while/lstm_cell_341/MatMulMatMulGsequential_34/lstm_104/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (л
Bsequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOpMsequential_34_lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0у
3sequential_34/lstm_104/while/lstm_cell_341/MatMul_1MatMul*sequential_34_lstm_104_while_placeholder_2Jsequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (т
.sequential_34/lstm_104/while/lstm_cell_341/addAddV2;sequential_34/lstm_104/while/lstm_cell_341/MatMul:product:0=sequential_34/lstm_104/while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (╩
Asequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOpLsequential_34_lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ь
2sequential_34/lstm_104/while/lstm_cell_341/BiasAddBiasAdd2sequential_34/lstm_104/while/lstm_cell_341/add:z:0Isequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (|
:sequential_34/lstm_104/while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_34/lstm_104/while/lstm_cell_341/splitSplitCsequential_34/lstm_104/while/lstm_cell_341/split/split_dim:output:0;sequential_34/lstm_104/while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitф
2sequential_34/lstm_104/while/lstm_cell_341/SigmoidSigmoid9sequential_34/lstm_104/while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
г
4sequential_34/lstm_104/while/lstm_cell_341/Sigmoid_1Sigmoid9sequential_34/lstm_104/while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
═
.sequential_34/lstm_104/while/lstm_cell_341/mulMul8sequential_34/lstm_104/while/lstm_cell_341/Sigmoid_1:y:0*sequential_34_lstm_104_while_placeholder_3*
T0*'
_output_shapes
:         
ц
/sequential_34/lstm_104/while/lstm_cell_341/ReluRelu9sequential_34/lstm_104/while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Я
0sequential_34/lstm_104/while/lstm_cell_341/mul_1Mul6sequential_34/lstm_104/while/lstm_cell_341/Sigmoid:y:0=sequential_34/lstm_104/while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
Н
0sequential_34/lstm_104/while/lstm_cell_341/add_1AddV22sequential_34/lstm_104/while/lstm_cell_341/mul:z:04sequential_34/lstm_104/while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
г
4sequential_34/lstm_104/while/lstm_cell_341/Sigmoid_2Sigmoid9sequential_34/lstm_104/while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
А
1sequential_34/lstm_104/while/lstm_cell_341/Relu_1Relu4sequential_34/lstm_104/while/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
С
0sequential_34/lstm_104/while/lstm_cell_341/mul_2Mul8sequential_34/lstm_104/while/lstm_cell_341/Sigmoid_2:y:0?sequential_34/lstm_104/while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
б
Asequential_34/lstm_104/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_34_lstm_104_while_placeholder_1(sequential_34_lstm_104_while_placeholder4sequential_34/lstm_104/while/lstm_cell_341/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_34/lstm_104/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_34/lstm_104/while/addAddV2(sequential_34_lstm_104_while_placeholder+sequential_34/lstm_104/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_34/lstm_104/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_34/lstm_104/while/add_1AddV2Fsequential_34_lstm_104_while_sequential_34_lstm_104_while_loop_counter-sequential_34/lstm_104/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_34/lstm_104/while/IdentityIdentity&sequential_34/lstm_104/while/add_1:z:0"^sequential_34/lstm_104/while/NoOp*
T0*
_output_shapes
: к
'sequential_34/lstm_104/while/Identity_1IdentityLsequential_34_lstm_104_while_sequential_34_lstm_104_while_maximum_iterations"^sequential_34/lstm_104/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_34/lstm_104/while/Identity_2Identity$sequential_34/lstm_104/while/add:z:0"^sequential_34/lstm_104/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_34/lstm_104/while/Identity_3IdentityQsequential_34/lstm_104/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_34/lstm_104/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_34/lstm_104/while/Identity_4Identity4sequential_34/lstm_104/while/lstm_cell_341/mul_2:z:0"^sequential_34/lstm_104/while/NoOp*
T0*'
_output_shapes
:         
┐
'sequential_34/lstm_104/while/Identity_5Identity4sequential_34/lstm_104/while/lstm_cell_341/add_1:z:0"^sequential_34/lstm_104/while/NoOp*
T0*'
_output_shapes
:         
»
!sequential_34/lstm_104/while/NoOpNoOpB^sequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpA^sequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpC^sequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_34_lstm_104_while_identity.sequential_34/lstm_104/while/Identity:output:0"[
'sequential_34_lstm_104_while_identity_10sequential_34/lstm_104/while/Identity_1:output:0"[
'sequential_34_lstm_104_while_identity_20sequential_34/lstm_104/while/Identity_2:output:0"[
'sequential_34_lstm_104_while_identity_30sequential_34/lstm_104/while/Identity_3:output:0"[
'sequential_34_lstm_104_while_identity_40sequential_34/lstm_104/while/Identity_4:output:0"[
'sequential_34_lstm_104_while_identity_50sequential_34/lstm_104/while/Identity_5:output:0"џ
Jsequential_34_lstm_104_while_lstm_cell_341_biasadd_readvariableop_resourceLsequential_34_lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0"ю
Ksequential_34_lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resourceMsequential_34_lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0"ў
Isequential_34_lstm_104_while_lstm_cell_341_matmul_readvariableop_resourceKsequential_34_lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0"ї
Csequential_34_lstm_104_while_sequential_34_lstm_104_strided_slice_1Esequential_34_lstm_104_while_sequential_34_lstm_104_strided_slice_1_0"Ё
sequential_34_lstm_104_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_104_tensorarrayunstack_tensorlistfromtensorЂsequential_34_lstm_104_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_104_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2є
Asequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpAsequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp2ё
@sequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp@sequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp2ѕ
Bsequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpBsequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
ћC
З

lstm_104_while_body_2065888.
*lstm_104_while_lstm_104_while_loop_counter4
0lstm_104_while_lstm_104_while_maximum_iterations
lstm_104_while_placeholder 
lstm_104_while_placeholder_1 
lstm_104_while_placeholder_2 
lstm_104_while_placeholder_3-
)lstm_104_while_lstm_104_strided_slice_1_0i
elstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0:2(Q
?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(L
>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0:(
lstm_104_while_identity
lstm_104_while_identity_1
lstm_104_while_identity_2
lstm_104_while_identity_3
lstm_104_while_identity_4
lstm_104_while_identity_5+
'lstm_104_while_lstm_104_strided_slice_1g
clstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensorM
;lstm_104_while_lstm_cell_341_matmul_readvariableop_resource:2(O
=lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource:
(J
<lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource:(ѕб3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpб2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpб4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpЉ
@lstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_104/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0lstm_104_while_placeholderIlstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_104/while/lstm_cell_341/MatMulMatMul9lstm_104/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_104/while/lstm_cell_341/MatMul_1MatMullstm_104_while_placeholder_2<lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_104/while/lstm_cell_341/addAddV2-lstm_104/while/lstm_cell_341/MatMul:product:0/lstm_104/while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_104/while/lstm_cell_341/BiasAddBiasAdd$lstm_104/while/lstm_cell_341/add:z:0;lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_104/while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_104/while/lstm_cell_341/splitSplit5lstm_104/while/lstm_cell_341/split/split_dim:output:0-lstm_104/while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_104/while/lstm_cell_341/SigmoidSigmoid+lstm_104/while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_104/while/lstm_cell_341/Sigmoid_1Sigmoid+lstm_104/while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_104/while/lstm_cell_341/mulMul*lstm_104/while/lstm_cell_341/Sigmoid_1:y:0lstm_104_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_104/while/lstm_cell_341/ReluRelu+lstm_104/while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_104/while/lstm_cell_341/mul_1Mul(lstm_104/while/lstm_cell_341/Sigmoid:y:0/lstm_104/while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_104/while/lstm_cell_341/add_1AddV2$lstm_104/while/lstm_cell_341/mul:z:0&lstm_104/while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_104/while/lstm_cell_341/Sigmoid_2Sigmoid+lstm_104/while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_104/while/lstm_cell_341/Relu_1Relu&lstm_104/while/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_104/while/lstm_cell_341/mul_2Mul*lstm_104/while/lstm_cell_341/Sigmoid_2:y:01lstm_104/while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_104/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_104_while_placeholder_1lstm_104_while_placeholder&lstm_104/while/lstm_cell_341/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_104/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_104/while/addAddV2lstm_104_while_placeholderlstm_104/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_104/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_104/while/add_1AddV2*lstm_104_while_lstm_104_while_loop_counterlstm_104/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_104/while/IdentityIdentitylstm_104/while/add_1:z:0^lstm_104/while/NoOp*
T0*
_output_shapes
: ј
lstm_104/while/Identity_1Identity0lstm_104_while_lstm_104_while_maximum_iterations^lstm_104/while/NoOp*
T0*
_output_shapes
: t
lstm_104/while/Identity_2Identitylstm_104/while/add:z:0^lstm_104/while/NoOp*
T0*
_output_shapes
: А
lstm_104/while/Identity_3IdentityClstm_104/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_104/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_104/while/Identity_4Identity&lstm_104/while/lstm_cell_341/mul_2:z:0^lstm_104/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_104/while/Identity_5Identity&lstm_104/while/lstm_cell_341/add_1:z:0^lstm_104/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_104/while/NoOpNoOp4^lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp3^lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp5^lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_104_while_identity lstm_104/while/Identity:output:0"?
lstm_104_while_identity_1"lstm_104/while/Identity_1:output:0"?
lstm_104_while_identity_2"lstm_104/while/Identity_2:output:0"?
lstm_104_while_identity_3"lstm_104/while/Identity_3:output:0"?
lstm_104_while_identity_4"lstm_104/while/Identity_4:output:0"?
lstm_104_while_identity_5"lstm_104/while/Identity_5:output:0"T
'lstm_104_while_lstm_104_strided_slice_1)lstm_104_while_lstm_104_strided_slice_1_0"~
<lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0"ђ
=lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0"|
;lstm_104_while_lstm_cell_341_matmul_readvariableop_resource=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0"╠
clstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensorelstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp2h
2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp2l
4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
»8
ј
E__inference_lstm_102_layer_call_and_return_conditional_losses_2063151

inputs(
lstm_cell_339_2063069:	љ(
lstm_cell_339_2063071:	dљ$
lstm_cell_339_2063073:	љ
identityѕб%lstm_cell_339/StatefulPartitionedCallбwhile;
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
%lstm_cell_339/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_339_2063069lstm_cell_339_2063071lstm_cell_339_2063073*
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2063023n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_339_2063069lstm_cell_339_2063071lstm_cell_339_2063073*
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
while_body_2063082*
condR
while_cond_2063081*K
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
NoOpNoOp&^lstm_cell_339/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_339/StatefulPartitionedCall%lstm_cell_339/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
║
╚
while_cond_2067125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2067125___redundant_placeholder05
1while_while_cond_2067125___redundant_placeholder15
1while_while_cond_2067125___redundant_placeholder25
1while_while_cond_2067125___redundant_placeholder3
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
while_cond_2062890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2062890___redundant_placeholder05
1while_while_cond_2062890___redundant_placeholder15
1while_while_cond_2062890___redundant_placeholder25
1while_while_cond_2062890___redundant_placeholder3
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
О
є
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2063023

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
сS
й
)sequential_34_lstm_102_while_body_2062442J
Fsequential_34_lstm_102_while_sequential_34_lstm_102_while_loop_counterP
Lsequential_34_lstm_102_while_sequential_34_lstm_102_while_maximum_iterations,
(sequential_34_lstm_102_while_placeholder.
*sequential_34_lstm_102_while_placeholder_1.
*sequential_34_lstm_102_while_placeholder_2.
*sequential_34_lstm_102_while_placeholder_3I
Esequential_34_lstm_102_while_sequential_34_lstm_102_strided_slice_1_0є
Ђsequential_34_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_102_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_34_lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0:	љ`
Msequential_34_lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0:	dљ[
Lsequential_34_lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0:	љ)
%sequential_34_lstm_102_while_identity+
'sequential_34_lstm_102_while_identity_1+
'sequential_34_lstm_102_while_identity_2+
'sequential_34_lstm_102_while_identity_3+
'sequential_34_lstm_102_while_identity_4+
'sequential_34_lstm_102_while_identity_5G
Csequential_34_lstm_102_while_sequential_34_lstm_102_strided_slice_1Ѓ
sequential_34_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_102_tensorarrayunstack_tensorlistfromtensor\
Isequential_34_lstm_102_while_lstm_cell_339_matmul_readvariableop_resource:	љ^
Ksequential_34_lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource:	dљY
Jsequential_34_lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource:	љѕбAsequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpб@sequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpбBsequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpЪ
Nsequential_34/lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       џ
@sequential_34/lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_34_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_102_tensorarrayunstack_tensorlistfromtensor_0(sequential_34_lstm_102_while_placeholderWsequential_34/lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0═
@sequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOpKsequential_34_lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0Ђ
1sequential_34/lstm_102/while/lstm_cell_339/MatMulMatMulGsequential_34/lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЛ
Bsequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOpMsequential_34_lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0У
3sequential_34/lstm_102/while/lstm_cell_339/MatMul_1MatMul*sequential_34_lstm_102_while_placeholder_2Jsequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љТ
.sequential_34/lstm_102/while/lstm_cell_339/addAddV2;sequential_34/lstm_102/while/lstm_cell_339/MatMul:product:0=sequential_34/lstm_102/while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љ╦
Asequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOpLsequential_34_lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0№
2sequential_34/lstm_102/while/lstm_cell_339/BiasAddBiasAdd2sequential_34/lstm_102/while/lstm_cell_339/add:z:0Isequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ|
:sequential_34/lstm_102/while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_34/lstm_102/while/lstm_cell_339/splitSplitCsequential_34/lstm_102/while/lstm_cell_339/split/split_dim:output:0;sequential_34/lstm_102/while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitф
2sequential_34/lstm_102/while/lstm_cell_339/SigmoidSigmoid9sequential_34/lstm_102/while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dг
4sequential_34/lstm_102/while/lstm_cell_339/Sigmoid_1Sigmoid9sequential_34/lstm_102/while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         d═
.sequential_34/lstm_102/while/lstm_cell_339/mulMul8sequential_34/lstm_102/while/lstm_cell_339/Sigmoid_1:y:0*sequential_34_lstm_102_while_placeholder_3*
T0*'
_output_shapes
:         dц
/sequential_34/lstm_102/while/lstm_cell_339/ReluRelu9sequential_34/lstm_102/while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЯ
0sequential_34/lstm_102/while/lstm_cell_339/mul_1Mul6sequential_34/lstm_102/while/lstm_cell_339/Sigmoid:y:0=sequential_34/lstm_102/while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dН
0sequential_34/lstm_102/while/lstm_cell_339/add_1AddV22sequential_34/lstm_102/while/lstm_cell_339/mul:z:04sequential_34/lstm_102/while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dг
4sequential_34/lstm_102/while/lstm_cell_339/Sigmoid_2Sigmoid9sequential_34/lstm_102/while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dА
1sequential_34/lstm_102/while/lstm_cell_339/Relu_1Relu4sequential_34/lstm_102/while/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dС
0sequential_34/lstm_102/while/lstm_cell_339/mul_2Mul8sequential_34/lstm_102/while/lstm_cell_339/Sigmoid_2:y:0?sequential_34/lstm_102/while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dб
Asequential_34/lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_34_lstm_102_while_placeholder_1(sequential_34_lstm_102_while_placeholder4sequential_34/lstm_102/while/lstm_cell_339/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_34/lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_34/lstm_102/while/addAddV2(sequential_34_lstm_102_while_placeholder+sequential_34/lstm_102/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_34/lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_34/lstm_102/while/add_1AddV2Fsequential_34_lstm_102_while_sequential_34_lstm_102_while_loop_counter-sequential_34/lstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_34/lstm_102/while/IdentityIdentity&sequential_34/lstm_102/while/add_1:z:0"^sequential_34/lstm_102/while/NoOp*
T0*
_output_shapes
: к
'sequential_34/lstm_102/while/Identity_1IdentityLsequential_34_lstm_102_while_sequential_34_lstm_102_while_maximum_iterations"^sequential_34/lstm_102/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_34/lstm_102/while/Identity_2Identity$sequential_34/lstm_102/while/add:z:0"^sequential_34/lstm_102/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_34/lstm_102/while/Identity_3IdentityQsequential_34/lstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_34/lstm_102/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_34/lstm_102/while/Identity_4Identity4sequential_34/lstm_102/while/lstm_cell_339/mul_2:z:0"^sequential_34/lstm_102/while/NoOp*
T0*'
_output_shapes
:         d┐
'sequential_34/lstm_102/while/Identity_5Identity4sequential_34/lstm_102/while/lstm_cell_339/add_1:z:0"^sequential_34/lstm_102/while/NoOp*
T0*'
_output_shapes
:         d»
!sequential_34/lstm_102/while/NoOpNoOpB^sequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpA^sequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpC^sequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_34_lstm_102_while_identity.sequential_34/lstm_102/while/Identity:output:0"[
'sequential_34_lstm_102_while_identity_10sequential_34/lstm_102/while/Identity_1:output:0"[
'sequential_34_lstm_102_while_identity_20sequential_34/lstm_102/while/Identity_2:output:0"[
'sequential_34_lstm_102_while_identity_30sequential_34/lstm_102/while/Identity_3:output:0"[
'sequential_34_lstm_102_while_identity_40sequential_34/lstm_102/while/Identity_4:output:0"[
'sequential_34_lstm_102_while_identity_50sequential_34/lstm_102/while/Identity_5:output:0"џ
Jsequential_34_lstm_102_while_lstm_cell_339_biasadd_readvariableop_resourceLsequential_34_lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0"ю
Ksequential_34_lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resourceMsequential_34_lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0"ў
Isequential_34_lstm_102_while_lstm_cell_339_matmul_readvariableop_resourceKsequential_34_lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0"ї
Csequential_34_lstm_102_while_sequential_34_lstm_102_strided_slice_1Esequential_34_lstm_102_while_sequential_34_lstm_102_strided_slice_1_0"Ё
sequential_34_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_102_tensorarrayunstack_tensorlistfromtensorЂsequential_34_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2є
Asequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpAsequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp2ё
@sequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp@sequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp2ѕ
Bsequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpBsequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
В
ш
/__inference_lstm_cell_341_layer_call_fn_2068058

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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063577o
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
я
 
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065035
lstm_102_input#
lstm_102_2065008:	љ#
lstm_102_2065010:	dљ
lstm_102_2065012:	љ#
lstm_103_2065015:	d╚#
lstm_103_2065017:	2╚
lstm_103_2065019:	╚"
lstm_104_2065022:2("
lstm_104_2065024:
(
lstm_104_2065026:("
dense_34_2065029:

dense_34_2065031:
identityѕб dense_34/StatefulPartitionedCallб lstm_102/StatefulPartitionedCallб lstm_103/StatefulPartitionedCallб lstm_104/StatefulPartitionedCallЊ
 lstm_102/StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputlstm_102_2065008lstm_102_2065010lstm_102_2065012*
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064855«
 lstm_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0lstm_103_2065015lstm_103_2065017lstm_103_2065019*
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064690ф
 lstm_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_103/StatefulPartitionedCall:output:0lstm_104_2065022lstm_104_2065024lstm_104_2065026*
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064525ќ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)lstm_104/StatefulPartitionedCall:output:0dense_34_2065029dense_34_2065031*
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
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_34/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall!^lstm_103/StatefulPartitionedCall!^lstm_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall2D
 lstm_103/StatefulPartitionedCall lstm_103/StatefulPartitionedCall2D
 lstm_104/StatefulPartitionedCall lstm_104/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_102_input
»8
ј
E__inference_lstm_103_layer_call_and_return_conditional_losses_2063310

inputs(
lstm_cell_340_2063228:	d╚(
lstm_cell_340_2063230:	2╚$
lstm_cell_340_2063232:	╚
identityѕб%lstm_cell_340/StatefulPartitionedCallбwhile;
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
%lstm_cell_340/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_340_2063228lstm_cell_340_2063230lstm_cell_340_2063232*
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063227n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_340_2063228lstm_cell_340_2063230lstm_cell_340_2063232*
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
while_body_2063241*
condR
while_cond_2063240*K
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
NoOpNoOp&^lstm_cell_340/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_340/StatefulPartitionedCall%lstm_cell_340/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
Ѓ
и
*__inference_lstm_102_layer_call_fn_2066011

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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064009s
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
Ѓ
и
*__inference_lstm_103_layer_call_fn_2066627

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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064159s
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
while_cond_2064440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2064440___redundant_placeholder05
1while_while_cond_2064440___redundant_placeholder15
1while_while_cond_2064440___redundant_placeholder25
1while_while_cond_2064440___redundant_placeholder3
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
═
Ѓ
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063723

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
Г
╣
*__inference_lstm_103_layer_call_fn_2066605
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2063310|
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
Э
┤
*__inference_lstm_104_layer_call_fn_2067254

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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064525o
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
њK
б
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067540
inputs_0>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_341/BiasAdd/ReadVariableOpб#lstm_cell_341/MatMul/ReadVariableOpб%lstm_cell_341/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2067456*
condR
while_cond_2067455*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
─8
н
while_body_2064225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_341/BiasAdd/ReadVariableOpб)while/lstm_cell_341/MatMul/ReadVariableOpб+while/lstm_cell_341/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
while_cond_2066982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066982___redundant_placeholder05
1while_while_cond_2066982___redundant_placeholder15
1while_while_cond_2066982___redundant_placeholder25
1while_while_cond_2066982___redundant_placeholder3
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
Л8
┌
while_body_2067126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_340_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_340/BiasAdd/ReadVariableOpб)while/lstm_cell_340/MatMul/ReadVariableOpб+while/lstm_cell_340/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
while_cond_2067455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2067455___redundant_placeholder05
1while_while_cond_2067455___redundant_placeholder15
1while_while_cond_2067455___redundant_placeholder25
1while_while_cond_2067455___redundant_placeholder3
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
сS
й
)sequential_34_lstm_103_while_body_2062581J
Fsequential_34_lstm_103_while_sequential_34_lstm_103_while_loop_counterP
Lsequential_34_lstm_103_while_sequential_34_lstm_103_while_maximum_iterations,
(sequential_34_lstm_103_while_placeholder.
*sequential_34_lstm_103_while_placeholder_1.
*sequential_34_lstm_103_while_placeholder_2.
*sequential_34_lstm_103_while_placeholder_3I
Esequential_34_lstm_103_while_sequential_34_lstm_103_strided_slice_1_0є
Ђsequential_34_lstm_103_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_103_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_34_lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0:	d╚`
Msequential_34_lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2╚[
Lsequential_34_lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0:	╚)
%sequential_34_lstm_103_while_identity+
'sequential_34_lstm_103_while_identity_1+
'sequential_34_lstm_103_while_identity_2+
'sequential_34_lstm_103_while_identity_3+
'sequential_34_lstm_103_while_identity_4+
'sequential_34_lstm_103_while_identity_5G
Csequential_34_lstm_103_while_sequential_34_lstm_103_strided_slice_1Ѓ
sequential_34_lstm_103_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_103_tensorarrayunstack_tensorlistfromtensor\
Isequential_34_lstm_103_while_lstm_cell_340_matmul_readvariableop_resource:	d╚^
Ksequential_34_lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource:	2╚Y
Jsequential_34_lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource:	╚ѕбAsequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpб@sequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpбBsequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpЪ
Nsequential_34/lstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   џ
@sequential_34/lstm_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_34_lstm_103_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_103_tensorarrayunstack_tensorlistfromtensor_0(sequential_34_lstm_103_while_placeholderWsequential_34/lstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0═
@sequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOpKsequential_34_lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0Ђ
1sequential_34/lstm_103/while/lstm_cell_340/MatMulMatMulGsequential_34/lstm_103/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Л
Bsequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOpMsequential_34_lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0У
3sequential_34/lstm_103/while/lstm_cell_340/MatMul_1MatMul*sequential_34_lstm_103_while_placeholder_2Jsequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Т
.sequential_34/lstm_103/while/lstm_cell_340/addAddV2;sequential_34/lstm_103/while/lstm_cell_340/MatMul:product:0=sequential_34/lstm_103/while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚╦
Asequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOpLsequential_34_lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0№
2sequential_34/lstm_103/while/lstm_cell_340/BiasAddBiasAdd2sequential_34/lstm_103/while/lstm_cell_340/add:z:0Isequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚|
:sequential_34/lstm_103/while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_34/lstm_103/while/lstm_cell_340/splitSplitCsequential_34/lstm_103/while/lstm_cell_340/split/split_dim:output:0;sequential_34/lstm_103/while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitф
2sequential_34/lstm_103/while/lstm_cell_340/SigmoidSigmoid9sequential_34/lstm_103/while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2г
4sequential_34/lstm_103/while/lstm_cell_340/Sigmoid_1Sigmoid9sequential_34/lstm_103/while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2═
.sequential_34/lstm_103/while/lstm_cell_340/mulMul8sequential_34/lstm_103/while/lstm_cell_340/Sigmoid_1:y:0*sequential_34_lstm_103_while_placeholder_3*
T0*'
_output_shapes
:         2ц
/sequential_34/lstm_103/while/lstm_cell_340/ReluRelu9sequential_34/lstm_103/while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Я
0sequential_34/lstm_103/while/lstm_cell_340/mul_1Mul6sequential_34/lstm_103/while/lstm_cell_340/Sigmoid:y:0=sequential_34/lstm_103/while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2Н
0sequential_34/lstm_103/while/lstm_cell_340/add_1AddV22sequential_34/lstm_103/while/lstm_cell_340/mul:z:04sequential_34/lstm_103/while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2г
4sequential_34/lstm_103/while/lstm_cell_340/Sigmoid_2Sigmoid9sequential_34/lstm_103/while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2А
1sequential_34/lstm_103/while/lstm_cell_340/Relu_1Relu4sequential_34/lstm_103/while/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2С
0sequential_34/lstm_103/while/lstm_cell_340/mul_2Mul8sequential_34/lstm_103/while/lstm_cell_340/Sigmoid_2:y:0?sequential_34/lstm_103/while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2б
Asequential_34/lstm_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_34_lstm_103_while_placeholder_1(sequential_34_lstm_103_while_placeholder4sequential_34/lstm_103/while/lstm_cell_340/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_34/lstm_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_34/lstm_103/while/addAddV2(sequential_34_lstm_103_while_placeholder+sequential_34/lstm_103/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_34/lstm_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_34/lstm_103/while/add_1AddV2Fsequential_34_lstm_103_while_sequential_34_lstm_103_while_loop_counter-sequential_34/lstm_103/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_34/lstm_103/while/IdentityIdentity&sequential_34/lstm_103/while/add_1:z:0"^sequential_34/lstm_103/while/NoOp*
T0*
_output_shapes
: к
'sequential_34/lstm_103/while/Identity_1IdentityLsequential_34_lstm_103_while_sequential_34_lstm_103_while_maximum_iterations"^sequential_34/lstm_103/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_34/lstm_103/while/Identity_2Identity$sequential_34/lstm_103/while/add:z:0"^sequential_34/lstm_103/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_34/lstm_103/while/Identity_3IdentityQsequential_34/lstm_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_34/lstm_103/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_34/lstm_103/while/Identity_4Identity4sequential_34/lstm_103/while/lstm_cell_340/mul_2:z:0"^sequential_34/lstm_103/while/NoOp*
T0*'
_output_shapes
:         2┐
'sequential_34/lstm_103/while/Identity_5Identity4sequential_34/lstm_103/while/lstm_cell_340/add_1:z:0"^sequential_34/lstm_103/while/NoOp*
T0*'
_output_shapes
:         2»
!sequential_34/lstm_103/while/NoOpNoOpB^sequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpA^sequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpC^sequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_34_lstm_103_while_identity.sequential_34/lstm_103/while/Identity:output:0"[
'sequential_34_lstm_103_while_identity_10sequential_34/lstm_103/while/Identity_1:output:0"[
'sequential_34_lstm_103_while_identity_20sequential_34/lstm_103/while/Identity_2:output:0"[
'sequential_34_lstm_103_while_identity_30sequential_34/lstm_103/while/Identity_3:output:0"[
'sequential_34_lstm_103_while_identity_40sequential_34/lstm_103/while/Identity_4:output:0"[
'sequential_34_lstm_103_while_identity_50sequential_34/lstm_103/while/Identity_5:output:0"џ
Jsequential_34_lstm_103_while_lstm_cell_340_biasadd_readvariableop_resourceLsequential_34_lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0"ю
Ksequential_34_lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resourceMsequential_34_lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0"ў
Isequential_34_lstm_103_while_lstm_cell_340_matmul_readvariableop_resourceKsequential_34_lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0"ї
Csequential_34_lstm_103_while_sequential_34_lstm_103_strided_slice_1Esequential_34_lstm_103_while_sequential_34_lstm_103_strided_slice_1_0"Ё
sequential_34_lstm_103_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_103_tensorarrayunstack_tensorlistfromtensorЂsequential_34_lstm_103_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2є
Asequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpAsequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp2ё
@sequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp@sequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp2ѕ
Bsequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpBsequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_104_layer_call_fn_2067221
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2063660o
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
и

Ч
lstm_103_while_cond_2065321.
*lstm_103_while_lstm_103_while_loop_counter4
0lstm_103_while_lstm_103_while_maximum_iterations
lstm_103_while_placeholder 
lstm_103_while_placeholder_1 
lstm_103_while_placeholder_2 
lstm_103_while_placeholder_30
,lstm_103_while_less_lstm_103_strided_slice_1G
Clstm_103_while_lstm_103_while_cond_2065321___redundant_placeholder0G
Clstm_103_while_lstm_103_while_cond_2065321___redundant_placeholder1G
Clstm_103_while_lstm_103_while_cond_2065321___redundant_placeholder2G
Clstm_103_while_lstm_103_while_cond_2065321___redundant_placeholder3
lstm_103_while_identity
є
lstm_103/while/LessLesslstm_103_while_placeholder,lstm_103_while_less_lstm_103_strided_slice_1*
T0*
_output_shapes
: ]
lstm_103/while/IdentityIdentitylstm_103/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_103_while_identity lstm_103/while/Identity:output:0*(
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
while_cond_2063590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063590___redundant_placeholder05
1while_while_cond_2063590___redundant_placeholder15
1while_while_cond_2063590___redundant_placeholder25
1while_while_cond_2063590___redundant_placeholder3
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
аK
Ц
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066308
inputs_0?
,lstm_cell_339_matmul_readvariableop_resource:	љA
.lstm_cell_339_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_339_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_339/BiasAdd/ReadVariableOpб#lstm_cell_339/MatMul/ReadVariableOpб%lstm_cell_339/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2066224*
condR
while_cond_2066223*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
ПJ
а
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067683

inputs>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_341/BiasAdd/ReadVariableOpб#lstm_cell_341/MatMul/ReadVariableOpб%lstm_cell_341/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2067599*
condR
while_cond_2067598*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
АC
Щ

lstm_103_while_body_2065749.
*lstm_103_while_lstm_103_while_loop_counter4
0lstm_103_while_lstm_103_while_maximum_iterations
lstm_103_while_placeholder 
lstm_103_while_placeholder_1 
lstm_103_while_placeholder_2 
lstm_103_while_placeholder_3-
)lstm_103_while_lstm_103_strided_slice_1_0i
elstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0:	d╚R
?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2╚M
>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0:	╚
lstm_103_while_identity
lstm_103_while_identity_1
lstm_103_while_identity_2
lstm_103_while_identity_3
lstm_103_while_identity_4
lstm_103_while_identity_5+
'lstm_103_while_lstm_103_strided_slice_1g
clstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensorN
;lstm_103_while_lstm_cell_340_matmul_readvariableop_resource:	d╚P
=lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource:	2╚K
<lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource:	╚ѕб3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpб2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpб4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpЉ
@lstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0lstm_103_while_placeholderIlstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_103/while/lstm_cell_340/MatMulMatMul9lstm_103/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_103/while/lstm_cell_340/MatMul_1MatMullstm_103_while_placeholder_2<lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_103/while/lstm_cell_340/addAddV2-lstm_103/while/lstm_cell_340/MatMul:product:0/lstm_103/while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_103/while/lstm_cell_340/BiasAddBiasAdd$lstm_103/while/lstm_cell_340/add:z:0;lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_103/while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_103/while/lstm_cell_340/splitSplit5lstm_103/while/lstm_cell_340/split/split_dim:output:0-lstm_103/while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_103/while/lstm_cell_340/SigmoidSigmoid+lstm_103/while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_103/while/lstm_cell_340/Sigmoid_1Sigmoid+lstm_103/while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_103/while/lstm_cell_340/mulMul*lstm_103/while/lstm_cell_340/Sigmoid_1:y:0lstm_103_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_103/while/lstm_cell_340/ReluRelu+lstm_103/while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_103/while/lstm_cell_340/mul_1Mul(lstm_103/while/lstm_cell_340/Sigmoid:y:0/lstm_103/while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_103/while/lstm_cell_340/add_1AddV2$lstm_103/while/lstm_cell_340/mul:z:0&lstm_103/while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_103/while/lstm_cell_340/Sigmoid_2Sigmoid+lstm_103/while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_103/while/lstm_cell_340/Relu_1Relu&lstm_103/while/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_103/while/lstm_cell_340/mul_2Mul*lstm_103/while/lstm_cell_340/Sigmoid_2:y:01lstm_103/while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_103_while_placeholder_1lstm_103_while_placeholder&lstm_103/while/lstm_cell_340/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_103/while/addAddV2lstm_103_while_placeholderlstm_103/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_103/while/add_1AddV2*lstm_103_while_lstm_103_while_loop_counterlstm_103/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_103/while/IdentityIdentitylstm_103/while/add_1:z:0^lstm_103/while/NoOp*
T0*
_output_shapes
: ј
lstm_103/while/Identity_1Identity0lstm_103_while_lstm_103_while_maximum_iterations^lstm_103/while/NoOp*
T0*
_output_shapes
: t
lstm_103/while/Identity_2Identitylstm_103/while/add:z:0^lstm_103/while/NoOp*
T0*
_output_shapes
: А
lstm_103/while/Identity_3IdentityClstm_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_103/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_103/while/Identity_4Identity&lstm_103/while/lstm_cell_340/mul_2:z:0^lstm_103/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_103/while/Identity_5Identity&lstm_103/while/lstm_cell_340/add_1:z:0^lstm_103/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_103/while/NoOpNoOp4^lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp3^lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp5^lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_103_while_identity lstm_103/while/Identity:output:0"?
lstm_103_while_identity_1"lstm_103/while/Identity_1:output:0"?
lstm_103_while_identity_2"lstm_103/while/Identity_2:output:0"?
lstm_103_while_identity_3"lstm_103/while/Identity_3:output:0"?
lstm_103_while_identity_4"lstm_103/while/Identity_4:output:0"?
lstm_103_while_identity_5"lstm_103/while/Identity_5:output:0"T
'lstm_103_while_lstm_103_strided_slice_1)lstm_103_while_lstm_103_strided_slice_1_0"~
<lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0"ђ
=lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0"|
;lstm_103_while_lstm_cell_340_matmul_readvariableop_resource=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0"╠
clstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensorelstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp2h
2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp2l
4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
while_cond_2067312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2067312___redundant_placeholder05
1while_while_cond_2067312___redundant_placeholder15
1while_while_cond_2067312___redundant_placeholder25
1while_while_cond_2067312___redundant_placeholder3
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
while_body_2064075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_340_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_340/BiasAdd/ReadVariableOpб)while/lstm_cell_340/MatMul/ReadVariableOpб+while/lstm_cell_340/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
┐
ћ
)sequential_34_lstm_104_while_cond_2062719J
Fsequential_34_lstm_104_while_sequential_34_lstm_104_while_loop_counterP
Lsequential_34_lstm_104_while_sequential_34_lstm_104_while_maximum_iterations,
(sequential_34_lstm_104_while_placeholder.
*sequential_34_lstm_104_while_placeholder_1.
*sequential_34_lstm_104_while_placeholder_2.
*sequential_34_lstm_104_while_placeholder_3L
Hsequential_34_lstm_104_while_less_sequential_34_lstm_104_strided_slice_1c
_sequential_34_lstm_104_while_sequential_34_lstm_104_while_cond_2062719___redundant_placeholder0c
_sequential_34_lstm_104_while_sequential_34_lstm_104_while_cond_2062719___redundant_placeholder1c
_sequential_34_lstm_104_while_sequential_34_lstm_104_while_cond_2062719___redundant_placeholder2c
_sequential_34_lstm_104_while_sequential_34_lstm_104_while_cond_2062719___redundant_placeholder3)
%sequential_34_lstm_104_while_identity
Й
!sequential_34/lstm_104/while/LessLess(sequential_34_lstm_104_while_placeholderHsequential_34_lstm_104_while_less_sequential_34_lstm_104_strided_slice_1*
T0*
_output_shapes
: y
%sequential_34/lstm_104/while/IdentityIdentity%sequential_34/lstm_104/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_34_lstm_104_while_identity.sequential_34/lstm_104/while/Identity:output:0*(
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
аK
Ц
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066924
inputs_0?
,lstm_cell_340_matmul_readvariableop_resource:	d╚A
.lstm_cell_340_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_340_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_340/BiasAdd/ReadVariableOpб#lstm_cell_340/MatMul/ReadVariableOpб%lstm_cell_340/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2066840*
condR
while_cond_2066839*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
РJ
Б
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067067

inputs?
,lstm_cell_340_matmul_readvariableop_resource:	d╚A
.lstm_cell_340_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_340_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_340/BiasAdd/ReadVariableOpб#lstm_cell_340/MatMul/ReadVariableOpб%lstm_cell_340/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2066983*
condR
while_cond_2066982*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
─8
н
while_body_2067313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_341/BiasAdd/ReadVariableOpб)while/lstm_cell_341/MatMul/ReadVariableOpб+while/lstm_cell_341/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
љ
Х
*__inference_lstm_104_layer_call_fn_2067232
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2063851o
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
║
╚
while_cond_2063924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063924___redundant_placeholder05
1while_while_cond_2063924___redundant_placeholder15
1while_while_cond_2063924___redundant_placeholder25
1while_while_cond_2063924___redundant_placeholder3
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
while_body_2064771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	љG
4while_lstm_cell_339_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_339_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_339/BiasAdd/ReadVariableOpб)while/lstm_cell_339/MatMul/ReadVariableOpб+while/lstm_cell_339/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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

lstm_102_while_body_2065183.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_3-
)lstm_102_while_lstm_102_strided_slice_1_0i
elstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0:	љR
?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0:	dљM
>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0:	љ
lstm_102_while_identity
lstm_102_while_identity_1
lstm_102_while_identity_2
lstm_102_while_identity_3
lstm_102_while_identity_4
lstm_102_while_identity_5+
'lstm_102_while_lstm_102_strided_slice_1g
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorN
;lstm_102_while_lstm_cell_339_matmul_readvariableop_resource:	љP
=lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource:	dљK
<lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource:	љѕб3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpб2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpб4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpЉ
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0lstm_102_while_placeholderIlstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_102/while/lstm_cell_339/MatMulMatMul9lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_102/while/lstm_cell_339/MatMul_1MatMullstm_102_while_placeholder_2<lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_102/while/lstm_cell_339/addAddV2-lstm_102/while/lstm_cell_339/MatMul:product:0/lstm_102/while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_102/while/lstm_cell_339/BiasAddBiasAdd$lstm_102/while/lstm_cell_339/add:z:0;lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_102/while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_102/while/lstm_cell_339/splitSplit5lstm_102/while/lstm_cell_339/split/split_dim:output:0-lstm_102/while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_102/while/lstm_cell_339/SigmoidSigmoid+lstm_102/while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_102/while/lstm_cell_339/Sigmoid_1Sigmoid+lstm_102/while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_102/while/lstm_cell_339/mulMul*lstm_102/while/lstm_cell_339/Sigmoid_1:y:0lstm_102_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_102/while/lstm_cell_339/ReluRelu+lstm_102/while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_102/while/lstm_cell_339/mul_1Mul(lstm_102/while/lstm_cell_339/Sigmoid:y:0/lstm_102/while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_102/while/lstm_cell_339/add_1AddV2$lstm_102/while/lstm_cell_339/mul:z:0&lstm_102/while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_102/while/lstm_cell_339/Sigmoid_2Sigmoid+lstm_102/while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_102/while/lstm_cell_339/Relu_1Relu&lstm_102/while/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_102/while/lstm_cell_339/mul_2Mul*lstm_102/while/lstm_cell_339/Sigmoid_2:y:01lstm_102/while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_102_while_placeholder_1lstm_102_while_placeholder&lstm_102/while/lstm_cell_339/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_102/while/addAddV2lstm_102_while_placeholderlstm_102/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_102/while/add_1AddV2*lstm_102_while_lstm_102_while_loop_counterlstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_102/while/IdentityIdentitylstm_102/while/add_1:z:0^lstm_102/while/NoOp*
T0*
_output_shapes
: ј
lstm_102/while/Identity_1Identity0lstm_102_while_lstm_102_while_maximum_iterations^lstm_102/while/NoOp*
T0*
_output_shapes
: t
lstm_102/while/Identity_2Identitylstm_102/while/add:z:0^lstm_102/while/NoOp*
T0*
_output_shapes
: А
lstm_102/while/Identity_3IdentityClstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_102/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_102/while/Identity_4Identity&lstm_102/while/lstm_cell_339/mul_2:z:0^lstm_102/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_102/while/Identity_5Identity&lstm_102/while/lstm_cell_339/add_1:z:0^lstm_102/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_102/while/NoOpNoOp4^lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_102_while_identity lstm_102/while/Identity:output:0"?
lstm_102_while_identity_1"lstm_102/while/Identity_1:output:0"?
lstm_102_while_identity_2"lstm_102/while/Identity_2:output:0"?
lstm_102_while_identity_3"lstm_102/while/Identity_3:output:0"?
lstm_102_while_identity_4"lstm_102/while/Identity_4:output:0"?
lstm_102_while_identity_5"lstm_102/while/Identity_5:output:0"T
'lstm_102_while_lstm_102_strided_slice_1)lstm_102_while_lstm_102_strided_slice_1_0"~
<lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0"ђ
=lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0"|
;lstm_102_while_lstm_cell_339_matmul_readvariableop_resource=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0"╠
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp2h
2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp2l
4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_102_layer_call_fn_2066022

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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064855s
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
while_body_2066510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	љG
4while_lstm_cell_339_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_339_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_339/BiasAdd/ReadVariableOpб)while/lstm_cell_339/MatMul/ReadVariableOpб+while/lstm_cell_339/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
▀
ѕ
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068009

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
РJ
Б
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064159

inputs?
,lstm_cell_340_matmul_readvariableop_resource:	d╚A
.lstm_cell_340_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_340_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_340/BiasAdd/ReadVariableOpб#lstm_cell_340/MatMul/ReadVariableOpб%lstm_cell_340/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2064075*
condR
while_cond_2064074*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
и

Ч
lstm_104_while_cond_2065460.
*lstm_104_while_lstm_104_while_loop_counter4
0lstm_104_while_lstm_104_while_maximum_iterations
lstm_104_while_placeholder 
lstm_104_while_placeholder_1 
lstm_104_while_placeholder_2 
lstm_104_while_placeholder_30
,lstm_104_while_less_lstm_104_strided_slice_1G
Clstm_104_while_lstm_104_while_cond_2065460___redundant_placeholder0G
Clstm_104_while_lstm_104_while_cond_2065460___redundant_placeholder1G
Clstm_104_while_lstm_104_while_cond_2065460___redundant_placeholder2G
Clstm_104_while_lstm_104_while_cond_2065460___redundant_placeholder3
lstm_104_while_identity
є
lstm_104/while/LessLesslstm_104_while_placeholder,lstm_104_while_less_lstm_104_strided_slice_1*
T0*
_output_shapes
: ]
lstm_104/while/IdentityIdentitylstm_104/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_104_while_identity lstm_104/while/Identity:output:0*(
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
while_cond_2066839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066839___redundant_placeholder05
1while_while_cond_2066839___redundant_placeholder15
1while_while_cond_2066839___redundant_placeholder25
1while_while_cond_2066839___redundant_placeholder3
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
lstm_102_while_cond_2065182.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_30
,lstm_102_while_less_lstm_102_strided_slice_1G
Clstm_102_while_lstm_102_while_cond_2065182___redundant_placeholder0G
Clstm_102_while_lstm_102_while_cond_2065182___redundant_placeholder1G
Clstm_102_while_lstm_102_while_cond_2065182___redundant_placeholder2G
Clstm_102_while_lstm_102_while_cond_2065182___redundant_placeholder3
lstm_102_while_identity
є
lstm_102/while/LessLesslstm_102_while_placeholder,lstm_102_while_less_lstm_102_strided_slice_1*
T0*
_output_shapes
: ]
lstm_102/while/IdentityIdentitylstm_102/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_102_while_identity lstm_102/while/Identity:output:0*(
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
РJ
Б
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066594

inputs?
,lstm_cell_339_matmul_readvariableop_resource:	љA
.lstm_cell_339_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_339_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_339/BiasAdd/ReadVariableOpб#lstm_cell_339/MatMul/ReadVariableOpб%lstm_cell_339/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2066510*
condR
while_cond_2066509*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_2066983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_340_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_340/BiasAdd/ReadVariableOpб)while/lstm_cell_340/MatMul/ReadVariableOpб+while/lstm_cell_340/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
З

Б
/__inference_sequential_34_layer_call_fn_2064359
lstm_102_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064334o
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
_user_specified_namelstm_102_input
║
╚
while_cond_2066080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066080___redundant_placeholder05
1while_while_cond_2066080___redundant_placeholder15
1while_while_cond_2066080___redundant_placeholder25
1while_while_cond_2066080___redundant_placeholder3
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065978

inputsH
5lstm_102_lstm_cell_339_matmul_readvariableop_resource:	љJ
7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource:	dљE
6lstm_102_lstm_cell_339_biasadd_readvariableop_resource:	љH
5lstm_103_lstm_cell_340_matmul_readvariableop_resource:	d╚J
7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource:	2╚E
6lstm_103_lstm_cell_340_biasadd_readvariableop_resource:	╚G
5lstm_104_lstm_cell_341_matmul_readvariableop_resource:2(I
7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource:
(D
6lstm_104_lstm_cell_341_biasadd_readvariableop_resource:(9
'dense_34_matmul_readvariableop_resource:
6
(dense_34_biasadd_readvariableop_resource:
identityѕбdense_34/BiasAdd/ReadVariableOpбdense_34/MatMul/ReadVariableOpб-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOpб,lstm_102/lstm_cell_339/MatMul/ReadVariableOpб.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOpбlstm_102/whileб-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOpб,lstm_103/lstm_cell_340/MatMul/ReadVariableOpб.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOpбlstm_103/whileб-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOpб,lstm_104/lstm_cell_341/MatMul/ReadVariableOpб.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOpбlstm_104/whileD
lstm_102/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_102/strided_sliceStridedSlicelstm_102/Shape:output:0%lstm_102/strided_slice/stack:output:0'lstm_102/strided_slice/stack_1:output:0'lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_102/zeros/packedPacklstm_102/strided_slice:output:0 lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_102/zerosFilllstm_102/zeros/packed:output:0lstm_102/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_102/zeros_1/packedPacklstm_102/strided_slice:output:0"lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_102/zeros_1Fill lstm_102/zeros_1/packed:output:0lstm_102/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_102/transpose	Transposeinputs lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_102/Shape_1Shapelstm_102/transpose:y:0*
T0*
_output_shapes
:h
lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_102/strided_slice_1StridedSlicelstm_102/Shape_1:output:0'lstm_102/strided_slice_1/stack:output:0)lstm_102/strided_slice_1/stack_1:output:0)lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_102/TensorArrayV2TensorListReserve-lstm_102/TensorArrayV2/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_102/transpose:y:0Glstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_102/strided_slice_2StridedSlicelstm_102/transpose:y:0'lstm_102/strided_slice_2/stack:output:0)lstm_102/strided_slice_2/stack_1:output:0)lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_102/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp5lstm_102_lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_102/lstm_cell_339/MatMulMatMul!lstm_102/strided_slice_2:output:04lstm_102/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_102/lstm_cell_339/MatMul_1MatMullstm_102/zeros:output:06lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_102/lstm_cell_339/addAddV2'lstm_102/lstm_cell_339/MatMul:product:0)lstm_102/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp6lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_102/lstm_cell_339/BiasAddBiasAddlstm_102/lstm_cell_339/add:z:05lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_102/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_102/lstm_cell_339/splitSplit/lstm_102/lstm_cell_339/split/split_dim:output:0'lstm_102/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_102/lstm_cell_339/SigmoidSigmoid%lstm_102/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_102/lstm_cell_339/Sigmoid_1Sigmoid%lstm_102/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_102/lstm_cell_339/mulMul$lstm_102/lstm_cell_339/Sigmoid_1:y:0lstm_102/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_102/lstm_cell_339/ReluRelu%lstm_102/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dц
lstm_102/lstm_cell_339/mul_1Mul"lstm_102/lstm_cell_339/Sigmoid:y:0)lstm_102/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_102/lstm_cell_339/add_1AddV2lstm_102/lstm_cell_339/mul:z:0 lstm_102/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_102/lstm_cell_339/Sigmoid_2Sigmoid%lstm_102/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         dy
lstm_102/lstm_cell_339/Relu_1Relu lstm_102/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_102/lstm_cell_339/mul_2Mul$lstm_102/lstm_cell_339/Sigmoid_2:y:0+lstm_102/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_102/TensorArrayV2_1TensorListReserve/lstm_102/TensorArrayV2_1/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_102/whileWhile$lstm_102/while/loop_counter:output:0*lstm_102/while/maximum_iterations:output:0lstm_102/time:output:0!lstm_102/TensorArrayV2_1:handle:0lstm_102/zeros:output:0lstm_102/zeros_1:output:0!lstm_102/strided_slice_1:output:0@lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_102_lstm_cell_339_matmul_readvariableop_resource7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource6lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
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
lstm_102_while_body_2065610*'
condR
lstm_102_while_cond_2065609*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_102/TensorArrayV2Stack/TensorListStackTensorListStacklstm_102/while:output:3Blstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_102/strided_slice_3StridedSlice4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_102/strided_slice_3/stack:output:0)lstm_102/strided_slice_3/stack_1:output:0)lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_102/transpose_1	Transpose4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_102/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_103/ShapeShapelstm_102/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_103/strided_sliceStridedSlicelstm_103/Shape:output:0%lstm_103/strided_slice/stack:output:0'lstm_103/strided_slice/stack_1:output:0'lstm_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_103/zeros/packedPacklstm_103/strided_slice:output:0 lstm_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_103/zerosFilllstm_103/zeros/packed:output:0lstm_103/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_103/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_103/zeros_1/packedPacklstm_103/strided_slice:output:0"lstm_103/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_103/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_103/zeros_1Fill lstm_103/zeros_1/packed:output:0lstm_103/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_103/transpose	Transposelstm_102/transpose_1:y:0 lstm_103/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_103/Shape_1Shapelstm_103/transpose:y:0*
T0*
_output_shapes
:h
lstm_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_103/strided_slice_1StridedSlicelstm_103/Shape_1:output:0'lstm_103/strided_slice_1/stack:output:0)lstm_103/strided_slice_1/stack_1:output:0)lstm_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_103/TensorArrayV2TensorListReserve-lstm_103/TensorArrayV2/element_shape:output:0!lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_103/transpose:y:0Glstm_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_103/strided_slice_2StridedSlicelstm_103/transpose:y:0'lstm_103/strided_slice_2/stack:output:0)lstm_103/strided_slice_2/stack_1:output:0)lstm_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_103/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp5lstm_103_lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_103/lstm_cell_340/MatMulMatMul!lstm_103/strided_slice_2:output:04lstm_103/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_103/lstm_cell_340/MatMul_1MatMullstm_103/zeros:output:06lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_103/lstm_cell_340/addAddV2'lstm_103/lstm_cell_340/MatMul:product:0)lstm_103/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp6lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_103/lstm_cell_340/BiasAddBiasAddlstm_103/lstm_cell_340/add:z:05lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_103/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_103/lstm_cell_340/splitSplit/lstm_103/lstm_cell_340/split/split_dim:output:0'lstm_103/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_103/lstm_cell_340/SigmoidSigmoid%lstm_103/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_103/lstm_cell_340/Sigmoid_1Sigmoid%lstm_103/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_103/lstm_cell_340/mulMul$lstm_103/lstm_cell_340/Sigmoid_1:y:0lstm_103/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_103/lstm_cell_340/ReluRelu%lstm_103/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_103/lstm_cell_340/mul_1Mul"lstm_103/lstm_cell_340/Sigmoid:y:0)lstm_103/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_103/lstm_cell_340/add_1AddV2lstm_103/lstm_cell_340/mul:z:0 lstm_103/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_103/lstm_cell_340/Sigmoid_2Sigmoid%lstm_103/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:         2y
lstm_103/lstm_cell_340/Relu_1Relu lstm_103/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_103/lstm_cell_340/mul_2Mul$lstm_103/lstm_cell_340/Sigmoid_2:y:0+lstm_103/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_103/TensorArrayV2_1TensorListReserve/lstm_103/TensorArrayV2_1/element_shape:output:0!lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_103/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_103/whileWhile$lstm_103/while/loop_counter:output:0*lstm_103/while/maximum_iterations:output:0lstm_103/time:output:0!lstm_103/TensorArrayV2_1:handle:0lstm_103/zeros:output:0lstm_103/zeros_1:output:0!lstm_103/strided_slice_1:output:0@lstm_103/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_103_lstm_cell_340_matmul_readvariableop_resource7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource6lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
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
lstm_103_while_body_2065749*'
condR
lstm_103_while_cond_2065748*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_103/TensorArrayV2Stack/TensorListStackTensorListStacklstm_103/while:output:3Blstm_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_103/strided_slice_3StridedSlice4lstm_103/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_103/strided_slice_3/stack:output:0)lstm_103/strided_slice_3/stack_1:output:0)lstm_103/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_103/transpose_1	Transpose4lstm_103/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_103/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_103/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_104/ShapeShapelstm_103/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_104/strided_sliceStridedSlicelstm_104/Shape:output:0%lstm_104/strided_slice/stack:output:0'lstm_104/strided_slice/stack_1:output:0'lstm_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_104/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_104/zeros/packedPacklstm_104/strided_slice:output:0 lstm_104/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_104/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_104/zerosFilllstm_104/zeros/packed:output:0lstm_104/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_104/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_104/zeros_1/packedPacklstm_104/strided_slice:output:0"lstm_104/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_104/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_104/zeros_1Fill lstm_104/zeros_1/packed:output:0lstm_104/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_104/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_104/transpose	Transposelstm_103/transpose_1:y:0 lstm_104/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_104/Shape_1Shapelstm_104/transpose:y:0*
T0*
_output_shapes
:h
lstm_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_104/strided_slice_1StridedSlicelstm_104/Shape_1:output:0'lstm_104/strided_slice_1/stack:output:0)lstm_104/strided_slice_1/stack_1:output:0)lstm_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_104/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_104/TensorArrayV2TensorListReserve-lstm_104/TensorArrayV2/element_shape:output:0!lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_104/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_104/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_104/transpose:y:0Glstm_104/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_104/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_104/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_104/strided_slice_2StridedSlicelstm_104/transpose:y:0'lstm_104/strided_slice_2/stack:output:0)lstm_104/strided_slice_2/stack_1:output:0)lstm_104/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_104/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp5lstm_104_lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_104/lstm_cell_341/MatMulMatMul!lstm_104/strided_slice_2:output:04lstm_104/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_104/lstm_cell_341/MatMul_1MatMullstm_104/zeros:output:06lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_104/lstm_cell_341/addAddV2'lstm_104/lstm_cell_341/MatMul:product:0)lstm_104/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp6lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_104/lstm_cell_341/BiasAddBiasAddlstm_104/lstm_cell_341/add:z:05lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_104/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_104/lstm_cell_341/splitSplit/lstm_104/lstm_cell_341/split/split_dim:output:0'lstm_104/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_104/lstm_cell_341/SigmoidSigmoid%lstm_104/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_104/lstm_cell_341/Sigmoid_1Sigmoid%lstm_104/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_104/lstm_cell_341/mulMul$lstm_104/lstm_cell_341/Sigmoid_1:y:0lstm_104/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_104/lstm_cell_341/ReluRelu%lstm_104/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_104/lstm_cell_341/mul_1Mul"lstm_104/lstm_cell_341/Sigmoid:y:0)lstm_104/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_104/lstm_cell_341/add_1AddV2lstm_104/lstm_cell_341/mul:z:0 lstm_104/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_104/lstm_cell_341/Sigmoid_2Sigmoid%lstm_104/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
y
lstm_104/lstm_cell_341/Relu_1Relu lstm_104/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_104/lstm_cell_341/mul_2Mul$lstm_104/lstm_cell_341/Sigmoid_2:y:0+lstm_104/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_104/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_104/TensorArrayV2_1TensorListReserve/lstm_104/TensorArrayV2_1/element_shape:output:0!lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_104/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_104/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_104/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_104/whileWhile$lstm_104/while/loop_counter:output:0*lstm_104/while/maximum_iterations:output:0lstm_104/time:output:0!lstm_104/TensorArrayV2_1:handle:0lstm_104/zeros:output:0lstm_104/zeros_1:output:0!lstm_104/strided_slice_1:output:0@lstm_104/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_104_lstm_cell_341_matmul_readvariableop_resource7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource6lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
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
lstm_104_while_body_2065888*'
condR
lstm_104_while_cond_2065887*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_104/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_104/TensorArrayV2Stack/TensorListStackTensorListStacklstm_104/while:output:3Blstm_104/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_104/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_104/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_104/strided_slice_3StridedSlice4lstm_104/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_104/strided_slice_3/stack:output:0)lstm_104/strided_slice_3/stack_1:output:0)lstm_104/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_104/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_104/transpose_1	Transpose4lstm_104/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_104/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_104/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_34/MatMulMatMul!lstm_104/strided_slice_3:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_34/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp.^lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp-^lstm_102/lstm_cell_339/MatMul/ReadVariableOp/^lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp^lstm_102/while.^lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp-^lstm_103/lstm_cell_340/MatMul/ReadVariableOp/^lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp^lstm_103/while.^lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp-^lstm_104/lstm_cell_341/MatMul/ReadVariableOp/^lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp^lstm_104/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2^
-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp2\
,lstm_102/lstm_cell_339/MatMul/ReadVariableOp,lstm_102/lstm_cell_339/MatMul/ReadVariableOp2`
.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp2 
lstm_102/whilelstm_102/while2^
-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp2\
,lstm_103/lstm_cell_340/MatMul/ReadVariableOp,lstm_103/lstm_cell_340/MatMul/ReadVariableOp2`
.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp2 
lstm_103/whilelstm_103/while2^
-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp2\
,lstm_104/lstm_cell_341/MatMul/ReadVariableOp,lstm_104/lstm_cell_341/MatMul/ReadVariableOp2`
.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp2 
lstm_104/whilelstm_104/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_2066366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066366___redundant_placeholder05
1while_while_cond_2066366___redundant_placeholder15
1while_while_cond_2066366___redundant_placeholder25
1while_while_cond_2066366___redundant_placeholder3
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
/__inference_lstm_cell_339_layer_call_fn_2067879

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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2063023o
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
─8
н
while_body_2067456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_341/BiasAdd/ReadVariableOpб)while/lstm_cell_341/MatMul/ReadVariableOpб+while/lstm_cell_341/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
ПJ
а
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067826

inputs>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_341/BiasAdd/ReadVariableOpб#lstm_cell_341/MatMul/ReadVariableOpб%lstm_cell_341/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2067742*
condR
while_cond_2067741*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Н
Ё
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068139

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
я
 
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065005
lstm_102_input#
lstm_102_2064978:	љ#
lstm_102_2064980:	dљ
lstm_102_2064982:	љ#
lstm_103_2064985:	d╚#
lstm_103_2064987:	2╚
lstm_103_2064989:	╚"
lstm_104_2064992:2("
lstm_104_2064994:
(
lstm_104_2064996:("
dense_34_2064999:

dense_34_2065001:
identityѕб dense_34/StatefulPartitionedCallб lstm_102/StatefulPartitionedCallб lstm_103/StatefulPartitionedCallб lstm_104/StatefulPartitionedCallЊ
 lstm_102/StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputlstm_102_2064978lstm_102_2064980lstm_102_2064982*
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064009«
 lstm_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0lstm_103_2064985lstm_103_2064987lstm_103_2064989*
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064159ф
 lstm_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_103/StatefulPartitionedCall:output:0lstm_104_2064992lstm_104_2064994lstm_104_2064996*
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064309ќ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)lstm_104/StatefulPartitionedCall:output:0dense_34_2064999dense_34_2065001*
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
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_34/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall!^lstm_103/StatefulPartitionedCall!^lstm_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall2D
 lstm_103/StatefulPartitionedCall lstm_103/StatefulPartitionedCall2D
 lstm_104/StatefulPartitionedCall lstm_104/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_102_input
┐
ћ
)sequential_34_lstm_102_while_cond_2062441J
Fsequential_34_lstm_102_while_sequential_34_lstm_102_while_loop_counterP
Lsequential_34_lstm_102_while_sequential_34_lstm_102_while_maximum_iterations,
(sequential_34_lstm_102_while_placeholder.
*sequential_34_lstm_102_while_placeholder_1.
*sequential_34_lstm_102_while_placeholder_2.
*sequential_34_lstm_102_while_placeholder_3L
Hsequential_34_lstm_102_while_less_sequential_34_lstm_102_strided_slice_1c
_sequential_34_lstm_102_while_sequential_34_lstm_102_while_cond_2062441___redundant_placeholder0c
_sequential_34_lstm_102_while_sequential_34_lstm_102_while_cond_2062441___redundant_placeholder1c
_sequential_34_lstm_102_while_sequential_34_lstm_102_while_cond_2062441___redundant_placeholder2c
_sequential_34_lstm_102_while_sequential_34_lstm_102_while_cond_2062441___redundant_placeholder3)
%sequential_34_lstm_102_while_identity
Й
!sequential_34/lstm_102/while/LessLess(sequential_34_lstm_102_while_placeholderHsequential_34_lstm_102_while_less_sequential_34_lstm_102_strided_slice_1*
T0*
_output_shapes
: y
%sequential_34/lstm_102/while/IdentityIdentity%sequential_34/lstm_102/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_34_lstm_102_while_identity.sequential_34/lstm_102/while/Identity:output:0*(
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
)sequential_34_lstm_103_while_cond_2062580J
Fsequential_34_lstm_103_while_sequential_34_lstm_103_while_loop_counterP
Lsequential_34_lstm_103_while_sequential_34_lstm_103_while_maximum_iterations,
(sequential_34_lstm_103_while_placeholder.
*sequential_34_lstm_103_while_placeholder_1.
*sequential_34_lstm_103_while_placeholder_2.
*sequential_34_lstm_103_while_placeholder_3L
Hsequential_34_lstm_103_while_less_sequential_34_lstm_103_strided_slice_1c
_sequential_34_lstm_103_while_sequential_34_lstm_103_while_cond_2062580___redundant_placeholder0c
_sequential_34_lstm_103_while_sequential_34_lstm_103_while_cond_2062580___redundant_placeholder1c
_sequential_34_lstm_103_while_sequential_34_lstm_103_while_cond_2062580___redundant_placeholder2c
_sequential_34_lstm_103_while_sequential_34_lstm_103_while_cond_2062580___redundant_placeholder3)
%sequential_34_lstm_103_while_identity
Й
!sequential_34/lstm_103/while/LessLess(sequential_34_lstm_103_while_placeholderHsequential_34_lstm_103_while_less_sequential_34_lstm_103_strided_slice_1*
T0*
_output_shapes
: y
%sequential_34/lstm_103/while/IdentityIdentity%sequential_34/lstm_103/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_34_lstm_103_while_identity.sequential_34/lstm_103/while/Identity:output:0*(
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
В
ш
/__inference_lstm_cell_341_layer_call_fn_2068075

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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063723o
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
while_body_2063925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	љG
4while_lstm_cell_339_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_339_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_339/BiasAdd/ReadVariableOpб)while/lstm_cell_339/MatMul/ReadVariableOpб+while/lstm_cell_339/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
while_body_2066367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	љG
4while_lstm_cell_339_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_339_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_339/BiasAdd/ReadVariableOpб)while/lstm_cell_339/MatMul/ReadVariableOpб+while/lstm_cell_339/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
lstm_102_input;
 serving_default_lstm_102_input:0         <
dense_340
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
2dense_34/kernel
:2dense_34/bias
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
0:.	љ2lstm_102/lstm_cell_102/kernel
::8	dљ2'lstm_102/lstm_cell_102/recurrent_kernel
*:(љ2lstm_102/lstm_cell_102/bias
0:.	d╚2lstm_103/lstm_cell_103/kernel
::8	2╚2'lstm_103/lstm_cell_103/recurrent_kernel
*:(╚2lstm_103/lstm_cell_103/bias
/:-2(2lstm_104/lstm_cell_104/kernel
9:7
(2'lstm_104/lstm_cell_104/recurrent_kernel
):'(2lstm_104/lstm_cell_104/bias
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
2Adam/dense_34/kernel/m
 :2Adam/dense_34/bias/m
5:3	љ2$Adam/lstm_102/lstm_cell_102/kernel/m
?:=	dљ2.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m
/:-љ2"Adam/lstm_102/lstm_cell_102/bias/m
5:3	d╚2$Adam/lstm_103/lstm_cell_103/kernel/m
?:=	2╚2.Adam/lstm_103/lstm_cell_103/recurrent_kernel/m
/:-╚2"Adam/lstm_103/lstm_cell_103/bias/m
4:22(2$Adam/lstm_104/lstm_cell_104/kernel/m
>:<
(2.Adam/lstm_104/lstm_cell_104/recurrent_kernel/m
.:,(2"Adam/lstm_104/lstm_cell_104/bias/m
&:$
2Adam/dense_34/kernel/v
 :2Adam/dense_34/bias/v
5:3	љ2$Adam/lstm_102/lstm_cell_102/kernel/v
?:=	dљ2.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v
/:-љ2"Adam/lstm_102/lstm_cell_102/bias/v
5:3	d╚2$Adam/lstm_103/lstm_cell_103/kernel/v
?:=	2╚2.Adam/lstm_103/lstm_cell_103/recurrent_kernel/v
/:-╚2"Adam/lstm_103/lstm_cell_103/bias/v
4:22(2$Adam/lstm_104/lstm_cell_104/kernel/v
>:<
(2.Adam/lstm_104/lstm_cell_104/recurrent_kernel/v
.:,(2"Adam/lstm_104/lstm_cell_104/bias/v
і2Є
/__inference_sequential_34_layer_call_fn_2064359
/__inference_sequential_34_layer_call_fn_2065097
/__inference_sequential_34_layer_call_fn_2065124
/__inference_sequential_34_layer_call_fn_2064975└
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065551
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065978
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065005
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065035└
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
"__inference__wrapped_model_2062810lstm_102_input"ў
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
*__inference_lstm_102_layer_call_fn_2065989
*__inference_lstm_102_layer_call_fn_2066000
*__inference_lstm_102_layer_call_fn_2066011
*__inference_lstm_102_layer_call_fn_2066022Н
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066165
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066308
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066451
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066594Н
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
*__inference_lstm_103_layer_call_fn_2066605
*__inference_lstm_103_layer_call_fn_2066616
*__inference_lstm_103_layer_call_fn_2066627
*__inference_lstm_103_layer_call_fn_2066638Н
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066781
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066924
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067067
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067210Н
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
*__inference_lstm_104_layer_call_fn_2067221
*__inference_lstm_104_layer_call_fn_2067232
*__inference_lstm_104_layer_call_fn_2067243
*__inference_lstm_104_layer_call_fn_2067254Н
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067397
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067540
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067683
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067826Н
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
*__inference_dense_34_layer_call_fn_2067835б
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
E__inference_dense_34_layer_call_and_return_conditional_losses_2067845б
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
%__inference_signature_wrapper_2065070lstm_102_input"ћ
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
/__inference_lstm_cell_339_layer_call_fn_2067862
/__inference_lstm_cell_339_layer_call_fn_2067879Й
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067911
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067943Й
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
/__inference_lstm_cell_340_layer_call_fn_2067960
/__inference_lstm_cell_340_layer_call_fn_2067977Й
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068009
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068041Й
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
/__inference_lstm_cell_341_layer_call_fn_2068058
/__inference_lstm_cell_341_layer_call_fn_2068075Й
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068107
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068139Й
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
"__inference__wrapped_model_2062810-./012345!";б8
1б.
,і)
lstm_102_input         
ф "3ф0
.
dense_34"і
dense_34         Ц
E__inference_dense_34_layer_call_and_return_conditional_losses_2067845\!"/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ }
*__inference_dense_34_layer_call_fn_2067835O!"/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066165і-./OбL
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066308і-./OбL
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066451q-./?б<
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066594q-./?б<
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
*__inference_lstm_102_layer_call_fn_2065989}-./OбL
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
*__inference_lstm_102_layer_call_fn_2066000}-./OбL
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
*__inference_lstm_102_layer_call_fn_2066011d-./?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_102_layer_call_fn_2066022d-./?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066781і012OбL
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066924і012OбL
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067067q012?б<
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067210q012?б<
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
*__inference_lstm_103_layer_call_fn_2066605}012OбL
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
*__inference_lstm_103_layer_call_fn_2066616}012OбL
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
*__inference_lstm_103_layer_call_fn_2066627d012?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_103_layer_call_fn_2066638d012?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067397}345OбL
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067540}345OбL
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067683m345?б<
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067826m345?б<
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
*__inference_lstm_104_layer_call_fn_2067221p345OбL
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
*__inference_lstm_104_layer_call_fn_2067232p345OбL
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
*__inference_lstm_104_layer_call_fn_2067243`345?б<
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
*__inference_lstm_104_layer_call_fn_2067254`345?б<
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067911§-./ђб}
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067943§-./ђб}
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
/__inference_lstm_cell_339_layer_call_fn_2067862ь-./ђб}
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
/__inference_lstm_cell_339_layer_call_fn_2067879ь-./ђб}
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068009§012ђб}
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068041§012ђб}
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
/__inference_lstm_cell_340_layer_call_fn_2067960ь012ђб}
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
/__inference_lstm_cell_340_layer_call_fn_2067977ь012ђб}
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068107§345ђб}
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068139§345ђб}
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
/__inference_lstm_cell_341_layer_call_fn_2068058ь345ђб}
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
/__inference_lstm_cell_341_layer_call_fn_2068075ь345ђб}
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065005y-./012345!"Cб@
9б6
,і)
lstm_102_input         
p 

 
ф "%б"
і
0         
џ К
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065035y-./012345!"Cб@
9б6
,і)
lstm_102_input         
p

 
ф "%б"
і
0         
џ ┐
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065551q-./012345!";б8
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065978q-./012345!";б8
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
/__inference_sequential_34_layer_call_fn_2064359l-./012345!"Cб@
9б6
,і)
lstm_102_input         
p 

 
ф "і         Ъ
/__inference_sequential_34_layer_call_fn_2064975l-./012345!"Cб@
9б6
,і)
lstm_102_input         
p

 
ф "і         Ќ
/__inference_sequential_34_layer_call_fn_2065097d-./012345!";б8
1б.
$і!
inputs         
p 

 
ф "і         Ќ
/__inference_sequential_34_layer_call_fn_2065124d-./012345!";б8
1б.
$і!
inputs         
p

 
ф "і         ╗
%__inference_signature_wrapper_2065070Љ-./012345!"MбJ
б 
Cф@
>
lstm_102_input,і)
lstm_102_input         "3ф0
.
dense_34"і
dense_34         
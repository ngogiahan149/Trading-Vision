��/
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements#
handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
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
�"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ԛ-
z
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_28/kernel
s
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes

:
*
dtype0
r
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_28/bias
k
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
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
�
lstm_84/lstm_cell_84/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namelstm_84/lstm_cell_84/kernel
�
/lstm_84/lstm_cell_84/kernel/Read/ReadVariableOpReadVariableOplstm_84/lstm_cell_84/kernel*
_output_shapes
:	�*
dtype0
�
%lstm_84/lstm_cell_84/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*6
shared_name'%lstm_84/lstm_cell_84/recurrent_kernel
�
9lstm_84/lstm_cell_84/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_84/lstm_cell_84/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_84/lstm_cell_84/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_84/lstm_cell_84/bias
�
-lstm_84/lstm_cell_84/bias/Read/ReadVariableOpReadVariableOplstm_84/lstm_cell_84/bias*
_output_shapes	
:�*
dtype0
�
lstm_85/lstm_cell_85/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*,
shared_namelstm_85/lstm_cell_85/kernel
�
/lstm_85/lstm_cell_85/kernel/Read/ReadVariableOpReadVariableOplstm_85/lstm_cell_85/kernel*
_output_shapes
:	d�*
dtype0
�
%lstm_85/lstm_cell_85/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*6
shared_name'%lstm_85/lstm_cell_85/recurrent_kernel
�
9lstm_85/lstm_cell_85/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_85/lstm_cell_85/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_85/lstm_cell_85/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_85/lstm_cell_85/bias
�
-lstm_85/lstm_cell_85/bias/Read/ReadVariableOpReadVariableOplstm_85/lstm_cell_85/bias*
_output_shapes	
:�*
dtype0
�
lstm_86/lstm_cell_86/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_86/lstm_cell_86/kernel
�
/lstm_86/lstm_cell_86/kernel/Read/ReadVariableOpReadVariableOplstm_86/lstm_cell_86/kernel*
_output_shapes

:2(*
dtype0
�
%lstm_86/lstm_cell_86/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_86/lstm_cell_86/recurrent_kernel
�
9lstm_86/lstm_cell_86/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_86/lstm_cell_86/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_86/lstm_cell_86/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_86/lstm_cell_86/bias
�
-lstm_86/lstm_cell_86/bias/Read/ReadVariableOpReadVariableOplstm_86/lstm_cell_86/bias*
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
�
Adam/dense_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_28/kernel/m
�
*Adam/dense_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_28/bias/m
y
(Adam/dense_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_84/lstm_cell_84/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_84/lstm_cell_84/kernel/m
�
6Adam/lstm_84/lstm_cell_84/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_84/lstm_cell_84/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_84/lstm_cell_84/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*=
shared_name.,Adam/lstm_84/lstm_cell_84/recurrent_kernel/m
�
@Adam/lstm_84/lstm_cell_84/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_84/lstm_cell_84/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_84/lstm_cell_84/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_84/lstm_cell_84/bias/m
�
4Adam/lstm_84/lstm_cell_84/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_84/lstm_cell_84/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_85/lstm_cell_85/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*3
shared_name$"Adam/lstm_85/lstm_cell_85/kernel/m
�
6Adam/lstm_85/lstm_cell_85/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_85/lstm_cell_85/kernel/m*
_output_shapes
:	d�*
dtype0
�
,Adam/lstm_85/lstm_cell_85/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/lstm_85/lstm_cell_85/recurrent_kernel/m
�
@Adam/lstm_85/lstm_cell_85/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_85/lstm_cell_85/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
 Adam/lstm_85/lstm_cell_85/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_85/lstm_cell_85/bias/m
�
4Adam/lstm_85/lstm_cell_85/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_85/lstm_cell_85/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_86/lstm_cell_86/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_86/lstm_cell_86/kernel/m
�
6Adam/lstm_86/lstm_cell_86/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_86/lstm_cell_86/kernel/m*
_output_shapes

:2(*
dtype0
�
,Adam/lstm_86/lstm_cell_86/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_86/lstm_cell_86/recurrent_kernel/m
�
@Adam/lstm_86/lstm_cell_86/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_86/lstm_cell_86/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
 Adam/lstm_86/lstm_cell_86/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_86/lstm_cell_86/bias/m
�
4Adam/lstm_86/lstm_cell_86/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_86/lstm_cell_86/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_28/kernel/v
�
*Adam/dense_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_28/bias/v
y
(Adam/dense_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_84/lstm_cell_84/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_84/lstm_cell_84/kernel/v
�
6Adam/lstm_84/lstm_cell_84/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_84/lstm_cell_84/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_84/lstm_cell_84/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*=
shared_name.,Adam/lstm_84/lstm_cell_84/recurrent_kernel/v
�
@Adam/lstm_84/lstm_cell_84/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_84/lstm_cell_84/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_84/lstm_cell_84/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_84/lstm_cell_84/bias/v
�
4Adam/lstm_84/lstm_cell_84/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_84/lstm_cell_84/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_85/lstm_cell_85/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*3
shared_name$"Adam/lstm_85/lstm_cell_85/kernel/v
�
6Adam/lstm_85/lstm_cell_85/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_85/lstm_cell_85/kernel/v*
_output_shapes
:	d�*
dtype0
�
,Adam/lstm_85/lstm_cell_85/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/lstm_85/lstm_cell_85/recurrent_kernel/v
�
@Adam/lstm_85/lstm_cell_85/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_85/lstm_cell_85/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
 Adam/lstm_85/lstm_cell_85/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_85/lstm_cell_85/bias/v
�
4Adam/lstm_85/lstm_cell_85/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_85/lstm_cell_85/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_86/lstm_cell_86/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_86/lstm_cell_86/kernel/v
�
6Adam/lstm_86/lstm_cell_86/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_86/lstm_cell_86/kernel/v*
_output_shapes

:2(*
dtype0
�
,Adam/lstm_86/lstm_cell_86/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_86/lstm_cell_86/recurrent_kernel/v
�
@Adam/lstm_86/lstm_cell_86/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_86/lstm_cell_86/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
 Adam/lstm_86/lstm_cell_86/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_86/lstm_cell_86/bias/v
�
4Adam/lstm_86/lstm_cell_86/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_86/lstm_cell_86/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
�A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�@
value�@B�@ B�@
�
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
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
�

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
�
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m�4m�5m�!v�"v�-v�.v�/v�0v�1v�2v�3v�4v�5v�
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
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
�
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
�

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
�
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
�

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
�
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
�

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
VARIABLE_VALUEdense_28/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_28/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
�
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
WU
VARIABLE_VALUElstm_84/lstm_cell_84/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_84/lstm_cell_84/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_84/lstm_cell_84/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_85/lstm_cell_85/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_85/lstm_cell_85/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_85/lstm_cell_85/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_86/lstm_cell_86/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_86/lstm_cell_86/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_86/lstm_cell_86/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
�
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
�
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
�
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
VARIABLE_VALUEAdam/dense_28/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_28/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_84/lstm_cell_84/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_84/lstm_cell_84/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_84/lstm_cell_84/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_85/lstm_cell_85/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_85/lstm_cell_85/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_85/lstm_cell_85/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_86/lstm_cell_86/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_86/lstm_cell_86/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_86/lstm_cell_86/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_28/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_28/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_84/lstm_cell_84/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_84/lstm_cell_84/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_84/lstm_cell_84/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_85/lstm_cell_85/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_85/lstm_cell_85/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_85/lstm_cell_85/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_86/lstm_cell_86/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_86/lstm_cell_86/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_86/lstm_cell_86/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_84_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_84_inputlstm_84/lstm_cell_84/kernel%lstm_84/lstm_cell_84/recurrent_kernellstm_84/lstm_cell_84/biaslstm_85/lstm_cell_85/kernel%lstm_85/lstm_cell_85/recurrent_kernellstm_85/lstm_cell_85/biaslstm_86/lstm_cell_86/kernel%lstm_86/lstm_cell_86/recurrent_kernellstm_86/lstm_cell_86/biasdense_28/kerneldense_28/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1175240
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_84/lstm_cell_84/kernel/Read/ReadVariableOp9lstm_84/lstm_cell_84/recurrent_kernel/Read/ReadVariableOp-lstm_84/lstm_cell_84/bias/Read/ReadVariableOp/lstm_85/lstm_cell_85/kernel/Read/ReadVariableOp9lstm_85/lstm_cell_85/recurrent_kernel/Read/ReadVariableOp-lstm_85/lstm_cell_85/bias/Read/ReadVariableOp/lstm_86/lstm_cell_86/kernel/Read/ReadVariableOp9lstm_86/lstm_cell_86/recurrent_kernel/Read/ReadVariableOp-lstm_86/lstm_cell_86/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_28/kernel/m/Read/ReadVariableOp(Adam/dense_28/bias/m/Read/ReadVariableOp6Adam/lstm_84/lstm_cell_84/kernel/m/Read/ReadVariableOp@Adam/lstm_84/lstm_cell_84/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_84/lstm_cell_84/bias/m/Read/ReadVariableOp6Adam/lstm_85/lstm_cell_85/kernel/m/Read/ReadVariableOp@Adam/lstm_85/lstm_cell_85/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_85/lstm_cell_85/bias/m/Read/ReadVariableOp6Adam/lstm_86/lstm_cell_86/kernel/m/Read/ReadVariableOp@Adam/lstm_86/lstm_cell_86/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_86/lstm_cell_86/bias/m/Read/ReadVariableOp*Adam/dense_28/kernel/v/Read/ReadVariableOp(Adam/dense_28/bias/v/Read/ReadVariableOp6Adam/lstm_84/lstm_cell_84/kernel/v/Read/ReadVariableOp@Adam/lstm_84/lstm_cell_84/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_84/lstm_cell_84/bias/v/Read/ReadVariableOp6Adam/lstm_85/lstm_cell_85/kernel/v/Read/ReadVariableOp@Adam/lstm_85/lstm_cell_85/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_85/lstm_cell_85/bias/v/Read/ReadVariableOp6Adam/lstm_86/lstm_cell_86/kernel/v/Read/ReadVariableOp@Adam/lstm_86/lstm_cell_86/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_86/lstm_cell_86/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_1178452
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_28/kerneldense_28/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_84/lstm_cell_84/kernel%lstm_84/lstm_cell_84/recurrent_kernellstm_84/lstm_cell_84/biaslstm_85/lstm_cell_85/kernel%lstm_85/lstm_cell_85/recurrent_kernellstm_85/lstm_cell_85/biaslstm_86/lstm_cell_86/kernel%lstm_86/lstm_cell_86/recurrent_kernellstm_86/lstm_cell_86/biastotalcountAdam/dense_28/kernel/mAdam/dense_28/bias/m"Adam/lstm_84/lstm_cell_84/kernel/m,Adam/lstm_84/lstm_cell_84/recurrent_kernel/m Adam/lstm_84/lstm_cell_84/bias/m"Adam/lstm_85/lstm_cell_85/kernel/m,Adam/lstm_85/lstm_cell_85/recurrent_kernel/m Adam/lstm_85/lstm_cell_85/bias/m"Adam/lstm_86/lstm_cell_86/kernel/m,Adam/lstm_86/lstm_cell_86/recurrent_kernel/m Adam/lstm_86/lstm_cell_86/bias/mAdam/dense_28/kernel/vAdam/dense_28/bias/v"Adam/lstm_84/lstm_cell_84/kernel/v,Adam/lstm_84/lstm_cell_84/recurrent_kernel/v Adam/lstm_84/lstm_cell_84/bias/v"Adam/lstm_85/lstm_cell_85/kernel/v,Adam/lstm_85/lstm_cell_85/recurrent_kernel/v Adam/lstm_85/lstm_cell_85/bias/v"Adam/lstm_86/lstm_cell_86/kernel/v,Adam/lstm_86/lstm_cell_86/recurrent_kernel/v Adam/lstm_86/lstm_cell_86/bias/v*4
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_1178582��+
�J
�
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177996

inputs>
,lstm_cell_194_matmul_readvariableop_resource:2(@
.lstm_cell_194_matmul_1_readvariableop_resource:
(;
-lstm_cell_194_biasadd_readvariableop_resource:(
identity��$lstm_cell_194/BiasAdd/ReadVariableOp�#lstm_cell_194/MatMul/ReadVariableOp�%lstm_cell_194/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������
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
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_194/MatMul/ReadVariableOpReadVariableOp,lstm_cell_194_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_194/MatMulMatMulstrided_slice_2:output:0+lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_194_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_194/MatMul_1MatMulzeros:output:0-lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_194/addAddV2lstm_cell_194/MatMul:product:0 lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_194_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_194/BiasAddBiasAddlstm_cell_194/add:z:0,lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_194/splitSplit&lstm_cell_194/split/split_dim:output:0lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_194/SigmoidSigmoidlstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_1Sigmoidlstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_194/mulMullstm_cell_194/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_194/ReluRelulstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_1Mullstm_cell_194/Sigmoid:y:0 lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_194/add_1AddV2lstm_cell_194/mul:z:0lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_2Sigmoidlstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_194/Relu_1Relulstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_2Mullstm_cell_194/Sigmoid_2:y:0"lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_194_matmul_readvariableop_resource.lstm_cell_194_matmul_1_readvariableop_resource-lstm_cell_194_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1177912*
condR
while_cond_1177911*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
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
:���������
�
NoOpNoOp%^lstm_cell_194/BiasAdd/ReadVariableOp$^lstm_cell_194/MatMul/ReadVariableOp&^lstm_cell_194/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_194/BiasAdd/ReadVariableOp$lstm_cell_194/BiasAdd/ReadVariableOp2J
#lstm_cell_194/MatMul/ReadVariableOp#lstm_cell_194/MatMul/ReadVariableOp2N
%lstm_cell_194/MatMul_1/ReadVariableOp%lstm_cell_194/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
(sequential_28_lstm_86_while_cond_1172889H
Dsequential_28_lstm_86_while_sequential_28_lstm_86_while_loop_counterN
Jsequential_28_lstm_86_while_sequential_28_lstm_86_while_maximum_iterations+
'sequential_28_lstm_86_while_placeholder-
)sequential_28_lstm_86_while_placeholder_1-
)sequential_28_lstm_86_while_placeholder_2-
)sequential_28_lstm_86_while_placeholder_3J
Fsequential_28_lstm_86_while_less_sequential_28_lstm_86_strided_slice_1a
]sequential_28_lstm_86_while_sequential_28_lstm_86_while_cond_1172889___redundant_placeholder0a
]sequential_28_lstm_86_while_sequential_28_lstm_86_while_cond_1172889___redundant_placeholder1a
]sequential_28_lstm_86_while_sequential_28_lstm_86_while_cond_1172889___redundant_placeholder2a
]sequential_28_lstm_86_while_sequential_28_lstm_86_while_cond_1172889___redundant_placeholder3(
$sequential_28_lstm_86_while_identity
�
 sequential_28/lstm_86/while/LessLess'sequential_28_lstm_86_while_placeholderFsequential_28_lstm_86_while_less_sequential_28_lstm_86_strided_slice_1*
T0*
_output_shapes
: w
$sequential_28/lstm_86/while/IdentityIdentity$sequential_28/lstm_86/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_28_lstm_86_while_identity-sequential_28/lstm_86/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�

�
lstm_84_while_cond_1175779,
(lstm_84_while_lstm_84_while_loop_counter2
.lstm_84_while_lstm_84_while_maximum_iterations
lstm_84_while_placeholder
lstm_84_while_placeholder_1
lstm_84_while_placeholder_2
lstm_84_while_placeholder_3.
*lstm_84_while_less_lstm_84_strided_slice_1E
Alstm_84_while_lstm_84_while_cond_1175779___redundant_placeholder0E
Alstm_84_while_lstm_84_while_cond_1175779___redundant_placeholder1E
Alstm_84_while_lstm_84_while_cond_1175779___redundant_placeholder2E
Alstm_84_while_lstm_84_while_cond_1175779___redundant_placeholder3
lstm_84_while_identity
�
lstm_84/while/LessLesslstm_84_while_placeholder*lstm_84_while_less_lstm_84_strided_slice_1*
T0*
_output_shapes
: [
lstm_84/while/IdentityIdentitylstm_84/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_84_while_identitylstm_84/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�V
�
 __inference__traced_save_1178452
file_prefix.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_84_lstm_cell_84_kernel_read_readvariableopD
@savev2_lstm_84_lstm_cell_84_recurrent_kernel_read_readvariableop8
4savev2_lstm_84_lstm_cell_84_bias_read_readvariableop:
6savev2_lstm_85_lstm_cell_85_kernel_read_readvariableopD
@savev2_lstm_85_lstm_cell_85_recurrent_kernel_read_readvariableop8
4savev2_lstm_85_lstm_cell_85_bias_read_readvariableop:
6savev2_lstm_86_lstm_cell_86_kernel_read_readvariableopD
@savev2_lstm_86_lstm_cell_86_recurrent_kernel_read_readvariableop8
4savev2_lstm_86_lstm_cell_86_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_28_kernel_m_read_readvariableop3
/savev2_adam_dense_28_bias_m_read_readvariableopA
=savev2_adam_lstm_84_lstm_cell_84_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_84_lstm_cell_84_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_84_lstm_cell_84_bias_m_read_readvariableopA
=savev2_adam_lstm_85_lstm_cell_85_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_85_lstm_cell_85_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_85_lstm_cell_85_bias_m_read_readvariableopA
=savev2_adam_lstm_86_lstm_cell_86_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_86_lstm_cell_86_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_86_lstm_cell_86_bias_m_read_readvariableop5
1savev2_adam_dense_28_kernel_v_read_readvariableop3
/savev2_adam_dense_28_bias_v_read_readvariableopA
=savev2_adam_lstm_84_lstm_cell_84_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_84_lstm_cell_84_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_84_lstm_cell_84_bias_v_read_readvariableopA
=savev2_adam_lstm_85_lstm_cell_85_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_85_lstm_cell_85_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_85_lstm_cell_85_bias_v_read_readvariableopA
=savev2_adam_lstm_86_lstm_cell_86_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_86_lstm_cell_86_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_86_lstm_cell_86_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*�
value�B�)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_84_lstm_cell_84_kernel_read_readvariableop@savev2_lstm_84_lstm_cell_84_recurrent_kernel_read_readvariableop4savev2_lstm_84_lstm_cell_84_bias_read_readvariableop6savev2_lstm_85_lstm_cell_85_kernel_read_readvariableop@savev2_lstm_85_lstm_cell_85_recurrent_kernel_read_readvariableop4savev2_lstm_85_lstm_cell_85_bias_read_readvariableop6savev2_lstm_86_lstm_cell_86_kernel_read_readvariableop@savev2_lstm_86_lstm_cell_86_recurrent_kernel_read_readvariableop4savev2_lstm_86_lstm_cell_86_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_28_kernel_m_read_readvariableop/savev2_adam_dense_28_bias_m_read_readvariableop=savev2_adam_lstm_84_lstm_cell_84_kernel_m_read_readvariableopGsavev2_adam_lstm_84_lstm_cell_84_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_84_lstm_cell_84_bias_m_read_readvariableop=savev2_adam_lstm_85_lstm_cell_85_kernel_m_read_readvariableopGsavev2_adam_lstm_85_lstm_cell_85_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_85_lstm_cell_85_bias_m_read_readvariableop=savev2_adam_lstm_86_lstm_cell_86_kernel_m_read_readvariableopGsavev2_adam_lstm_86_lstm_cell_86_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_86_lstm_cell_86_bias_m_read_readvariableop1savev2_adam_dense_28_kernel_v_read_readvariableop/savev2_adam_dense_28_bias_v_read_readvariableop=savev2_adam_lstm_84_lstm_cell_84_kernel_v_read_readvariableopGsavev2_adam_lstm_84_lstm_cell_84_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_84_lstm_cell_84_bias_v_read_readvariableop=savev2_adam_lstm_85_lstm_cell_85_kernel_v_read_readvariableopGsavev2_adam_lstm_85_lstm_cell_85_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_85_lstm_cell_85_bias_v_read_readvariableop=savev2_adam_lstm_86_lstm_cell_86_kernel_v_read_readvariableopGsavev2_adam_lstm_86_lstm_cell_86_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_86_lstm_cell_86_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :
:: : : : : :	�:	d�:�:	d�:	2�:�:2(:
(:(: : :
::	�:	d�:�:	d�:	2�:�:2(:
(:(:
::	�:	d�:�:	d�:	2�:�:2(:
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
:	�:%	!

_output_shapes
:	d�:!


_output_shapes	
:�:%!

_output_shapes
:	d�:%!

_output_shapes
:	2�:!

_output_shapes	
:�:$ 

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
:	�:%!

_output_shapes
:	d�:!

_output_shapes	
:�:%!

_output_shapes
:	d�:%!

_output_shapes
:	2�:!

_output_shapes	
:�:$ 

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
:	�:%!!

_output_shapes
:	d�:!"

_output_shapes	
:�:%#!

_output_shapes
:	d�:%$!

_output_shapes
:	2�:!%

_output_shapes	
:�:$& 

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
�
�
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1173543

inputs

states
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�
�
while_cond_1174610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1174610___redundant_placeholder05
1while_while_cond_1174610___redundant_placeholder15
1while_while_cond_1174610___redundant_placeholder25
1while_while_cond_1174610___redundant_placeholder3
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
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�

�
lstm_85_while_cond_1175918,
(lstm_85_while_lstm_85_while_loop_counter2
.lstm_85_while_lstm_85_while_maximum_iterations
lstm_85_while_placeholder
lstm_85_while_placeholder_1
lstm_85_while_placeholder_2
lstm_85_while_placeholder_3.
*lstm_85_while_less_lstm_85_strided_slice_1E
Alstm_85_while_lstm_85_while_cond_1175918___redundant_placeholder0E
Alstm_85_while_lstm_85_while_cond_1175918___redundant_placeholder1E
Alstm_85_while_lstm_85_while_cond_1175918___redundant_placeholder2E
Alstm_85_while_lstm_85_while_cond_1175918___redundant_placeholder3
lstm_85_while_identity
�
lstm_85/while/LessLesslstm_85_while_placeholder*lstm_85_while_less_lstm_85_strided_slice_1*
T0*
_output_shapes
: [
lstm_85/while/IdentityIdentitylstm_85/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_85_while_identitylstm_85/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�K
�
D__inference_lstm_85_layer_call_and_return_conditional_losses_1177094
inputs_0?
,lstm_cell_193_matmul_readvariableop_resource:	d�A
.lstm_cell_193_matmul_1_readvariableop_resource:	2�<
-lstm_cell_193_biasadd_readvariableop_resource:	�
identity��$lstm_cell_193/BiasAdd/ReadVariableOp�#lstm_cell_193/MatMul/ReadVariableOp�%lstm_cell_193/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
:���������2R
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
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_193/MatMul/ReadVariableOpReadVariableOp,lstm_cell_193_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_193/MatMulMatMulstrided_slice_2:output:0+lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_193_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_193/MatMul_1MatMulzeros:output:0-lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_193/addAddV2lstm_cell_193/MatMul:product:0 lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_193_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_193/BiasAddBiasAddlstm_cell_193/add:z:0,lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_193/splitSplit&lstm_cell_193/split/split_dim:output:0lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_193/SigmoidSigmoidlstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_1Sigmoidlstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_193/mulMullstm_cell_193/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_193/ReluRelulstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_1Mullstm_cell_193/Sigmoid:y:0 lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_193/add_1AddV2lstm_cell_193/mul:z:0lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_2Sigmoidlstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_193/Relu_1Relulstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_2Mullstm_cell_193/Sigmoid_2:y:0"lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_193_matmul_readvariableop_resource.lstm_cell_193_matmul_1_readvariableop_resource-lstm_cell_193_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1177010*
condR
while_cond_1177009*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2�
NoOpNoOp%^lstm_cell_193/BiasAdd/ReadVariableOp$^lstm_cell_193/MatMul/ReadVariableOp&^lstm_cell_193/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_193/BiasAdd/ReadVariableOp$lstm_cell_193/BiasAdd/ReadVariableOp2J
#lstm_cell_193/MatMul/ReadVariableOp#lstm_cell_193/MatMul/ReadVariableOp2N
%lstm_cell_193/MatMul_1/ReadVariableOp%lstm_cell_193/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
while_cond_1173251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1173251___redundant_placeholder05
1while_while_cond_1173251___redundant_placeholder15
1while_while_cond_1173251___redundant_placeholder25
1while_while_cond_1173251___redundant_placeholder3
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
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_1177626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_194_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_194_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_194_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_194_matmul_readvariableop_resource:2(F
4while_lstm_cell_194_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_194_biasadd_readvariableop_resource:(��*while/lstm_cell_194/BiasAdd/ReadVariableOp�)while/lstm_cell_194/MatMul/ReadVariableOp�+while/lstm_cell_194/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_194/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_194_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_194/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_194_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_194/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_194/addAddV2$while/lstm_cell_194/MatMul:product:0&while/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_194_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_194/BiasAddBiasAddwhile/lstm_cell_194/add:z:02while/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_194/splitSplit,while/lstm_cell_194/split/split_dim:output:0$while/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_194/SigmoidSigmoid"while/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_1Sigmoid"while/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mulMul!while/lstm_cell_194/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_194/ReluRelu"while/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_1Mulwhile/lstm_cell_194/Sigmoid:y:0&while/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/add_1AddV2while/lstm_cell_194/mul:z:0while/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_2Sigmoid"while/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_194/Relu_1Reluwhile/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_2Mul!while/lstm_cell_194/Sigmoid_2:y:0(while/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_194/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_194/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_194/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_194/BiasAdd/ReadVariableOp*^while/lstm_cell_194/MatMul/ReadVariableOp,^while/lstm_cell_194/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_194_biasadd_readvariableop_resource5while_lstm_cell_194_biasadd_readvariableop_resource_0"n
4while_lstm_cell_194_matmul_1_readvariableop_resource6while_lstm_cell_194_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_194_matmul_readvariableop_resource4while_lstm_cell_194_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_194/BiasAdd/ReadVariableOp*while/lstm_cell_194/BiasAdd/ReadVariableOp2V
)while/lstm_cell_194/MatMul/ReadVariableOp)while/lstm_cell_194/MatMul/ReadVariableOp2Z
+while/lstm_cell_194/MatMul_1/ReadVariableOp+while/lstm_cell_194/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_86_while_cond_1175630,
(lstm_86_while_lstm_86_while_loop_counter2
.lstm_86_while_lstm_86_while_maximum_iterations
lstm_86_while_placeholder
lstm_86_while_placeholder_1
lstm_86_while_placeholder_2
lstm_86_while_placeholder_3.
*lstm_86_while_less_lstm_86_strided_slice_1E
Alstm_86_while_lstm_86_while_cond_1175630___redundant_placeholder0E
Alstm_86_while_lstm_86_while_cond_1175630___redundant_placeholder1E
Alstm_86_while_lstm_86_while_cond_1175630___redundant_placeholder2E
Alstm_86_while_lstm_86_while_cond_1175630___redundant_placeholder3
lstm_86_while_identity
�
lstm_86/while/LessLesslstm_86_while_placeholder*lstm_86_while_less_lstm_86_strided_slice_1*
T0*
_output_shapes
: [
lstm_86/while/IdentityIdentitylstm_86/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_86_while_identitylstm_86/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�J
�
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176621

inputs?
,lstm_cell_192_matmul_readvariableop_resource:	�A
.lstm_cell_192_matmul_1_readvariableop_resource:	d�<
-lstm_cell_192_biasadd_readvariableop_resource:	�
identity��$lstm_cell_192/BiasAdd/ReadVariableOp�#lstm_cell_192/MatMul/ReadVariableOp�%lstm_cell_192/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������dR
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
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_192/MatMul/ReadVariableOpReadVariableOp,lstm_cell_192_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_192/MatMulMatMulstrided_slice_2:output:0+lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_192_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_192/MatMul_1MatMulzeros:output:0-lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_192/addAddV2lstm_cell_192/MatMul:product:0 lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_192_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_192/BiasAddBiasAddlstm_cell_192/add:z:0,lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_192/splitSplit&lstm_cell_192/split/split_dim:output:0lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_192/SigmoidSigmoidlstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_1Sigmoidlstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_192/mulMullstm_cell_192/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_192/ReluRelulstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_1Mullstm_cell_192/Sigmoid:y:0 lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_192/add_1AddV2lstm_cell_192/mul:z:0lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_2Sigmoidlstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_192/Relu_1Relulstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_2Mullstm_cell_192/Sigmoid_2:y:0"lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_192_matmul_readvariableop_resource.lstm_cell_192_matmul_1_readvariableop_resource-lstm_cell_192_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1176537*
condR
while_cond_1176536*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_192/BiasAdd/ReadVariableOp$^lstm_cell_192/MatMul/ReadVariableOp&^lstm_cell_192/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_192/BiasAdd/ReadVariableOp$lstm_cell_192/BiasAdd/ReadVariableOp2J
#lstm_cell_192/MatMul/ReadVariableOp#lstm_cell_192/MatMul/ReadVariableOp2N
%lstm_cell_192/MatMul_1/ReadVariableOp%lstm_cell_192/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_1177295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1177295___redundant_placeholder05
1while_while_cond_1177295___redundant_placeholder15
1while_while_cond_1177295___redundant_placeholder25
1while_while_cond_1177295___redundant_placeholder3
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
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_lstm_86_layer_call_fn_1177413

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_86_layer_call_and_return_conditional_losses_1174479o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�8
�
while_body_1176867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_193_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_193_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_193_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_193_matmul_readvariableop_resource:	d�G
4while_lstm_cell_193_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_193_biasadd_readvariableop_resource:	���*while/lstm_cell_193/BiasAdd/ReadVariableOp�)while/lstm_cell_193/MatMul/ReadVariableOp�+while/lstm_cell_193/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_193/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_193_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_193/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_193_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_193/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_193/addAddV2$while/lstm_cell_193/MatMul:product:0&while/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_193_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_193/BiasAddBiasAddwhile/lstm_cell_193/add:z:02while/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_193/splitSplit,while/lstm_cell_193/split/split_dim:output:0$while/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_193/SigmoidSigmoid"while/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_1Sigmoid"while/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mulMul!while/lstm_cell_193/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_193/ReluRelu"while/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_1Mulwhile/lstm_cell_193/Sigmoid:y:0&while/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/add_1AddV2while/lstm_cell_193/mul:z:0while/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_2Sigmoid"while/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_193/Relu_1Reluwhile/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_2Mul!while/lstm_cell_193/Sigmoid_2:y:0(while/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_193/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_193/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_193/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_193/BiasAdd/ReadVariableOp*^while/lstm_cell_193/MatMul/ReadVariableOp,^while/lstm_cell_193/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_193_biasadd_readvariableop_resource5while_lstm_cell_193_biasadd_readvariableop_resource_0"n
4while_lstm_cell_193_matmul_1_readvariableop_resource6while_lstm_cell_193_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_193_matmul_readvariableop_resource4while_lstm_cell_193_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_193/BiasAdd/ReadVariableOp*while/lstm_cell_193/BiasAdd/ReadVariableOp2V
)while/lstm_cell_193/MatMul/ReadVariableOp)while/lstm_cell_193/MatMul/ReadVariableOp2Z
+while/lstm_cell_193/MatMul_1/ReadVariableOp+while/lstm_cell_193/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�R
�
(sequential_28_lstm_86_while_body_1172890H
Dsequential_28_lstm_86_while_sequential_28_lstm_86_while_loop_counterN
Jsequential_28_lstm_86_while_sequential_28_lstm_86_while_maximum_iterations+
'sequential_28_lstm_86_while_placeholder-
)sequential_28_lstm_86_while_placeholder_1-
)sequential_28_lstm_86_while_placeholder_2-
)sequential_28_lstm_86_while_placeholder_3G
Csequential_28_lstm_86_while_sequential_28_lstm_86_strided_slice_1_0�
sequential_28_lstm_86_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_86_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_28_lstm_86_while_lstm_cell_194_matmul_readvariableop_resource_0:2(^
Lsequential_28_lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource_0:
(Y
Ksequential_28_lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource_0:((
$sequential_28_lstm_86_while_identity*
&sequential_28_lstm_86_while_identity_1*
&sequential_28_lstm_86_while_identity_2*
&sequential_28_lstm_86_while_identity_3*
&sequential_28_lstm_86_while_identity_4*
&sequential_28_lstm_86_while_identity_5E
Asequential_28_lstm_86_while_sequential_28_lstm_86_strided_slice_1�
}sequential_28_lstm_86_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_86_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_28_lstm_86_while_lstm_cell_194_matmul_readvariableop_resource:2(\
Jsequential_28_lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource:
(W
Isequential_28_lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource:(��@sequential_28/lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp�?sequential_28/lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp�Asequential_28/lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp�
Msequential_28/lstm_86/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_28/lstm_86/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_28_lstm_86_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_86_tensorarrayunstack_tensorlistfromtensor_0'sequential_28_lstm_86_while_placeholderVsequential_28/lstm_86/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
?sequential_28/lstm_86/while/lstm_cell_194/MatMul/ReadVariableOpReadVariableOpJsequential_28_lstm_86_while_lstm_cell_194_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
0sequential_28/lstm_86/while/lstm_cell_194/MatMulMatMulFsequential_28/lstm_86/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_28/lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Asequential_28/lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOpLsequential_28_lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
2sequential_28/lstm_86/while/lstm_cell_194/MatMul_1MatMul)sequential_28_lstm_86_while_placeholder_2Isequential_28/lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-sequential_28/lstm_86/while/lstm_cell_194/addAddV2:sequential_28/lstm_86/while/lstm_cell_194/MatMul:product:0<sequential_28/lstm_86/while/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
@sequential_28/lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOpKsequential_28_lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
1sequential_28/lstm_86/while/lstm_cell_194/BiasAddBiasAdd1sequential_28/lstm_86/while/lstm_cell_194/add:z:0Hsequential_28/lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������({
9sequential_28/lstm_86/while/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_28/lstm_86/while/lstm_cell_194/splitSplitBsequential_28/lstm_86/while/lstm_cell_194/split/split_dim:output:0:sequential_28/lstm_86/while/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
1sequential_28/lstm_86/while/lstm_cell_194/SigmoidSigmoid8sequential_28/lstm_86/while/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
�
3sequential_28/lstm_86/while/lstm_cell_194/Sigmoid_1Sigmoid8sequential_28/lstm_86/while/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
-sequential_28/lstm_86/while/lstm_cell_194/mulMul7sequential_28/lstm_86/while/lstm_cell_194/Sigmoid_1:y:0)sequential_28_lstm_86_while_placeholder_3*
T0*'
_output_shapes
:���������
�
.sequential_28/lstm_86/while/lstm_cell_194/ReluRelu8sequential_28/lstm_86/while/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
/sequential_28/lstm_86/while/lstm_cell_194/mul_1Mul5sequential_28/lstm_86/while/lstm_cell_194/Sigmoid:y:0<sequential_28/lstm_86/while/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
/sequential_28/lstm_86/while/lstm_cell_194/add_1AddV21sequential_28/lstm_86/while/lstm_cell_194/mul:z:03sequential_28/lstm_86/while/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
�
3sequential_28/lstm_86/while/lstm_cell_194/Sigmoid_2Sigmoid8sequential_28/lstm_86/while/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
�
0sequential_28/lstm_86/while/lstm_cell_194/Relu_1Relu3sequential_28/lstm_86/while/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_28/lstm_86/while/lstm_cell_194/mul_2Mul7sequential_28/lstm_86/while/lstm_cell_194/Sigmoid_2:y:0>sequential_28/lstm_86/while/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
@sequential_28/lstm_86/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_28_lstm_86_while_placeholder_1'sequential_28_lstm_86_while_placeholder3sequential_28/lstm_86/while/lstm_cell_194/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_28/lstm_86/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_28/lstm_86/while/addAddV2'sequential_28_lstm_86_while_placeholder*sequential_28/lstm_86/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_28/lstm_86/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_28/lstm_86/while/add_1AddV2Dsequential_28_lstm_86_while_sequential_28_lstm_86_while_loop_counter,sequential_28/lstm_86/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_28/lstm_86/while/IdentityIdentity%sequential_28/lstm_86/while/add_1:z:0!^sequential_28/lstm_86/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_86/while/Identity_1IdentityJsequential_28_lstm_86_while_sequential_28_lstm_86_while_maximum_iterations!^sequential_28/lstm_86/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_86/while/Identity_2Identity#sequential_28/lstm_86/while/add:z:0!^sequential_28/lstm_86/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_86/while/Identity_3IdentityPsequential_28/lstm_86/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_28/lstm_86/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_86/while/Identity_4Identity3sequential_28/lstm_86/while/lstm_cell_194/mul_2:z:0!^sequential_28/lstm_86/while/NoOp*
T0*'
_output_shapes
:���������
�
&sequential_28/lstm_86/while/Identity_5Identity3sequential_28/lstm_86/while/lstm_cell_194/add_1:z:0!^sequential_28/lstm_86/while/NoOp*
T0*'
_output_shapes
:���������
�
 sequential_28/lstm_86/while/NoOpNoOpA^sequential_28/lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp@^sequential_28/lstm_86/while/lstm_cell_194/MatMul/ReadVariableOpB^sequential_28/lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_28_lstm_86_while_identity-sequential_28/lstm_86/while/Identity:output:0"Y
&sequential_28_lstm_86_while_identity_1/sequential_28/lstm_86/while/Identity_1:output:0"Y
&sequential_28_lstm_86_while_identity_2/sequential_28/lstm_86/while/Identity_2:output:0"Y
&sequential_28_lstm_86_while_identity_3/sequential_28/lstm_86/while/Identity_3:output:0"Y
&sequential_28_lstm_86_while_identity_4/sequential_28/lstm_86/while/Identity_4:output:0"Y
&sequential_28_lstm_86_while_identity_5/sequential_28/lstm_86/while/Identity_5:output:0"�
Isequential_28_lstm_86_while_lstm_cell_194_biasadd_readvariableop_resourceKsequential_28_lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource_0"�
Jsequential_28_lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resourceLsequential_28_lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource_0"�
Hsequential_28_lstm_86_while_lstm_cell_194_matmul_readvariableop_resourceJsequential_28_lstm_86_while_lstm_cell_194_matmul_readvariableop_resource_0"�
Asequential_28_lstm_86_while_sequential_28_lstm_86_strided_slice_1Csequential_28_lstm_86_while_sequential_28_lstm_86_strided_slice_1_0"�
}sequential_28_lstm_86_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_86_tensorarrayunstack_tensorlistfromtensorsequential_28_lstm_86_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_86_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
@sequential_28/lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp@sequential_28/lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp2�
?sequential_28/lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp?sequential_28/lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp2�
Asequential_28/lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOpAsequential_28/lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_lstm_cell_193_layer_call_fn_1178130

inputs
states_0
states_1
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1173397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�8
�
while_body_1176251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_192_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_192_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_192_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_192_matmul_readvariableop_resource:	�G
4while_lstm_cell_192_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_192_biasadd_readvariableop_resource:	���*while/lstm_cell_192/BiasAdd/ReadVariableOp�)while/lstm_cell_192/MatMul/ReadVariableOp�+while/lstm_cell_192/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_192/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_192_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_192/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_192_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_192/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_192/addAddV2$while/lstm_cell_192/MatMul:product:0&while/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_192_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_192/BiasAddBiasAddwhile/lstm_cell_192/add:z:02while/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_192/splitSplit,while/lstm_cell_192/split/split_dim:output:0$while/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_192/SigmoidSigmoid"while/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_1Sigmoid"while/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mulMul!while/lstm_cell_192/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_192/ReluRelu"while/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_1Mulwhile/lstm_cell_192/Sigmoid:y:0&while/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/add_1AddV2while/lstm_cell_192/mul:z:0while/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_2Sigmoid"while/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_192/Relu_1Reluwhile/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_2Mul!while/lstm_cell_192/Sigmoid_2:y:0(while/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_192/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_192/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_192/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_192/BiasAdd/ReadVariableOp*^while/lstm_cell_192/MatMul/ReadVariableOp,^while/lstm_cell_192/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_192_biasadd_readvariableop_resource5while_lstm_cell_192_biasadd_readvariableop_resource_0"n
4while_lstm_cell_192_matmul_1_readvariableop_resource6while_lstm_cell_192_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_192_matmul_readvariableop_resource4while_lstm_cell_192_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_192/BiasAdd/ReadVariableOp*while/lstm_cell_192/BiasAdd/ReadVariableOp2V
)while/lstm_cell_192/MatMul/ReadVariableOp)while/lstm_cell_192/MatMul/ReadVariableOp2Z
+while/lstm_cell_192/MatMul_1/ReadVariableOp+while/lstm_cell_192/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�B
�

lstm_84_while_body_1175353,
(lstm_84_while_lstm_84_while_loop_counter2
.lstm_84_while_lstm_84_while_maximum_iterations
lstm_84_while_placeholder
lstm_84_while_placeholder_1
lstm_84_while_placeholder_2
lstm_84_while_placeholder_3+
'lstm_84_while_lstm_84_strided_slice_1_0g
clstm_84_while_tensorarrayv2read_tensorlistgetitem_lstm_84_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_84_while_lstm_cell_192_matmul_readvariableop_resource_0:	�Q
>lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource_0:	d�L
=lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource_0:	�
lstm_84_while_identity
lstm_84_while_identity_1
lstm_84_while_identity_2
lstm_84_while_identity_3
lstm_84_while_identity_4
lstm_84_while_identity_5)
%lstm_84_while_lstm_84_strided_slice_1e
alstm_84_while_tensorarrayv2read_tensorlistgetitem_lstm_84_tensorarrayunstack_tensorlistfromtensorM
:lstm_84_while_lstm_cell_192_matmul_readvariableop_resource:	�O
<lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource:	d�J
;lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource:	���2lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp�1lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp�3lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp�
?lstm_84/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_84/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_84_while_tensorarrayv2read_tensorlistgetitem_lstm_84_tensorarrayunstack_tensorlistfromtensor_0lstm_84_while_placeholderHlstm_84/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1lstm_84/while/lstm_cell_192/MatMul/ReadVariableOpReadVariableOp<lstm_84_while_lstm_cell_192_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"lstm_84/while/lstm_cell_192/MatMulMatMul8lstm_84/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp>lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
$lstm_84/while/lstm_cell_192/MatMul_1MatMullstm_84_while_placeholder_2;lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_84/while/lstm_cell_192/addAddV2,lstm_84/while/lstm_cell_192/MatMul:product:0.lstm_84/while/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp=lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_84/while/lstm_cell_192/BiasAddBiasAdd#lstm_84/while/lstm_cell_192/add:z:0:lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_84/while/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_84/while/lstm_cell_192/splitSplit4lstm_84/while/lstm_cell_192/split/split_dim:output:0,lstm_84/while/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
#lstm_84/while/lstm_cell_192/SigmoidSigmoid*lstm_84/while/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d�
%lstm_84/while/lstm_cell_192/Sigmoid_1Sigmoid*lstm_84/while/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_84/while/lstm_cell_192/mulMul)lstm_84/while/lstm_cell_192/Sigmoid_1:y:0lstm_84_while_placeholder_3*
T0*'
_output_shapes
:���������d�
 lstm_84/while/lstm_cell_192/ReluRelu*lstm_84/while/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_84/while/lstm_cell_192/mul_1Mul'lstm_84/while/lstm_cell_192/Sigmoid:y:0.lstm_84/while/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
!lstm_84/while/lstm_cell_192/add_1AddV2#lstm_84/while/lstm_cell_192/mul:z:0%lstm_84/while/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d�
%lstm_84/while/lstm_cell_192/Sigmoid_2Sigmoid*lstm_84/while/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������d�
"lstm_84/while/lstm_cell_192/Relu_1Relu%lstm_84/while/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_84/while/lstm_cell_192/mul_2Mul)lstm_84/while/lstm_cell_192/Sigmoid_2:y:00lstm_84/while/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
2lstm_84/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_84_while_placeholder_1lstm_84_while_placeholder%lstm_84/while/lstm_cell_192/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_84/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_84/while/addAddV2lstm_84_while_placeholderlstm_84/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_84/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_84/while/add_1AddV2(lstm_84_while_lstm_84_while_loop_counterlstm_84/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_84/while/IdentityIdentitylstm_84/while/add_1:z:0^lstm_84/while/NoOp*
T0*
_output_shapes
: �
lstm_84/while/Identity_1Identity.lstm_84_while_lstm_84_while_maximum_iterations^lstm_84/while/NoOp*
T0*
_output_shapes
: q
lstm_84/while/Identity_2Identitylstm_84/while/add:z:0^lstm_84/while/NoOp*
T0*
_output_shapes
: �
lstm_84/while/Identity_3IdentityBlstm_84/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_84/while/NoOp*
T0*
_output_shapes
: �
lstm_84/while/Identity_4Identity%lstm_84/while/lstm_cell_192/mul_2:z:0^lstm_84/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_84/while/Identity_5Identity%lstm_84/while/lstm_cell_192/add_1:z:0^lstm_84/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_84/while/NoOpNoOp3^lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp2^lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp4^lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_84_while_identitylstm_84/while/Identity:output:0"=
lstm_84_while_identity_1!lstm_84/while/Identity_1:output:0"=
lstm_84_while_identity_2!lstm_84/while/Identity_2:output:0"=
lstm_84_while_identity_3!lstm_84/while/Identity_3:output:0"=
lstm_84_while_identity_4!lstm_84/while/Identity_4:output:0"=
lstm_84_while_identity_5!lstm_84/while/Identity_5:output:0"P
%lstm_84_while_lstm_84_strided_slice_1'lstm_84_while_lstm_84_strided_slice_1_0"|
;lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource=lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource_0"~
<lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource>lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource_0"z
:lstm_84_while_lstm_cell_192_matmul_readvariableop_resource<lstm_84_while_lstm_cell_192_matmul_readvariableop_resource_0"�
alstm_84_while_tensorarrayv2read_tensorlistgetitem_lstm_84_tensorarrayunstack_tensorlistfromtensorclstm_84_while_tensorarrayv2read_tensorlistgetitem_lstm_84_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp2lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp2f
1lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp1lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp2j
3lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp3lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�8
�
D__inference_lstm_84_layer_call_and_return_conditional_losses_1173130

inputs(
lstm_cell_192_1173048:	�(
lstm_cell_192_1173050:	d�$
lstm_cell_192_1173052:	�
identity��%lstm_cell_192/StatefulPartitionedCall�while;
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
valueB:�
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
:���������dR
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
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%lstm_cell_192/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_192_1173048lstm_cell_192_1173050lstm_cell_192_1173052*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1173047n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_192_1173048lstm_cell_192_1173050lstm_cell_192_1173052*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1173061*
condR
while_cond_1173060*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������dv
NoOpNoOp&^lstm_cell_192/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_192/StatefulPartitionedCall%lstm_cell_192/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_194_layer_call_fn_1178245

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1173893o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������
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
?:���������2:���������
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�
�
)__inference_lstm_85_layer_call_fn_1176797

inputs
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_85_layer_call_and_return_conditional_losses_1174329s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1173893

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������

 
_user_specified_namestates:OK
'
_output_shapes
:���������

 
_user_specified_namestates
�8
�
while_body_1174611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_194_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_194_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_194_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_194_matmul_readvariableop_resource:2(F
4while_lstm_cell_194_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_194_biasadd_readvariableop_resource:(��*while/lstm_cell_194/BiasAdd/ReadVariableOp�)while/lstm_cell_194/MatMul/ReadVariableOp�+while/lstm_cell_194/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_194/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_194_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_194/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_194_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_194/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_194/addAddV2$while/lstm_cell_194/MatMul:product:0&while/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_194_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_194/BiasAddBiasAddwhile/lstm_cell_194/add:z:02while/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_194/splitSplit,while/lstm_cell_194/split/split_dim:output:0$while/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_194/SigmoidSigmoid"while/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_1Sigmoid"while/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mulMul!while/lstm_cell_194/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_194/ReluRelu"while/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_1Mulwhile/lstm_cell_194/Sigmoid:y:0&while/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/add_1AddV2while/lstm_cell_194/mul:z:0while/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_2Sigmoid"while/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_194/Relu_1Reluwhile/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_2Mul!while/lstm_cell_194/Sigmoid_2:y:0(while/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_194/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_194/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_194/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_194/BiasAdd/ReadVariableOp*^while/lstm_cell_194/MatMul/ReadVariableOp,^while/lstm_cell_194/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_194_biasadd_readvariableop_resource5while_lstm_cell_194_biasadd_readvariableop_resource_0"n
4while_lstm_cell_194_matmul_1_readvariableop_resource6while_lstm_cell_194_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_194_matmul_readvariableop_resource4while_lstm_cell_194_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_194/BiasAdd/ReadVariableOp*while/lstm_cell_194/BiasAdd/ReadVariableOp2V
)while/lstm_cell_194/MatMul/ReadVariableOp)while/lstm_cell_194/MatMul/ReadVariableOp2Z
+while/lstm_cell_194/MatMul_1/ReadVariableOp+while/lstm_cell_194/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_1177296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_193_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_193_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_193_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_193_matmul_readvariableop_resource:	d�G
4while_lstm_cell_193_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_193_biasadd_readvariableop_resource:	���*while/lstm_cell_193/BiasAdd/ReadVariableOp�)while/lstm_cell_193/MatMul/ReadVariableOp�+while/lstm_cell_193/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_193/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_193_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_193/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_193_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_193/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_193/addAddV2$while/lstm_cell_193/MatMul:product:0&while/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_193_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_193/BiasAddBiasAddwhile/lstm_cell_193/add:z:02while/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_193/splitSplit,while/lstm_cell_193/split/split_dim:output:0$while/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_193/SigmoidSigmoid"while/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_1Sigmoid"while/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mulMul!while/lstm_cell_193/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_193/ReluRelu"while/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_1Mulwhile/lstm_cell_193/Sigmoid:y:0&while/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/add_1AddV2while/lstm_cell_193/mul:z:0while/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_2Sigmoid"while/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_193/Relu_1Reluwhile/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_2Mul!while/lstm_cell_193/Sigmoid_2:y:0(while/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_193/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_193/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_193/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_193/BiasAdd/ReadVariableOp*^while/lstm_cell_193/MatMul/ReadVariableOp,^while/lstm_cell_193/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_193_biasadd_readvariableop_resource5while_lstm_cell_193_biasadd_readvariableop_resource_0"n
4while_lstm_cell_193_matmul_1_readvariableop_resource6while_lstm_cell_193_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_193_matmul_readvariableop_resource4while_lstm_cell_193_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_193/BiasAdd/ReadVariableOp*while/lstm_cell_193/BiasAdd/ReadVariableOp2V
)while/lstm_cell_193/MatMul/ReadVariableOp)while/lstm_cell_193/MatMul/ReadVariableOp2Z
+while/lstm_cell_193/MatMul_1/ReadVariableOp+while/lstm_cell_193/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_84_while_cond_1175352,
(lstm_84_while_lstm_84_while_loop_counter2
.lstm_84_while_lstm_84_while_maximum_iterations
lstm_84_while_placeholder
lstm_84_while_placeholder_1
lstm_84_while_placeholder_2
lstm_84_while_placeholder_3.
*lstm_84_while_less_lstm_84_strided_slice_1E
Alstm_84_while_lstm_84_while_cond_1175352___redundant_placeholder0E
Alstm_84_while_lstm_84_while_cond_1175352___redundant_placeholder1E
Alstm_84_while_lstm_84_while_cond_1175352___redundant_placeholder2E
Alstm_84_while_lstm_84_while_cond_1175352___redundant_placeholder3
lstm_84_while_identity
�
lstm_84/while/LessLesslstm_84_while_placeholder*lstm_84_while_less_lstm_84_strided_slice_1*
T0*
_output_shapes
: [
lstm_84/while/IdentityIdentitylstm_84/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_84_while_identitylstm_84/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1178211

inputs
states_0
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�8
�
while_body_1177010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_193_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_193_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_193_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_193_matmul_readvariableop_resource:	d�G
4while_lstm_cell_193_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_193_biasadd_readvariableop_resource:	���*while/lstm_cell_193/BiasAdd/ReadVariableOp�)while/lstm_cell_193/MatMul/ReadVariableOp�+while/lstm_cell_193/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_193/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_193_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_193/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_193_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_193/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_193/addAddV2$while/lstm_cell_193/MatMul:product:0&while/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_193_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_193/BiasAddBiasAddwhile/lstm_cell_193/add:z:02while/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_193/splitSplit,while/lstm_cell_193/split/split_dim:output:0$while/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_193/SigmoidSigmoid"while/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_1Sigmoid"while/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mulMul!while/lstm_cell_193/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_193/ReluRelu"while/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_1Mulwhile/lstm_cell_193/Sigmoid:y:0&while/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/add_1AddV2while/lstm_cell_193/mul:z:0while/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_2Sigmoid"while/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_193/Relu_1Reluwhile/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_2Mul!while/lstm_cell_193/Sigmoid_2:y:0(while/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_193/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_193/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_193/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_193/BiasAdd/ReadVariableOp*^while/lstm_cell_193/MatMul/ReadVariableOp,^while/lstm_cell_193/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_193_biasadd_readvariableop_resource5while_lstm_cell_193_biasadd_readvariableop_resource_0"n
4while_lstm_cell_193_matmul_1_readvariableop_resource6while_lstm_cell_193_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_193_matmul_readvariableop_resource4while_lstm_cell_193_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_193/BiasAdd/ReadVariableOp*while/lstm_cell_193/BiasAdd/ReadVariableOp2V
)while/lstm_cell_193/MatMul/ReadVariableOp)while/lstm_cell_193/MatMul/ReadVariableOp2Z
+while/lstm_cell_193/MatMul_1/ReadVariableOp+while/lstm_cell_193/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175175
lstm_84_input"
lstm_84_1175148:	�"
lstm_84_1175150:	d�
lstm_84_1175152:	�"
lstm_85_1175155:	d�"
lstm_85_1175157:	2�
lstm_85_1175159:	�!
lstm_86_1175162:2(!
lstm_86_1175164:
(
lstm_86_1175166:("
dense_28_1175169:

dense_28_1175171:
identity�� dense_28/StatefulPartitionedCall�lstm_84/StatefulPartitionedCall�lstm_85/StatefulPartitionedCall�lstm_86/StatefulPartitionedCall�
lstm_84/StatefulPartitionedCallStatefulPartitionedCalllstm_84_inputlstm_84_1175148lstm_84_1175150lstm_84_1175152*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_84_layer_call_and_return_conditional_losses_1174179�
lstm_85/StatefulPartitionedCallStatefulPartitionedCall(lstm_84/StatefulPartitionedCall:output:0lstm_85_1175155lstm_85_1175157lstm_85_1175159*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_85_layer_call_and_return_conditional_losses_1174329�
lstm_86/StatefulPartitionedCallStatefulPartitionedCall(lstm_85/StatefulPartitionedCall:output:0lstm_86_1175162lstm_86_1175164lstm_86_1175166*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_86_layer_call_and_return_conditional_losses_1174479�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall(lstm_86/StatefulPartitionedCall:output:0dense_28_1175169dense_28_1175171*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_1174497x
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_28/StatefulPartitionedCall ^lstm_84/StatefulPartitionedCall ^lstm_85/StatefulPartitionedCall ^lstm_86/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2B
lstm_84/StatefulPartitionedCalllstm_84/StatefulPartitionedCall2B
lstm_85/StatefulPartitionedCalllstm_85/StatefulPartitionedCall2B
lstm_86/StatefulPartitionedCalllstm_86/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_84_input
�B
�

lstm_85_while_body_1175919,
(lstm_85_while_lstm_85_while_loop_counter2
.lstm_85_while_lstm_85_while_maximum_iterations
lstm_85_while_placeholder
lstm_85_while_placeholder_1
lstm_85_while_placeholder_2
lstm_85_while_placeholder_3+
'lstm_85_while_lstm_85_strided_slice_1_0g
clstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_85_while_lstm_cell_193_matmul_readvariableop_resource_0:	d�Q
>lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource_0:	2�L
=lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource_0:	�
lstm_85_while_identity
lstm_85_while_identity_1
lstm_85_while_identity_2
lstm_85_while_identity_3
lstm_85_while_identity_4
lstm_85_while_identity_5)
%lstm_85_while_lstm_85_strided_slice_1e
alstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensorM
:lstm_85_while_lstm_cell_193_matmul_readvariableop_resource:	d�O
<lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource:	2�J
;lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource:	���2lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp�1lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp�3lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp�
?lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
1lstm_85/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0lstm_85_while_placeholderHlstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
1lstm_85/while/lstm_cell_193/MatMul/ReadVariableOpReadVariableOp<lstm_85_while_lstm_cell_193_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
"lstm_85/while/lstm_cell_193/MatMulMatMul8lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp>lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
$lstm_85/while/lstm_cell_193/MatMul_1MatMullstm_85_while_placeholder_2;lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_85/while/lstm_cell_193/addAddV2,lstm_85/while/lstm_cell_193/MatMul:product:0.lstm_85/while/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp=lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_85/while/lstm_cell_193/BiasAddBiasAdd#lstm_85/while/lstm_cell_193/add:z:0:lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_85/while/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_85/while/lstm_cell_193/splitSplit4lstm_85/while/lstm_cell_193/split/split_dim:output:0,lstm_85/while/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
#lstm_85/while/lstm_cell_193/SigmoidSigmoid*lstm_85/while/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2�
%lstm_85/while/lstm_cell_193/Sigmoid_1Sigmoid*lstm_85/while/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_85/while/lstm_cell_193/mulMul)lstm_85/while/lstm_cell_193/Sigmoid_1:y:0lstm_85_while_placeholder_3*
T0*'
_output_shapes
:���������2�
 lstm_85/while/lstm_cell_193/ReluRelu*lstm_85/while/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
!lstm_85/while/lstm_cell_193/mul_1Mul'lstm_85/while/lstm_cell_193/Sigmoid:y:0.lstm_85/while/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
!lstm_85/while/lstm_cell_193/add_1AddV2#lstm_85/while/lstm_cell_193/mul:z:0%lstm_85/while/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2�
%lstm_85/while/lstm_cell_193/Sigmoid_2Sigmoid*lstm_85/while/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2�
"lstm_85/while/lstm_cell_193/Relu_1Relu%lstm_85/while/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
!lstm_85/while/lstm_cell_193/mul_2Mul)lstm_85/while/lstm_cell_193/Sigmoid_2:y:00lstm_85/while/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
2lstm_85/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_85_while_placeholder_1lstm_85_while_placeholder%lstm_85/while/lstm_cell_193/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_85/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_85/while/addAddV2lstm_85_while_placeholderlstm_85/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_85/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_85/while/add_1AddV2(lstm_85_while_lstm_85_while_loop_counterlstm_85/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_85/while/IdentityIdentitylstm_85/while/add_1:z:0^lstm_85/while/NoOp*
T0*
_output_shapes
: �
lstm_85/while/Identity_1Identity.lstm_85_while_lstm_85_while_maximum_iterations^lstm_85/while/NoOp*
T0*
_output_shapes
: q
lstm_85/while/Identity_2Identitylstm_85/while/add:z:0^lstm_85/while/NoOp*
T0*
_output_shapes
: �
lstm_85/while/Identity_3IdentityBlstm_85/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_85/while/NoOp*
T0*
_output_shapes
: �
lstm_85/while/Identity_4Identity%lstm_85/while/lstm_cell_193/mul_2:z:0^lstm_85/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_85/while/Identity_5Identity%lstm_85/while/lstm_cell_193/add_1:z:0^lstm_85/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_85/while/NoOpNoOp3^lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp2^lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp4^lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_85_while_identitylstm_85/while/Identity:output:0"=
lstm_85_while_identity_1!lstm_85/while/Identity_1:output:0"=
lstm_85_while_identity_2!lstm_85/while/Identity_2:output:0"=
lstm_85_while_identity_3!lstm_85/while/Identity_3:output:0"=
lstm_85_while_identity_4!lstm_85/while/Identity_4:output:0"=
lstm_85_while_identity_5!lstm_85/while/Identity_5:output:0"P
%lstm_85_while_lstm_85_strided_slice_1'lstm_85_while_lstm_85_strided_slice_1_0"|
;lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource=lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource_0"~
<lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource>lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource_0"z
:lstm_85_while_lstm_cell_193_matmul_readvariableop_resource<lstm_85_while_lstm_cell_193_matmul_readvariableop_resource_0"�
alstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensorclstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2h
2lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp2lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp2f
1lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp1lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp2j
3lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp3lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1173747

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������

 
_user_specified_namestates:OK
'
_output_shapes
:���������

 
_user_specified_namestates
�
�
while_cond_1177482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1177482___redundant_placeholder05
1while_while_cond_1177482___redundant_placeholder15
1while_while_cond_1177482___redundant_placeholder25
1while_while_cond_1177482___redundant_placeholder3
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
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�R
�
(sequential_28_lstm_84_while_body_1172612H
Dsequential_28_lstm_84_while_sequential_28_lstm_84_while_loop_counterN
Jsequential_28_lstm_84_while_sequential_28_lstm_84_while_maximum_iterations+
'sequential_28_lstm_84_while_placeholder-
)sequential_28_lstm_84_while_placeholder_1-
)sequential_28_lstm_84_while_placeholder_2-
)sequential_28_lstm_84_while_placeholder_3G
Csequential_28_lstm_84_while_sequential_28_lstm_84_strided_slice_1_0�
sequential_28_lstm_84_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_84_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_28_lstm_84_while_lstm_cell_192_matmul_readvariableop_resource_0:	�_
Lsequential_28_lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource_0:	d�Z
Ksequential_28_lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource_0:	�(
$sequential_28_lstm_84_while_identity*
&sequential_28_lstm_84_while_identity_1*
&sequential_28_lstm_84_while_identity_2*
&sequential_28_lstm_84_while_identity_3*
&sequential_28_lstm_84_while_identity_4*
&sequential_28_lstm_84_while_identity_5E
Asequential_28_lstm_84_while_sequential_28_lstm_84_strided_slice_1�
}sequential_28_lstm_84_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_84_tensorarrayunstack_tensorlistfromtensor[
Hsequential_28_lstm_84_while_lstm_cell_192_matmul_readvariableop_resource:	�]
Jsequential_28_lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource:	d�X
Isequential_28_lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource:	���@sequential_28/lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp�?sequential_28/lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp�Asequential_28/lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp�
Msequential_28/lstm_84/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_28/lstm_84/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_28_lstm_84_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_84_tensorarrayunstack_tensorlistfromtensor_0'sequential_28_lstm_84_while_placeholderVsequential_28/lstm_84/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
?sequential_28/lstm_84/while/lstm_cell_192/MatMul/ReadVariableOpReadVariableOpJsequential_28_lstm_84_while_lstm_cell_192_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
0sequential_28/lstm_84/while/lstm_cell_192/MatMulMatMulFsequential_28/lstm_84/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_28/lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Asequential_28/lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOpLsequential_28_lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_28/lstm_84/while/lstm_cell_192/MatMul_1MatMul)sequential_28_lstm_84_while_placeholder_2Isequential_28/lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_28/lstm_84/while/lstm_cell_192/addAddV2:sequential_28/lstm_84/while/lstm_cell_192/MatMul:product:0<sequential_28/lstm_84/while/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@sequential_28/lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOpKsequential_28_lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
1sequential_28/lstm_84/while/lstm_cell_192/BiasAddBiasAdd1sequential_28/lstm_84/while/lstm_cell_192/add:z:0Hsequential_28/lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9sequential_28/lstm_84/while/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_28/lstm_84/while/lstm_cell_192/splitSplitBsequential_28/lstm_84/while/lstm_cell_192/split/split_dim:output:0:sequential_28/lstm_84/while/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
1sequential_28/lstm_84/while/lstm_cell_192/SigmoidSigmoid8sequential_28/lstm_84/while/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d�
3sequential_28/lstm_84/while/lstm_cell_192/Sigmoid_1Sigmoid8sequential_28/lstm_84/while/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
-sequential_28/lstm_84/while/lstm_cell_192/mulMul7sequential_28/lstm_84/while/lstm_cell_192/Sigmoid_1:y:0)sequential_28_lstm_84_while_placeholder_3*
T0*'
_output_shapes
:���������d�
.sequential_28/lstm_84/while/lstm_cell_192/ReluRelu8sequential_28/lstm_84/while/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
/sequential_28/lstm_84/while/lstm_cell_192/mul_1Mul5sequential_28/lstm_84/while/lstm_cell_192/Sigmoid:y:0<sequential_28/lstm_84/while/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
/sequential_28/lstm_84/while/lstm_cell_192/add_1AddV21sequential_28/lstm_84/while/lstm_cell_192/mul:z:03sequential_28/lstm_84/while/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d�
3sequential_28/lstm_84/while/lstm_cell_192/Sigmoid_2Sigmoid8sequential_28/lstm_84/while/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������d�
0sequential_28/lstm_84/while/lstm_cell_192/Relu_1Relu3sequential_28/lstm_84/while/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_28/lstm_84/while/lstm_cell_192/mul_2Mul7sequential_28/lstm_84/while/lstm_cell_192/Sigmoid_2:y:0>sequential_28/lstm_84/while/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
@sequential_28/lstm_84/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_28_lstm_84_while_placeholder_1'sequential_28_lstm_84_while_placeholder3sequential_28/lstm_84/while/lstm_cell_192/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_28/lstm_84/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_28/lstm_84/while/addAddV2'sequential_28_lstm_84_while_placeholder*sequential_28/lstm_84/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_28/lstm_84/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_28/lstm_84/while/add_1AddV2Dsequential_28_lstm_84_while_sequential_28_lstm_84_while_loop_counter,sequential_28/lstm_84/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_28/lstm_84/while/IdentityIdentity%sequential_28/lstm_84/while/add_1:z:0!^sequential_28/lstm_84/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_84/while/Identity_1IdentityJsequential_28_lstm_84_while_sequential_28_lstm_84_while_maximum_iterations!^sequential_28/lstm_84/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_84/while/Identity_2Identity#sequential_28/lstm_84/while/add:z:0!^sequential_28/lstm_84/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_84/while/Identity_3IdentityPsequential_28/lstm_84/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_28/lstm_84/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_84/while/Identity_4Identity3sequential_28/lstm_84/while/lstm_cell_192/mul_2:z:0!^sequential_28/lstm_84/while/NoOp*
T0*'
_output_shapes
:���������d�
&sequential_28/lstm_84/while/Identity_5Identity3sequential_28/lstm_84/while/lstm_cell_192/add_1:z:0!^sequential_28/lstm_84/while/NoOp*
T0*'
_output_shapes
:���������d�
 sequential_28/lstm_84/while/NoOpNoOpA^sequential_28/lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp@^sequential_28/lstm_84/while/lstm_cell_192/MatMul/ReadVariableOpB^sequential_28/lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_28_lstm_84_while_identity-sequential_28/lstm_84/while/Identity:output:0"Y
&sequential_28_lstm_84_while_identity_1/sequential_28/lstm_84/while/Identity_1:output:0"Y
&sequential_28_lstm_84_while_identity_2/sequential_28/lstm_84/while/Identity_2:output:0"Y
&sequential_28_lstm_84_while_identity_3/sequential_28/lstm_84/while/Identity_3:output:0"Y
&sequential_28_lstm_84_while_identity_4/sequential_28/lstm_84/while/Identity_4:output:0"Y
&sequential_28_lstm_84_while_identity_5/sequential_28/lstm_84/while/Identity_5:output:0"�
Isequential_28_lstm_84_while_lstm_cell_192_biasadd_readvariableop_resourceKsequential_28_lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource_0"�
Jsequential_28_lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resourceLsequential_28_lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource_0"�
Hsequential_28_lstm_84_while_lstm_cell_192_matmul_readvariableop_resourceJsequential_28_lstm_84_while_lstm_cell_192_matmul_readvariableop_resource_0"�
Asequential_28_lstm_84_while_sequential_28_lstm_84_strided_slice_1Csequential_28_lstm_84_while_sequential_28_lstm_84_strided_slice_1_0"�
}sequential_28_lstm_84_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_84_tensorarrayunstack_tensorlistfromtensorsequential_28_lstm_84_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_84_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
@sequential_28/lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp@sequential_28/lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp2�
?sequential_28/lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp?sequential_28/lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp2�
Asequential_28/lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOpAsequential_28/lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�J
�
D__inference_lstm_86_layer_call_and_return_conditional_losses_1174479

inputs>
,lstm_cell_194_matmul_readvariableop_resource:2(@
.lstm_cell_194_matmul_1_readvariableop_resource:
(;
-lstm_cell_194_biasadd_readvariableop_resource:(
identity��$lstm_cell_194/BiasAdd/ReadVariableOp�#lstm_cell_194/MatMul/ReadVariableOp�%lstm_cell_194/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������
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
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_194/MatMul/ReadVariableOpReadVariableOp,lstm_cell_194_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_194/MatMulMatMulstrided_slice_2:output:0+lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_194_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_194/MatMul_1MatMulzeros:output:0-lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_194/addAddV2lstm_cell_194/MatMul:product:0 lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_194_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_194/BiasAddBiasAddlstm_cell_194/add:z:0,lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_194/splitSplit&lstm_cell_194/split/split_dim:output:0lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_194/SigmoidSigmoidlstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_1Sigmoidlstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_194/mulMullstm_cell_194/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_194/ReluRelulstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_1Mullstm_cell_194/Sigmoid:y:0 lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_194/add_1AddV2lstm_cell_194/mul:z:0lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_2Sigmoidlstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_194/Relu_1Relulstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_2Mullstm_cell_194/Sigmoid_2:y:0"lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_194_matmul_readvariableop_resource.lstm_cell_194_matmul_1_readvariableop_resource-lstm_cell_194_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1174395*
condR
while_cond_1174394*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
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
:���������
�
NoOpNoOp%^lstm_cell_194/BiasAdd/ReadVariableOp$^lstm_cell_194/MatMul/ReadVariableOp&^lstm_cell_194/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_194/BiasAdd/ReadVariableOp$lstm_cell_194/BiasAdd/ReadVariableOp2J
#lstm_cell_194/MatMul/ReadVariableOp#lstm_cell_194/MatMul/ReadVariableOp2N
%lstm_cell_194/MatMul_1/ReadVariableOp%lstm_cell_194/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
/__inference_sequential_28_layer_call_fn_1174529
lstm_84_input
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_84_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_28_layer_call_and_return_conditional_losses_1174504o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_84_input
�
�
while_cond_1174940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1174940___redundant_placeholder05
1while_while_cond_1174940___redundant_placeholder15
1while_while_cond_1174940___redundant_placeholder25
1while_while_cond_1174940___redundant_placeholder3
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
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�

�
/__inference_sequential_28_layer_call_fn_1175145
lstm_84_input
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_84_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175093o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_84_input
��
�
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175721

inputsG
4lstm_84_lstm_cell_192_matmul_readvariableop_resource:	�I
6lstm_84_lstm_cell_192_matmul_1_readvariableop_resource:	d�D
5lstm_84_lstm_cell_192_biasadd_readvariableop_resource:	�G
4lstm_85_lstm_cell_193_matmul_readvariableop_resource:	d�I
6lstm_85_lstm_cell_193_matmul_1_readvariableop_resource:	2�D
5lstm_85_lstm_cell_193_biasadd_readvariableop_resource:	�F
4lstm_86_lstm_cell_194_matmul_readvariableop_resource:2(H
6lstm_86_lstm_cell_194_matmul_1_readvariableop_resource:
(C
5lstm_86_lstm_cell_194_biasadd_readvariableop_resource:(9
'dense_28_matmul_readvariableop_resource:
6
(dense_28_biasadd_readvariableop_resource:
identity��dense_28/BiasAdd/ReadVariableOp�dense_28/MatMul/ReadVariableOp�,lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp�+lstm_84/lstm_cell_192/MatMul/ReadVariableOp�-lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp�lstm_84/while�,lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp�+lstm_85/lstm_cell_193/MatMul/ReadVariableOp�-lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp�lstm_85/while�,lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp�+lstm_86/lstm_cell_194/MatMul/ReadVariableOp�-lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp�lstm_86/whileC
lstm_84/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_84/strided_sliceStridedSlicelstm_84/Shape:output:0$lstm_84/strided_slice/stack:output:0&lstm_84/strided_slice/stack_1:output:0&lstm_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_84/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_84/zeros/packedPacklstm_84/strided_slice:output:0lstm_84/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_84/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_84/zerosFilllstm_84/zeros/packed:output:0lstm_84/zeros/Const:output:0*
T0*'
_output_shapes
:���������dZ
lstm_84/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_84/zeros_1/packedPacklstm_84/strided_slice:output:0!lstm_84/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_84/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_84/zeros_1Filllstm_84/zeros_1/packed:output:0lstm_84/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dk
lstm_84/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_84/transpose	Transposeinputslstm_84/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_84/Shape_1Shapelstm_84/transpose:y:0*
T0*
_output_shapes
:g
lstm_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_84/strided_slice_1StridedSlicelstm_84/Shape_1:output:0&lstm_84/strided_slice_1/stack:output:0(lstm_84/strided_slice_1/stack_1:output:0(lstm_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_84/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_84/TensorArrayV2TensorListReserve,lstm_84/TensorArrayV2/element_shape:output:0 lstm_84/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_84/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_84/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_84/transpose:y:0Flstm_84/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_84/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_84/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_84/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_84/strided_slice_2StridedSlicelstm_84/transpose:y:0&lstm_84/strided_slice_2/stack:output:0(lstm_84/strided_slice_2/stack_1:output:0(lstm_84/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+lstm_84/lstm_cell_192/MatMul/ReadVariableOpReadVariableOp4lstm_84_lstm_cell_192_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_84/lstm_cell_192/MatMulMatMul lstm_84/strided_slice_2:output:03lstm_84/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_84/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp6lstm_84_lstm_cell_192_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_84/lstm_cell_192/MatMul_1MatMullstm_84/zeros:output:05lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_84/lstm_cell_192/addAddV2&lstm_84/lstm_cell_192/MatMul:product:0(lstm_84/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_84/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp5lstm_84_lstm_cell_192_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_84/lstm_cell_192/BiasAddBiasAddlstm_84/lstm_cell_192/add:z:04lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_84/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_84/lstm_cell_192/splitSplit.lstm_84/lstm_cell_192/split/split_dim:output:0&lstm_84/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_84/lstm_cell_192/SigmoidSigmoid$lstm_84/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/Sigmoid_1Sigmoid$lstm_84/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/mulMul#lstm_84/lstm_cell_192/Sigmoid_1:y:0lstm_84/zeros_1:output:0*
T0*'
_output_shapes
:���������dz
lstm_84/lstm_cell_192/ReluRelu$lstm_84/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/mul_1Mul!lstm_84/lstm_cell_192/Sigmoid:y:0(lstm_84/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/add_1AddV2lstm_84/lstm_cell_192/mul:z:0lstm_84/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/Sigmoid_2Sigmoid$lstm_84/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������dw
lstm_84/lstm_cell_192/Relu_1Relulstm_84/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/mul_2Mul#lstm_84/lstm_cell_192/Sigmoid_2:y:0*lstm_84/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������dv
%lstm_84/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_84/TensorArrayV2_1TensorListReserve.lstm_84/TensorArrayV2_1/element_shape:output:0 lstm_84/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_84/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_84/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_84/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_84/whileWhile#lstm_84/while/loop_counter:output:0)lstm_84/while/maximum_iterations:output:0lstm_84/time:output:0 lstm_84/TensorArrayV2_1:handle:0lstm_84/zeros:output:0lstm_84/zeros_1:output:0 lstm_84/strided_slice_1:output:0?lstm_84/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_84_lstm_cell_192_matmul_readvariableop_resource6lstm_84_lstm_cell_192_matmul_1_readvariableop_resource5lstm_84_lstm_cell_192_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_84_while_body_1175353*&
condR
lstm_84_while_cond_1175352*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
8lstm_84/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
*lstm_84/TensorArrayV2Stack/TensorListStackTensorListStacklstm_84/while:output:3Alstm_84/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0p
lstm_84/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_84/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_84/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_84/strided_slice_3StridedSlice3lstm_84/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_84/strided_slice_3/stack:output:0(lstm_84/strided_slice_3/stack_1:output:0(lstm_84/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskm
lstm_84/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_84/transpose_1	Transpose3lstm_84/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_84/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dc
lstm_84/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_85/ShapeShapelstm_84/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_85/strided_sliceStridedSlicelstm_85/Shape:output:0$lstm_85/strided_slice/stack:output:0&lstm_85/strided_slice/stack_1:output:0&lstm_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_85/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_85/zeros/packedPacklstm_85/strided_slice:output:0lstm_85/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_85/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_85/zerosFilllstm_85/zeros/packed:output:0lstm_85/zeros/Const:output:0*
T0*'
_output_shapes
:���������2Z
lstm_85/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_85/zeros_1/packedPacklstm_85/strided_slice:output:0!lstm_85/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_85/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_85/zeros_1Filllstm_85/zeros_1/packed:output:0lstm_85/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2k
lstm_85/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_85/transpose	Transposelstm_84/transpose_1:y:0lstm_85/transpose/perm:output:0*
T0*+
_output_shapes
:���������dT
lstm_85/Shape_1Shapelstm_85/transpose:y:0*
T0*
_output_shapes
:g
lstm_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_85/strided_slice_1StridedSlicelstm_85/Shape_1:output:0&lstm_85/strided_slice_1/stack:output:0(lstm_85/strided_slice_1/stack_1:output:0(lstm_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_85/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_85/TensorArrayV2TensorListReserve,lstm_85/TensorArrayV2/element_shape:output:0 lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
/lstm_85/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_85/transpose:y:0Flstm_85/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_85/strided_slice_2StridedSlicelstm_85/transpose:y:0&lstm_85/strided_slice_2/stack:output:0(lstm_85/strided_slice_2/stack_1:output:0(lstm_85/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
+lstm_85/lstm_cell_193/MatMul/ReadVariableOpReadVariableOp4lstm_85_lstm_cell_193_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_85/lstm_cell_193/MatMulMatMul lstm_85/strided_slice_2:output:03lstm_85/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_85/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp6lstm_85_lstm_cell_193_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_85/lstm_cell_193/MatMul_1MatMullstm_85/zeros:output:05lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_85/lstm_cell_193/addAddV2&lstm_85/lstm_cell_193/MatMul:product:0(lstm_85/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_85/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp5lstm_85_lstm_cell_193_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_85/lstm_cell_193/BiasAddBiasAddlstm_85/lstm_cell_193/add:z:04lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_85/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_85/lstm_cell_193/splitSplit.lstm_85/lstm_cell_193/split/split_dim:output:0&lstm_85/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_85/lstm_cell_193/SigmoidSigmoid$lstm_85/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/Sigmoid_1Sigmoid$lstm_85/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/mulMul#lstm_85/lstm_cell_193/Sigmoid_1:y:0lstm_85/zeros_1:output:0*
T0*'
_output_shapes
:���������2z
lstm_85/lstm_cell_193/ReluRelu$lstm_85/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/mul_1Mul!lstm_85/lstm_cell_193/Sigmoid:y:0(lstm_85/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/add_1AddV2lstm_85/lstm_cell_193/mul:z:0lstm_85/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/Sigmoid_2Sigmoid$lstm_85/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2w
lstm_85/lstm_cell_193/Relu_1Relulstm_85/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/mul_2Mul#lstm_85/lstm_cell_193/Sigmoid_2:y:0*lstm_85/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2v
%lstm_85/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_85/TensorArrayV2_1TensorListReserve.lstm_85/TensorArrayV2_1/element_shape:output:0 lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_85/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_85/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_85/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_85/whileWhile#lstm_85/while/loop_counter:output:0)lstm_85/while/maximum_iterations:output:0lstm_85/time:output:0 lstm_85/TensorArrayV2_1:handle:0lstm_85/zeros:output:0lstm_85/zeros_1:output:0 lstm_85/strided_slice_1:output:0?lstm_85/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_85_lstm_cell_193_matmul_readvariableop_resource6lstm_85_lstm_cell_193_matmul_1_readvariableop_resource5lstm_85_lstm_cell_193_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_85_while_body_1175492*&
condR
lstm_85_while_cond_1175491*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
8lstm_85/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*lstm_85/TensorArrayV2Stack/TensorListStackTensorListStacklstm_85/while:output:3Alstm_85/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0p
lstm_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_85/strided_slice_3StridedSlice3lstm_85/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_85/strided_slice_3/stack:output:0(lstm_85/strided_slice_3/stack_1:output:0(lstm_85/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskm
lstm_85/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_85/transpose_1	Transpose3lstm_85/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_85/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_85/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_86/ShapeShapelstm_85/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_86/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_86/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_86/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_86/strided_sliceStridedSlicelstm_86/Shape:output:0$lstm_86/strided_slice/stack:output:0&lstm_86/strided_slice/stack_1:output:0&lstm_86/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_86/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_86/zeros/packedPacklstm_86/strided_slice:output:0lstm_86/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_86/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_86/zerosFilllstm_86/zeros/packed:output:0lstm_86/zeros/Const:output:0*
T0*'
_output_shapes
:���������
Z
lstm_86/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_86/zeros_1/packedPacklstm_86/strided_slice:output:0!lstm_86/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_86/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_86/zeros_1Filllstm_86/zeros_1/packed:output:0lstm_86/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
k
lstm_86/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_86/transpose	Transposelstm_85/transpose_1:y:0lstm_86/transpose/perm:output:0*
T0*+
_output_shapes
:���������2T
lstm_86/Shape_1Shapelstm_86/transpose:y:0*
T0*
_output_shapes
:g
lstm_86/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_86/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_86/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_86/strided_slice_1StridedSlicelstm_86/Shape_1:output:0&lstm_86/strided_slice_1/stack:output:0(lstm_86/strided_slice_1/stack_1:output:0(lstm_86/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_86/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_86/TensorArrayV2TensorListReserve,lstm_86/TensorArrayV2/element_shape:output:0 lstm_86/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_86/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/lstm_86/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_86/transpose:y:0Flstm_86/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_86/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_86/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_86/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_86/strided_slice_2StridedSlicelstm_86/transpose:y:0&lstm_86/strided_slice_2/stack:output:0(lstm_86/strided_slice_2/stack_1:output:0(lstm_86/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
+lstm_86/lstm_cell_194/MatMul/ReadVariableOpReadVariableOp4lstm_86_lstm_cell_194_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_86/lstm_cell_194/MatMulMatMul lstm_86/strided_slice_2:output:03lstm_86/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-lstm_86/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp6lstm_86_lstm_cell_194_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_86/lstm_cell_194/MatMul_1MatMullstm_86/zeros:output:05lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_86/lstm_cell_194/addAddV2&lstm_86/lstm_cell_194/MatMul:product:0(lstm_86/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
,lstm_86/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp5lstm_86_lstm_cell_194_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_86/lstm_cell_194/BiasAddBiasAddlstm_86/lstm_cell_194/add:z:04lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(g
%lstm_86/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_86/lstm_cell_194/splitSplit.lstm_86/lstm_cell_194/split/split_dim:output:0&lstm_86/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_86/lstm_cell_194/SigmoidSigmoid$lstm_86/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/Sigmoid_1Sigmoid$lstm_86/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/mulMul#lstm_86/lstm_cell_194/Sigmoid_1:y:0lstm_86/zeros_1:output:0*
T0*'
_output_shapes
:���������
z
lstm_86/lstm_cell_194/ReluRelu$lstm_86/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/mul_1Mul!lstm_86/lstm_cell_194/Sigmoid:y:0(lstm_86/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/add_1AddV2lstm_86/lstm_cell_194/mul:z:0lstm_86/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/Sigmoid_2Sigmoid$lstm_86/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
w
lstm_86/lstm_cell_194/Relu_1Relulstm_86/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/mul_2Mul#lstm_86/lstm_cell_194/Sigmoid_2:y:0*lstm_86/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
v
%lstm_86/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_86/TensorArrayV2_1TensorListReserve.lstm_86/TensorArrayV2_1/element_shape:output:0 lstm_86/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_86/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_86/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_86/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_86/whileWhile#lstm_86/while/loop_counter:output:0)lstm_86/while/maximum_iterations:output:0lstm_86/time:output:0 lstm_86/TensorArrayV2_1:handle:0lstm_86/zeros:output:0lstm_86/zeros_1:output:0 lstm_86/strided_slice_1:output:0?lstm_86/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_86_lstm_cell_194_matmul_readvariableop_resource6lstm_86_lstm_cell_194_matmul_1_readvariableop_resource5lstm_86_lstm_cell_194_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_86_while_body_1175631*&
condR
lstm_86_while_cond_1175630*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
8lstm_86/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
*lstm_86/TensorArrayV2Stack/TensorListStackTensorListStacklstm_86/while:output:3Alstm_86/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0p
lstm_86/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_86/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_86/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_86/strided_slice_3StridedSlice3lstm_86/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_86/strided_slice_3/stack:output:0(lstm_86/strided_slice_3/stack_1:output:0(lstm_86/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskm
lstm_86/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_86/transpose_1	Transpose3lstm_86/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_86/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
c
lstm_86/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_28/MatMulMatMul lstm_86/strided_slice_3:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_28/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp-^lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp,^lstm_84/lstm_cell_192/MatMul/ReadVariableOp.^lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp^lstm_84/while-^lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp,^lstm_85/lstm_cell_193/MatMul/ReadVariableOp.^lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp^lstm_85/while-^lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp,^lstm_86/lstm_cell_194/MatMul/ReadVariableOp.^lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp^lstm_86/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2\
,lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp,lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp2Z
+lstm_84/lstm_cell_192/MatMul/ReadVariableOp+lstm_84/lstm_cell_192/MatMul/ReadVariableOp2^
-lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp-lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp2
lstm_84/whilelstm_84/while2\
,lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp,lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp2Z
+lstm_85/lstm_cell_193/MatMul/ReadVariableOp+lstm_85/lstm_cell_193/MatMul/ReadVariableOp2^
-lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp-lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp2
lstm_85/whilelstm_85/while2\
,lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp,lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp2Z
+lstm_86/lstm_cell_194/MatMul/ReadVariableOp+lstm_86/lstm_cell_194/MatMul/ReadVariableOp2^
-lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp-lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp2
lstm_86/whilelstm_86/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_1177912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_194_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_194_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_194_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_194_matmul_readvariableop_resource:2(F
4while_lstm_cell_194_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_194_biasadd_readvariableop_resource:(��*while/lstm_cell_194/BiasAdd/ReadVariableOp�)while/lstm_cell_194/MatMul/ReadVariableOp�+while/lstm_cell_194/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_194/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_194_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_194/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_194_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_194/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_194/addAddV2$while/lstm_cell_194/MatMul:product:0&while/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_194_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_194/BiasAddBiasAddwhile/lstm_cell_194/add:z:02while/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_194/splitSplit,while/lstm_cell_194/split/split_dim:output:0$while/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_194/SigmoidSigmoid"while/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_1Sigmoid"while/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mulMul!while/lstm_cell_194/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_194/ReluRelu"while/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_1Mulwhile/lstm_cell_194/Sigmoid:y:0&while/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/add_1AddV2while/lstm_cell_194/mul:z:0while/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_2Sigmoid"while/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_194/Relu_1Reluwhile/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_2Mul!while/lstm_cell_194/Sigmoid_2:y:0(while/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_194/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_194/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_194/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_194/BiasAdd/ReadVariableOp*^while/lstm_cell_194/MatMul/ReadVariableOp,^while/lstm_cell_194/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_194_biasadd_readvariableop_resource5while_lstm_cell_194_biasadd_readvariableop_resource_0"n
4while_lstm_cell_194_matmul_1_readvariableop_resource6while_lstm_cell_194_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_194_matmul_readvariableop_resource4while_lstm_cell_194_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_194/BiasAdd/ReadVariableOp*while/lstm_cell_194/BiasAdd/ReadVariableOp2V
)while/lstm_cell_194/MatMul/ReadVariableOp)while/lstm_cell_194/MatMul/ReadVariableOp2Z
+while/lstm_cell_194/MatMul_1/ReadVariableOp+while/lstm_cell_194/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
(sequential_28_lstm_84_while_cond_1172611H
Dsequential_28_lstm_84_while_sequential_28_lstm_84_while_loop_counterN
Jsequential_28_lstm_84_while_sequential_28_lstm_84_while_maximum_iterations+
'sequential_28_lstm_84_while_placeholder-
)sequential_28_lstm_84_while_placeholder_1-
)sequential_28_lstm_84_while_placeholder_2-
)sequential_28_lstm_84_while_placeholder_3J
Fsequential_28_lstm_84_while_less_sequential_28_lstm_84_strided_slice_1a
]sequential_28_lstm_84_while_sequential_28_lstm_84_while_cond_1172611___redundant_placeholder0a
]sequential_28_lstm_84_while_sequential_28_lstm_84_while_cond_1172611___redundant_placeholder1a
]sequential_28_lstm_84_while_sequential_28_lstm_84_while_cond_1172611___redundant_placeholder2a
]sequential_28_lstm_84_while_sequential_28_lstm_84_while_cond_1172611___redundant_placeholder3(
$sequential_28_lstm_84_while_identity
�
 sequential_28/lstm_84/while/LessLess'sequential_28_lstm_84_while_placeholderFsequential_28_lstm_84_while_less_sequential_28_lstm_84_strided_slice_1*
T0*
_output_shapes
: w
$sequential_28/lstm_84/while/IdentityIdentity$sequential_28/lstm_84/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_28_lstm_84_while_identity-sequential_28/lstm_84/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1173047

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_namestates:OK
'
_output_shapes
:���������d
 
_user_specified_namestates
�8
�
while_body_1177769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_194_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_194_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_194_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_194_matmul_readvariableop_resource:2(F
4while_lstm_cell_194_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_194_biasadd_readvariableop_resource:(��*while/lstm_cell_194/BiasAdd/ReadVariableOp�)while/lstm_cell_194/MatMul/ReadVariableOp�+while/lstm_cell_194/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_194/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_194_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_194/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_194_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_194/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_194/addAddV2$while/lstm_cell_194/MatMul:product:0&while/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_194_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_194/BiasAddBiasAddwhile/lstm_cell_194/add:z:02while/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_194/splitSplit,while/lstm_cell_194/split/split_dim:output:0$while/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_194/SigmoidSigmoid"while/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_1Sigmoid"while/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mulMul!while/lstm_cell_194/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_194/ReluRelu"while/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_1Mulwhile/lstm_cell_194/Sigmoid:y:0&while/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/add_1AddV2while/lstm_cell_194/mul:z:0while/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_2Sigmoid"while/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_194/Relu_1Reluwhile/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_2Mul!while/lstm_cell_194/Sigmoid_2:y:0(while/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_194/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_194/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_194/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_194/BiasAdd/ReadVariableOp*^while/lstm_cell_194/MatMul/ReadVariableOp,^while/lstm_cell_194/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_194_biasadd_readvariableop_resource5while_lstm_cell_194_biasadd_readvariableop_resource_0"n
4while_lstm_cell_194_matmul_1_readvariableop_resource6while_lstm_cell_194_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_194_matmul_readvariableop_resource4while_lstm_cell_194_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_194/BiasAdd/ReadVariableOp*while/lstm_cell_194/BiasAdd/ReadVariableOp2V
)while/lstm_cell_194/MatMul/ReadVariableOp)while/lstm_cell_194/MatMul/ReadVariableOp2Z
+while/lstm_cell_194/MatMul_1/ReadVariableOp+while/lstm_cell_194/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_lstm_84_layer_call_fn_1176181

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_84_layer_call_and_return_conditional_losses_1174179s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1178113

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�

�
lstm_85_while_cond_1175491,
(lstm_85_while_lstm_85_while_loop_counter2
.lstm_85_while_lstm_85_while_maximum_iterations
lstm_85_while_placeholder
lstm_85_while_placeholder_1
lstm_85_while_placeholder_2
lstm_85_while_placeholder_3.
*lstm_85_while_less_lstm_85_strided_slice_1E
Alstm_85_while_lstm_85_while_cond_1175491___redundant_placeholder0E
Alstm_85_while_lstm_85_while_cond_1175491___redundant_placeholder1E
Alstm_85_while_lstm_85_while_cond_1175491___redundant_placeholder2E
Alstm_85_while_lstm_85_while_cond_1175491___redundant_placeholder3
lstm_85_while_identity
�
lstm_85/while/LessLesslstm_85_while_placeholder*lstm_85_while_less_lstm_85_strided_slice_1*
T0*
_output_shapes
: [
lstm_85/while/IdentityIdentitylstm_85/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_85_while_identitylstm_85/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�8
�
D__inference_lstm_84_layer_call_and_return_conditional_losses_1173321

inputs(
lstm_cell_192_1173239:	�(
lstm_cell_192_1173241:	d�$
lstm_cell_192_1173243:	�
identity��%lstm_cell_192/StatefulPartitionedCall�while;
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
valueB:�
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
:���������dR
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
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%lstm_cell_192/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_192_1173239lstm_cell_192_1173241lstm_cell_192_1173243*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1173193n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_192_1173239lstm_cell_192_1173241lstm_cell_192_1173243*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1173252*
condR
while_cond_1173251*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������dv
NoOpNoOp&^lstm_cell_192/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_192/StatefulPartitionedCall%lstm_cell_192/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
��
�
J__inference_sequential_28_layer_call_and_return_conditional_losses_1176148

inputsG
4lstm_84_lstm_cell_192_matmul_readvariableop_resource:	�I
6lstm_84_lstm_cell_192_matmul_1_readvariableop_resource:	d�D
5lstm_84_lstm_cell_192_biasadd_readvariableop_resource:	�G
4lstm_85_lstm_cell_193_matmul_readvariableop_resource:	d�I
6lstm_85_lstm_cell_193_matmul_1_readvariableop_resource:	2�D
5lstm_85_lstm_cell_193_biasadd_readvariableop_resource:	�F
4lstm_86_lstm_cell_194_matmul_readvariableop_resource:2(H
6lstm_86_lstm_cell_194_matmul_1_readvariableop_resource:
(C
5lstm_86_lstm_cell_194_biasadd_readvariableop_resource:(9
'dense_28_matmul_readvariableop_resource:
6
(dense_28_biasadd_readvariableop_resource:
identity��dense_28/BiasAdd/ReadVariableOp�dense_28/MatMul/ReadVariableOp�,lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp�+lstm_84/lstm_cell_192/MatMul/ReadVariableOp�-lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp�lstm_84/while�,lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp�+lstm_85/lstm_cell_193/MatMul/ReadVariableOp�-lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp�lstm_85/while�,lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp�+lstm_86/lstm_cell_194/MatMul/ReadVariableOp�-lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp�lstm_86/whileC
lstm_84/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_84/strided_sliceStridedSlicelstm_84/Shape:output:0$lstm_84/strided_slice/stack:output:0&lstm_84/strided_slice/stack_1:output:0&lstm_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_84/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_84/zeros/packedPacklstm_84/strided_slice:output:0lstm_84/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_84/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_84/zerosFilllstm_84/zeros/packed:output:0lstm_84/zeros/Const:output:0*
T0*'
_output_shapes
:���������dZ
lstm_84/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_84/zeros_1/packedPacklstm_84/strided_slice:output:0!lstm_84/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_84/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_84/zeros_1Filllstm_84/zeros_1/packed:output:0lstm_84/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dk
lstm_84/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_84/transpose	Transposeinputslstm_84/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_84/Shape_1Shapelstm_84/transpose:y:0*
T0*
_output_shapes
:g
lstm_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_84/strided_slice_1StridedSlicelstm_84/Shape_1:output:0&lstm_84/strided_slice_1/stack:output:0(lstm_84/strided_slice_1/stack_1:output:0(lstm_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_84/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_84/TensorArrayV2TensorListReserve,lstm_84/TensorArrayV2/element_shape:output:0 lstm_84/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_84/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_84/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_84/transpose:y:0Flstm_84/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_84/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_84/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_84/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_84/strided_slice_2StridedSlicelstm_84/transpose:y:0&lstm_84/strided_slice_2/stack:output:0(lstm_84/strided_slice_2/stack_1:output:0(lstm_84/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+lstm_84/lstm_cell_192/MatMul/ReadVariableOpReadVariableOp4lstm_84_lstm_cell_192_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_84/lstm_cell_192/MatMulMatMul lstm_84/strided_slice_2:output:03lstm_84/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_84/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp6lstm_84_lstm_cell_192_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_84/lstm_cell_192/MatMul_1MatMullstm_84/zeros:output:05lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_84/lstm_cell_192/addAddV2&lstm_84/lstm_cell_192/MatMul:product:0(lstm_84/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_84/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp5lstm_84_lstm_cell_192_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_84/lstm_cell_192/BiasAddBiasAddlstm_84/lstm_cell_192/add:z:04lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_84/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_84/lstm_cell_192/splitSplit.lstm_84/lstm_cell_192/split/split_dim:output:0&lstm_84/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_84/lstm_cell_192/SigmoidSigmoid$lstm_84/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/Sigmoid_1Sigmoid$lstm_84/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/mulMul#lstm_84/lstm_cell_192/Sigmoid_1:y:0lstm_84/zeros_1:output:0*
T0*'
_output_shapes
:���������dz
lstm_84/lstm_cell_192/ReluRelu$lstm_84/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/mul_1Mul!lstm_84/lstm_cell_192/Sigmoid:y:0(lstm_84/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/add_1AddV2lstm_84/lstm_cell_192/mul:z:0lstm_84/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/Sigmoid_2Sigmoid$lstm_84/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������dw
lstm_84/lstm_cell_192/Relu_1Relulstm_84/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_84/lstm_cell_192/mul_2Mul#lstm_84/lstm_cell_192/Sigmoid_2:y:0*lstm_84/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������dv
%lstm_84/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_84/TensorArrayV2_1TensorListReserve.lstm_84/TensorArrayV2_1/element_shape:output:0 lstm_84/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_84/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_84/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_84/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_84/whileWhile#lstm_84/while/loop_counter:output:0)lstm_84/while/maximum_iterations:output:0lstm_84/time:output:0 lstm_84/TensorArrayV2_1:handle:0lstm_84/zeros:output:0lstm_84/zeros_1:output:0 lstm_84/strided_slice_1:output:0?lstm_84/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_84_lstm_cell_192_matmul_readvariableop_resource6lstm_84_lstm_cell_192_matmul_1_readvariableop_resource5lstm_84_lstm_cell_192_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_84_while_body_1175780*&
condR
lstm_84_while_cond_1175779*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
8lstm_84/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
*lstm_84/TensorArrayV2Stack/TensorListStackTensorListStacklstm_84/while:output:3Alstm_84/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0p
lstm_84/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_84/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_84/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_84/strided_slice_3StridedSlice3lstm_84/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_84/strided_slice_3/stack:output:0(lstm_84/strided_slice_3/stack_1:output:0(lstm_84/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskm
lstm_84/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_84/transpose_1	Transpose3lstm_84/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_84/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dc
lstm_84/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_85/ShapeShapelstm_84/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_85/strided_sliceStridedSlicelstm_85/Shape:output:0$lstm_85/strided_slice/stack:output:0&lstm_85/strided_slice/stack_1:output:0&lstm_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_85/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_85/zeros/packedPacklstm_85/strided_slice:output:0lstm_85/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_85/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_85/zerosFilllstm_85/zeros/packed:output:0lstm_85/zeros/Const:output:0*
T0*'
_output_shapes
:���������2Z
lstm_85/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_85/zeros_1/packedPacklstm_85/strided_slice:output:0!lstm_85/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_85/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_85/zeros_1Filllstm_85/zeros_1/packed:output:0lstm_85/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2k
lstm_85/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_85/transpose	Transposelstm_84/transpose_1:y:0lstm_85/transpose/perm:output:0*
T0*+
_output_shapes
:���������dT
lstm_85/Shape_1Shapelstm_85/transpose:y:0*
T0*
_output_shapes
:g
lstm_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_85/strided_slice_1StridedSlicelstm_85/Shape_1:output:0&lstm_85/strided_slice_1/stack:output:0(lstm_85/strided_slice_1/stack_1:output:0(lstm_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_85/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_85/TensorArrayV2TensorListReserve,lstm_85/TensorArrayV2/element_shape:output:0 lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
/lstm_85/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_85/transpose:y:0Flstm_85/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_85/strided_slice_2StridedSlicelstm_85/transpose:y:0&lstm_85/strided_slice_2/stack:output:0(lstm_85/strided_slice_2/stack_1:output:0(lstm_85/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
+lstm_85/lstm_cell_193/MatMul/ReadVariableOpReadVariableOp4lstm_85_lstm_cell_193_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_85/lstm_cell_193/MatMulMatMul lstm_85/strided_slice_2:output:03lstm_85/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_85/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp6lstm_85_lstm_cell_193_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_85/lstm_cell_193/MatMul_1MatMullstm_85/zeros:output:05lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_85/lstm_cell_193/addAddV2&lstm_85/lstm_cell_193/MatMul:product:0(lstm_85/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_85/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp5lstm_85_lstm_cell_193_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_85/lstm_cell_193/BiasAddBiasAddlstm_85/lstm_cell_193/add:z:04lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_85/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_85/lstm_cell_193/splitSplit.lstm_85/lstm_cell_193/split/split_dim:output:0&lstm_85/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_85/lstm_cell_193/SigmoidSigmoid$lstm_85/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/Sigmoid_1Sigmoid$lstm_85/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/mulMul#lstm_85/lstm_cell_193/Sigmoid_1:y:0lstm_85/zeros_1:output:0*
T0*'
_output_shapes
:���������2z
lstm_85/lstm_cell_193/ReluRelu$lstm_85/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/mul_1Mul!lstm_85/lstm_cell_193/Sigmoid:y:0(lstm_85/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/add_1AddV2lstm_85/lstm_cell_193/mul:z:0lstm_85/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/Sigmoid_2Sigmoid$lstm_85/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2w
lstm_85/lstm_cell_193/Relu_1Relulstm_85/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_85/lstm_cell_193/mul_2Mul#lstm_85/lstm_cell_193/Sigmoid_2:y:0*lstm_85/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2v
%lstm_85/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_85/TensorArrayV2_1TensorListReserve.lstm_85/TensorArrayV2_1/element_shape:output:0 lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_85/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_85/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_85/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_85/whileWhile#lstm_85/while/loop_counter:output:0)lstm_85/while/maximum_iterations:output:0lstm_85/time:output:0 lstm_85/TensorArrayV2_1:handle:0lstm_85/zeros:output:0lstm_85/zeros_1:output:0 lstm_85/strided_slice_1:output:0?lstm_85/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_85_lstm_cell_193_matmul_readvariableop_resource6lstm_85_lstm_cell_193_matmul_1_readvariableop_resource5lstm_85_lstm_cell_193_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_85_while_body_1175919*&
condR
lstm_85_while_cond_1175918*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
8lstm_85/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*lstm_85/TensorArrayV2Stack/TensorListStackTensorListStacklstm_85/while:output:3Alstm_85/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0p
lstm_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_85/strided_slice_3StridedSlice3lstm_85/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_85/strided_slice_3/stack:output:0(lstm_85/strided_slice_3/stack_1:output:0(lstm_85/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskm
lstm_85/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_85/transpose_1	Transpose3lstm_85/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_85/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_85/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_86/ShapeShapelstm_85/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_86/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_86/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_86/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_86/strided_sliceStridedSlicelstm_86/Shape:output:0$lstm_86/strided_slice/stack:output:0&lstm_86/strided_slice/stack_1:output:0&lstm_86/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_86/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_86/zeros/packedPacklstm_86/strided_slice:output:0lstm_86/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_86/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_86/zerosFilllstm_86/zeros/packed:output:0lstm_86/zeros/Const:output:0*
T0*'
_output_shapes
:���������
Z
lstm_86/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_86/zeros_1/packedPacklstm_86/strided_slice:output:0!lstm_86/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_86/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_86/zeros_1Filllstm_86/zeros_1/packed:output:0lstm_86/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
k
lstm_86/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_86/transpose	Transposelstm_85/transpose_1:y:0lstm_86/transpose/perm:output:0*
T0*+
_output_shapes
:���������2T
lstm_86/Shape_1Shapelstm_86/transpose:y:0*
T0*
_output_shapes
:g
lstm_86/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_86/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_86/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_86/strided_slice_1StridedSlicelstm_86/Shape_1:output:0&lstm_86/strided_slice_1/stack:output:0(lstm_86/strided_slice_1/stack_1:output:0(lstm_86/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_86/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_86/TensorArrayV2TensorListReserve,lstm_86/TensorArrayV2/element_shape:output:0 lstm_86/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_86/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/lstm_86/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_86/transpose:y:0Flstm_86/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_86/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_86/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_86/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_86/strided_slice_2StridedSlicelstm_86/transpose:y:0&lstm_86/strided_slice_2/stack:output:0(lstm_86/strided_slice_2/stack_1:output:0(lstm_86/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
+lstm_86/lstm_cell_194/MatMul/ReadVariableOpReadVariableOp4lstm_86_lstm_cell_194_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_86/lstm_cell_194/MatMulMatMul lstm_86/strided_slice_2:output:03lstm_86/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-lstm_86/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp6lstm_86_lstm_cell_194_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_86/lstm_cell_194/MatMul_1MatMullstm_86/zeros:output:05lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_86/lstm_cell_194/addAddV2&lstm_86/lstm_cell_194/MatMul:product:0(lstm_86/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
,lstm_86/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp5lstm_86_lstm_cell_194_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_86/lstm_cell_194/BiasAddBiasAddlstm_86/lstm_cell_194/add:z:04lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(g
%lstm_86/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_86/lstm_cell_194/splitSplit.lstm_86/lstm_cell_194/split/split_dim:output:0&lstm_86/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_86/lstm_cell_194/SigmoidSigmoid$lstm_86/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/Sigmoid_1Sigmoid$lstm_86/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/mulMul#lstm_86/lstm_cell_194/Sigmoid_1:y:0lstm_86/zeros_1:output:0*
T0*'
_output_shapes
:���������
z
lstm_86/lstm_cell_194/ReluRelu$lstm_86/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/mul_1Mul!lstm_86/lstm_cell_194/Sigmoid:y:0(lstm_86/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/add_1AddV2lstm_86/lstm_cell_194/mul:z:0lstm_86/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/Sigmoid_2Sigmoid$lstm_86/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
w
lstm_86/lstm_cell_194/Relu_1Relulstm_86/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_86/lstm_cell_194/mul_2Mul#lstm_86/lstm_cell_194/Sigmoid_2:y:0*lstm_86/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
v
%lstm_86/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_86/TensorArrayV2_1TensorListReserve.lstm_86/TensorArrayV2_1/element_shape:output:0 lstm_86/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_86/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_86/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_86/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_86/whileWhile#lstm_86/while/loop_counter:output:0)lstm_86/while/maximum_iterations:output:0lstm_86/time:output:0 lstm_86/TensorArrayV2_1:handle:0lstm_86/zeros:output:0lstm_86/zeros_1:output:0 lstm_86/strided_slice_1:output:0?lstm_86/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_86_lstm_cell_194_matmul_readvariableop_resource6lstm_86_lstm_cell_194_matmul_1_readvariableop_resource5lstm_86_lstm_cell_194_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_86_while_body_1176058*&
condR
lstm_86_while_cond_1176057*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
8lstm_86/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
*lstm_86/TensorArrayV2Stack/TensorListStackTensorListStacklstm_86/while:output:3Alstm_86/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0p
lstm_86/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_86/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_86/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_86/strided_slice_3StridedSlice3lstm_86/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_86/strided_slice_3/stack:output:0(lstm_86/strided_slice_3/stack_1:output:0(lstm_86/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskm
lstm_86/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_86/transpose_1	Transpose3lstm_86/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_86/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
c
lstm_86/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_28/MatMulMatMul lstm_86/strided_slice_3:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_28/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp-^lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp,^lstm_84/lstm_cell_192/MatMul/ReadVariableOp.^lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp^lstm_84/while-^lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp,^lstm_85/lstm_cell_193/MatMul/ReadVariableOp.^lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp^lstm_85/while-^lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp,^lstm_86/lstm_cell_194/MatMul/ReadVariableOp.^lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp^lstm_86/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2\
,lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp,lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp2Z
+lstm_84/lstm_cell_192/MatMul/ReadVariableOp+lstm_84/lstm_cell_192/MatMul/ReadVariableOp2^
-lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp-lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp2
lstm_84/whilelstm_84/while2\
,lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp,lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp2Z
+lstm_85/lstm_cell_193/MatMul/ReadVariableOp+lstm_85/lstm_cell_193/MatMul/ReadVariableOp2^
-lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp-lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp2
lstm_85/whilelstm_85/while2\
,lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp,lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp2Z
+lstm_86/lstm_cell_194/MatMul/ReadVariableOp+lstm_86/lstm_cell_194/MatMul/ReadVariableOp2^
-lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp-lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp2
lstm_86/whilelstm_86/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_1173410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1173410___redundant_placeholder05
1while_while_cond_1173410___redundant_placeholder15
1while_while_cond_1173410___redundant_placeholder25
1while_while_cond_1173410___redundant_placeholder3
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
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_1174095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_192_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_192_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_192_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_192_matmul_readvariableop_resource:	�G
4while_lstm_cell_192_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_192_biasadd_readvariableop_resource:	���*while/lstm_cell_192/BiasAdd/ReadVariableOp�)while/lstm_cell_192/MatMul/ReadVariableOp�+while/lstm_cell_192/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_192/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_192_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_192/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_192_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_192/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_192/addAddV2$while/lstm_cell_192/MatMul:product:0&while/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_192_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_192/BiasAddBiasAddwhile/lstm_cell_192/add:z:02while/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_192/splitSplit,while/lstm_cell_192/split/split_dim:output:0$while/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_192/SigmoidSigmoid"while/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_1Sigmoid"while/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mulMul!while/lstm_cell_192/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_192/ReluRelu"while/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_1Mulwhile/lstm_cell_192/Sigmoid:y:0&while/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/add_1AddV2while/lstm_cell_192/mul:z:0while/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_2Sigmoid"while/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_192/Relu_1Reluwhile/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_2Mul!while/lstm_cell_192/Sigmoid_2:y:0(while/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_192/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_192/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_192/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_192/BiasAdd/ReadVariableOp*^while/lstm_cell_192/MatMul/ReadVariableOp,^while/lstm_cell_192/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_192_biasadd_readvariableop_resource5while_lstm_cell_192_biasadd_readvariableop_resource_0"n
4while_lstm_cell_192_matmul_1_readvariableop_resource6while_lstm_cell_192_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_192_matmul_readvariableop_resource4while_lstm_cell_192_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_192/BiasAdd/ReadVariableOp*while/lstm_cell_192/BiasAdd/ReadVariableOp2V
)while/lstm_cell_192/MatMul/ReadVariableOp)while/lstm_cell_192/MatMul/ReadVariableOp2Z
+while/lstm_cell_192/MatMul_1/ReadVariableOp+while/lstm_cell_192/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�B
�

lstm_85_while_body_1175492,
(lstm_85_while_lstm_85_while_loop_counter2
.lstm_85_while_lstm_85_while_maximum_iterations
lstm_85_while_placeholder
lstm_85_while_placeholder_1
lstm_85_while_placeholder_2
lstm_85_while_placeholder_3+
'lstm_85_while_lstm_85_strided_slice_1_0g
clstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_85_while_lstm_cell_193_matmul_readvariableop_resource_0:	d�Q
>lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource_0:	2�L
=lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource_0:	�
lstm_85_while_identity
lstm_85_while_identity_1
lstm_85_while_identity_2
lstm_85_while_identity_3
lstm_85_while_identity_4
lstm_85_while_identity_5)
%lstm_85_while_lstm_85_strided_slice_1e
alstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensorM
:lstm_85_while_lstm_cell_193_matmul_readvariableop_resource:	d�O
<lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource:	2�J
;lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource:	���2lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp�1lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp�3lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp�
?lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
1lstm_85/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0lstm_85_while_placeholderHlstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
1lstm_85/while/lstm_cell_193/MatMul/ReadVariableOpReadVariableOp<lstm_85_while_lstm_cell_193_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
"lstm_85/while/lstm_cell_193/MatMulMatMul8lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp>lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
$lstm_85/while/lstm_cell_193/MatMul_1MatMullstm_85_while_placeholder_2;lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_85/while/lstm_cell_193/addAddV2,lstm_85/while/lstm_cell_193/MatMul:product:0.lstm_85/while/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp=lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_85/while/lstm_cell_193/BiasAddBiasAdd#lstm_85/while/lstm_cell_193/add:z:0:lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_85/while/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_85/while/lstm_cell_193/splitSplit4lstm_85/while/lstm_cell_193/split/split_dim:output:0,lstm_85/while/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
#lstm_85/while/lstm_cell_193/SigmoidSigmoid*lstm_85/while/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2�
%lstm_85/while/lstm_cell_193/Sigmoid_1Sigmoid*lstm_85/while/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_85/while/lstm_cell_193/mulMul)lstm_85/while/lstm_cell_193/Sigmoid_1:y:0lstm_85_while_placeholder_3*
T0*'
_output_shapes
:���������2�
 lstm_85/while/lstm_cell_193/ReluRelu*lstm_85/while/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
!lstm_85/while/lstm_cell_193/mul_1Mul'lstm_85/while/lstm_cell_193/Sigmoid:y:0.lstm_85/while/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
!lstm_85/while/lstm_cell_193/add_1AddV2#lstm_85/while/lstm_cell_193/mul:z:0%lstm_85/while/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2�
%lstm_85/while/lstm_cell_193/Sigmoid_2Sigmoid*lstm_85/while/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2�
"lstm_85/while/lstm_cell_193/Relu_1Relu%lstm_85/while/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
!lstm_85/while/lstm_cell_193/mul_2Mul)lstm_85/while/lstm_cell_193/Sigmoid_2:y:00lstm_85/while/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
2lstm_85/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_85_while_placeholder_1lstm_85_while_placeholder%lstm_85/while/lstm_cell_193/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_85/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_85/while/addAddV2lstm_85_while_placeholderlstm_85/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_85/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_85/while/add_1AddV2(lstm_85_while_lstm_85_while_loop_counterlstm_85/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_85/while/IdentityIdentitylstm_85/while/add_1:z:0^lstm_85/while/NoOp*
T0*
_output_shapes
: �
lstm_85/while/Identity_1Identity.lstm_85_while_lstm_85_while_maximum_iterations^lstm_85/while/NoOp*
T0*
_output_shapes
: q
lstm_85/while/Identity_2Identitylstm_85/while/add:z:0^lstm_85/while/NoOp*
T0*
_output_shapes
: �
lstm_85/while/Identity_3IdentityBlstm_85/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_85/while/NoOp*
T0*
_output_shapes
: �
lstm_85/while/Identity_4Identity%lstm_85/while/lstm_cell_193/mul_2:z:0^lstm_85/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_85/while/Identity_5Identity%lstm_85/while/lstm_cell_193/add_1:z:0^lstm_85/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_85/while/NoOpNoOp3^lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp2^lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp4^lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_85_while_identitylstm_85/while/Identity:output:0"=
lstm_85_while_identity_1!lstm_85/while/Identity_1:output:0"=
lstm_85_while_identity_2!lstm_85/while/Identity_2:output:0"=
lstm_85_while_identity_3!lstm_85/while/Identity_3:output:0"=
lstm_85_while_identity_4!lstm_85/while/Identity_4:output:0"=
lstm_85_while_identity_5!lstm_85/while/Identity_5:output:0"P
%lstm_85_while_lstm_85_strided_slice_1'lstm_85_while_lstm_85_strided_slice_1_0"|
;lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource=lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource_0"~
<lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource>lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource_0"z
:lstm_85_while_lstm_cell_193_matmul_readvariableop_resource<lstm_85_while_lstm_cell_193_matmul_readvariableop_resource_0"�
alstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensorclstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2h
2lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp2lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp2f
1lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp1lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp2j
3lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp3lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�K
�
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177710
inputs_0>
,lstm_cell_194_matmul_readvariableop_resource:2(@
.lstm_cell_194_matmul_1_readvariableop_resource:
(;
-lstm_cell_194_biasadd_readvariableop_resource:(
identity��$lstm_cell_194/BiasAdd/ReadVariableOp�#lstm_cell_194/MatMul/ReadVariableOp�%lstm_cell_194/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
:���������
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
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_194/MatMul/ReadVariableOpReadVariableOp,lstm_cell_194_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_194/MatMulMatMulstrided_slice_2:output:0+lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_194_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_194/MatMul_1MatMulzeros:output:0-lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_194/addAddV2lstm_cell_194/MatMul:product:0 lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_194_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_194/BiasAddBiasAddlstm_cell_194/add:z:0,lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_194/splitSplit&lstm_cell_194/split/split_dim:output:0lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_194/SigmoidSigmoidlstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_1Sigmoidlstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_194/mulMullstm_cell_194/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_194/ReluRelulstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_1Mullstm_cell_194/Sigmoid:y:0 lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_194/add_1AddV2lstm_cell_194/mul:z:0lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_2Sigmoidlstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_194/Relu_1Relulstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_2Mullstm_cell_194/Sigmoid_2:y:0"lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_194_matmul_readvariableop_resource.lstm_cell_194_matmul_1_readvariableop_resource-lstm_cell_194_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1177626*
condR
while_cond_1177625*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
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
:���������
�
NoOpNoOp%^lstm_cell_194/BiasAdd/ReadVariableOp$^lstm_cell_194/MatMul/ReadVariableOp&^lstm_cell_194/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_194/BiasAdd/ReadVariableOp$lstm_cell_194/BiasAdd/ReadVariableOp2J
#lstm_cell_194/MatMul/ReadVariableOp#lstm_cell_194/MatMul/ReadVariableOp2N
%lstm_cell_194/MatMul_1/ReadVariableOp%lstm_cell_194/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�8
�
while_body_1176680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_192_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_192_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_192_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_192_matmul_readvariableop_resource:	�G
4while_lstm_cell_192_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_192_biasadd_readvariableop_resource:	���*while/lstm_cell_192/BiasAdd/ReadVariableOp�)while/lstm_cell_192/MatMul/ReadVariableOp�+while/lstm_cell_192/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_192/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_192_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_192/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_192_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_192/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_192/addAddV2$while/lstm_cell_192/MatMul:product:0&while/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_192_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_192/BiasAddBiasAddwhile/lstm_cell_192/add:z:02while/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_192/splitSplit,while/lstm_cell_192/split/split_dim:output:0$while/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_192/SigmoidSigmoid"while/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_1Sigmoid"while/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mulMul!while/lstm_cell_192/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_192/ReluRelu"while/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_1Mulwhile/lstm_cell_192/Sigmoid:y:0&while/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/add_1AddV2while/lstm_cell_192/mul:z:0while/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_2Sigmoid"while/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_192/Relu_1Reluwhile/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_2Mul!while/lstm_cell_192/Sigmoid_2:y:0(while/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_192/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_192/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_192/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_192/BiasAdd/ReadVariableOp*^while/lstm_cell_192/MatMul/ReadVariableOp,^while/lstm_cell_192/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_192_biasadd_readvariableop_resource5while_lstm_cell_192_biasadd_readvariableop_resource_0"n
4while_lstm_cell_192_matmul_1_readvariableop_resource6while_lstm_cell_192_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_192_matmul_readvariableop_resource4while_lstm_cell_192_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_192/BiasAdd/ReadVariableOp*while/lstm_cell_192/BiasAdd/ReadVariableOp2V
)while/lstm_cell_192/MatMul/ReadVariableOp)while/lstm_cell_192/MatMul/ReadVariableOp2Z
+while/lstm_cell_192/MatMul_1/ReadVariableOp+while/lstm_cell_192/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1176866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1176866___redundant_placeholder05
1while_while_cond_1176866___redundant_placeholder15
1while_while_cond_1176866___redundant_placeholder25
1while_while_cond_1176866___redundant_placeholder3
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
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�8
�
D__inference_lstm_85_layer_call_and_return_conditional_losses_1173671

inputs(
lstm_cell_193_1173589:	d�(
lstm_cell_193_1173591:	2�$
lstm_cell_193_1173593:	�
identity��%lstm_cell_193/StatefulPartitionedCall�while;
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
valueB:�
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
:���������2R
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
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
%lstm_cell_193/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_193_1173589lstm_cell_193_1173591lstm_cell_193_1173593*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1173543n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_193_1173589lstm_cell_193_1173591lstm_cell_193_1173593*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1173602*
condR
while_cond_1173601*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2v
NoOpNoOp&^lstm_cell_193/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_193/StatefulPartitionedCall%lstm_cell_193/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�J
�
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176764

inputs?
,lstm_cell_192_matmul_readvariableop_resource:	�A
.lstm_cell_192_matmul_1_readvariableop_resource:	d�<
-lstm_cell_192_biasadd_readvariableop_resource:	�
identity��$lstm_cell_192/BiasAdd/ReadVariableOp�#lstm_cell_192/MatMul/ReadVariableOp�%lstm_cell_192/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������dR
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
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_192/MatMul/ReadVariableOpReadVariableOp,lstm_cell_192_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_192/MatMulMatMulstrided_slice_2:output:0+lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_192_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_192/MatMul_1MatMulzeros:output:0-lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_192/addAddV2lstm_cell_192/MatMul:product:0 lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_192_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_192/BiasAddBiasAddlstm_cell_192/add:z:0,lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_192/splitSplit&lstm_cell_192/split/split_dim:output:0lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_192/SigmoidSigmoidlstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_1Sigmoidlstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_192/mulMullstm_cell_192/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_192/ReluRelulstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_1Mullstm_cell_192/Sigmoid:y:0 lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_192/add_1AddV2lstm_cell_192/mul:z:0lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_2Sigmoidlstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_192/Relu_1Relulstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_2Mullstm_cell_192/Sigmoid_2:y:0"lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_192_matmul_readvariableop_resource.lstm_cell_192_matmul_1_readvariableop_resource-lstm_cell_192_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1176680*
condR
while_cond_1176679*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_192/BiasAdd/ReadVariableOp$^lstm_cell_192/MatMul/ReadVariableOp&^lstm_cell_192/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_192/BiasAdd/ReadVariableOp$lstm_cell_192/BiasAdd/ReadVariableOp2J
#lstm_cell_192/MatMul/ReadVariableOp#lstm_cell_192/MatMul/ReadVariableOp2N
%lstm_cell_192/MatMul_1/ReadVariableOp%lstm_cell_192/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
D__inference_lstm_85_layer_call_and_return_conditional_losses_1177237

inputs?
,lstm_cell_193_matmul_readvariableop_resource:	d�A
.lstm_cell_193_matmul_1_readvariableop_resource:	2�<
-lstm_cell_193_biasadd_readvariableop_resource:	�
identity��$lstm_cell_193/BiasAdd/ReadVariableOp�#lstm_cell_193/MatMul/ReadVariableOp�%lstm_cell_193/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������2R
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
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_193/MatMul/ReadVariableOpReadVariableOp,lstm_cell_193_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_193/MatMulMatMulstrided_slice_2:output:0+lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_193_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_193/MatMul_1MatMulzeros:output:0-lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_193/addAddV2lstm_cell_193/MatMul:product:0 lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_193_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_193/BiasAddBiasAddlstm_cell_193/add:z:0,lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_193/splitSplit&lstm_cell_193/split/split_dim:output:0lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_193/SigmoidSigmoidlstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_1Sigmoidlstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_193/mulMullstm_cell_193/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_193/ReluRelulstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_1Mullstm_cell_193/Sigmoid:y:0 lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_193/add_1AddV2lstm_cell_193/mul:z:0lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_2Sigmoidlstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_193/Relu_1Relulstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_2Mullstm_cell_193/Sigmoid_2:y:0"lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_193_matmul_readvariableop_resource.lstm_cell_193_matmul_1_readvariableop_resource-lstm_cell_193_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1177153*
condR
while_cond_1177152*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_193/BiasAdd/ReadVariableOp$^lstm_cell_193/MatMul/ReadVariableOp&^lstm_cell_193/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_193/BiasAdd/ReadVariableOp$lstm_cell_193/BiasAdd/ReadVariableOp2J
#lstm_cell_193/MatMul/ReadVariableOp#lstm_cell_193/MatMul/ReadVariableOp2N
%lstm_cell_193/MatMul_1/ReadVariableOp%lstm_cell_193/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_1174775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1174775___redundant_placeholder05
1while_while_cond_1174775___redundant_placeholder15
1while_while_cond_1174775___redundant_placeholder25
1while_while_cond_1174775___redundant_placeholder3
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
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1177009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1177009___redundant_placeholder05
1while_while_cond_1177009___redundant_placeholder15
1while_while_cond_1177009___redundant_placeholder25
1while_while_cond_1177009___redundant_placeholder3
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
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1174394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1174394___redundant_placeholder05
1while_while_cond_1174394___redundant_placeholder15
1while_while_cond_1174394___redundant_placeholder25
1while_while_cond_1174394___redundant_placeholder3
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
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�J
�
D__inference_lstm_86_layer_call_and_return_conditional_losses_1174695

inputs>
,lstm_cell_194_matmul_readvariableop_resource:2(@
.lstm_cell_194_matmul_1_readvariableop_resource:
(;
-lstm_cell_194_biasadd_readvariableop_resource:(
identity��$lstm_cell_194/BiasAdd/ReadVariableOp�#lstm_cell_194/MatMul/ReadVariableOp�%lstm_cell_194/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������
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
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_194/MatMul/ReadVariableOpReadVariableOp,lstm_cell_194_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_194/MatMulMatMulstrided_slice_2:output:0+lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_194_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_194/MatMul_1MatMulzeros:output:0-lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_194/addAddV2lstm_cell_194/MatMul:product:0 lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_194_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_194/BiasAddBiasAddlstm_cell_194/add:z:0,lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_194/splitSplit&lstm_cell_194/split/split_dim:output:0lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_194/SigmoidSigmoidlstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_1Sigmoidlstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_194/mulMullstm_cell_194/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_194/ReluRelulstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_1Mullstm_cell_194/Sigmoid:y:0 lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_194/add_1AddV2lstm_cell_194/mul:z:0lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_2Sigmoidlstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_194/Relu_1Relulstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_2Mullstm_cell_194/Sigmoid_2:y:0"lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_194_matmul_readvariableop_resource.lstm_cell_194_matmul_1_readvariableop_resource-lstm_cell_194_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1174611*
condR
while_cond_1174610*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
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
:���������
�
NoOpNoOp%^lstm_cell_194/BiasAdd/ReadVariableOp$^lstm_cell_194/MatMul/ReadVariableOp&^lstm_cell_194/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_194/BiasAdd/ReadVariableOp$lstm_cell_194/BiasAdd/ReadVariableOp2J
#lstm_cell_194/MatMul/ReadVariableOp#lstm_cell_194/MatMul/ReadVariableOp2N
%lstm_cell_194/MatMul_1/ReadVariableOp%lstm_cell_194/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�J
�
D__inference_lstm_84_layer_call_and_return_conditional_losses_1175025

inputs?
,lstm_cell_192_matmul_readvariableop_resource:	�A
.lstm_cell_192_matmul_1_readvariableop_resource:	d�<
-lstm_cell_192_biasadd_readvariableop_resource:	�
identity��$lstm_cell_192/BiasAdd/ReadVariableOp�#lstm_cell_192/MatMul/ReadVariableOp�%lstm_cell_192/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������dR
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
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_192/MatMul/ReadVariableOpReadVariableOp,lstm_cell_192_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_192/MatMulMatMulstrided_slice_2:output:0+lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_192_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_192/MatMul_1MatMulzeros:output:0-lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_192/addAddV2lstm_cell_192/MatMul:product:0 lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_192_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_192/BiasAddBiasAddlstm_cell_192/add:z:0,lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_192/splitSplit&lstm_cell_192/split/split_dim:output:0lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_192/SigmoidSigmoidlstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_1Sigmoidlstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_192/mulMullstm_cell_192/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_192/ReluRelulstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_1Mullstm_cell_192/Sigmoid:y:0 lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_192/add_1AddV2lstm_cell_192/mul:z:0lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_2Sigmoidlstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_192/Relu_1Relulstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_2Mullstm_cell_192/Sigmoid_2:y:0"lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_192_matmul_readvariableop_resource.lstm_cell_192_matmul_1_readvariableop_resource-lstm_cell_192_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1174941*
condR
while_cond_1174940*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_192/BiasAdd/ReadVariableOp$^lstm_cell_192/MatMul/ReadVariableOp&^lstm_cell_192/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_192/BiasAdd/ReadVariableOp$lstm_cell_192/BiasAdd/ReadVariableOp2J
#lstm_cell_192/MatMul/ReadVariableOp#lstm_cell_192/MatMul/ReadVariableOp2N
%lstm_cell_192/MatMul_1/ReadVariableOp%lstm_cell_192/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
/__inference_sequential_28_layer_call_fn_1175267

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_28_layer_call_and_return_conditional_losses_1174504o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_86_layer_call_fn_1177424

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_86_layer_call_and_return_conditional_losses_1174695o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_1177625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1177625___redundant_placeholder05
1while_while_cond_1177625___redundant_placeholder15
1while_while_cond_1177625___redundant_placeholder25
1while_while_cond_1177625___redundant_placeholder3
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
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
(sequential_28_lstm_85_while_cond_1172750H
Dsequential_28_lstm_85_while_sequential_28_lstm_85_while_loop_counterN
Jsequential_28_lstm_85_while_sequential_28_lstm_85_while_maximum_iterations+
'sequential_28_lstm_85_while_placeholder-
)sequential_28_lstm_85_while_placeholder_1-
)sequential_28_lstm_85_while_placeholder_2-
)sequential_28_lstm_85_while_placeholder_3J
Fsequential_28_lstm_85_while_less_sequential_28_lstm_85_strided_slice_1a
]sequential_28_lstm_85_while_sequential_28_lstm_85_while_cond_1172750___redundant_placeholder0a
]sequential_28_lstm_85_while_sequential_28_lstm_85_while_cond_1172750___redundant_placeholder1a
]sequential_28_lstm_85_while_sequential_28_lstm_85_while_cond_1172750___redundant_placeholder2a
]sequential_28_lstm_85_while_sequential_28_lstm_85_while_cond_1172750___redundant_placeholder3(
$sequential_28_lstm_85_while_identity
�
 sequential_28/lstm_85/while/LessLess'sequential_28_lstm_85_while_placeholderFsequential_28_lstm_85_while_less_sequential_28_lstm_85_strided_slice_1*
T0*
_output_shapes
: w
$sequential_28/lstm_85/while/IdentityIdentity$sequential_28/lstm_85/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_28_lstm_85_while_identity-sequential_28/lstm_85/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1173397

inputs

states
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�8
�
while_body_1174941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_192_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_192_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_192_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_192_matmul_readvariableop_resource:	�G
4while_lstm_cell_192_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_192_biasadd_readvariableop_resource:	���*while/lstm_cell_192/BiasAdd/ReadVariableOp�)while/lstm_cell_192/MatMul/ReadVariableOp�+while/lstm_cell_192/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_192/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_192_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_192/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_192_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_192/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_192/addAddV2$while/lstm_cell_192/MatMul:product:0&while/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_192_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_192/BiasAddBiasAddwhile/lstm_cell_192/add:z:02while/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_192/splitSplit,while/lstm_cell_192/split/split_dim:output:0$while/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_192/SigmoidSigmoid"while/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_1Sigmoid"while/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mulMul!while/lstm_cell_192/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_192/ReluRelu"while/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_1Mulwhile/lstm_cell_192/Sigmoid:y:0&while/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/add_1AddV2while/lstm_cell_192/mul:z:0while/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_2Sigmoid"while/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_192/Relu_1Reluwhile/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_2Mul!while/lstm_cell_192/Sigmoid_2:y:0(while/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_192/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_192/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_192/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_192/BiasAdd/ReadVariableOp*^while/lstm_cell_192/MatMul/ReadVariableOp,^while/lstm_cell_192/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_192_biasadd_readvariableop_resource5while_lstm_cell_192_biasadd_readvariableop_resource_0"n
4while_lstm_cell_192_matmul_1_readvariableop_resource6while_lstm_cell_192_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_192_matmul_readvariableop_resource4while_lstm_cell_192_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_192/BiasAdd/ReadVariableOp*while/lstm_cell_192/BiasAdd/ReadVariableOp2V
)while/lstm_cell_192/MatMul/ReadVariableOp)while/lstm_cell_192/MatMul/ReadVariableOp2Z
+while/lstm_cell_192/MatMul_1/ReadVariableOp+while/lstm_cell_192/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�J
�
D__inference_lstm_85_layer_call_and_return_conditional_losses_1174329

inputs?
,lstm_cell_193_matmul_readvariableop_resource:	d�A
.lstm_cell_193_matmul_1_readvariableop_resource:	2�<
-lstm_cell_193_biasadd_readvariableop_resource:	�
identity��$lstm_cell_193/BiasAdd/ReadVariableOp�#lstm_cell_193/MatMul/ReadVariableOp�%lstm_cell_193/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������2R
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
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_193/MatMul/ReadVariableOpReadVariableOp,lstm_cell_193_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_193/MatMulMatMulstrided_slice_2:output:0+lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_193_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_193/MatMul_1MatMulzeros:output:0-lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_193/addAddV2lstm_cell_193/MatMul:product:0 lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_193_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_193/BiasAddBiasAddlstm_cell_193/add:z:0,lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_193/splitSplit&lstm_cell_193/split/split_dim:output:0lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_193/SigmoidSigmoidlstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_1Sigmoidlstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_193/mulMullstm_cell_193/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_193/ReluRelulstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_1Mullstm_cell_193/Sigmoid:y:0 lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_193/add_1AddV2lstm_cell_193/mul:z:0lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_2Sigmoidlstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_193/Relu_1Relulstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_2Mullstm_cell_193/Sigmoid_2:y:0"lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_193_matmul_readvariableop_resource.lstm_cell_193_matmul_1_readvariableop_resource-lstm_cell_193_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1174245*
condR
while_cond_1174244*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_193/BiasAdd/ReadVariableOp$^lstm_cell_193/MatMul/ReadVariableOp&^lstm_cell_193/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_193/BiasAdd/ReadVariableOp$lstm_cell_193/BiasAdd/ReadVariableOp2J
#lstm_cell_193/MatMul/ReadVariableOp#lstm_cell_193/MatMul/ReadVariableOp2N
%lstm_cell_193/MatMul_1/ReadVariableOp%lstm_cell_193/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
)__inference_lstm_85_layer_call_fn_1176786
inputs_0
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_85_layer_call_and_return_conditional_losses_1173671|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�

�
lstm_86_while_cond_1176057,
(lstm_86_while_lstm_86_while_loop_counter2
.lstm_86_while_lstm_86_while_maximum_iterations
lstm_86_while_placeholder
lstm_86_while_placeholder_1
lstm_86_while_placeholder_2
lstm_86_while_placeholder_3.
*lstm_86_while_less_lstm_86_strided_slice_1E
Alstm_86_while_lstm_86_while_cond_1176057___redundant_placeholder0E
Alstm_86_while_lstm_86_while_cond_1176057___redundant_placeholder1E
Alstm_86_while_lstm_86_while_cond_1176057___redundant_placeholder2E
Alstm_86_while_lstm_86_while_cond_1176057___redundant_placeholder3
lstm_86_while_identity
�
lstm_86/while/LessLesslstm_86_while_placeholder*lstm_86_while_less_lstm_86_strided_slice_1*
T0*
_output_shapes
: [
lstm_86/while/IdentityIdentitylstm_86/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_86_while_identitylstm_86/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1178277

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�
�
)__inference_lstm_85_layer_call_fn_1176775
inputs_0
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_85_layer_call_and_return_conditional_losses_1173480|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�8
�
D__inference_lstm_85_layer_call_and_return_conditional_losses_1173480

inputs(
lstm_cell_193_1173398:	d�(
lstm_cell_193_1173400:	2�$
lstm_cell_193_1173402:	�
identity��%lstm_cell_193/StatefulPartitionedCall�while;
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
valueB:�
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
:���������2R
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
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
%lstm_cell_193/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_193_1173398lstm_cell_193_1173400lstm_cell_193_1173402*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1173397n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_193_1173398lstm_cell_193_1173400lstm_cell_193_1173402*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1173411*
condR
while_cond_1173410*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2v
NoOpNoOp&^lstm_cell_193/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_193/StatefulPartitionedCall%lstm_cell_193/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_194_layer_call_fn_1178228

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1173747o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������
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
?:���������2:���������
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�
�
*__inference_dense_28_layer_call_fn_1178005

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_1174497o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�J
�
D__inference_lstm_84_layer_call_and_return_conditional_losses_1174179

inputs?
,lstm_cell_192_matmul_readvariableop_resource:	�A
.lstm_cell_192_matmul_1_readvariableop_resource:	d�<
-lstm_cell_192_biasadd_readvariableop_resource:	�
identity��$lstm_cell_192/BiasAdd/ReadVariableOp�#lstm_cell_192/MatMul/ReadVariableOp�%lstm_cell_192/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������dR
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
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_192/MatMul/ReadVariableOpReadVariableOp,lstm_cell_192_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_192/MatMulMatMulstrided_slice_2:output:0+lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_192_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_192/MatMul_1MatMulzeros:output:0-lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_192/addAddV2lstm_cell_192/MatMul:product:0 lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_192_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_192/BiasAddBiasAddlstm_cell_192/add:z:0,lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_192/splitSplit&lstm_cell_192/split/split_dim:output:0lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_192/SigmoidSigmoidlstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_1Sigmoidlstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_192/mulMullstm_cell_192/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_192/ReluRelulstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_1Mullstm_cell_192/Sigmoid:y:0 lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_192/add_1AddV2lstm_cell_192/mul:z:0lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_2Sigmoidlstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_192/Relu_1Relulstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_2Mullstm_cell_192/Sigmoid_2:y:0"lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_192_matmul_readvariableop_resource.lstm_cell_192_matmul_1_readvariableop_resource-lstm_cell_192_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1174095*
condR
while_cond_1174094*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_192/BiasAdd/ReadVariableOp$^lstm_cell_192/MatMul/ReadVariableOp&^lstm_cell_192/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_192/BiasAdd/ReadVariableOp$lstm_cell_192/BiasAdd/ReadVariableOp2J
#lstm_cell_192/MatMul/ReadVariableOp#lstm_cell_192/MatMul/ReadVariableOp2N
%lstm_cell_192/MatMul_1/ReadVariableOp%lstm_cell_192/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�A
�

lstm_86_while_body_1176058,
(lstm_86_while_lstm_86_while_loop_counter2
.lstm_86_while_lstm_86_while_maximum_iterations
lstm_86_while_placeholder
lstm_86_while_placeholder_1
lstm_86_while_placeholder_2
lstm_86_while_placeholder_3+
'lstm_86_while_lstm_86_strided_slice_1_0g
clstm_86_while_tensorarrayv2read_tensorlistgetitem_lstm_86_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_86_while_lstm_cell_194_matmul_readvariableop_resource_0:2(P
>lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource_0:
(K
=lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource_0:(
lstm_86_while_identity
lstm_86_while_identity_1
lstm_86_while_identity_2
lstm_86_while_identity_3
lstm_86_while_identity_4
lstm_86_while_identity_5)
%lstm_86_while_lstm_86_strided_slice_1e
alstm_86_while_tensorarrayv2read_tensorlistgetitem_lstm_86_tensorarrayunstack_tensorlistfromtensorL
:lstm_86_while_lstm_cell_194_matmul_readvariableop_resource:2(N
<lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource:
(I
;lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource:(��2lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp�1lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp�3lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp�
?lstm_86/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
1lstm_86/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_86_while_tensorarrayv2read_tensorlistgetitem_lstm_86_tensorarrayunstack_tensorlistfromtensor_0lstm_86_while_placeholderHlstm_86/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
1lstm_86/while/lstm_cell_194/MatMul/ReadVariableOpReadVariableOp<lstm_86_while_lstm_cell_194_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
"lstm_86/while/lstm_cell_194/MatMulMatMul8lstm_86/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
3lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp>lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
$lstm_86/while/lstm_cell_194/MatMul_1MatMullstm_86_while_placeholder_2;lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_86/while/lstm_cell_194/addAddV2,lstm_86/while/lstm_cell_194/MatMul:product:0.lstm_86/while/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
2lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp=lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
#lstm_86/while/lstm_cell_194/BiasAddBiasAdd#lstm_86/while/lstm_cell_194/add:z:0:lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(m
+lstm_86/while/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_86/while/lstm_cell_194/splitSplit4lstm_86/while/lstm_cell_194/split/split_dim:output:0,lstm_86/while/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
#lstm_86/while/lstm_cell_194/SigmoidSigmoid*lstm_86/while/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
�
%lstm_86/while/lstm_cell_194/Sigmoid_1Sigmoid*lstm_86/while/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_86/while/lstm_cell_194/mulMul)lstm_86/while/lstm_cell_194/Sigmoid_1:y:0lstm_86_while_placeholder_3*
T0*'
_output_shapes
:���������
�
 lstm_86/while/lstm_cell_194/ReluRelu*lstm_86/while/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
!lstm_86/while/lstm_cell_194/mul_1Mul'lstm_86/while/lstm_cell_194/Sigmoid:y:0.lstm_86/while/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
!lstm_86/while/lstm_cell_194/add_1AddV2#lstm_86/while/lstm_cell_194/mul:z:0%lstm_86/while/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
�
%lstm_86/while/lstm_cell_194/Sigmoid_2Sigmoid*lstm_86/while/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
�
"lstm_86/while/lstm_cell_194/Relu_1Relu%lstm_86/while/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
!lstm_86/while/lstm_cell_194/mul_2Mul)lstm_86/while/lstm_cell_194/Sigmoid_2:y:00lstm_86/while/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
2lstm_86/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_86_while_placeholder_1lstm_86_while_placeholder%lstm_86/while/lstm_cell_194/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_86/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_86/while/addAddV2lstm_86_while_placeholderlstm_86/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_86/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_86/while/add_1AddV2(lstm_86_while_lstm_86_while_loop_counterlstm_86/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_86/while/IdentityIdentitylstm_86/while/add_1:z:0^lstm_86/while/NoOp*
T0*
_output_shapes
: �
lstm_86/while/Identity_1Identity.lstm_86_while_lstm_86_while_maximum_iterations^lstm_86/while/NoOp*
T0*
_output_shapes
: q
lstm_86/while/Identity_2Identitylstm_86/while/add:z:0^lstm_86/while/NoOp*
T0*
_output_shapes
: �
lstm_86/while/Identity_3IdentityBlstm_86/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_86/while/NoOp*
T0*
_output_shapes
: �
lstm_86/while/Identity_4Identity%lstm_86/while/lstm_cell_194/mul_2:z:0^lstm_86/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_86/while/Identity_5Identity%lstm_86/while/lstm_cell_194/add_1:z:0^lstm_86/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_86/while/NoOpNoOp3^lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp2^lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp4^lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_86_while_identitylstm_86/while/Identity:output:0"=
lstm_86_while_identity_1!lstm_86/while/Identity_1:output:0"=
lstm_86_while_identity_2!lstm_86/while/Identity_2:output:0"=
lstm_86_while_identity_3!lstm_86/while/Identity_3:output:0"=
lstm_86_while_identity_4!lstm_86/while/Identity_4:output:0"=
lstm_86_while_identity_5!lstm_86/while/Identity_5:output:0"P
%lstm_86_while_lstm_86_strided_slice_1'lstm_86_while_lstm_86_strided_slice_1_0"|
;lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource=lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource_0"~
<lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource>lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource_0"z
:lstm_86_while_lstm_cell_194_matmul_readvariableop_resource<lstm_86_while_lstm_cell_194_matmul_readvariableop_resource_0"�
alstm_86_while_tensorarrayv2read_tensorlistgetitem_lstm_86_tensorarrayunstack_tensorlistfromtensorclstm_86_while_tensorarrayv2read_tensorlistgetitem_lstm_86_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2h
2lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp2lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp2f
1lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp1lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp2j
3lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp3lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�8
�
D__inference_lstm_86_layer_call_and_return_conditional_losses_1173830

inputs'
lstm_cell_194_1173748:2('
lstm_cell_194_1173750:
(#
lstm_cell_194_1173752:(
identity��%lstm_cell_194/StatefulPartitionedCall�while;
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
valueB:�
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
:���������
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
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
%lstm_cell_194/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_194_1173748lstm_cell_194_1173750lstm_cell_194_1173752*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1173747n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_194_1173748lstm_cell_194_1173750lstm_cell_194_1173752*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1173761*
condR
while_cond_1173760*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
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
:���������
v
NoOpNoOp&^lstm_cell_194/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_194/StatefulPartitionedCall%lstm_cell_194/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1173193

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_namestates:OK
'
_output_shapes
:���������d
 
_user_specified_namestates
�8
�
D__inference_lstm_86_layer_call_and_return_conditional_losses_1174021

inputs'
lstm_cell_194_1173939:2('
lstm_cell_194_1173941:
(#
lstm_cell_194_1173943:(
identity��%lstm_cell_194/StatefulPartitionedCall�while;
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
valueB:�
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
:���������
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
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
%lstm_cell_194/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_194_1173939lstm_cell_194_1173941lstm_cell_194_1173943*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1173893n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_194_1173939lstm_cell_194_1173941lstm_cell_194_1173943*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1173952*
condR
while_cond_1173951*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
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
:���������
v
NoOpNoOp&^lstm_cell_194/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_194/StatefulPartitionedCall%lstm_cell_194/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�

�
%__inference_signature_wrapper_1175240
lstm_84_input
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_84_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_1172980o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_84_input
�
�
while_cond_1173601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1173601___redundant_placeholder05
1while_while_cond_1173601___redundant_placeholder15
1while_while_cond_1173601___redundant_placeholder25
1while_while_cond_1173601___redundant_placeholder3
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
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�#
�
while_body_1173602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_193_1173626_0:	d�0
while_lstm_cell_193_1173628_0:	2�,
while_lstm_cell_193_1173630_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_193_1173626:	d�.
while_lstm_cell_193_1173628:	2�*
while_lstm_cell_193_1173630:	���+while/lstm_cell_193/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_193/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_193_1173626_0while_lstm_cell_193_1173628_0while_lstm_cell_193_1173630_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1173543�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_193/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_193/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_193/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_193/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_193_1173626while_lstm_cell_193_1173626_0"<
while_lstm_cell_193_1173628while_lstm_cell_193_1173628_0"<
while_lstm_cell_193_1173630while_lstm_cell_193_1173630_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_193/StatefulPartitionedCall+while/lstm_cell_193/StatefulPartitionedCall: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�A
�

lstm_86_while_body_1175631,
(lstm_86_while_lstm_86_while_loop_counter2
.lstm_86_while_lstm_86_while_maximum_iterations
lstm_86_while_placeholder
lstm_86_while_placeholder_1
lstm_86_while_placeholder_2
lstm_86_while_placeholder_3+
'lstm_86_while_lstm_86_strided_slice_1_0g
clstm_86_while_tensorarrayv2read_tensorlistgetitem_lstm_86_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_86_while_lstm_cell_194_matmul_readvariableop_resource_0:2(P
>lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource_0:
(K
=lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource_0:(
lstm_86_while_identity
lstm_86_while_identity_1
lstm_86_while_identity_2
lstm_86_while_identity_3
lstm_86_while_identity_4
lstm_86_while_identity_5)
%lstm_86_while_lstm_86_strided_slice_1e
alstm_86_while_tensorarrayv2read_tensorlistgetitem_lstm_86_tensorarrayunstack_tensorlistfromtensorL
:lstm_86_while_lstm_cell_194_matmul_readvariableop_resource:2(N
<lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource:
(I
;lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource:(��2lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp�1lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp�3lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp�
?lstm_86/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
1lstm_86/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_86_while_tensorarrayv2read_tensorlistgetitem_lstm_86_tensorarrayunstack_tensorlistfromtensor_0lstm_86_while_placeholderHlstm_86/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
1lstm_86/while/lstm_cell_194/MatMul/ReadVariableOpReadVariableOp<lstm_86_while_lstm_cell_194_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
"lstm_86/while/lstm_cell_194/MatMulMatMul8lstm_86/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
3lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp>lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
$lstm_86/while/lstm_cell_194/MatMul_1MatMullstm_86_while_placeholder_2;lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_86/while/lstm_cell_194/addAddV2,lstm_86/while/lstm_cell_194/MatMul:product:0.lstm_86/while/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
2lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp=lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
#lstm_86/while/lstm_cell_194/BiasAddBiasAdd#lstm_86/while/lstm_cell_194/add:z:0:lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(m
+lstm_86/while/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_86/while/lstm_cell_194/splitSplit4lstm_86/while/lstm_cell_194/split/split_dim:output:0,lstm_86/while/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
#lstm_86/while/lstm_cell_194/SigmoidSigmoid*lstm_86/while/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
�
%lstm_86/while/lstm_cell_194/Sigmoid_1Sigmoid*lstm_86/while/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_86/while/lstm_cell_194/mulMul)lstm_86/while/lstm_cell_194/Sigmoid_1:y:0lstm_86_while_placeholder_3*
T0*'
_output_shapes
:���������
�
 lstm_86/while/lstm_cell_194/ReluRelu*lstm_86/while/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
!lstm_86/while/lstm_cell_194/mul_1Mul'lstm_86/while/lstm_cell_194/Sigmoid:y:0.lstm_86/while/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
!lstm_86/while/lstm_cell_194/add_1AddV2#lstm_86/while/lstm_cell_194/mul:z:0%lstm_86/while/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
�
%lstm_86/while/lstm_cell_194/Sigmoid_2Sigmoid*lstm_86/while/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
�
"lstm_86/while/lstm_cell_194/Relu_1Relu%lstm_86/while/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
!lstm_86/while/lstm_cell_194/mul_2Mul)lstm_86/while/lstm_cell_194/Sigmoid_2:y:00lstm_86/while/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
2lstm_86/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_86_while_placeholder_1lstm_86_while_placeholder%lstm_86/while/lstm_cell_194/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_86/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_86/while/addAddV2lstm_86_while_placeholderlstm_86/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_86/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_86/while/add_1AddV2(lstm_86_while_lstm_86_while_loop_counterlstm_86/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_86/while/IdentityIdentitylstm_86/while/add_1:z:0^lstm_86/while/NoOp*
T0*
_output_shapes
: �
lstm_86/while/Identity_1Identity.lstm_86_while_lstm_86_while_maximum_iterations^lstm_86/while/NoOp*
T0*
_output_shapes
: q
lstm_86/while/Identity_2Identitylstm_86/while/add:z:0^lstm_86/while/NoOp*
T0*
_output_shapes
: �
lstm_86/while/Identity_3IdentityBlstm_86/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_86/while/NoOp*
T0*
_output_shapes
: �
lstm_86/while/Identity_4Identity%lstm_86/while/lstm_cell_194/mul_2:z:0^lstm_86/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_86/while/Identity_5Identity%lstm_86/while/lstm_cell_194/add_1:z:0^lstm_86/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_86/while/NoOpNoOp3^lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp2^lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp4^lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_86_while_identitylstm_86/while/Identity:output:0"=
lstm_86_while_identity_1!lstm_86/while/Identity_1:output:0"=
lstm_86_while_identity_2!lstm_86/while/Identity_2:output:0"=
lstm_86_while_identity_3!lstm_86/while/Identity_3:output:0"=
lstm_86_while_identity_4!lstm_86/while/Identity_4:output:0"=
lstm_86_while_identity_5!lstm_86/while/Identity_5:output:0"P
%lstm_86_while_lstm_86_strided_slice_1'lstm_86_while_lstm_86_strided_slice_1_0"|
;lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource=lstm_86_while_lstm_cell_194_biasadd_readvariableop_resource_0"~
<lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource>lstm_86_while_lstm_cell_194_matmul_1_readvariableop_resource_0"z
:lstm_86_while_lstm_cell_194_matmul_readvariableop_resource<lstm_86_while_lstm_cell_194_matmul_readvariableop_resource_0"�
alstm_86_while_tensorarrayv2read_tensorlistgetitem_lstm_86_tensorarrayunstack_tensorlistfromtensorclstm_86_while_tensorarrayv2read_tensorlistgetitem_lstm_86_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2h
2lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp2lstm_86/while/lstm_cell_194/BiasAdd/ReadVariableOp2f
1lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp1lstm_86/while/lstm_cell_194/MatMul/ReadVariableOp2j
3lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp3lstm_86/while/lstm_cell_194/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�#
�
while_body_1173252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_192_1173276_0:	�0
while_lstm_cell_192_1173278_0:	d�,
while_lstm_cell_192_1173280_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_192_1173276:	�.
while_lstm_cell_192_1173278:	d�*
while_lstm_cell_192_1173280:	���+while/lstm_cell_192/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_192/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_192_1173276_0while_lstm_cell_192_1173278_0while_lstm_cell_192_1173280_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1173193�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_192/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_192/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_192/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_192/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_192_1173276while_lstm_cell_192_1173276_0"<
while_lstm_cell_192_1173278while_lstm_cell_192_1173278_0"<
while_lstm_cell_192_1173280while_lstm_cell_192_1173280_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_192/StatefulPartitionedCall+while/lstm_cell_192/StatefulPartitionedCall: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�	
�
E__inference_dense_28_layer_call_and_return_conditional_losses_1178015

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�K
�
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176478
inputs_0?
,lstm_cell_192_matmul_readvariableop_resource:	�A
.lstm_cell_192_matmul_1_readvariableop_resource:	d�<
-lstm_cell_192_biasadd_readvariableop_resource:	�
identity��$lstm_cell_192/BiasAdd/ReadVariableOp�#lstm_cell_192/MatMul/ReadVariableOp�%lstm_cell_192/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
:���������dR
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
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_192/MatMul/ReadVariableOpReadVariableOp,lstm_cell_192_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_192/MatMulMatMulstrided_slice_2:output:0+lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_192_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_192/MatMul_1MatMulzeros:output:0-lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_192/addAddV2lstm_cell_192/MatMul:product:0 lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_192_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_192/BiasAddBiasAddlstm_cell_192/add:z:0,lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_192/splitSplit&lstm_cell_192/split/split_dim:output:0lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_192/SigmoidSigmoidlstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_1Sigmoidlstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_192/mulMullstm_cell_192/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_192/ReluRelulstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_1Mullstm_cell_192/Sigmoid:y:0 lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_192/add_1AddV2lstm_cell_192/mul:z:0lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_2Sigmoidlstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_192/Relu_1Relulstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_2Mullstm_cell_192/Sigmoid_2:y:0"lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_192_matmul_readvariableop_resource.lstm_cell_192_matmul_1_readvariableop_resource-lstm_cell_192_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1176394*
condR
while_cond_1176393*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������d�
NoOpNoOp%^lstm_cell_192/BiasAdd/ReadVariableOp$^lstm_cell_192/MatMul/ReadVariableOp&^lstm_cell_192/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_192/BiasAdd/ReadVariableOp$lstm_cell_192/BiasAdd/ReadVariableOp2J
#lstm_cell_192/MatMul/ReadVariableOp#lstm_cell_192/MatMul/ReadVariableOp2N
%lstm_cell_192/MatMul_1/ReadVariableOp%lstm_cell_192/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_1176393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1176393___redundant_placeholder05
1while_while_cond_1176393___redundant_placeholder15
1while_while_cond_1176393___redundant_placeholder25
1while_while_cond_1176393___redundant_placeholder3
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
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�J
�
D__inference_lstm_85_layer_call_and_return_conditional_losses_1177380

inputs?
,lstm_cell_193_matmul_readvariableop_resource:	d�A
.lstm_cell_193_matmul_1_readvariableop_resource:	2�<
-lstm_cell_193_biasadd_readvariableop_resource:	�
identity��$lstm_cell_193/BiasAdd/ReadVariableOp�#lstm_cell_193/MatMul/ReadVariableOp�%lstm_cell_193/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������2R
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
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_193/MatMul/ReadVariableOpReadVariableOp,lstm_cell_193_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_193/MatMulMatMulstrided_slice_2:output:0+lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_193_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_193/MatMul_1MatMulzeros:output:0-lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_193/addAddV2lstm_cell_193/MatMul:product:0 lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_193_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_193/BiasAddBiasAddlstm_cell_193/add:z:0,lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_193/splitSplit&lstm_cell_193/split/split_dim:output:0lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_193/SigmoidSigmoidlstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_1Sigmoidlstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_193/mulMullstm_cell_193/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_193/ReluRelulstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_1Mullstm_cell_193/Sigmoid:y:0 lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_193/add_1AddV2lstm_cell_193/mul:z:0lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_2Sigmoidlstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_193/Relu_1Relulstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_2Mullstm_cell_193/Sigmoid_2:y:0"lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_193_matmul_readvariableop_resource.lstm_cell_193_matmul_1_readvariableop_resource-lstm_cell_193_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1177296*
condR
while_cond_1177295*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_193/BiasAdd/ReadVariableOp$^lstm_cell_193/MatMul/ReadVariableOp&^lstm_cell_193/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_193/BiasAdd/ReadVariableOp$lstm_cell_193/BiasAdd/ReadVariableOp2J
#lstm_cell_193/MatMul/ReadVariableOp#lstm_cell_193/MatMul/ReadVariableOp2N
%lstm_cell_193/MatMul_1/ReadVariableOp%lstm_cell_193/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_1178582
file_prefix2
 assignvariableop_dense_28_kernel:
.
 assignvariableop_1_dense_28_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_84_lstm_cell_84_kernel:	�K
8assignvariableop_8_lstm_84_lstm_cell_84_recurrent_kernel:	d�;
,assignvariableop_9_lstm_84_lstm_cell_84_bias:	�B
/assignvariableop_10_lstm_85_lstm_cell_85_kernel:	d�L
9assignvariableop_11_lstm_85_lstm_cell_85_recurrent_kernel:	2�<
-assignvariableop_12_lstm_85_lstm_cell_85_bias:	�A
/assignvariableop_13_lstm_86_lstm_cell_86_kernel:2(K
9assignvariableop_14_lstm_86_lstm_cell_86_recurrent_kernel:
(;
-assignvariableop_15_lstm_86_lstm_cell_86_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_28_kernel_m:
6
(assignvariableop_19_adam_dense_28_bias_m:I
6assignvariableop_20_adam_lstm_84_lstm_cell_84_kernel_m:	�S
@assignvariableop_21_adam_lstm_84_lstm_cell_84_recurrent_kernel_m:	d�C
4assignvariableop_22_adam_lstm_84_lstm_cell_84_bias_m:	�I
6assignvariableop_23_adam_lstm_85_lstm_cell_85_kernel_m:	d�S
@assignvariableop_24_adam_lstm_85_lstm_cell_85_recurrent_kernel_m:	2�C
4assignvariableop_25_adam_lstm_85_lstm_cell_85_bias_m:	�H
6assignvariableop_26_adam_lstm_86_lstm_cell_86_kernel_m:2(R
@assignvariableop_27_adam_lstm_86_lstm_cell_86_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_86_lstm_cell_86_bias_m:(<
*assignvariableop_29_adam_dense_28_kernel_v:
6
(assignvariableop_30_adam_dense_28_bias_v:I
6assignvariableop_31_adam_lstm_84_lstm_cell_84_kernel_v:	�S
@assignvariableop_32_adam_lstm_84_lstm_cell_84_recurrent_kernel_v:	d�C
4assignvariableop_33_adam_lstm_84_lstm_cell_84_bias_v:	�I
6assignvariableop_34_adam_lstm_85_lstm_cell_85_kernel_v:	d�S
@assignvariableop_35_adam_lstm_85_lstm_cell_85_recurrent_kernel_v:	2�C
4assignvariableop_36_adam_lstm_85_lstm_cell_85_bias_v:	�H
6assignvariableop_37_adam_lstm_86_lstm_cell_86_kernel_v:2(R
@assignvariableop_38_adam_lstm_86_lstm_cell_86_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_86_lstm_cell_86_bias_v:(
identity_41��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*�
value�B�)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_28_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_28_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_84_lstm_cell_84_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_84_lstm_cell_84_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_84_lstm_cell_84_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_85_lstm_cell_85_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_85_lstm_cell_85_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_85_lstm_cell_85_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_86_lstm_cell_86_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_86_lstm_cell_86_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_86_lstm_cell_86_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_28_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_28_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_84_lstm_cell_84_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_84_lstm_cell_84_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_84_lstm_cell_84_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_85_lstm_cell_85_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_85_lstm_cell_85_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_85_lstm_cell_85_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_86_lstm_cell_86_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_86_lstm_cell_86_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_86_lstm_cell_86_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_28_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_28_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_84_lstm_cell_84_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_84_lstm_cell_84_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_84_lstm_cell_84_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_85_lstm_cell_85_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_85_lstm_cell_85_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_85_lstm_cell_85_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_86_lstm_cell_86_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_86_lstm_cell_86_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_86_lstm_cell_86_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: �
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
�
�
while_cond_1176536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1176536___redundant_placeholder05
1while_while_cond_1176536___redundant_placeholder15
1while_while_cond_1176536___redundant_placeholder25
1while_while_cond_1176536___redundant_placeholder3
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
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1177768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1177768___redundant_placeholder05
1while_while_cond_1177768___redundant_placeholder15
1while_while_cond_1177768___redundant_placeholder25
1while_while_cond_1177768___redundant_placeholder3
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
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1176679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1176679___redundant_placeholder05
1while_while_cond_1176679___redundant_placeholder15
1while_while_cond_1176679___redundant_placeholder25
1while_while_cond_1176679___redundant_placeholder3
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
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_1174395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_194_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_194_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_194_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_194_matmul_readvariableop_resource:2(F
4while_lstm_cell_194_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_194_biasadd_readvariableop_resource:(��*while/lstm_cell_194/BiasAdd/ReadVariableOp�)while/lstm_cell_194/MatMul/ReadVariableOp�+while/lstm_cell_194/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_194/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_194_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_194/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_194_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_194/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_194/addAddV2$while/lstm_cell_194/MatMul:product:0&while/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_194_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_194/BiasAddBiasAddwhile/lstm_cell_194/add:z:02while/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_194/splitSplit,while/lstm_cell_194/split/split_dim:output:0$while/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_194/SigmoidSigmoid"while/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_1Sigmoid"while/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mulMul!while/lstm_cell_194/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_194/ReluRelu"while/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_1Mulwhile/lstm_cell_194/Sigmoid:y:0&while/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/add_1AddV2while/lstm_cell_194/mul:z:0while/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_2Sigmoid"while/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_194/Relu_1Reluwhile/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_2Mul!while/lstm_cell_194/Sigmoid_2:y:0(while/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_194/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_194/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_194/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_194/BiasAdd/ReadVariableOp*^while/lstm_cell_194/MatMul/ReadVariableOp,^while/lstm_cell_194/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_194_biasadd_readvariableop_resource5while_lstm_cell_194_biasadd_readvariableop_resource_0"n
4while_lstm_cell_194_matmul_1_readvariableop_resource6while_lstm_cell_194_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_194_matmul_readvariableop_resource4while_lstm_cell_194_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_194/BiasAdd/ReadVariableOp*while/lstm_cell_194/BiasAdd/ReadVariableOp2V
)while/lstm_cell_194/MatMul/ReadVariableOp)while/lstm_cell_194/MatMul/ReadVariableOp2Z
+while/lstm_cell_194/MatMul_1/ReadVariableOp+while/lstm_cell_194/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�#
�
while_body_1173061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_192_1173085_0:	�0
while_lstm_cell_192_1173087_0:	d�,
while_lstm_cell_192_1173089_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_192_1173085:	�.
while_lstm_cell_192_1173087:	d�*
while_lstm_cell_192_1173089:	���+while/lstm_cell_192/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_192/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_192_1173085_0while_lstm_cell_192_1173087_0while_lstm_cell_192_1173089_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1173047�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_192/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_192/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_192/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_192/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_192_1173085while_lstm_cell_192_1173085_0"<
while_lstm_cell_192_1173087while_lstm_cell_192_1173087_0"<
while_lstm_cell_192_1173089while_lstm_cell_192_1173089_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_192/StatefulPartitionedCall+while/lstm_cell_192/StatefulPartitionedCall: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175093

inputs"
lstm_84_1175066:	�"
lstm_84_1175068:	d�
lstm_84_1175070:	�"
lstm_85_1175073:	d�"
lstm_85_1175075:	2�
lstm_85_1175077:	�!
lstm_86_1175080:2(!
lstm_86_1175082:
(
lstm_86_1175084:("
dense_28_1175087:

dense_28_1175089:
identity�� dense_28/StatefulPartitionedCall�lstm_84/StatefulPartitionedCall�lstm_85/StatefulPartitionedCall�lstm_86/StatefulPartitionedCall�
lstm_84/StatefulPartitionedCallStatefulPartitionedCallinputslstm_84_1175066lstm_84_1175068lstm_84_1175070*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_84_layer_call_and_return_conditional_losses_1175025�
lstm_85/StatefulPartitionedCallStatefulPartitionedCall(lstm_84/StatefulPartitionedCall:output:0lstm_85_1175073lstm_85_1175075lstm_85_1175077*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_85_layer_call_and_return_conditional_losses_1174860�
lstm_86/StatefulPartitionedCallStatefulPartitionedCall(lstm_85/StatefulPartitionedCall:output:0lstm_86_1175080lstm_86_1175082lstm_86_1175084*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_86_layer_call_and_return_conditional_losses_1174695�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall(lstm_86/StatefulPartitionedCall:output:0dense_28_1175087dense_28_1175089*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_1174497x
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_28/StatefulPartitionedCall ^lstm_84/StatefulPartitionedCall ^lstm_85/StatefulPartitionedCall ^lstm_86/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2B
lstm_84/StatefulPartitionedCalllstm_84/StatefulPartitionedCall2B
lstm_85/StatefulPartitionedCalllstm_85/StatefulPartitionedCall2B
lstm_86/StatefulPartitionedCalllstm_86/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_1174776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_193_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_193_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_193_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_193_matmul_readvariableop_resource:	d�G
4while_lstm_cell_193_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_193_biasadd_readvariableop_resource:	���*while/lstm_cell_193/BiasAdd/ReadVariableOp�)while/lstm_cell_193/MatMul/ReadVariableOp�+while/lstm_cell_193/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_193/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_193_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_193/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_193_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_193/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_193/addAddV2$while/lstm_cell_193/MatMul:product:0&while/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_193_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_193/BiasAddBiasAddwhile/lstm_cell_193/add:z:02while/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_193/splitSplit,while/lstm_cell_193/split/split_dim:output:0$while/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_193/SigmoidSigmoid"while/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_1Sigmoid"while/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mulMul!while/lstm_cell_193/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_193/ReluRelu"while/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_1Mulwhile/lstm_cell_193/Sigmoid:y:0&while/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/add_1AddV2while/lstm_cell_193/mul:z:0while/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_2Sigmoid"while/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_193/Relu_1Reluwhile/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_2Mul!while/lstm_cell_193/Sigmoid_2:y:0(while/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_193/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_193/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_193/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_193/BiasAdd/ReadVariableOp*^while/lstm_cell_193/MatMul/ReadVariableOp,^while/lstm_cell_193/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_193_biasadd_readvariableop_resource5while_lstm_cell_193_biasadd_readvariableop_resource_0"n
4while_lstm_cell_193_matmul_1_readvariableop_resource6while_lstm_cell_193_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_193_matmul_readvariableop_resource4while_lstm_cell_193_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_193/BiasAdd/ReadVariableOp*while/lstm_cell_193/BiasAdd/ReadVariableOp2V
)while/lstm_cell_193/MatMul/ReadVariableOp)while/lstm_cell_193/MatMul/ReadVariableOp2Z
+while/lstm_cell_193/MatMul_1/ReadVariableOp+while/lstm_cell_193/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1174244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1174244___redundant_placeholder05
1while_while_cond_1174244___redundant_placeholder15
1while_while_cond_1174244___redundant_placeholder25
1while_while_cond_1174244___redundant_placeholder3
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
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_1177153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_193_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_193_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_193_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_193_matmul_readvariableop_resource:	d�G
4while_lstm_cell_193_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_193_biasadd_readvariableop_resource:	���*while/lstm_cell_193/BiasAdd/ReadVariableOp�)while/lstm_cell_193/MatMul/ReadVariableOp�+while/lstm_cell_193/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_193/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_193_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_193/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_193_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_193/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_193/addAddV2$while/lstm_cell_193/MatMul:product:0&while/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_193_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_193/BiasAddBiasAddwhile/lstm_cell_193/add:z:02while/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_193/splitSplit,while/lstm_cell_193/split/split_dim:output:0$while/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_193/SigmoidSigmoid"while/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_1Sigmoid"while/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mulMul!while/lstm_cell_193/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_193/ReluRelu"while/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_1Mulwhile/lstm_cell_193/Sigmoid:y:0&while/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/add_1AddV2while/lstm_cell_193/mul:z:0while/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_2Sigmoid"while/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_193/Relu_1Reluwhile/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_2Mul!while/lstm_cell_193/Sigmoid_2:y:0(while/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_193/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_193/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_193/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_193/BiasAdd/ReadVariableOp*^while/lstm_cell_193/MatMul/ReadVariableOp,^while/lstm_cell_193/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_193_biasadd_readvariableop_resource5while_lstm_cell_193_biasadd_readvariableop_resource_0"n
4while_lstm_cell_193_matmul_1_readvariableop_resource6while_lstm_cell_193_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_193_matmul_readvariableop_resource4while_lstm_cell_193_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_193/BiasAdd/ReadVariableOp*while/lstm_cell_193/BiasAdd/ReadVariableOp2V
)while/lstm_cell_193/MatMul/ReadVariableOp)while/lstm_cell_193/MatMul/ReadVariableOp2Z
+while/lstm_cell_193/MatMul_1/ReadVariableOp+while/lstm_cell_193/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1173951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1173951___redundant_placeholder05
1while_while_cond_1173951___redundant_placeholder15
1while_while_cond_1173951___redundant_placeholder25
1while_while_cond_1173951___redundant_placeholder3
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
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_lstm_85_layer_call_fn_1176808

inputs
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_85_layer_call_and_return_conditional_losses_1174860s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
)__inference_lstm_86_layer_call_fn_1177391
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_86_layer_call_and_return_conditional_losses_1173830o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�J
�
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177853

inputs>
,lstm_cell_194_matmul_readvariableop_resource:2(@
.lstm_cell_194_matmul_1_readvariableop_resource:
(;
-lstm_cell_194_biasadd_readvariableop_resource:(
identity��$lstm_cell_194/BiasAdd/ReadVariableOp�#lstm_cell_194/MatMul/ReadVariableOp�%lstm_cell_194/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������
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
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_194/MatMul/ReadVariableOpReadVariableOp,lstm_cell_194_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_194/MatMulMatMulstrided_slice_2:output:0+lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_194_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_194/MatMul_1MatMulzeros:output:0-lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_194/addAddV2lstm_cell_194/MatMul:product:0 lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_194_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_194/BiasAddBiasAddlstm_cell_194/add:z:0,lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_194/splitSplit&lstm_cell_194/split/split_dim:output:0lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_194/SigmoidSigmoidlstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_1Sigmoidlstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_194/mulMullstm_cell_194/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_194/ReluRelulstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_1Mullstm_cell_194/Sigmoid:y:0 lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_194/add_1AddV2lstm_cell_194/mul:z:0lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_2Sigmoidlstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_194/Relu_1Relulstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_2Mullstm_cell_194/Sigmoid_2:y:0"lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_194_matmul_readvariableop_resource.lstm_cell_194_matmul_1_readvariableop_resource-lstm_cell_194_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1177769*
condR
while_cond_1177768*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
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
:���������
�
NoOpNoOp%^lstm_cell_194/BiasAdd/ReadVariableOp$^lstm_cell_194/MatMul/ReadVariableOp&^lstm_cell_194/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_194/BiasAdd/ReadVariableOp$lstm_cell_194/BiasAdd/ReadVariableOp2J
#lstm_cell_194/MatMul/ReadVariableOp#lstm_cell_194/MatMul/ReadVariableOp2N
%lstm_cell_194/MatMul_1/ReadVariableOp%lstm_cell_194/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
)__inference_lstm_84_layer_call_fn_1176192

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_84_layer_call_and_return_conditional_losses_1175025s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�#
�
while_body_1173411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_193_1173435_0:	d�0
while_lstm_cell_193_1173437_0:	2�,
while_lstm_cell_193_1173439_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_193_1173435:	d�.
while_lstm_cell_193_1173437:	2�*
while_lstm_cell_193_1173439:	���+while/lstm_cell_193/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_193/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_193_1173435_0while_lstm_cell_193_1173437_0while_lstm_cell_193_1173439_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1173397�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_193/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_193/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_193/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_193/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_193_1173435while_lstm_cell_193_1173435_0"<
while_lstm_cell_193_1173437while_lstm_cell_193_1173437_0"<
while_lstm_cell_193_1173439while_lstm_cell_193_1173439_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_193/StatefulPartitionedCall+while/lstm_cell_193/StatefulPartitionedCall: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1178179

inputs
states_0
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�

�
/__inference_sequential_28_layer_call_fn_1175294

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175093o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1178081

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�#
�
while_body_1173952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_194_1173976_0:2(/
while_lstm_cell_194_1173978_0:
(+
while_lstm_cell_194_1173980_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_194_1173976:2(-
while_lstm_cell_194_1173978:
()
while_lstm_cell_194_1173980:(��+while/lstm_cell_194/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_194/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_194_1173976_0while_lstm_cell_194_1173978_0while_lstm_cell_194_1173980_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1173893�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_194/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_194/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_194/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_194/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_194_1173976while_lstm_cell_194_1173976_0"<
while_lstm_cell_194_1173978while_lstm_cell_194_1173978_0"<
while_lstm_cell_194_1173980while_lstm_cell_194_1173980_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_194/StatefulPartitionedCall+while/lstm_cell_194/StatefulPartitionedCall: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_lstm_cell_192_layer_call_fn_1178049

inputs
states_0
states_1
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1173193o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�
�
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175205
lstm_84_input"
lstm_84_1175178:	�"
lstm_84_1175180:	d�
lstm_84_1175182:	�"
lstm_85_1175185:	d�"
lstm_85_1175187:	2�
lstm_85_1175189:	�!
lstm_86_1175192:2(!
lstm_86_1175194:
(
lstm_86_1175196:("
dense_28_1175199:

dense_28_1175201:
identity�� dense_28/StatefulPartitionedCall�lstm_84/StatefulPartitionedCall�lstm_85/StatefulPartitionedCall�lstm_86/StatefulPartitionedCall�
lstm_84/StatefulPartitionedCallStatefulPartitionedCalllstm_84_inputlstm_84_1175178lstm_84_1175180lstm_84_1175182*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_84_layer_call_and_return_conditional_losses_1175025�
lstm_85/StatefulPartitionedCallStatefulPartitionedCall(lstm_84/StatefulPartitionedCall:output:0lstm_85_1175185lstm_85_1175187lstm_85_1175189*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_85_layer_call_and_return_conditional_losses_1174860�
lstm_86/StatefulPartitionedCallStatefulPartitionedCall(lstm_85/StatefulPartitionedCall:output:0lstm_86_1175192lstm_86_1175194lstm_86_1175196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_86_layer_call_and_return_conditional_losses_1174695�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall(lstm_86/StatefulPartitionedCall:output:0dense_28_1175199dense_28_1175201*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_1174497x
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_28/StatefulPartitionedCall ^lstm_84/StatefulPartitionedCall ^lstm_85/StatefulPartitionedCall ^lstm_86/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2B
lstm_84/StatefulPartitionedCalllstm_84/StatefulPartitionedCall2B
lstm_85/StatefulPartitionedCalllstm_85/StatefulPartitionedCall2B
lstm_86/StatefulPartitionedCalllstm_86/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_84_input
�8
�
while_body_1174245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_193_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_193_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_193_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_193_matmul_readvariableop_resource:	d�G
4while_lstm_cell_193_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_193_biasadd_readvariableop_resource:	���*while/lstm_cell_193/BiasAdd/ReadVariableOp�)while/lstm_cell_193/MatMul/ReadVariableOp�+while/lstm_cell_193/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_193/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_193_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_193/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_193_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_193/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_193/addAddV2$while/lstm_cell_193/MatMul:product:0&while/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_193_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_193/BiasAddBiasAddwhile/lstm_cell_193/add:z:02while/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_193/splitSplit,while/lstm_cell_193/split/split_dim:output:0$while/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_193/SigmoidSigmoid"while/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_1Sigmoid"while/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mulMul!while/lstm_cell_193/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_193/ReluRelu"while/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_1Mulwhile/lstm_cell_193/Sigmoid:y:0&while/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/add_1AddV2while/lstm_cell_193/mul:z:0while/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_193/Sigmoid_2Sigmoid"while/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_193/Relu_1Reluwhile/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_193/mul_2Mul!while/lstm_cell_193/Sigmoid_2:y:0(while/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_193/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_193/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_193/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_193/BiasAdd/ReadVariableOp*^while/lstm_cell_193/MatMul/ReadVariableOp,^while/lstm_cell_193/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_193_biasadd_readvariableop_resource5while_lstm_cell_193_biasadd_readvariableop_resource_0"n
4while_lstm_cell_193_matmul_1_readvariableop_resource6while_lstm_cell_193_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_193_matmul_readvariableop_resource4while_lstm_cell_193_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_193/BiasAdd/ReadVariableOp*while/lstm_cell_193/BiasAdd/ReadVariableOp2V
)while/lstm_cell_193/MatMul/ReadVariableOp)while/lstm_cell_193/MatMul/ReadVariableOp2Z
+while/lstm_cell_193/MatMul_1/ReadVariableOp+while/lstm_cell_193/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_lstm_84_layer_call_fn_1176159
inputs_0
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_84_layer_call_and_return_conditional_losses_1173130|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_1176250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1176250___redundant_placeholder05
1while_while_cond_1176250___redundant_placeholder15
1while_while_cond_1176250___redundant_placeholder25
1while_while_cond_1176250___redundant_placeholder3
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
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1177911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1177911___redundant_placeholder05
1while_while_cond_1177911___redundant_placeholder15
1while_while_cond_1177911___redundant_placeholder25
1while_while_cond_1177911___redundant_placeholder3
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
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_1176394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_192_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_192_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_192_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_192_matmul_readvariableop_resource:	�G
4while_lstm_cell_192_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_192_biasadd_readvariableop_resource:	���*while/lstm_cell_192/BiasAdd/ReadVariableOp�)while/lstm_cell_192/MatMul/ReadVariableOp�+while/lstm_cell_192/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_192/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_192_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_192/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_192_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_192/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_192/addAddV2$while/lstm_cell_192/MatMul:product:0&while/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_192_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_192/BiasAddBiasAddwhile/lstm_cell_192/add:z:02while/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_192/splitSplit,while/lstm_cell_192/split/split_dim:output:0$while/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_192/SigmoidSigmoid"while/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_1Sigmoid"while/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mulMul!while/lstm_cell_192/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_192/ReluRelu"while/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_1Mulwhile/lstm_cell_192/Sigmoid:y:0&while/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/add_1AddV2while/lstm_cell_192/mul:z:0while/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_2Sigmoid"while/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_192/Relu_1Reluwhile/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_2Mul!while/lstm_cell_192/Sigmoid_2:y:0(while/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_192/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_192/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_192/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_192/BiasAdd/ReadVariableOp*^while/lstm_cell_192/MatMul/ReadVariableOp,^while/lstm_cell_192/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_192_biasadd_readvariableop_resource5while_lstm_cell_192_biasadd_readvariableop_resource_0"n
4while_lstm_cell_192_matmul_1_readvariableop_resource6while_lstm_cell_192_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_192_matmul_readvariableop_resource4while_lstm_cell_192_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_192/BiasAdd/ReadVariableOp*while/lstm_cell_192/BiasAdd/ReadVariableOp2V
)while/lstm_cell_192/MatMul/ReadVariableOp)while/lstm_cell_192/MatMul/ReadVariableOp2Z
+while/lstm_cell_192/MatMul_1/ReadVariableOp+while/lstm_cell_192/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�K
�
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176335
inputs_0?
,lstm_cell_192_matmul_readvariableop_resource:	�A
.lstm_cell_192_matmul_1_readvariableop_resource:	d�<
-lstm_cell_192_biasadd_readvariableop_resource:	�
identity��$lstm_cell_192/BiasAdd/ReadVariableOp�#lstm_cell_192/MatMul/ReadVariableOp�%lstm_cell_192/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
:���������dR
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
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_192/MatMul/ReadVariableOpReadVariableOp,lstm_cell_192_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_192/MatMulMatMulstrided_slice_2:output:0+lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_192_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_192/MatMul_1MatMulzeros:output:0-lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_192/addAddV2lstm_cell_192/MatMul:product:0 lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_192_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_192/BiasAddBiasAddlstm_cell_192/add:z:0,lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_192/splitSplit&lstm_cell_192/split/split_dim:output:0lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_192/SigmoidSigmoidlstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_1Sigmoidlstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_192/mulMullstm_cell_192/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_192/ReluRelulstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_1Mullstm_cell_192/Sigmoid:y:0 lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_192/add_1AddV2lstm_cell_192/mul:z:0lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_192/Sigmoid_2Sigmoidlstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_192/Relu_1Relulstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_192/mul_2Mullstm_cell_192/Sigmoid_2:y:0"lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_192_matmul_readvariableop_resource.lstm_cell_192_matmul_1_readvariableop_resource-lstm_cell_192_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1176251*
condR
while_cond_1176250*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������d�
NoOpNoOp%^lstm_cell_192/BiasAdd/ReadVariableOp$^lstm_cell_192/MatMul/ReadVariableOp&^lstm_cell_192/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_192/BiasAdd/ReadVariableOp$lstm_cell_192/BiasAdd/ReadVariableOp2J
#lstm_cell_192/MatMul/ReadVariableOp#lstm_cell_192/MatMul/ReadVariableOp2N
%lstm_cell_192/MatMul_1/ReadVariableOp%lstm_cell_192/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�J
�
D__inference_lstm_85_layer_call_and_return_conditional_losses_1174860

inputs?
,lstm_cell_193_matmul_readvariableop_resource:	d�A
.lstm_cell_193_matmul_1_readvariableop_resource:	2�<
-lstm_cell_193_biasadd_readvariableop_resource:	�
identity��$lstm_cell_193/BiasAdd/ReadVariableOp�#lstm_cell_193/MatMul/ReadVariableOp�%lstm_cell_193/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
:���������2R
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
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_193/MatMul/ReadVariableOpReadVariableOp,lstm_cell_193_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_193/MatMulMatMulstrided_slice_2:output:0+lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_193_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_193/MatMul_1MatMulzeros:output:0-lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_193/addAddV2lstm_cell_193/MatMul:product:0 lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_193_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_193/BiasAddBiasAddlstm_cell_193/add:z:0,lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_193/splitSplit&lstm_cell_193/split/split_dim:output:0lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_193/SigmoidSigmoidlstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_1Sigmoidlstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_193/mulMullstm_cell_193/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_193/ReluRelulstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_1Mullstm_cell_193/Sigmoid:y:0 lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_193/add_1AddV2lstm_cell_193/mul:z:0lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_2Sigmoidlstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_193/Relu_1Relulstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_2Mullstm_cell_193/Sigmoid_2:y:0"lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_193_matmul_readvariableop_resource.lstm_cell_193_matmul_1_readvariableop_resource-lstm_cell_193_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1174776*
condR
while_cond_1174775*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_193/BiasAdd/ReadVariableOp$^lstm_cell_193/MatMul/ReadVariableOp&^lstm_cell_193/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_193/BiasAdd/ReadVariableOp$lstm_cell_193/BiasAdd/ReadVariableOp2J
#lstm_cell_193/MatMul/ReadVariableOp#lstm_cell_193/MatMul/ReadVariableOp2N
%lstm_cell_193/MatMul_1/ReadVariableOp%lstm_cell_193/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�K
�
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177567
inputs_0>
,lstm_cell_194_matmul_readvariableop_resource:2(@
.lstm_cell_194_matmul_1_readvariableop_resource:
(;
-lstm_cell_194_biasadd_readvariableop_resource:(
identity��$lstm_cell_194/BiasAdd/ReadVariableOp�#lstm_cell_194/MatMul/ReadVariableOp�%lstm_cell_194/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
:���������
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
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_194/MatMul/ReadVariableOpReadVariableOp,lstm_cell_194_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_194/MatMulMatMulstrided_slice_2:output:0+lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_194_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_194/MatMul_1MatMulzeros:output:0-lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_194/addAddV2lstm_cell_194/MatMul:product:0 lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_194_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_194/BiasAddBiasAddlstm_cell_194/add:z:0,lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_194/splitSplit&lstm_cell_194/split/split_dim:output:0lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_194/SigmoidSigmoidlstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_1Sigmoidlstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_194/mulMullstm_cell_194/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_194/ReluRelulstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_1Mullstm_cell_194/Sigmoid:y:0 lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_194/add_1AddV2lstm_cell_194/mul:z:0lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_194/Sigmoid_2Sigmoidlstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_194/Relu_1Relulstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_194/mul_2Mullstm_cell_194/Sigmoid_2:y:0"lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_194_matmul_readvariableop_resource.lstm_cell_194_matmul_1_readvariableop_resource-lstm_cell_194_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1177483*
condR
while_cond_1177482*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
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
:���������
�
NoOpNoOp%^lstm_cell_194/BiasAdd/ReadVariableOp$^lstm_cell_194/MatMul/ReadVariableOp&^lstm_cell_194/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_194/BiasAdd/ReadVariableOp$lstm_cell_194/BiasAdd/ReadVariableOp2J
#lstm_cell_194/MatMul/ReadVariableOp#lstm_cell_194/MatMul/ReadVariableOp2N
%lstm_cell_194/MatMul_1/ReadVariableOp%lstm_cell_194/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
)__inference_lstm_84_layer_call_fn_1176170
inputs_0
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_84_layer_call_and_return_conditional_losses_1173321|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
)__inference_lstm_86_layer_call_fn_1177402
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_86_layer_call_and_return_conditional_losses_1174021o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
J__inference_sequential_28_layer_call_and_return_conditional_losses_1174504

inputs"
lstm_84_1174180:	�"
lstm_84_1174182:	d�
lstm_84_1174184:	�"
lstm_85_1174330:	d�"
lstm_85_1174332:	2�
lstm_85_1174334:	�!
lstm_86_1174480:2(!
lstm_86_1174482:
(
lstm_86_1174484:("
dense_28_1174498:

dense_28_1174500:
identity�� dense_28/StatefulPartitionedCall�lstm_84/StatefulPartitionedCall�lstm_85/StatefulPartitionedCall�lstm_86/StatefulPartitionedCall�
lstm_84/StatefulPartitionedCallStatefulPartitionedCallinputslstm_84_1174180lstm_84_1174182lstm_84_1174184*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_84_layer_call_and_return_conditional_losses_1174179�
lstm_85/StatefulPartitionedCallStatefulPartitionedCall(lstm_84/StatefulPartitionedCall:output:0lstm_85_1174330lstm_85_1174332lstm_85_1174334*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_85_layer_call_and_return_conditional_losses_1174329�
lstm_86/StatefulPartitionedCallStatefulPartitionedCall(lstm_85/StatefulPartitionedCall:output:0lstm_86_1174480lstm_86_1174482lstm_86_1174484*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_86_layer_call_and_return_conditional_losses_1174479�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall(lstm_86/StatefulPartitionedCall:output:0dense_28_1174498dense_28_1174500*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_1174497x
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_28/StatefulPartitionedCall ^lstm_84/StatefulPartitionedCall ^lstm_85/StatefulPartitionedCall ^lstm_86/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2B
lstm_84/StatefulPartitionedCalllstm_84/StatefulPartitionedCall2B
lstm_85/StatefulPartitionedCalllstm_85/StatefulPartitionedCall2B
lstm_86/StatefulPartitionedCalllstm_86/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_1177483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_194_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_194_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_194_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_194_matmul_readvariableop_resource:2(F
4while_lstm_cell_194_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_194_biasadd_readvariableop_resource:(��*while/lstm_cell_194/BiasAdd/ReadVariableOp�)while/lstm_cell_194/MatMul/ReadVariableOp�+while/lstm_cell_194/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_194/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_194_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_194/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_194_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_194/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_194/addAddV2$while/lstm_cell_194/MatMul:product:0&while/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_194_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_194/BiasAddBiasAddwhile/lstm_cell_194/add:z:02while/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_194/splitSplit,while/lstm_cell_194/split/split_dim:output:0$while/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_194/SigmoidSigmoid"while/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_1Sigmoid"while/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mulMul!while/lstm_cell_194/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_194/ReluRelu"while/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_1Mulwhile/lstm_cell_194/Sigmoid:y:0&while/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/add_1AddV2while/lstm_cell_194/mul:z:0while/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_194/Sigmoid_2Sigmoid"while/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_194/Relu_1Reluwhile/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_194/mul_2Mul!while/lstm_cell_194/Sigmoid_2:y:0(while/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_194/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_194/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_194/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_194/BiasAdd/ReadVariableOp*^while/lstm_cell_194/MatMul/ReadVariableOp,^while/lstm_cell_194/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_194_biasadd_readvariableop_resource5while_lstm_cell_194_biasadd_readvariableop_resource_0"n
4while_lstm_cell_194_matmul_1_readvariableop_resource6while_lstm_cell_194_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_194_matmul_readvariableop_resource4while_lstm_cell_194_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_194/BiasAdd/ReadVariableOp*while/lstm_cell_194/BiasAdd/ReadVariableOp2V
)while/lstm_cell_194/MatMul/ReadVariableOp)while/lstm_cell_194/MatMul/ReadVariableOp2Z
+while/lstm_cell_194/MatMul_1/ReadVariableOp+while/lstm_cell_194/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_lstm_cell_192_layer_call_fn_1178032

inputs
states_0
states_1
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1173047o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�
�
while_cond_1173760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1173760___redundant_placeholder05
1while_while_cond_1173760___redundant_placeholder15
1while_while_cond_1173760___redundant_placeholder25
1while_while_cond_1173760___redundant_placeholder3
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
@: : : : :���������
:���������
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�	
�
E__inference_dense_28_layer_call_and_return_conditional_losses_1174497

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_193_layer_call_fn_1178147

inputs
states_0
states_1
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1173543o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�
�
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1178309

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�#
�
while_body_1173761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_194_1173785_0:2(/
while_lstm_cell_194_1173787_0:
(+
while_lstm_cell_194_1173789_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_194_1173785:2(-
while_lstm_cell_194_1173787:
()
while_lstm_cell_194_1173789:(��+while/lstm_cell_194/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_194/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_194_1173785_0while_lstm_cell_194_1173787_0while_lstm_cell_194_1173789_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1173747�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_194/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_194/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_194/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_194/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_194_1173785while_lstm_cell_194_1173785_0"<
while_lstm_cell_194_1173787while_lstm_cell_194_1173787_0"<
while_lstm_cell_194_1173789while_lstm_cell_194_1173789_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_194/StatefulPartitionedCall+while/lstm_cell_194/StatefulPartitionedCall: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�R
�
(sequential_28_lstm_85_while_body_1172751H
Dsequential_28_lstm_85_while_sequential_28_lstm_85_while_loop_counterN
Jsequential_28_lstm_85_while_sequential_28_lstm_85_while_maximum_iterations+
'sequential_28_lstm_85_while_placeholder-
)sequential_28_lstm_85_while_placeholder_1-
)sequential_28_lstm_85_while_placeholder_2-
)sequential_28_lstm_85_while_placeholder_3G
Csequential_28_lstm_85_while_sequential_28_lstm_85_strided_slice_1_0�
sequential_28_lstm_85_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_85_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_28_lstm_85_while_lstm_cell_193_matmul_readvariableop_resource_0:	d�_
Lsequential_28_lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource_0:	2�Z
Ksequential_28_lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource_0:	�(
$sequential_28_lstm_85_while_identity*
&sequential_28_lstm_85_while_identity_1*
&sequential_28_lstm_85_while_identity_2*
&sequential_28_lstm_85_while_identity_3*
&sequential_28_lstm_85_while_identity_4*
&sequential_28_lstm_85_while_identity_5E
Asequential_28_lstm_85_while_sequential_28_lstm_85_strided_slice_1�
}sequential_28_lstm_85_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_85_tensorarrayunstack_tensorlistfromtensor[
Hsequential_28_lstm_85_while_lstm_cell_193_matmul_readvariableop_resource:	d�]
Jsequential_28_lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource:	2�X
Isequential_28_lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource:	���@sequential_28/lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp�?sequential_28/lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp�Asequential_28/lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp�
Msequential_28/lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_28/lstm_85/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_28_lstm_85_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_85_tensorarrayunstack_tensorlistfromtensor_0'sequential_28_lstm_85_while_placeholderVsequential_28/lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
?sequential_28/lstm_85/while/lstm_cell_193/MatMul/ReadVariableOpReadVariableOpJsequential_28_lstm_85_while_lstm_cell_193_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
0sequential_28/lstm_85/while/lstm_cell_193/MatMulMatMulFsequential_28/lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_28/lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Asequential_28/lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOpLsequential_28_lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
2sequential_28/lstm_85/while/lstm_cell_193/MatMul_1MatMul)sequential_28_lstm_85_while_placeholder_2Isequential_28/lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_28/lstm_85/while/lstm_cell_193/addAddV2:sequential_28/lstm_85/while/lstm_cell_193/MatMul:product:0<sequential_28/lstm_85/while/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@sequential_28/lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOpKsequential_28_lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
1sequential_28/lstm_85/while/lstm_cell_193/BiasAddBiasAdd1sequential_28/lstm_85/while/lstm_cell_193/add:z:0Hsequential_28/lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9sequential_28/lstm_85/while/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_28/lstm_85/while/lstm_cell_193/splitSplitBsequential_28/lstm_85/while/lstm_cell_193/split/split_dim:output:0:sequential_28/lstm_85/while/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
1sequential_28/lstm_85/while/lstm_cell_193/SigmoidSigmoid8sequential_28/lstm_85/while/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2�
3sequential_28/lstm_85/while/lstm_cell_193/Sigmoid_1Sigmoid8sequential_28/lstm_85/while/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
-sequential_28/lstm_85/while/lstm_cell_193/mulMul7sequential_28/lstm_85/while/lstm_cell_193/Sigmoid_1:y:0)sequential_28_lstm_85_while_placeholder_3*
T0*'
_output_shapes
:���������2�
.sequential_28/lstm_85/while/lstm_cell_193/ReluRelu8sequential_28/lstm_85/while/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
/sequential_28/lstm_85/while/lstm_cell_193/mul_1Mul5sequential_28/lstm_85/while/lstm_cell_193/Sigmoid:y:0<sequential_28/lstm_85/while/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
/sequential_28/lstm_85/while/lstm_cell_193/add_1AddV21sequential_28/lstm_85/while/lstm_cell_193/mul:z:03sequential_28/lstm_85/while/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2�
3sequential_28/lstm_85/while/lstm_cell_193/Sigmoid_2Sigmoid8sequential_28/lstm_85/while/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2�
0sequential_28/lstm_85/while/lstm_cell_193/Relu_1Relu3sequential_28/lstm_85/while/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_28/lstm_85/while/lstm_cell_193/mul_2Mul7sequential_28/lstm_85/while/lstm_cell_193/Sigmoid_2:y:0>sequential_28/lstm_85/while/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
@sequential_28/lstm_85/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_28_lstm_85_while_placeholder_1'sequential_28_lstm_85_while_placeholder3sequential_28/lstm_85/while/lstm_cell_193/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_28/lstm_85/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_28/lstm_85/while/addAddV2'sequential_28_lstm_85_while_placeholder*sequential_28/lstm_85/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_28/lstm_85/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_28/lstm_85/while/add_1AddV2Dsequential_28_lstm_85_while_sequential_28_lstm_85_while_loop_counter,sequential_28/lstm_85/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_28/lstm_85/while/IdentityIdentity%sequential_28/lstm_85/while/add_1:z:0!^sequential_28/lstm_85/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_85/while/Identity_1IdentityJsequential_28_lstm_85_while_sequential_28_lstm_85_while_maximum_iterations!^sequential_28/lstm_85/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_85/while/Identity_2Identity#sequential_28/lstm_85/while/add:z:0!^sequential_28/lstm_85/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_85/while/Identity_3IdentityPsequential_28/lstm_85/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_28/lstm_85/while/NoOp*
T0*
_output_shapes
: �
&sequential_28/lstm_85/while/Identity_4Identity3sequential_28/lstm_85/while/lstm_cell_193/mul_2:z:0!^sequential_28/lstm_85/while/NoOp*
T0*'
_output_shapes
:���������2�
&sequential_28/lstm_85/while/Identity_5Identity3sequential_28/lstm_85/while/lstm_cell_193/add_1:z:0!^sequential_28/lstm_85/while/NoOp*
T0*'
_output_shapes
:���������2�
 sequential_28/lstm_85/while/NoOpNoOpA^sequential_28/lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp@^sequential_28/lstm_85/while/lstm_cell_193/MatMul/ReadVariableOpB^sequential_28/lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_28_lstm_85_while_identity-sequential_28/lstm_85/while/Identity:output:0"Y
&sequential_28_lstm_85_while_identity_1/sequential_28/lstm_85/while/Identity_1:output:0"Y
&sequential_28_lstm_85_while_identity_2/sequential_28/lstm_85/while/Identity_2:output:0"Y
&sequential_28_lstm_85_while_identity_3/sequential_28/lstm_85/while/Identity_3:output:0"Y
&sequential_28_lstm_85_while_identity_4/sequential_28/lstm_85/while/Identity_4:output:0"Y
&sequential_28_lstm_85_while_identity_5/sequential_28/lstm_85/while/Identity_5:output:0"�
Isequential_28_lstm_85_while_lstm_cell_193_biasadd_readvariableop_resourceKsequential_28_lstm_85_while_lstm_cell_193_biasadd_readvariableop_resource_0"�
Jsequential_28_lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resourceLsequential_28_lstm_85_while_lstm_cell_193_matmul_1_readvariableop_resource_0"�
Hsequential_28_lstm_85_while_lstm_cell_193_matmul_readvariableop_resourceJsequential_28_lstm_85_while_lstm_cell_193_matmul_readvariableop_resource_0"�
Asequential_28_lstm_85_while_sequential_28_lstm_85_strided_slice_1Csequential_28_lstm_85_while_sequential_28_lstm_85_strided_slice_1_0"�
}sequential_28_lstm_85_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_85_tensorarrayunstack_tensorlistfromtensorsequential_28_lstm_85_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_85_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
@sequential_28/lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp@sequential_28/lstm_85/while/lstm_cell_193/BiasAdd/ReadVariableOp2�
?sequential_28/lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp?sequential_28/lstm_85/while/lstm_cell_193/MatMul/ReadVariableOp2�
Asequential_28/lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOpAsequential_28/lstm_85/while/lstm_cell_193/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�K
�
D__inference_lstm_85_layer_call_and_return_conditional_losses_1176951
inputs_0?
,lstm_cell_193_matmul_readvariableop_resource:	d�A
.lstm_cell_193_matmul_1_readvariableop_resource:	2�<
-lstm_cell_193_biasadd_readvariableop_resource:	�
identity��$lstm_cell_193/BiasAdd/ReadVariableOp�#lstm_cell_193/MatMul/ReadVariableOp�%lstm_cell_193/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
:���������2R
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
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_193/MatMul/ReadVariableOpReadVariableOp,lstm_cell_193_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_193/MatMulMatMulstrided_slice_2:output:0+lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_193_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_193/MatMul_1MatMulzeros:output:0-lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_193/addAddV2lstm_cell_193/MatMul:product:0 lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_193_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_193/BiasAddBiasAddlstm_cell_193/add:z:0,lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_193/splitSplit&lstm_cell_193/split/split_dim:output:0lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_193/SigmoidSigmoidlstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_1Sigmoidlstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_193/mulMullstm_cell_193/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_193/ReluRelulstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_1Mullstm_cell_193/Sigmoid:y:0 lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_193/add_1AddV2lstm_cell_193/mul:z:0lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_193/Sigmoid_2Sigmoidlstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_193/Relu_1Relulstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_193/mul_2Mullstm_cell_193/Sigmoid_2:y:0"lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_193_matmul_readvariableop_resource.lstm_cell_193_matmul_1_readvariableop_resource-lstm_cell_193_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1176867*
condR
while_cond_1176866*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2�
NoOpNoOp%^lstm_cell_193/BiasAdd/ReadVariableOp$^lstm_cell_193/MatMul/ReadVariableOp&^lstm_cell_193/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_193/BiasAdd/ReadVariableOp$lstm_cell_193/BiasAdd/ReadVariableOp2J
#lstm_cell_193/MatMul/ReadVariableOp#lstm_cell_193/MatMul/ReadVariableOp2N
%lstm_cell_193/MatMul_1/ReadVariableOp%lstm_cell_193/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
while_cond_1177152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1177152___redundant_placeholder05
1while_while_cond_1177152___redundant_placeholder15
1while_while_cond_1177152___redundant_placeholder25
1while_while_cond_1177152___redundant_placeholder3
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
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�B
�

lstm_84_while_body_1175780,
(lstm_84_while_lstm_84_while_loop_counter2
.lstm_84_while_lstm_84_while_maximum_iterations
lstm_84_while_placeholder
lstm_84_while_placeholder_1
lstm_84_while_placeholder_2
lstm_84_while_placeholder_3+
'lstm_84_while_lstm_84_strided_slice_1_0g
clstm_84_while_tensorarrayv2read_tensorlistgetitem_lstm_84_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_84_while_lstm_cell_192_matmul_readvariableop_resource_0:	�Q
>lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource_0:	d�L
=lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource_0:	�
lstm_84_while_identity
lstm_84_while_identity_1
lstm_84_while_identity_2
lstm_84_while_identity_3
lstm_84_while_identity_4
lstm_84_while_identity_5)
%lstm_84_while_lstm_84_strided_slice_1e
alstm_84_while_tensorarrayv2read_tensorlistgetitem_lstm_84_tensorarrayunstack_tensorlistfromtensorM
:lstm_84_while_lstm_cell_192_matmul_readvariableop_resource:	�O
<lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource:	d�J
;lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource:	���2lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp�1lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp�3lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp�
?lstm_84/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_84/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_84_while_tensorarrayv2read_tensorlistgetitem_lstm_84_tensorarrayunstack_tensorlistfromtensor_0lstm_84_while_placeholderHlstm_84/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1lstm_84/while/lstm_cell_192/MatMul/ReadVariableOpReadVariableOp<lstm_84_while_lstm_cell_192_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"lstm_84/while/lstm_cell_192/MatMulMatMul8lstm_84/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp>lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
$lstm_84/while/lstm_cell_192/MatMul_1MatMullstm_84_while_placeholder_2;lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_84/while/lstm_cell_192/addAddV2,lstm_84/while/lstm_cell_192/MatMul:product:0.lstm_84/while/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp=lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_84/while/lstm_cell_192/BiasAddBiasAdd#lstm_84/while/lstm_cell_192/add:z:0:lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_84/while/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_84/while/lstm_cell_192/splitSplit4lstm_84/while/lstm_cell_192/split/split_dim:output:0,lstm_84/while/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
#lstm_84/while/lstm_cell_192/SigmoidSigmoid*lstm_84/while/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d�
%lstm_84/while/lstm_cell_192/Sigmoid_1Sigmoid*lstm_84/while/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_84/while/lstm_cell_192/mulMul)lstm_84/while/lstm_cell_192/Sigmoid_1:y:0lstm_84_while_placeholder_3*
T0*'
_output_shapes
:���������d�
 lstm_84/while/lstm_cell_192/ReluRelu*lstm_84/while/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_84/while/lstm_cell_192/mul_1Mul'lstm_84/while/lstm_cell_192/Sigmoid:y:0.lstm_84/while/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
!lstm_84/while/lstm_cell_192/add_1AddV2#lstm_84/while/lstm_cell_192/mul:z:0%lstm_84/while/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d�
%lstm_84/while/lstm_cell_192/Sigmoid_2Sigmoid*lstm_84/while/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������d�
"lstm_84/while/lstm_cell_192/Relu_1Relu%lstm_84/while/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_84/while/lstm_cell_192/mul_2Mul)lstm_84/while/lstm_cell_192/Sigmoid_2:y:00lstm_84/while/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
2lstm_84/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_84_while_placeholder_1lstm_84_while_placeholder%lstm_84/while/lstm_cell_192/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_84/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_84/while/addAddV2lstm_84_while_placeholderlstm_84/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_84/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_84/while/add_1AddV2(lstm_84_while_lstm_84_while_loop_counterlstm_84/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_84/while/IdentityIdentitylstm_84/while/add_1:z:0^lstm_84/while/NoOp*
T0*
_output_shapes
: �
lstm_84/while/Identity_1Identity.lstm_84_while_lstm_84_while_maximum_iterations^lstm_84/while/NoOp*
T0*
_output_shapes
: q
lstm_84/while/Identity_2Identitylstm_84/while/add:z:0^lstm_84/while/NoOp*
T0*
_output_shapes
: �
lstm_84/while/Identity_3IdentityBlstm_84/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_84/while/NoOp*
T0*
_output_shapes
: �
lstm_84/while/Identity_4Identity%lstm_84/while/lstm_cell_192/mul_2:z:0^lstm_84/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_84/while/Identity_5Identity%lstm_84/while/lstm_cell_192/add_1:z:0^lstm_84/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_84/while/NoOpNoOp3^lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp2^lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp4^lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_84_while_identitylstm_84/while/Identity:output:0"=
lstm_84_while_identity_1!lstm_84/while/Identity_1:output:0"=
lstm_84_while_identity_2!lstm_84/while/Identity_2:output:0"=
lstm_84_while_identity_3!lstm_84/while/Identity_3:output:0"=
lstm_84_while_identity_4!lstm_84/while/Identity_4:output:0"=
lstm_84_while_identity_5!lstm_84/while/Identity_5:output:0"P
%lstm_84_while_lstm_84_strided_slice_1'lstm_84_while_lstm_84_strided_slice_1_0"|
;lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource=lstm_84_while_lstm_cell_192_biasadd_readvariableop_resource_0"~
<lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource>lstm_84_while_lstm_cell_192_matmul_1_readvariableop_resource_0"z
:lstm_84_while_lstm_cell_192_matmul_readvariableop_resource<lstm_84_while_lstm_cell_192_matmul_readvariableop_resource_0"�
alstm_84_while_tensorarrayv2read_tensorlistgetitem_lstm_84_tensorarrayunstack_tensorlistfromtensorclstm_84_while_tensorarrayv2read_tensorlistgetitem_lstm_84_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp2lstm_84/while/lstm_cell_192/BiasAdd/ReadVariableOp2f
1lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp1lstm_84/while/lstm_cell_192/MatMul/ReadVariableOp2j
3lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp3lstm_84/while/lstm_cell_192/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_1176537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_192_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_192_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_192_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_192_matmul_readvariableop_resource:	�G
4while_lstm_cell_192_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_192_biasadd_readvariableop_resource:	���*while/lstm_cell_192/BiasAdd/ReadVariableOp�)while/lstm_cell_192/MatMul/ReadVariableOp�+while/lstm_cell_192/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_192/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_192_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_192/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_192_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_192/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_192/addAddV2$while/lstm_cell_192/MatMul:product:0&while/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_192_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_192/BiasAddBiasAddwhile/lstm_cell_192/add:z:02while/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_192/splitSplit,while/lstm_cell_192/split/split_dim:output:0$while/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_192/SigmoidSigmoid"while/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_1Sigmoid"while/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mulMul!while/lstm_cell_192/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_192/ReluRelu"while/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_1Mulwhile/lstm_cell_192/Sigmoid:y:0&while/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/add_1AddV2while/lstm_cell_192/mul:z:0while/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_192/Sigmoid_2Sigmoid"while/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_192/Relu_1Reluwhile/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_192/mul_2Mul!while/lstm_cell_192/Sigmoid_2:y:0(while/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_192/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_192/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_192/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_192/BiasAdd/ReadVariableOp*^while/lstm_cell_192/MatMul/ReadVariableOp,^while/lstm_cell_192/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_192_biasadd_readvariableop_resource5while_lstm_cell_192_biasadd_readvariableop_resource_0"n
4while_lstm_cell_192_matmul_1_readvariableop_resource6while_lstm_cell_192_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_192_matmul_readvariableop_resource4while_lstm_cell_192_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_192/BiasAdd/ReadVariableOp*while/lstm_cell_192/BiasAdd/ReadVariableOp2V
)while/lstm_cell_192/MatMul/ReadVariableOp)while/lstm_cell_192/MatMul/ReadVariableOp2Z
+while/lstm_cell_192/MatMul_1/ReadVariableOp+while/lstm_cell_192/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
ݳ
�
"__inference__wrapped_model_1172980
lstm_84_inputU
Bsequential_28_lstm_84_lstm_cell_192_matmul_readvariableop_resource:	�W
Dsequential_28_lstm_84_lstm_cell_192_matmul_1_readvariableop_resource:	d�R
Csequential_28_lstm_84_lstm_cell_192_biasadd_readvariableop_resource:	�U
Bsequential_28_lstm_85_lstm_cell_193_matmul_readvariableop_resource:	d�W
Dsequential_28_lstm_85_lstm_cell_193_matmul_1_readvariableop_resource:	2�R
Csequential_28_lstm_85_lstm_cell_193_biasadd_readvariableop_resource:	�T
Bsequential_28_lstm_86_lstm_cell_194_matmul_readvariableop_resource:2(V
Dsequential_28_lstm_86_lstm_cell_194_matmul_1_readvariableop_resource:
(Q
Csequential_28_lstm_86_lstm_cell_194_biasadd_readvariableop_resource:(G
5sequential_28_dense_28_matmul_readvariableop_resource:
D
6sequential_28_dense_28_biasadd_readvariableop_resource:
identity��-sequential_28/dense_28/BiasAdd/ReadVariableOp�,sequential_28/dense_28/MatMul/ReadVariableOp�:sequential_28/lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp�9sequential_28/lstm_84/lstm_cell_192/MatMul/ReadVariableOp�;sequential_28/lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp�sequential_28/lstm_84/while�:sequential_28/lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp�9sequential_28/lstm_85/lstm_cell_193/MatMul/ReadVariableOp�;sequential_28/lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp�sequential_28/lstm_85/while�:sequential_28/lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp�9sequential_28/lstm_86/lstm_cell_194/MatMul/ReadVariableOp�;sequential_28/lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp�sequential_28/lstm_86/whileX
sequential_28/lstm_84/ShapeShapelstm_84_input*
T0*
_output_shapes
:s
)sequential_28/lstm_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_28/lstm_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_28/lstm_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_28/lstm_84/strided_sliceStridedSlice$sequential_28/lstm_84/Shape:output:02sequential_28/lstm_84/strided_slice/stack:output:04sequential_28/lstm_84/strided_slice/stack_1:output:04sequential_28/lstm_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_28/lstm_84/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
"sequential_28/lstm_84/zeros/packedPack,sequential_28/lstm_84/strided_slice:output:0-sequential_28/lstm_84/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_28/lstm_84/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_28/lstm_84/zerosFill+sequential_28/lstm_84/zeros/packed:output:0*sequential_28/lstm_84/zeros/Const:output:0*
T0*'
_output_shapes
:���������dh
&sequential_28/lstm_84/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_28/lstm_84/zeros_1/packedPack,sequential_28/lstm_84/strided_slice:output:0/sequential_28/lstm_84/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_28/lstm_84/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_28/lstm_84/zeros_1Fill-sequential_28/lstm_84/zeros_1/packed:output:0,sequential_28/lstm_84/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dy
$sequential_28/lstm_84/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_28/lstm_84/transpose	Transposelstm_84_input-sequential_28/lstm_84/transpose/perm:output:0*
T0*+
_output_shapes
:���������p
sequential_28/lstm_84/Shape_1Shape#sequential_28/lstm_84/transpose:y:0*
T0*
_output_shapes
:u
+sequential_28/lstm_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_28/lstm_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_28/lstm_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_28/lstm_84/strided_slice_1StridedSlice&sequential_28/lstm_84/Shape_1:output:04sequential_28/lstm_84/strided_slice_1/stack:output:06sequential_28/lstm_84/strided_slice_1/stack_1:output:06sequential_28/lstm_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_28/lstm_84/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_28/lstm_84/TensorArrayV2TensorListReserve:sequential_28/lstm_84/TensorArrayV2/element_shape:output:0.sequential_28/lstm_84/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_28/lstm_84/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
=sequential_28/lstm_84/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_28/lstm_84/transpose:y:0Tsequential_28/lstm_84/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_28/lstm_84/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_28/lstm_84/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_28/lstm_84/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_28/lstm_84/strided_slice_2StridedSlice#sequential_28/lstm_84/transpose:y:04sequential_28/lstm_84/strided_slice_2/stack:output:06sequential_28/lstm_84/strided_slice_2/stack_1:output:06sequential_28/lstm_84/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
9sequential_28/lstm_84/lstm_cell_192/MatMul/ReadVariableOpReadVariableOpBsequential_28_lstm_84_lstm_cell_192_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*sequential_28/lstm_84/lstm_cell_192/MatMulMatMul.sequential_28/lstm_84/strided_slice_2:output:0Asequential_28/lstm_84/lstm_cell_192/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;sequential_28/lstm_84/lstm_cell_192/MatMul_1/ReadVariableOpReadVariableOpDsequential_28_lstm_84_lstm_cell_192_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_28/lstm_84/lstm_cell_192/MatMul_1MatMul$sequential_28/lstm_84/zeros:output:0Csequential_28/lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_28/lstm_84/lstm_cell_192/addAddV24sequential_28/lstm_84/lstm_cell_192/MatMul:product:06sequential_28/lstm_84/lstm_cell_192/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:sequential_28/lstm_84/lstm_cell_192/BiasAdd/ReadVariableOpReadVariableOpCsequential_28_lstm_84_lstm_cell_192_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+sequential_28/lstm_84/lstm_cell_192/BiasAddBiasAdd+sequential_28/lstm_84/lstm_cell_192/add:z:0Bsequential_28/lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3sequential_28/lstm_84/lstm_cell_192/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_28/lstm_84/lstm_cell_192/splitSplit<sequential_28/lstm_84/lstm_cell_192/split/split_dim:output:04sequential_28/lstm_84/lstm_cell_192/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
+sequential_28/lstm_84/lstm_cell_192/SigmoidSigmoid2sequential_28/lstm_84/lstm_cell_192/split:output:0*
T0*'
_output_shapes
:���������d�
-sequential_28/lstm_84/lstm_cell_192/Sigmoid_1Sigmoid2sequential_28/lstm_84/lstm_cell_192/split:output:1*
T0*'
_output_shapes
:���������d�
'sequential_28/lstm_84/lstm_cell_192/mulMul1sequential_28/lstm_84/lstm_cell_192/Sigmoid_1:y:0&sequential_28/lstm_84/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
(sequential_28/lstm_84/lstm_cell_192/ReluRelu2sequential_28/lstm_84/lstm_cell_192/split:output:2*
T0*'
_output_shapes
:���������d�
)sequential_28/lstm_84/lstm_cell_192/mul_1Mul/sequential_28/lstm_84/lstm_cell_192/Sigmoid:y:06sequential_28/lstm_84/lstm_cell_192/Relu:activations:0*
T0*'
_output_shapes
:���������d�
)sequential_28/lstm_84/lstm_cell_192/add_1AddV2+sequential_28/lstm_84/lstm_cell_192/mul:z:0-sequential_28/lstm_84/lstm_cell_192/mul_1:z:0*
T0*'
_output_shapes
:���������d�
-sequential_28/lstm_84/lstm_cell_192/Sigmoid_2Sigmoid2sequential_28/lstm_84/lstm_cell_192/split:output:3*
T0*'
_output_shapes
:���������d�
*sequential_28/lstm_84/lstm_cell_192/Relu_1Relu-sequential_28/lstm_84/lstm_cell_192/add_1:z:0*
T0*'
_output_shapes
:���������d�
)sequential_28/lstm_84/lstm_cell_192/mul_2Mul1sequential_28/lstm_84/lstm_cell_192/Sigmoid_2:y:08sequential_28/lstm_84/lstm_cell_192/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3sequential_28/lstm_84/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
%sequential_28/lstm_84/TensorArrayV2_1TensorListReserve<sequential_28/lstm_84/TensorArrayV2_1/element_shape:output:0.sequential_28/lstm_84/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_28/lstm_84/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_28/lstm_84/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_28/lstm_84/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_28/lstm_84/whileWhile1sequential_28/lstm_84/while/loop_counter:output:07sequential_28/lstm_84/while/maximum_iterations:output:0#sequential_28/lstm_84/time:output:0.sequential_28/lstm_84/TensorArrayV2_1:handle:0$sequential_28/lstm_84/zeros:output:0&sequential_28/lstm_84/zeros_1:output:0.sequential_28/lstm_84/strided_slice_1:output:0Msequential_28/lstm_84/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_28_lstm_84_lstm_cell_192_matmul_readvariableop_resourceDsequential_28_lstm_84_lstm_cell_192_matmul_1_readvariableop_resourceCsequential_28_lstm_84_lstm_cell_192_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_28_lstm_84_while_body_1172612*4
cond,R*
(sequential_28_lstm_84_while_cond_1172611*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Fsequential_28/lstm_84/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
8sequential_28/lstm_84/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_28/lstm_84/while:output:3Osequential_28/lstm_84/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0~
+sequential_28/lstm_84/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_28/lstm_84/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_28/lstm_84/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_28/lstm_84/strided_slice_3StridedSliceAsequential_28/lstm_84/TensorArrayV2Stack/TensorListStack:tensor:04sequential_28/lstm_84/strided_slice_3/stack:output:06sequential_28/lstm_84/strided_slice_3/stack_1:output:06sequential_28/lstm_84/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask{
&sequential_28/lstm_84/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_28/lstm_84/transpose_1	TransposeAsequential_28/lstm_84/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_28/lstm_84/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dq
sequential_28/lstm_84/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_28/lstm_85/ShapeShape%sequential_28/lstm_84/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_28/lstm_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_28/lstm_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_28/lstm_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_28/lstm_85/strided_sliceStridedSlice$sequential_28/lstm_85/Shape:output:02sequential_28/lstm_85/strided_slice/stack:output:04sequential_28/lstm_85/strided_slice/stack_1:output:04sequential_28/lstm_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_28/lstm_85/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
"sequential_28/lstm_85/zeros/packedPack,sequential_28/lstm_85/strided_slice:output:0-sequential_28/lstm_85/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_28/lstm_85/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_28/lstm_85/zerosFill+sequential_28/lstm_85/zeros/packed:output:0*sequential_28/lstm_85/zeros/Const:output:0*
T0*'
_output_shapes
:���������2h
&sequential_28/lstm_85/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_28/lstm_85/zeros_1/packedPack,sequential_28/lstm_85/strided_slice:output:0/sequential_28/lstm_85/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_28/lstm_85/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_28/lstm_85/zeros_1Fill-sequential_28/lstm_85/zeros_1/packed:output:0,sequential_28/lstm_85/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2y
$sequential_28/lstm_85/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_28/lstm_85/transpose	Transpose%sequential_28/lstm_84/transpose_1:y:0-sequential_28/lstm_85/transpose/perm:output:0*
T0*+
_output_shapes
:���������dp
sequential_28/lstm_85/Shape_1Shape#sequential_28/lstm_85/transpose:y:0*
T0*
_output_shapes
:u
+sequential_28/lstm_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_28/lstm_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_28/lstm_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_28/lstm_85/strided_slice_1StridedSlice&sequential_28/lstm_85/Shape_1:output:04sequential_28/lstm_85/strided_slice_1/stack:output:06sequential_28/lstm_85/strided_slice_1/stack_1:output:06sequential_28/lstm_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_28/lstm_85/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_28/lstm_85/TensorArrayV2TensorListReserve:sequential_28/lstm_85/TensorArrayV2/element_shape:output:0.sequential_28/lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_28/lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
=sequential_28/lstm_85/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_28/lstm_85/transpose:y:0Tsequential_28/lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_28/lstm_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_28/lstm_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_28/lstm_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_28/lstm_85/strided_slice_2StridedSlice#sequential_28/lstm_85/transpose:y:04sequential_28/lstm_85/strided_slice_2/stack:output:06sequential_28/lstm_85/strided_slice_2/stack_1:output:06sequential_28/lstm_85/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
9sequential_28/lstm_85/lstm_cell_193/MatMul/ReadVariableOpReadVariableOpBsequential_28_lstm_85_lstm_cell_193_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
*sequential_28/lstm_85/lstm_cell_193/MatMulMatMul.sequential_28/lstm_85/strided_slice_2:output:0Asequential_28/lstm_85/lstm_cell_193/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;sequential_28/lstm_85/lstm_cell_193/MatMul_1/ReadVariableOpReadVariableOpDsequential_28_lstm_85_lstm_cell_193_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
,sequential_28/lstm_85/lstm_cell_193/MatMul_1MatMul$sequential_28/lstm_85/zeros:output:0Csequential_28/lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_28/lstm_85/lstm_cell_193/addAddV24sequential_28/lstm_85/lstm_cell_193/MatMul:product:06sequential_28/lstm_85/lstm_cell_193/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:sequential_28/lstm_85/lstm_cell_193/BiasAdd/ReadVariableOpReadVariableOpCsequential_28_lstm_85_lstm_cell_193_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+sequential_28/lstm_85/lstm_cell_193/BiasAddBiasAdd+sequential_28/lstm_85/lstm_cell_193/add:z:0Bsequential_28/lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3sequential_28/lstm_85/lstm_cell_193/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_28/lstm_85/lstm_cell_193/splitSplit<sequential_28/lstm_85/lstm_cell_193/split/split_dim:output:04sequential_28/lstm_85/lstm_cell_193/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
+sequential_28/lstm_85/lstm_cell_193/SigmoidSigmoid2sequential_28/lstm_85/lstm_cell_193/split:output:0*
T0*'
_output_shapes
:���������2�
-sequential_28/lstm_85/lstm_cell_193/Sigmoid_1Sigmoid2sequential_28/lstm_85/lstm_cell_193/split:output:1*
T0*'
_output_shapes
:���������2�
'sequential_28/lstm_85/lstm_cell_193/mulMul1sequential_28/lstm_85/lstm_cell_193/Sigmoid_1:y:0&sequential_28/lstm_85/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
(sequential_28/lstm_85/lstm_cell_193/ReluRelu2sequential_28/lstm_85/lstm_cell_193/split:output:2*
T0*'
_output_shapes
:���������2�
)sequential_28/lstm_85/lstm_cell_193/mul_1Mul/sequential_28/lstm_85/lstm_cell_193/Sigmoid:y:06sequential_28/lstm_85/lstm_cell_193/Relu:activations:0*
T0*'
_output_shapes
:���������2�
)sequential_28/lstm_85/lstm_cell_193/add_1AddV2+sequential_28/lstm_85/lstm_cell_193/mul:z:0-sequential_28/lstm_85/lstm_cell_193/mul_1:z:0*
T0*'
_output_shapes
:���������2�
-sequential_28/lstm_85/lstm_cell_193/Sigmoid_2Sigmoid2sequential_28/lstm_85/lstm_cell_193/split:output:3*
T0*'
_output_shapes
:���������2�
*sequential_28/lstm_85/lstm_cell_193/Relu_1Relu-sequential_28/lstm_85/lstm_cell_193/add_1:z:0*
T0*'
_output_shapes
:���������2�
)sequential_28/lstm_85/lstm_cell_193/mul_2Mul1sequential_28/lstm_85/lstm_cell_193/Sigmoid_2:y:08sequential_28/lstm_85/lstm_cell_193/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3sequential_28/lstm_85/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
%sequential_28/lstm_85/TensorArrayV2_1TensorListReserve<sequential_28/lstm_85/TensorArrayV2_1/element_shape:output:0.sequential_28/lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_28/lstm_85/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_28/lstm_85/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_28/lstm_85/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_28/lstm_85/whileWhile1sequential_28/lstm_85/while/loop_counter:output:07sequential_28/lstm_85/while/maximum_iterations:output:0#sequential_28/lstm_85/time:output:0.sequential_28/lstm_85/TensorArrayV2_1:handle:0$sequential_28/lstm_85/zeros:output:0&sequential_28/lstm_85/zeros_1:output:0.sequential_28/lstm_85/strided_slice_1:output:0Msequential_28/lstm_85/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_28_lstm_85_lstm_cell_193_matmul_readvariableop_resourceDsequential_28_lstm_85_lstm_cell_193_matmul_1_readvariableop_resourceCsequential_28_lstm_85_lstm_cell_193_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_28_lstm_85_while_body_1172751*4
cond,R*
(sequential_28_lstm_85_while_cond_1172750*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Fsequential_28/lstm_85/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
8sequential_28/lstm_85/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_28/lstm_85/while:output:3Osequential_28/lstm_85/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0~
+sequential_28/lstm_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_28/lstm_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_28/lstm_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_28/lstm_85/strided_slice_3StridedSliceAsequential_28/lstm_85/TensorArrayV2Stack/TensorListStack:tensor:04sequential_28/lstm_85/strided_slice_3/stack:output:06sequential_28/lstm_85/strided_slice_3/stack_1:output:06sequential_28/lstm_85/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask{
&sequential_28/lstm_85/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_28/lstm_85/transpose_1	TransposeAsequential_28/lstm_85/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_28/lstm_85/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2q
sequential_28/lstm_85/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_28/lstm_86/ShapeShape%sequential_28/lstm_85/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_28/lstm_86/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_28/lstm_86/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_28/lstm_86/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_28/lstm_86/strided_sliceStridedSlice$sequential_28/lstm_86/Shape:output:02sequential_28/lstm_86/strided_slice/stack:output:04sequential_28/lstm_86/strided_slice/stack_1:output:04sequential_28/lstm_86/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_28/lstm_86/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
"sequential_28/lstm_86/zeros/packedPack,sequential_28/lstm_86/strided_slice:output:0-sequential_28/lstm_86/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_28/lstm_86/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_28/lstm_86/zerosFill+sequential_28/lstm_86/zeros/packed:output:0*sequential_28/lstm_86/zeros/Const:output:0*
T0*'
_output_shapes
:���������
h
&sequential_28/lstm_86/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_28/lstm_86/zeros_1/packedPack,sequential_28/lstm_86/strided_slice:output:0/sequential_28/lstm_86/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_28/lstm_86/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_28/lstm_86/zeros_1Fill-sequential_28/lstm_86/zeros_1/packed:output:0,sequential_28/lstm_86/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
y
$sequential_28/lstm_86/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_28/lstm_86/transpose	Transpose%sequential_28/lstm_85/transpose_1:y:0-sequential_28/lstm_86/transpose/perm:output:0*
T0*+
_output_shapes
:���������2p
sequential_28/lstm_86/Shape_1Shape#sequential_28/lstm_86/transpose:y:0*
T0*
_output_shapes
:u
+sequential_28/lstm_86/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_28/lstm_86/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_28/lstm_86/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_28/lstm_86/strided_slice_1StridedSlice&sequential_28/lstm_86/Shape_1:output:04sequential_28/lstm_86/strided_slice_1/stack:output:06sequential_28/lstm_86/strided_slice_1/stack_1:output:06sequential_28/lstm_86/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_28/lstm_86/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_28/lstm_86/TensorArrayV2TensorListReserve:sequential_28/lstm_86/TensorArrayV2/element_shape:output:0.sequential_28/lstm_86/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_28/lstm_86/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
=sequential_28/lstm_86/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_28/lstm_86/transpose:y:0Tsequential_28/lstm_86/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_28/lstm_86/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_28/lstm_86/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_28/lstm_86/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_28/lstm_86/strided_slice_2StridedSlice#sequential_28/lstm_86/transpose:y:04sequential_28/lstm_86/strided_slice_2/stack:output:06sequential_28/lstm_86/strided_slice_2/stack_1:output:06sequential_28/lstm_86/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
9sequential_28/lstm_86/lstm_cell_194/MatMul/ReadVariableOpReadVariableOpBsequential_28_lstm_86_lstm_cell_194_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
*sequential_28/lstm_86/lstm_cell_194/MatMulMatMul.sequential_28/lstm_86/strided_slice_2:output:0Asequential_28/lstm_86/lstm_cell_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
;sequential_28/lstm_86/lstm_cell_194/MatMul_1/ReadVariableOpReadVariableOpDsequential_28_lstm_86_lstm_cell_194_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
,sequential_28/lstm_86/lstm_cell_194/MatMul_1MatMul$sequential_28/lstm_86/zeros:output:0Csequential_28/lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
'sequential_28/lstm_86/lstm_cell_194/addAddV24sequential_28/lstm_86/lstm_cell_194/MatMul:product:06sequential_28/lstm_86/lstm_cell_194/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
:sequential_28/lstm_86/lstm_cell_194/BiasAdd/ReadVariableOpReadVariableOpCsequential_28_lstm_86_lstm_cell_194_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
+sequential_28/lstm_86/lstm_cell_194/BiasAddBiasAdd+sequential_28/lstm_86/lstm_cell_194/add:z:0Bsequential_28/lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(u
3sequential_28/lstm_86/lstm_cell_194/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_28/lstm_86/lstm_cell_194/splitSplit<sequential_28/lstm_86/lstm_cell_194/split/split_dim:output:04sequential_28/lstm_86/lstm_cell_194/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
+sequential_28/lstm_86/lstm_cell_194/SigmoidSigmoid2sequential_28/lstm_86/lstm_cell_194/split:output:0*
T0*'
_output_shapes
:���������
�
-sequential_28/lstm_86/lstm_cell_194/Sigmoid_1Sigmoid2sequential_28/lstm_86/lstm_cell_194/split:output:1*
T0*'
_output_shapes
:���������
�
'sequential_28/lstm_86/lstm_cell_194/mulMul1sequential_28/lstm_86/lstm_cell_194/Sigmoid_1:y:0&sequential_28/lstm_86/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
(sequential_28/lstm_86/lstm_cell_194/ReluRelu2sequential_28/lstm_86/lstm_cell_194/split:output:2*
T0*'
_output_shapes
:���������
�
)sequential_28/lstm_86/lstm_cell_194/mul_1Mul/sequential_28/lstm_86/lstm_cell_194/Sigmoid:y:06sequential_28/lstm_86/lstm_cell_194/Relu:activations:0*
T0*'
_output_shapes
:���������
�
)sequential_28/lstm_86/lstm_cell_194/add_1AddV2+sequential_28/lstm_86/lstm_cell_194/mul:z:0-sequential_28/lstm_86/lstm_cell_194/mul_1:z:0*
T0*'
_output_shapes
:���������
�
-sequential_28/lstm_86/lstm_cell_194/Sigmoid_2Sigmoid2sequential_28/lstm_86/lstm_cell_194/split:output:3*
T0*'
_output_shapes
:���������
�
*sequential_28/lstm_86/lstm_cell_194/Relu_1Relu-sequential_28/lstm_86/lstm_cell_194/add_1:z:0*
T0*'
_output_shapes
:���������
�
)sequential_28/lstm_86/lstm_cell_194/mul_2Mul1sequential_28/lstm_86/lstm_cell_194/Sigmoid_2:y:08sequential_28/lstm_86/lstm_cell_194/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3sequential_28/lstm_86/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
%sequential_28/lstm_86/TensorArrayV2_1TensorListReserve<sequential_28/lstm_86/TensorArrayV2_1/element_shape:output:0.sequential_28/lstm_86/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_28/lstm_86/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_28/lstm_86/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_28/lstm_86/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_28/lstm_86/whileWhile1sequential_28/lstm_86/while/loop_counter:output:07sequential_28/lstm_86/while/maximum_iterations:output:0#sequential_28/lstm_86/time:output:0.sequential_28/lstm_86/TensorArrayV2_1:handle:0$sequential_28/lstm_86/zeros:output:0&sequential_28/lstm_86/zeros_1:output:0.sequential_28/lstm_86/strided_slice_1:output:0Msequential_28/lstm_86/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_28_lstm_86_lstm_cell_194_matmul_readvariableop_resourceDsequential_28_lstm_86_lstm_cell_194_matmul_1_readvariableop_resourceCsequential_28_lstm_86_lstm_cell_194_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_28_lstm_86_while_body_1172890*4
cond,R*
(sequential_28_lstm_86_while_cond_1172889*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Fsequential_28/lstm_86/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
8sequential_28/lstm_86/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_28/lstm_86/while:output:3Osequential_28/lstm_86/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0~
+sequential_28/lstm_86/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_28/lstm_86/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_28/lstm_86/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_28/lstm_86/strided_slice_3StridedSliceAsequential_28/lstm_86/TensorArrayV2Stack/TensorListStack:tensor:04sequential_28/lstm_86/strided_slice_3/stack:output:06sequential_28/lstm_86/strided_slice_3/stack_1:output:06sequential_28/lstm_86/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask{
&sequential_28/lstm_86/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_28/lstm_86/transpose_1	TransposeAsequential_28/lstm_86/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_28/lstm_86/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
q
sequential_28/lstm_86/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
,sequential_28/dense_28/MatMul/ReadVariableOpReadVariableOp5sequential_28_dense_28_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_28/dense_28/MatMulMatMul.sequential_28/lstm_86/strided_slice_3:output:04sequential_28/dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_28/dense_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_28_dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_28/dense_28/BiasAddBiasAdd'sequential_28/dense_28/MatMul:product:05sequential_28/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_28/dense_28/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_28/dense_28/BiasAdd/ReadVariableOp-^sequential_28/dense_28/MatMul/ReadVariableOp;^sequential_28/lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp:^sequential_28/lstm_84/lstm_cell_192/MatMul/ReadVariableOp<^sequential_28/lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp^sequential_28/lstm_84/while;^sequential_28/lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp:^sequential_28/lstm_85/lstm_cell_193/MatMul/ReadVariableOp<^sequential_28/lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp^sequential_28/lstm_85/while;^sequential_28/lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp:^sequential_28/lstm_86/lstm_cell_194/MatMul/ReadVariableOp<^sequential_28/lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp^sequential_28/lstm_86/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2^
-sequential_28/dense_28/BiasAdd/ReadVariableOp-sequential_28/dense_28/BiasAdd/ReadVariableOp2\
,sequential_28/dense_28/MatMul/ReadVariableOp,sequential_28/dense_28/MatMul/ReadVariableOp2x
:sequential_28/lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp:sequential_28/lstm_84/lstm_cell_192/BiasAdd/ReadVariableOp2v
9sequential_28/lstm_84/lstm_cell_192/MatMul/ReadVariableOp9sequential_28/lstm_84/lstm_cell_192/MatMul/ReadVariableOp2z
;sequential_28/lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp;sequential_28/lstm_84/lstm_cell_192/MatMul_1/ReadVariableOp2:
sequential_28/lstm_84/whilesequential_28/lstm_84/while2x
:sequential_28/lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp:sequential_28/lstm_85/lstm_cell_193/BiasAdd/ReadVariableOp2v
9sequential_28/lstm_85/lstm_cell_193/MatMul/ReadVariableOp9sequential_28/lstm_85/lstm_cell_193/MatMul/ReadVariableOp2z
;sequential_28/lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp;sequential_28/lstm_85/lstm_cell_193/MatMul_1/ReadVariableOp2:
sequential_28/lstm_85/whilesequential_28/lstm_85/while2x
:sequential_28/lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp:sequential_28/lstm_86/lstm_cell_194/BiasAdd/ReadVariableOp2v
9sequential_28/lstm_86/lstm_cell_194/MatMul/ReadVariableOp9sequential_28/lstm_86/lstm_cell_194/MatMul/ReadVariableOp2z
;sequential_28/lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp;sequential_28/lstm_86/lstm_cell_194/MatMul_1/ReadVariableOp2:
sequential_28/lstm_86/whilesequential_28/lstm_86/while:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_84_input
�
�
while_cond_1173060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1173060___redundant_placeholder05
1while_while_cond_1173060___redundant_placeholder15
1while_while_cond_1173060___redundant_placeholder25
1while_while_cond_1173060___redundant_placeholder3
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
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1174094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1174094___redundant_placeholder05
1while_while_cond_1174094___redundant_placeholder15
1while_while_cond_1174094___redundant_placeholder25
1while_while_cond_1174094___redundant_placeholder3
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
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
lstm_84_input:
serving_default_lstm_84_input:0���������<
dense_280
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
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
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_sequential
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m�4m�5m�!v�"v�-v�.v�/v�0v�1v�2v�3v�4v�5v�"
	optimizer
-
�serving_default"
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
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
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
�__call__
+�&call_and_return_all_conditional_losses"
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
�

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
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
�__call__
+�&call_and_return_all_conditional_losses"
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
�

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
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
�__call__
+�&call_and_return_all_conditional_losses"
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
�

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_28/kernel
:2dense_28/bias
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
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	�2lstm_84/lstm_cell_84/kernel
8:6	d�2%lstm_84/lstm_cell_84/recurrent_kernel
(:&�2lstm_84/lstm_cell_84/bias
.:,	d�2lstm_85/lstm_cell_85/kernel
8:6	2�2%lstm_85/lstm_cell_85/recurrent_kernel
(:&�2lstm_85/lstm_cell_85/bias
-:+2(2lstm_86/lstm_cell_86/kernel
7:5
(2%lstm_86/lstm_cell_86/recurrent_kernel
':%(2lstm_86/lstm_cell_86/bias
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
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
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
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
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
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
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
2Adam/dense_28/kernel/m
 :2Adam/dense_28/bias/m
3:1	�2"Adam/lstm_84/lstm_cell_84/kernel/m
=:;	d�2,Adam/lstm_84/lstm_cell_84/recurrent_kernel/m
-:+�2 Adam/lstm_84/lstm_cell_84/bias/m
3:1	d�2"Adam/lstm_85/lstm_cell_85/kernel/m
=:;	2�2,Adam/lstm_85/lstm_cell_85/recurrent_kernel/m
-:+�2 Adam/lstm_85/lstm_cell_85/bias/m
2:02(2"Adam/lstm_86/lstm_cell_86/kernel/m
<::
(2,Adam/lstm_86/lstm_cell_86/recurrent_kernel/m
,:*(2 Adam/lstm_86/lstm_cell_86/bias/m
&:$
2Adam/dense_28/kernel/v
 :2Adam/dense_28/bias/v
3:1	�2"Adam/lstm_84/lstm_cell_84/kernel/v
=:;	d�2,Adam/lstm_84/lstm_cell_84/recurrent_kernel/v
-:+�2 Adam/lstm_84/lstm_cell_84/bias/v
3:1	d�2"Adam/lstm_85/lstm_cell_85/kernel/v
=:;	2�2,Adam/lstm_85/lstm_cell_85/recurrent_kernel/v
-:+�2 Adam/lstm_85/lstm_cell_85/bias/v
2:02(2"Adam/lstm_86/lstm_cell_86/kernel/v
<::
(2,Adam/lstm_86/lstm_cell_86/recurrent_kernel/v
,:*(2 Adam/lstm_86/lstm_cell_86/bias/v
�2�
/__inference_sequential_28_layer_call_fn_1174529
/__inference_sequential_28_layer_call_fn_1175267
/__inference_sequential_28_layer_call_fn_1175294
/__inference_sequential_28_layer_call_fn_1175145�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175721
J__inference_sequential_28_layer_call_and_return_conditional_losses_1176148
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175175
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175205�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
"__inference__wrapped_model_1172980lstm_84_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_lstm_84_layer_call_fn_1176159
)__inference_lstm_84_layer_call_fn_1176170
)__inference_lstm_84_layer_call_fn_1176181
)__inference_lstm_84_layer_call_fn_1176192�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176335
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176478
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176621
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176764�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_lstm_85_layer_call_fn_1176775
)__inference_lstm_85_layer_call_fn_1176786
)__inference_lstm_85_layer_call_fn_1176797
)__inference_lstm_85_layer_call_fn_1176808�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lstm_85_layer_call_and_return_conditional_losses_1176951
D__inference_lstm_85_layer_call_and_return_conditional_losses_1177094
D__inference_lstm_85_layer_call_and_return_conditional_losses_1177237
D__inference_lstm_85_layer_call_and_return_conditional_losses_1177380�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_lstm_86_layer_call_fn_1177391
)__inference_lstm_86_layer_call_fn_1177402
)__inference_lstm_86_layer_call_fn_1177413
)__inference_lstm_86_layer_call_fn_1177424�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177567
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177710
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177853
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177996�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_dense_28_layer_call_fn_1178005�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_28_layer_call_and_return_conditional_losses_1178015�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_1175240lstm_84_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_lstm_cell_192_layer_call_fn_1178032
/__inference_lstm_cell_192_layer_call_fn_1178049�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1178081
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1178113�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_lstm_cell_193_layer_call_fn_1178130
/__inference_lstm_cell_193_layer_call_fn_1178147�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1178179
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1178211�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_lstm_cell_194_layer_call_fn_1178228
/__inference_lstm_cell_194_layer_call_fn_1178245�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1178277
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1178309�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
"__inference__wrapped_model_1172980~-./012345!":�7
0�-
+�(
lstm_84_input���������
� "3�0
.
dense_28"�
dense_28����������
E__inference_dense_28_layer_call_and_return_conditional_losses_1178015\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� }
*__inference_dense_28_layer_call_fn_1178005O!"/�,
%�"
 �
inputs���������

� "�����������
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176335�-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������d
� �
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176478�-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������d
� �
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176621q-./?�<
5�2
$�!
inputs���������

 
p 

 
� ")�&
�
0���������d
� �
D__inference_lstm_84_layer_call_and_return_conditional_losses_1176764q-./?�<
5�2
$�!
inputs���������

 
p

 
� ")�&
�
0���������d
� �
)__inference_lstm_84_layer_call_fn_1176159}-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"������������������d�
)__inference_lstm_84_layer_call_fn_1176170}-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"������������������d�
)__inference_lstm_84_layer_call_fn_1176181d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
)__inference_lstm_84_layer_call_fn_1176192d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
D__inference_lstm_85_layer_call_and_return_conditional_losses_1176951�012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p 

 
� "2�/
(�%
0������������������2
� �
D__inference_lstm_85_layer_call_and_return_conditional_losses_1177094�012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p

 
� "2�/
(�%
0������������������2
� �
D__inference_lstm_85_layer_call_and_return_conditional_losses_1177237q012?�<
5�2
$�!
inputs���������d

 
p 

 
� ")�&
�
0���������2
� �
D__inference_lstm_85_layer_call_and_return_conditional_losses_1177380q012?�<
5�2
$�!
inputs���������d

 
p

 
� ")�&
�
0���������2
� �
)__inference_lstm_85_layer_call_fn_1176775}012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p 

 
� "%�"������������������2�
)__inference_lstm_85_layer_call_fn_1176786}012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p

 
� "%�"������������������2�
)__inference_lstm_85_layer_call_fn_1176797d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
)__inference_lstm_85_layer_call_fn_1176808d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177567}345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p 

 
� "%�"
�
0���������

� �
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177710}345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p

 
� "%�"
�
0���������

� �
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177853m345?�<
5�2
$�!
inputs���������2

 
p 

 
� "%�"
�
0���������

� �
D__inference_lstm_86_layer_call_and_return_conditional_losses_1177996m345?�<
5�2
$�!
inputs���������2

 
p

 
� "%�"
�
0���������

� �
)__inference_lstm_86_layer_call_fn_1177391p345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p 

 
� "����������
�
)__inference_lstm_86_layer_call_fn_1177402p345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p

 
� "����������
�
)__inference_lstm_86_layer_call_fn_1177413`345?�<
5�2
$�!
inputs���������2

 
p 

 
� "����������
�
)__inference_lstm_86_layer_call_fn_1177424`345?�<
5�2
$�!
inputs���������2

 
p

 
� "����������
�
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1178081�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p 
� "s�p
i�f
�
0/0���������d
E�B
�
0/1/0���������d
�
0/1/1���������d
� �
J__inference_lstm_cell_192_layer_call_and_return_conditional_losses_1178113�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p
� "s�p
i�f
�
0/0���������d
E�B
�
0/1/0���������d
�
0/1/1���������d
� �
/__inference_lstm_cell_192_layer_call_fn_1178032�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p 
� "c�`
�
0���������d
A�>
�
1/0���������d
�
1/1���������d�
/__inference_lstm_cell_192_layer_call_fn_1178049�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p
� "c�`
�
0���������d
A�>
�
1/0���������d
�
1/1���������d�
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1178179�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p 
� "s�p
i�f
�
0/0���������2
E�B
�
0/1/0���������2
�
0/1/1���������2
� �
J__inference_lstm_cell_193_layer_call_and_return_conditional_losses_1178211�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p
� "s�p
i�f
�
0/0���������2
E�B
�
0/1/0���������2
�
0/1/1���������2
� �
/__inference_lstm_cell_193_layer_call_fn_1178130�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p 
� "c�`
�
0���������2
A�>
�
1/0���������2
�
1/1���������2�
/__inference_lstm_cell_193_layer_call_fn_1178147�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p
� "c�`
�
0���������2
A�>
�
1/0���������2
�
1/1���������2�
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1178277�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p 
� "s�p
i�f
�
0/0���������

E�B
�
0/1/0���������

�
0/1/1���������

� �
J__inference_lstm_cell_194_layer_call_and_return_conditional_losses_1178309�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p
� "s�p
i�f
�
0/0���������

E�B
�
0/1/0���������

�
0/1/1���������

� �
/__inference_lstm_cell_194_layer_call_fn_1178228�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p 
� "c�`
�
0���������

A�>
�
1/0���������

�
1/1���������
�
/__inference_lstm_cell_194_layer_call_fn_1178245�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p
� "c�`
�
0���������

A�>
�
1/0���������

�
1/1���������
�
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175175x-./012345!"B�?
8�5
+�(
lstm_84_input���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175205x-./012345!"B�?
8�5
+�(
lstm_84_input���������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_28_layer_call_and_return_conditional_losses_1175721q-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_28_layer_call_and_return_conditional_losses_1176148q-./012345!";�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
/__inference_sequential_28_layer_call_fn_1174529k-./012345!"B�?
8�5
+�(
lstm_84_input���������
p 

 
� "�����������
/__inference_sequential_28_layer_call_fn_1175145k-./012345!"B�?
8�5
+�(
lstm_84_input���������
p

 
� "�����������
/__inference_sequential_28_layer_call_fn_1175267d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
/__inference_sequential_28_layer_call_fn_1175294d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_1175240�-./012345!"K�H
� 
A�>
<
lstm_84_input+�(
lstm_84_input���������"3�0
.
dense_28"�
dense_28���������
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
�"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��-
|
dense_218/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_218/kernel
u
$dense_218/kernel/Read/ReadVariableOpReadVariableOpdense_218/kernel*
_output_shapes

:
*
dtype0
t
dense_218/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_218/bias
m
"dense_218/bias/Read/ReadVariableOpReadVariableOpdense_218/bias*
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
lstm_654/lstm_cell_654/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_654/lstm_cell_654/kernel
�
1lstm_654/lstm_cell_654/kernel/Read/ReadVariableOpReadVariableOplstm_654/lstm_cell_654/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_654/lstm_cell_654/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_654/lstm_cell_654/recurrent_kernel
�
;lstm_654/lstm_cell_654/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_654/lstm_cell_654/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_654/lstm_cell_654/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_654/lstm_cell_654/bias
�
/lstm_654/lstm_cell_654/bias/Read/ReadVariableOpReadVariableOplstm_654/lstm_cell_654/bias*
_output_shapes	
:�*
dtype0
�
lstm_655/lstm_cell_655/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_655/lstm_cell_655/kernel
�
1lstm_655/lstm_cell_655/kernel/Read/ReadVariableOpReadVariableOplstm_655/lstm_cell_655/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_655/lstm_cell_655/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_655/lstm_cell_655/recurrent_kernel
�
;lstm_655/lstm_cell_655/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_655/lstm_cell_655/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_655/lstm_cell_655/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_655/lstm_cell_655/bias
�
/lstm_655/lstm_cell_655/bias/Read/ReadVariableOpReadVariableOplstm_655/lstm_cell_655/bias*
_output_shapes	
:�*
dtype0
�
lstm_656/lstm_cell_656/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_656/lstm_cell_656/kernel
�
1lstm_656/lstm_cell_656/kernel/Read/ReadVariableOpReadVariableOplstm_656/lstm_cell_656/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_656/lstm_cell_656/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_656/lstm_cell_656/recurrent_kernel
�
;lstm_656/lstm_cell_656/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_656/lstm_cell_656/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_656/lstm_cell_656/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_656/lstm_cell_656/bias
�
/lstm_656/lstm_cell_656/bias/Read/ReadVariableOpReadVariableOplstm_656/lstm_cell_656/bias*
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
Adam/dense_218/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_218/kernel/m
�
+Adam/dense_218/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_218/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_218/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_218/bias/m
{
)Adam/dense_218/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_218/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_654/lstm_cell_654/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_654/lstm_cell_654/kernel/m
�
8Adam/lstm_654/lstm_cell_654/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_654/lstm_cell_654/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_654/lstm_cell_654/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_654/lstm_cell_654/recurrent_kernel/m
�
BAdam/lstm_654/lstm_cell_654/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_654/lstm_cell_654/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_654/lstm_cell_654/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_654/lstm_cell_654/bias/m
�
6Adam/lstm_654/lstm_cell_654/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_654/lstm_cell_654/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_655/lstm_cell_655/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_655/lstm_cell_655/kernel/m
�
8Adam/lstm_655/lstm_cell_655/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_655/lstm_cell_655/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_655/lstm_cell_655/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_655/lstm_cell_655/recurrent_kernel/m
�
BAdam/lstm_655/lstm_cell_655/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_655/lstm_cell_655/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_655/lstm_cell_655/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_655/lstm_cell_655/bias/m
�
6Adam/lstm_655/lstm_cell_655/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_655/lstm_cell_655/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_656/lstm_cell_656/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_656/lstm_cell_656/kernel/m
�
8Adam/lstm_656/lstm_cell_656/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_656/lstm_cell_656/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_656/lstm_cell_656/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_656/lstm_cell_656/recurrent_kernel/m
�
BAdam/lstm_656/lstm_cell_656/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_656/lstm_cell_656/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_656/lstm_cell_656/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_656/lstm_cell_656/bias/m
�
6Adam/lstm_656/lstm_cell_656/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_656/lstm_cell_656/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_218/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_218/kernel/v
�
+Adam/dense_218/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_218/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_218/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_218/bias/v
{
)Adam/dense_218/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_218/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_654/lstm_cell_654/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_654/lstm_cell_654/kernel/v
�
8Adam/lstm_654/lstm_cell_654/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_654/lstm_cell_654/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_654/lstm_cell_654/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_654/lstm_cell_654/recurrent_kernel/v
�
BAdam/lstm_654/lstm_cell_654/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_654/lstm_cell_654/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_654/lstm_cell_654/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_654/lstm_cell_654/bias/v
�
6Adam/lstm_654/lstm_cell_654/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_654/lstm_cell_654/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_655/lstm_cell_655/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_655/lstm_cell_655/kernel/v
�
8Adam/lstm_655/lstm_cell_655/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_655/lstm_cell_655/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_655/lstm_cell_655/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_655/lstm_cell_655/recurrent_kernel/v
�
BAdam/lstm_655/lstm_cell_655/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_655/lstm_cell_655/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_655/lstm_cell_655/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_655/lstm_cell_655/bias/v
�
6Adam/lstm_655/lstm_cell_655/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_655/lstm_cell_655/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_656/lstm_cell_656/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_656/lstm_cell_656/kernel/v
�
8Adam/lstm_656/lstm_cell_656/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_656/lstm_cell_656/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_656/lstm_cell_656/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_656/lstm_cell_656/recurrent_kernel/v
�
BAdam/lstm_656/lstm_cell_656/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_656/lstm_cell_656/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_656/lstm_cell_656/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_656/lstm_cell_656/bias/v
�
6Adam/lstm_656/lstm_cell_656/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_656/lstm_cell_656/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
�A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�A
value�AB�A B�A
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
\Z
VARIABLE_VALUEdense_218/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_218/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
YW
VARIABLE_VALUElstm_654/lstm_cell_654/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_654/lstm_cell_654/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_654/lstm_cell_654/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_655/lstm_cell_655/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_655/lstm_cell_655/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_655/lstm_cell_655/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_656/lstm_cell_656/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_656/lstm_cell_656/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_656/lstm_cell_656/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/dense_218/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_218/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_654/lstm_cell_654/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_654/lstm_cell_654/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_654/lstm_cell_654/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_655/lstm_cell_655/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_655/lstm_cell_655/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_655/lstm_cell_655/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_656/lstm_cell_656/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_656/lstm_cell_656/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_656/lstm_cell_656/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_218/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_218/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_654/lstm_cell_654/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_654/lstm_cell_654/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_654/lstm_cell_654/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_655/lstm_cell_655/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_655/lstm_cell_655/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_655/lstm_cell_655/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_656/lstm_cell_656/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_656/lstm_cell_656/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_656/lstm_cell_656/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_654_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_654_inputlstm_654/lstm_cell_654/kernel'lstm_654/lstm_cell_654/recurrent_kernellstm_654/lstm_cell_654/biaslstm_655/lstm_cell_655/kernel'lstm_655/lstm_cell_655/recurrent_kernellstm_655/lstm_cell_655/biaslstm_656/lstm_cell_656/kernel'lstm_656/lstm_cell_656/recurrent_kernellstm_656/lstm_cell_656/biasdense_218/kerneldense_218/bias*
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
%__inference_signature_wrapper_3754569
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_218/kernel/Read/ReadVariableOp"dense_218/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_654/lstm_cell_654/kernel/Read/ReadVariableOp;lstm_654/lstm_cell_654/recurrent_kernel/Read/ReadVariableOp/lstm_654/lstm_cell_654/bias/Read/ReadVariableOp1lstm_655/lstm_cell_655/kernel/Read/ReadVariableOp;lstm_655/lstm_cell_655/recurrent_kernel/Read/ReadVariableOp/lstm_655/lstm_cell_655/bias/Read/ReadVariableOp1lstm_656/lstm_cell_656/kernel/Read/ReadVariableOp;lstm_656/lstm_cell_656/recurrent_kernel/Read/ReadVariableOp/lstm_656/lstm_cell_656/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_218/kernel/m/Read/ReadVariableOp)Adam/dense_218/bias/m/Read/ReadVariableOp8Adam/lstm_654/lstm_cell_654/kernel/m/Read/ReadVariableOpBAdam/lstm_654/lstm_cell_654/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_654/lstm_cell_654/bias/m/Read/ReadVariableOp8Adam/lstm_655/lstm_cell_655/kernel/m/Read/ReadVariableOpBAdam/lstm_655/lstm_cell_655/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_655/lstm_cell_655/bias/m/Read/ReadVariableOp8Adam/lstm_656/lstm_cell_656/kernel/m/Read/ReadVariableOpBAdam/lstm_656/lstm_cell_656/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_656/lstm_cell_656/bias/m/Read/ReadVariableOp+Adam/dense_218/kernel/v/Read/ReadVariableOp)Adam/dense_218/bias/v/Read/ReadVariableOp8Adam/lstm_654/lstm_cell_654/kernel/v/Read/ReadVariableOpBAdam/lstm_654/lstm_cell_654/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_654/lstm_cell_654/bias/v/Read/ReadVariableOp8Adam/lstm_655/lstm_cell_655/kernel/v/Read/ReadVariableOpBAdam/lstm_655/lstm_cell_655/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_655/lstm_cell_655/bias/v/Read/ReadVariableOp8Adam/lstm_656/lstm_cell_656/kernel/v/Read/ReadVariableOpBAdam/lstm_656/lstm_cell_656/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_656/lstm_cell_656/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3757781
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_218/kerneldense_218/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_654/lstm_cell_654/kernel'lstm_654/lstm_cell_654/recurrent_kernellstm_654/lstm_cell_654/biaslstm_655/lstm_cell_655/kernel'lstm_655/lstm_cell_655/recurrent_kernellstm_655/lstm_cell_655/biaslstm_656/lstm_cell_656/kernel'lstm_656/lstm_cell_656/recurrent_kernellstm_656/lstm_cell_656/biastotalcountAdam/dense_218/kernel/mAdam/dense_218/bias/m$Adam/lstm_654/lstm_cell_654/kernel/m.Adam/lstm_654/lstm_cell_654/recurrent_kernel/m"Adam/lstm_654/lstm_cell_654/bias/m$Adam/lstm_655/lstm_cell_655/kernel/m.Adam/lstm_655/lstm_cell_655/recurrent_kernel/m"Adam/lstm_655/lstm_cell_655/bias/m$Adam/lstm_656/lstm_cell_656/kernel/m.Adam/lstm_656/lstm_cell_656/recurrent_kernel/m"Adam/lstm_656/lstm_cell_656/bias/mAdam/dense_218/kernel/vAdam/dense_218/bias/v$Adam/lstm_654/lstm_cell_654/kernel/v.Adam/lstm_654/lstm_cell_654/recurrent_kernel/v"Adam/lstm_654/lstm_cell_654/bias/v$Adam/lstm_655/lstm_cell_655/kernel/v.Adam/lstm_655/lstm_cell_655/recurrent_kernel/v"Adam/lstm_655/lstm_cell_655/bias/v$Adam/lstm_656/lstm_cell_656/kernel/v.Adam/lstm_656/lstm_cell_656/recurrent_kernel/v"Adam/lstm_656/lstm_cell_656/bias/v*4
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
#__inference__traced_restore_3757911��+
�
�
while_cond_3755865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3755865___redundant_placeholder05
1while_while_cond_3755865___redundant_placeholder15
1while_while_cond_3755865___redundant_placeholder25
1while_while_cond_3755865___redundant_placeholder3
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
while_body_3755723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_618_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_618_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_618_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_618_matmul_readvariableop_resource:	�G
4while_lstm_cell_618_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_618_biasadd_readvariableop_resource:	���*while/lstm_cell_618/BiasAdd/ReadVariableOp�)while/lstm_cell_618/MatMul/ReadVariableOp�+while/lstm_cell_618/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_618/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_618_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_618/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_618_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_618/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_618/addAddV2$while/lstm_cell_618/MatMul:product:0&while/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_618_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_618/BiasAddBiasAddwhile/lstm_cell_618/add:z:02while/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_618/splitSplit,while/lstm_cell_618/split/split_dim:output:0$while/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_618/SigmoidSigmoid"while/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_1Sigmoid"while/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mulMul!while/lstm_cell_618/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_618/ReluRelu"while/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_1Mulwhile/lstm_cell_618/Sigmoid:y:0&while/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/add_1AddV2while/lstm_cell_618/mul:z:0while/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_2Sigmoid"while/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_618/Relu_1Reluwhile/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_2Mul!while/lstm_cell_618/Sigmoid_2:y:0(while/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_618/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_618/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_618/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_618/BiasAdd/ReadVariableOp*^while/lstm_cell_618/MatMul/ReadVariableOp,^while/lstm_cell_618/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_618_biasadd_readvariableop_resource5while_lstm_cell_618_biasadd_readvariableop_resource_0"n
4while_lstm_cell_618_matmul_1_readvariableop_resource6while_lstm_cell_618_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_618_matmul_readvariableop_resource4while_lstm_cell_618_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_618/BiasAdd/ReadVariableOp*while/lstm_cell_618/BiasAdd/ReadVariableOp2V
)while/lstm_cell_618/MatMul/ReadVariableOp)while/lstm_cell_618/MatMul/ReadVariableOp2Z
+while/lstm_cell_618/MatMul_1/ReadVariableOp+while/lstm_cell_618/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
�
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3757508

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
�K
�
E__inference_lstm_656_layer_call_and_return_conditional_losses_3756896
inputs_0>
,lstm_cell_620_matmul_readvariableop_resource:2(@
.lstm_cell_620_matmul_1_readvariableop_resource:
(;
-lstm_cell_620_biasadd_readvariableop_resource:(
identity��$lstm_cell_620/BiasAdd/ReadVariableOp�#lstm_cell_620/MatMul/ReadVariableOp�%lstm_cell_620/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_620/MatMul/ReadVariableOpReadVariableOp,lstm_cell_620_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_620/MatMulMatMulstrided_slice_2:output:0+lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_620_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_620/MatMul_1MatMulzeros:output:0-lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_620/addAddV2lstm_cell_620/MatMul:product:0 lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_620_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_620/BiasAddBiasAddlstm_cell_620/add:z:0,lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_620/splitSplit&lstm_cell_620/split/split_dim:output:0lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_620/SigmoidSigmoidlstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_1Sigmoidlstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_620/mulMullstm_cell_620/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_620/ReluRelulstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_1Mullstm_cell_620/Sigmoid:y:0 lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_620/add_1AddV2lstm_cell_620/mul:z:0lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_2Sigmoidlstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_620/Relu_1Relulstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_2Mullstm_cell_620/Sigmoid_2:y:0"lstm_cell_620/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_620_matmul_readvariableop_resource.lstm_cell_620_matmul_1_readvariableop_resource-lstm_cell_620_biasadd_readvariableop_resource*
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
while_body_3756812*
condR
while_cond_3756811*K
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
NoOpNoOp%^lstm_cell_620/BiasAdd/ReadVariableOp$^lstm_cell_620/MatMul/ReadVariableOp&^lstm_cell_620/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_620/BiasAdd/ReadVariableOp$lstm_cell_620/BiasAdd/ReadVariableOp2J
#lstm_cell_620/MatMul/ReadVariableOp#lstm_cell_620/MatMul/ReadVariableOp2N
%lstm_cell_620/MatMul_1/ReadVariableOp%lstm_cell_620/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
+__inference_dense_218_layer_call_fn_3757334

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
GPU 2J 8� *O
fJRH
F__inference_dense_218_layer_call_and_return_conditional_losses_3753826o
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
�8
�
while_body_3757098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_620_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_620_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_620_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_620_matmul_readvariableop_resource:2(F
4while_lstm_cell_620_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_620_biasadd_readvariableop_resource:(��*while/lstm_cell_620/BiasAdd/ReadVariableOp�)while/lstm_cell_620/MatMul/ReadVariableOp�+while/lstm_cell_620/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_620/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_620_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_620/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_620_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_620/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_620/addAddV2$while/lstm_cell_620/MatMul:product:0&while/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_620_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_620/BiasAddBiasAddwhile/lstm_cell_620/add:z:02while/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_620/splitSplit,while/lstm_cell_620/split/split_dim:output:0$while/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_620/SigmoidSigmoid"while/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_1Sigmoid"while/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mulMul!while/lstm_cell_620/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_620/ReluRelu"while/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_1Mulwhile/lstm_cell_620/Sigmoid:y:0&while/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/add_1AddV2while/lstm_cell_620/mul:z:0while/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_2Sigmoid"while/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_620/Relu_1Reluwhile/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_2Mul!while/lstm_cell_620/Sigmoid_2:y:0(while/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_620/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_620/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_620/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_620/BiasAdd/ReadVariableOp*^while/lstm_cell_620/MatMul/ReadVariableOp,^while/lstm_cell_620/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_620_biasadd_readvariableop_resource5while_lstm_cell_620_biasadd_readvariableop_resource_0"n
4while_lstm_cell_620_matmul_1_readvariableop_resource6while_lstm_cell_620_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_620_matmul_readvariableop_resource4while_lstm_cell_620_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_620/BiasAdd/ReadVariableOp*while/lstm_cell_620/BiasAdd/ReadVariableOp2V
)while/lstm_cell_620/MatMul/ReadVariableOp)while/lstm_cell_620/MatMul/ReadVariableOp2Z
+while/lstm_cell_620/MatMul_1/ReadVariableOp+while/lstm_cell_620/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�J
�
E__inference_lstm_654_layer_call_and_return_conditional_losses_3753508

inputs?
,lstm_cell_618_matmul_readvariableop_resource:	�A
.lstm_cell_618_matmul_1_readvariableop_resource:	d�<
-lstm_cell_618_biasadd_readvariableop_resource:	�
identity��$lstm_cell_618/BiasAdd/ReadVariableOp�#lstm_cell_618/MatMul/ReadVariableOp�%lstm_cell_618/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_618/MatMul/ReadVariableOpReadVariableOp,lstm_cell_618_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_618/MatMulMatMulstrided_slice_2:output:0+lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_618_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_618/MatMul_1MatMulzeros:output:0-lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_618/addAddV2lstm_cell_618/MatMul:product:0 lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_618_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_618/BiasAddBiasAddlstm_cell_618/add:z:0,lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_618/splitSplit&lstm_cell_618/split/split_dim:output:0lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_618/SigmoidSigmoidlstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_1Sigmoidlstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_618/mulMullstm_cell_618/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_618/ReluRelulstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_1Mullstm_cell_618/Sigmoid:y:0 lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_618/add_1AddV2lstm_cell_618/mul:z:0lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_2Sigmoidlstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_618/Relu_1Relulstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_2Mullstm_cell_618/Sigmoid_2:y:0"lstm_cell_618/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_618_matmul_readvariableop_resource.lstm_cell_618_matmul_1_readvariableop_resource-lstm_cell_618_biasadd_readvariableop_resource*
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
while_body_3753424*
condR
while_cond_3753423*K
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
NoOpNoOp%^lstm_cell_618/BiasAdd/ReadVariableOp$^lstm_cell_618/MatMul/ReadVariableOp&^lstm_cell_618/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_618/BiasAdd/ReadVariableOp$lstm_cell_618/BiasAdd/ReadVariableOp2J
#lstm_cell_618/MatMul/ReadVariableOp#lstm_cell_618/MatMul/ReadVariableOp2N
%lstm_cell_618/MatMul_1/ReadVariableOp%lstm_cell_618/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_3755866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_618_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_618_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_618_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_618_matmul_readvariableop_resource:	�G
4while_lstm_cell_618_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_618_biasadd_readvariableop_resource:	���*while/lstm_cell_618/BiasAdd/ReadVariableOp�)while/lstm_cell_618/MatMul/ReadVariableOp�+while/lstm_cell_618/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_618/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_618_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_618/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_618_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_618/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_618/addAddV2$while/lstm_cell_618/MatMul:product:0&while/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_618_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_618/BiasAddBiasAddwhile/lstm_cell_618/add:z:02while/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_618/splitSplit,while/lstm_cell_618/split/split_dim:output:0$while/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_618/SigmoidSigmoid"while/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_1Sigmoid"while/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mulMul!while/lstm_cell_618/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_618/ReluRelu"while/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_1Mulwhile/lstm_cell_618/Sigmoid:y:0&while/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/add_1AddV2while/lstm_cell_618/mul:z:0while/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_2Sigmoid"while/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_618/Relu_1Reluwhile/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_2Mul!while/lstm_cell_618/Sigmoid_2:y:0(while/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_618/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_618/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_618/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_618/BiasAdd/ReadVariableOp*^while/lstm_cell_618/MatMul/ReadVariableOp,^while/lstm_cell_618/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_618_biasadd_readvariableop_resource5while_lstm_cell_618_biasadd_readvariableop_resource_0"n
4while_lstm_cell_618_matmul_1_readvariableop_resource6while_lstm_cell_618_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_618_matmul_readvariableop_resource4while_lstm_cell_618_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_618/BiasAdd/ReadVariableOp*while/lstm_cell_618/BiasAdd/ReadVariableOp2V
)while/lstm_cell_618/MatMul/ReadVariableOp)while/lstm_cell_618/MatMul/ReadVariableOp2Z
+while/lstm_cell_618/MatMul_1/ReadVariableOp+while/lstm_cell_618/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
*__inference_lstm_656_layer_call_fn_3756731
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
GPU 2J 8� *N
fIRG
E__inference_lstm_656_layer_call_and_return_conditional_losses_3753350o
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
�
�
while_cond_3756811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3756811___redundant_placeholder05
1while_while_cond_3756811___redundant_placeholder15
1while_while_cond_3756811___redundant_placeholder25
1while_while_cond_3756811___redundant_placeholder3
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
/__inference_lstm_cell_619_layer_call_fn_3757476

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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3752872o
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
�
�
while_cond_3756008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3756008___redundant_placeholder05
1while_while_cond_3756008___redundant_placeholder15
1while_while_cond_3756008___redundant_placeholder25
1while_while_cond_3756008___redundant_placeholder3
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
while_body_3754270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_618_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_618_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_618_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_618_matmul_readvariableop_resource:	�G
4while_lstm_cell_618_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_618_biasadd_readvariableop_resource:	���*while/lstm_cell_618/BiasAdd/ReadVariableOp�)while/lstm_cell_618/MatMul/ReadVariableOp�+while/lstm_cell_618/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_618/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_618_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_618/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_618_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_618/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_618/addAddV2$while/lstm_cell_618/MatMul:product:0&while/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_618_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_618/BiasAddBiasAddwhile/lstm_cell_618/add:z:02while/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_618/splitSplit,while/lstm_cell_618/split/split_dim:output:0$while/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_618/SigmoidSigmoid"while/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_1Sigmoid"while/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mulMul!while/lstm_cell_618/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_618/ReluRelu"while/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_1Mulwhile/lstm_cell_618/Sigmoid:y:0&while/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/add_1AddV2while/lstm_cell_618/mul:z:0while/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_2Sigmoid"while/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_618/Relu_1Reluwhile/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_2Mul!while/lstm_cell_618/Sigmoid_2:y:0(while/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_618/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_618/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_618/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_618/BiasAdd/ReadVariableOp*^while/lstm_cell_618/MatMul/ReadVariableOp,^while/lstm_cell_618/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_618_biasadd_readvariableop_resource5while_lstm_cell_618_biasadd_readvariableop_resource_0"n
4while_lstm_cell_618_matmul_1_readvariableop_resource6while_lstm_cell_618_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_618_matmul_readvariableop_resource4while_lstm_cell_618_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_618/BiasAdd/ReadVariableOp*while/lstm_cell_618/BiasAdd/ReadVariableOp2V
)while/lstm_cell_618/MatMul/ReadVariableOp)while/lstm_cell_618/MatMul/ReadVariableOp2Z
+while/lstm_cell_618/MatMul_1/ReadVariableOp+while/lstm_cell_618/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
*__inference_lstm_655_layer_call_fn_3756115
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
GPU 2J 8� *N
fIRG
E__inference_lstm_655_layer_call_and_return_conditional_losses_3753000|
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
�
*sequential_218_lstm_654_while_cond_3751940L
Hsequential_218_lstm_654_while_sequential_218_lstm_654_while_loop_counterR
Nsequential_218_lstm_654_while_sequential_218_lstm_654_while_maximum_iterations-
)sequential_218_lstm_654_while_placeholder/
+sequential_218_lstm_654_while_placeholder_1/
+sequential_218_lstm_654_while_placeholder_2/
+sequential_218_lstm_654_while_placeholder_3N
Jsequential_218_lstm_654_while_less_sequential_218_lstm_654_strided_slice_1e
asequential_218_lstm_654_while_sequential_218_lstm_654_while_cond_3751940___redundant_placeholder0e
asequential_218_lstm_654_while_sequential_218_lstm_654_while_cond_3751940___redundant_placeholder1e
asequential_218_lstm_654_while_sequential_218_lstm_654_while_cond_3751940___redundant_placeholder2e
asequential_218_lstm_654_while_sequential_218_lstm_654_while_cond_3751940___redundant_placeholder3*
&sequential_218_lstm_654_while_identity
�
"sequential_218/lstm_654/while/LessLess)sequential_218_lstm_654_while_placeholderJsequential_218_lstm_654_while_less_sequential_218_lstm_654_strided_slice_1*
T0*
_output_shapes
: {
&sequential_218/lstm_654/while/IdentityIdentity&sequential_218/lstm_654/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_218_lstm_654_while_identity/sequential_218/lstm_654/while/Identity:output:0*(
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
0__inference_sequential_218_layer_call_fn_3754596

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
GPU 2J 8� *T
fORM
K__inference_sequential_218_layer_call_and_return_conditional_losses_3753833o
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
�

�
0__inference_sequential_218_layer_call_fn_3753858
lstm_654_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_654_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8� *T
fORM
K__inference_sequential_218_layer_call_and_return_conditional_losses_3753833o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_654_input
�

�
lstm_655_while_cond_3755247.
*lstm_655_while_lstm_655_while_loop_counter4
0lstm_655_while_lstm_655_while_maximum_iterations
lstm_655_while_placeholder 
lstm_655_while_placeholder_1 
lstm_655_while_placeholder_2 
lstm_655_while_placeholder_30
,lstm_655_while_less_lstm_655_strided_slice_1G
Clstm_655_while_lstm_655_while_cond_3755247___redundant_placeholder0G
Clstm_655_while_lstm_655_while_cond_3755247___redundant_placeholder1G
Clstm_655_while_lstm_655_while_cond_3755247___redundant_placeholder2G
Clstm_655_while_lstm_655_while_cond_3755247___redundant_placeholder3
lstm_655_while_identity
�
lstm_655/while/LessLesslstm_655_while_placeholder,lstm_655_while_less_lstm_655_strided_slice_1*
T0*
_output_shapes
: ]
lstm_655/while/IdentityIdentitylstm_655/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_655_while_identity lstm_655/while/Identity:output:0*(
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
E__inference_lstm_656_layer_call_and_return_conditional_losses_3753159

inputs'
lstm_cell_620_3753077:2('
lstm_cell_620_3753079:
(#
lstm_cell_620_3753081:(
identity��%lstm_cell_620/StatefulPartitionedCall�while;
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
%lstm_cell_620/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_620_3753077lstm_cell_620_3753079lstm_cell_620_3753081*
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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3753076n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_620_3753077lstm_cell_620_3753079lstm_cell_620_3753081*
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
while_body_3753090*
condR
while_cond_3753089*K
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
NoOpNoOp&^lstm_cell_620/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_620/StatefulPartitionedCall%lstm_cell_620/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
*__inference_lstm_656_layer_call_fn_3756720
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
GPU 2J 8� *N
fIRG
E__inference_lstm_656_layer_call_and_return_conditional_losses_3753159o
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
�
�
while_cond_3757097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3757097___redundant_placeholder05
1while_while_cond_3757097___redundant_placeholder15
1while_while_cond_3757097___redundant_placeholder25
1while_while_cond_3757097___redundant_placeholder3
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
E__inference_lstm_654_layer_call_and_return_conditional_losses_3754354

inputs?
,lstm_cell_618_matmul_readvariableop_resource:	�A
.lstm_cell_618_matmul_1_readvariableop_resource:	d�<
-lstm_cell_618_biasadd_readvariableop_resource:	�
identity��$lstm_cell_618/BiasAdd/ReadVariableOp�#lstm_cell_618/MatMul/ReadVariableOp�%lstm_cell_618/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_618/MatMul/ReadVariableOpReadVariableOp,lstm_cell_618_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_618/MatMulMatMulstrided_slice_2:output:0+lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_618_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_618/MatMul_1MatMulzeros:output:0-lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_618/addAddV2lstm_cell_618/MatMul:product:0 lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_618_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_618/BiasAddBiasAddlstm_cell_618/add:z:0,lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_618/splitSplit&lstm_cell_618/split/split_dim:output:0lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_618/SigmoidSigmoidlstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_1Sigmoidlstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_618/mulMullstm_cell_618/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_618/ReluRelulstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_1Mullstm_cell_618/Sigmoid:y:0 lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_618/add_1AddV2lstm_cell_618/mul:z:0lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_2Sigmoidlstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_618/Relu_1Relulstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_2Mullstm_cell_618/Sigmoid_2:y:0"lstm_cell_618/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_618_matmul_readvariableop_resource.lstm_cell_618_matmul_1_readvariableop_resource-lstm_cell_618_biasadd_readvariableop_resource*
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
while_body_3754270*
condR
while_cond_3754269*K
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
NoOpNoOp%^lstm_cell_618/BiasAdd/ReadVariableOp$^lstm_cell_618/MatMul/ReadVariableOp&^lstm_cell_618/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_618/BiasAdd/ReadVariableOp$lstm_cell_618/BiasAdd/ReadVariableOp2J
#lstm_cell_618/MatMul/ReadVariableOp#lstm_cell_618/MatMul/ReadVariableOp2N
%lstm_cell_618/MatMul_1/ReadVariableOp%lstm_cell_618/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_3757911
file_prefix3
!assignvariableop_dense_218_kernel:
/
!assignvariableop_1_dense_218_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_654_lstm_cell_654_kernel:	�M
:assignvariableop_8_lstm_654_lstm_cell_654_recurrent_kernel:	d�=
.assignvariableop_9_lstm_654_lstm_cell_654_bias:	�D
1assignvariableop_10_lstm_655_lstm_cell_655_kernel:	d�N
;assignvariableop_11_lstm_655_lstm_cell_655_recurrent_kernel:	2�>
/assignvariableop_12_lstm_655_lstm_cell_655_bias:	�C
1assignvariableop_13_lstm_656_lstm_cell_656_kernel:2(M
;assignvariableop_14_lstm_656_lstm_cell_656_recurrent_kernel:
(=
/assignvariableop_15_lstm_656_lstm_cell_656_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_218_kernel_m:
7
)assignvariableop_19_adam_dense_218_bias_m:K
8assignvariableop_20_adam_lstm_654_lstm_cell_654_kernel_m:	�U
Bassignvariableop_21_adam_lstm_654_lstm_cell_654_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_654_lstm_cell_654_bias_m:	�K
8assignvariableop_23_adam_lstm_655_lstm_cell_655_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_655_lstm_cell_655_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_655_lstm_cell_655_bias_m:	�J
8assignvariableop_26_adam_lstm_656_lstm_cell_656_kernel_m:2(T
Bassignvariableop_27_adam_lstm_656_lstm_cell_656_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_656_lstm_cell_656_bias_m:(=
+assignvariableop_29_adam_dense_218_kernel_v:
7
)assignvariableop_30_adam_dense_218_bias_v:K
8assignvariableop_31_adam_lstm_654_lstm_cell_654_kernel_v:	�U
Bassignvariableop_32_adam_lstm_654_lstm_cell_654_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_654_lstm_cell_654_bias_v:	�K
8assignvariableop_34_adam_lstm_655_lstm_cell_655_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_655_lstm_cell_655_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_655_lstm_cell_655_bias_v:	�J
8assignvariableop_37_adam_lstm_656_lstm_cell_656_kernel_v:2(T
Bassignvariableop_38_adam_lstm_656_lstm_cell_656_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_656_lstm_cell_656_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_218_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_218_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_654_lstm_cell_654_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_654_lstm_cell_654_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_654_lstm_cell_654_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_655_lstm_cell_655_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_655_lstm_cell_655_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_655_lstm_cell_655_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_656_lstm_cell_656_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_656_lstm_cell_656_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_656_lstm_cell_656_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_218_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_218_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_654_lstm_cell_654_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_654_lstm_cell_654_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_654_lstm_cell_654_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_655_lstm_cell_655_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_655_lstm_cell_655_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_655_lstm_cell_655_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_656_lstm_cell_656_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_656_lstm_cell_656_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_656_lstm_cell_656_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_218_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_218_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_654_lstm_cell_654_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_654_lstm_cell_654_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_654_lstm_cell_654_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_655_lstm_cell_655_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_655_lstm_cell_655_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_655_lstm_cell_655_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_656_lstm_cell_656_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_656_lstm_cell_656_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_656_lstm_cell_656_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_3753423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3753423___redundant_placeholder05
1while_while_cond_3753423___redundant_placeholder15
1while_while_cond_3753423___redundant_placeholder25
1while_while_cond_3753423___redundant_placeholder3
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
while_cond_3752580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3752580___redundant_placeholder05
1while_while_cond_3752580___redundant_placeholder15
1while_while_cond_3752580___redundant_placeholder25
1while_while_cond_3752580___redundant_placeholder3
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
�K
�
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756280
inputs_0?
,lstm_cell_619_matmul_readvariableop_resource:	d�A
.lstm_cell_619_matmul_1_readvariableop_resource:	2�<
-lstm_cell_619_biasadd_readvariableop_resource:	�
identity��$lstm_cell_619/BiasAdd/ReadVariableOp�#lstm_cell_619/MatMul/ReadVariableOp�%lstm_cell_619/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_619/MatMul/ReadVariableOpReadVariableOp,lstm_cell_619_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_619/MatMulMatMulstrided_slice_2:output:0+lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_619_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_619/MatMul_1MatMulzeros:output:0-lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_619/addAddV2lstm_cell_619/MatMul:product:0 lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_619_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_619/BiasAddBiasAddlstm_cell_619/add:z:0,lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_619/splitSplit&lstm_cell_619/split/split_dim:output:0lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_619/SigmoidSigmoidlstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_1Sigmoidlstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_619/mulMullstm_cell_619/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_619/ReluRelulstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_1Mullstm_cell_619/Sigmoid:y:0 lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_619/add_1AddV2lstm_cell_619/mul:z:0lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_2Sigmoidlstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_619/Relu_1Relulstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_2Mullstm_cell_619/Sigmoid_2:y:0"lstm_cell_619/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_619_matmul_readvariableop_resource.lstm_cell_619_matmul_1_readvariableop_resource-lstm_cell_619_biasadd_readvariableop_resource*
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
while_body_3756196*
condR
while_cond_3756195*K
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
NoOpNoOp%^lstm_cell_619/BiasAdd/ReadVariableOp$^lstm_cell_619/MatMul/ReadVariableOp&^lstm_cell_619/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_619/BiasAdd/ReadVariableOp$lstm_cell_619/BiasAdd/ReadVariableOp2J
#lstm_cell_619/MatMul/ReadVariableOp#lstm_cell_619/MatMul/ReadVariableOp2N
%lstm_cell_619/MatMul_1/ReadVariableOp%lstm_cell_619/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�8
�
while_body_3756812
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_620_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_620_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_620_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_620_matmul_readvariableop_resource:2(F
4while_lstm_cell_620_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_620_biasadd_readvariableop_resource:(��*while/lstm_cell_620/BiasAdd/ReadVariableOp�)while/lstm_cell_620/MatMul/ReadVariableOp�+while/lstm_cell_620/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_620/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_620_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_620/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_620_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_620/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_620/addAddV2$while/lstm_cell_620/MatMul:product:0&while/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_620_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_620/BiasAddBiasAddwhile/lstm_cell_620/add:z:02while/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_620/splitSplit,while/lstm_cell_620/split/split_dim:output:0$while/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_620/SigmoidSigmoid"while/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_1Sigmoid"while/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mulMul!while/lstm_cell_620/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_620/ReluRelu"while/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_1Mulwhile/lstm_cell_620/Sigmoid:y:0&while/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/add_1AddV2while/lstm_cell_620/mul:z:0while/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_2Sigmoid"while/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_620/Relu_1Reluwhile/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_2Mul!while/lstm_cell_620/Sigmoid_2:y:0(while/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_620/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_620/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_620/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_620/BiasAdd/ReadVariableOp*^while/lstm_cell_620/MatMul/ReadVariableOp,^while/lstm_cell_620/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_620_biasadd_readvariableop_resource5while_lstm_cell_620_biasadd_readvariableop_resource_0"n
4while_lstm_cell_620_matmul_1_readvariableop_resource6while_lstm_cell_620_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_620_matmul_readvariableop_resource4while_lstm_cell_620_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_620/BiasAdd/ReadVariableOp*while/lstm_cell_620/BiasAdd/ReadVariableOp2V
)while/lstm_cell_620/MatMul/ReadVariableOp)while/lstm_cell_620/MatMul/ReadVariableOp2Z
+while/lstm_cell_620/MatMul_1/ReadVariableOp+while/lstm_cell_620/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
while_cond_3752739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3752739___redundant_placeholder05
1while_while_cond_3752739___redundant_placeholder15
1while_while_cond_3752739___redundant_placeholder25
1while_while_cond_3752739___redundant_placeholder3
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
�J
�
E__inference_lstm_656_layer_call_and_return_conditional_losses_3757182

inputs>
,lstm_cell_620_matmul_readvariableop_resource:2(@
.lstm_cell_620_matmul_1_readvariableop_resource:
(;
-lstm_cell_620_biasadd_readvariableop_resource:(
identity��$lstm_cell_620/BiasAdd/ReadVariableOp�#lstm_cell_620/MatMul/ReadVariableOp�%lstm_cell_620/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_620/MatMul/ReadVariableOpReadVariableOp,lstm_cell_620_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_620/MatMulMatMulstrided_slice_2:output:0+lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_620_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_620/MatMul_1MatMulzeros:output:0-lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_620/addAddV2lstm_cell_620/MatMul:product:0 lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_620_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_620/BiasAddBiasAddlstm_cell_620/add:z:0,lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_620/splitSplit&lstm_cell_620/split/split_dim:output:0lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_620/SigmoidSigmoidlstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_1Sigmoidlstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_620/mulMullstm_cell_620/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_620/ReluRelulstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_1Mullstm_cell_620/Sigmoid:y:0 lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_620/add_1AddV2lstm_cell_620/mul:z:0lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_2Sigmoidlstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_620/Relu_1Relulstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_2Mullstm_cell_620/Sigmoid_2:y:0"lstm_cell_620/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_620_matmul_readvariableop_resource.lstm_cell_620_matmul_1_readvariableop_resource-lstm_cell_620_biasadd_readvariableop_resource*
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
while_body_3757098*
condR
while_cond_3757097*K
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
NoOpNoOp%^lstm_cell_620/BiasAdd/ReadVariableOp$^lstm_cell_620/MatMul/ReadVariableOp&^lstm_cell_620/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_620/BiasAdd/ReadVariableOp$lstm_cell_620/BiasAdd/ReadVariableOp2J
#lstm_cell_620/MatMul/ReadVariableOp#lstm_cell_620/MatMul/ReadVariableOp2N
%lstm_cell_620/MatMul_1/ReadVariableOp%lstm_cell_620/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
*__inference_lstm_654_layer_call_fn_3755488
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
GPU 2J 8� *N
fIRG
E__inference_lstm_654_layer_call_and_return_conditional_losses_3752459|
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
�	
�
F__inference_dense_218_layer_call_and_return_conditional_losses_3757344

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
�J
�
E__inference_lstm_654_layer_call_and_return_conditional_losses_3755950

inputs?
,lstm_cell_618_matmul_readvariableop_resource:	�A
.lstm_cell_618_matmul_1_readvariableop_resource:	d�<
-lstm_cell_618_biasadd_readvariableop_resource:	�
identity��$lstm_cell_618/BiasAdd/ReadVariableOp�#lstm_cell_618/MatMul/ReadVariableOp�%lstm_cell_618/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_618/MatMul/ReadVariableOpReadVariableOp,lstm_cell_618_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_618/MatMulMatMulstrided_slice_2:output:0+lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_618_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_618/MatMul_1MatMulzeros:output:0-lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_618/addAddV2lstm_cell_618/MatMul:product:0 lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_618_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_618/BiasAddBiasAddlstm_cell_618/add:z:0,lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_618/splitSplit&lstm_cell_618/split/split_dim:output:0lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_618/SigmoidSigmoidlstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_1Sigmoidlstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_618/mulMullstm_cell_618/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_618/ReluRelulstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_1Mullstm_cell_618/Sigmoid:y:0 lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_618/add_1AddV2lstm_cell_618/mul:z:0lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_2Sigmoidlstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_618/Relu_1Relulstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_2Mullstm_cell_618/Sigmoid_2:y:0"lstm_cell_618/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_618_matmul_readvariableop_resource.lstm_cell_618_matmul_1_readvariableop_resource-lstm_cell_618_biasadd_readvariableop_resource*
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
while_body_3755866*
condR
while_cond_3755865*K
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
NoOpNoOp%^lstm_cell_618/BiasAdd/ReadVariableOp$^lstm_cell_618/MatMul/ReadVariableOp&^lstm_cell_618/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_618/BiasAdd/ReadVariableOp$lstm_cell_618/BiasAdd/ReadVariableOp2J
#lstm_cell_618/MatMul/ReadVariableOp#lstm_cell_618/MatMul/ReadVariableOp2N
%lstm_cell_618/MatMul_1/ReadVariableOp%lstm_cell_618/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_619_layer_call_fn_3757459

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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3752726o
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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3752726

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
�
�
/__inference_lstm_cell_620_layer_call_fn_3757557

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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3753076o
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
��
�
K__inference_sequential_218_layer_call_and_return_conditional_losses_3755050

inputsH
5lstm_654_lstm_cell_618_matmul_readvariableop_resource:	�J
7lstm_654_lstm_cell_618_matmul_1_readvariableop_resource:	d�E
6lstm_654_lstm_cell_618_biasadd_readvariableop_resource:	�H
5lstm_655_lstm_cell_619_matmul_readvariableop_resource:	d�J
7lstm_655_lstm_cell_619_matmul_1_readvariableop_resource:	2�E
6lstm_655_lstm_cell_619_biasadd_readvariableop_resource:	�G
5lstm_656_lstm_cell_620_matmul_readvariableop_resource:2(I
7lstm_656_lstm_cell_620_matmul_1_readvariableop_resource:
(D
6lstm_656_lstm_cell_620_biasadd_readvariableop_resource:(:
(dense_218_matmul_readvariableop_resource:
7
)dense_218_biasadd_readvariableop_resource:
identity�� dense_218/BiasAdd/ReadVariableOp�dense_218/MatMul/ReadVariableOp�-lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp�,lstm_654/lstm_cell_618/MatMul/ReadVariableOp�.lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp�lstm_654/while�-lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp�,lstm_655/lstm_cell_619/MatMul/ReadVariableOp�.lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp�lstm_655/while�-lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp�,lstm_656/lstm_cell_620/MatMul/ReadVariableOp�.lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp�lstm_656/whileD
lstm_654/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_654/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_654/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_654/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_654/strided_sliceStridedSlicelstm_654/Shape:output:0%lstm_654/strided_slice/stack:output:0'lstm_654/strided_slice/stack_1:output:0'lstm_654/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_654/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_654/zeros/packedPacklstm_654/strided_slice:output:0 lstm_654/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_654/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_654/zerosFilllstm_654/zeros/packed:output:0lstm_654/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_654/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_654/zeros_1/packedPacklstm_654/strided_slice:output:0"lstm_654/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_654/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_654/zeros_1Fill lstm_654/zeros_1/packed:output:0lstm_654/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_654/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_654/transpose	Transposeinputs lstm_654/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_654/Shape_1Shapelstm_654/transpose:y:0*
T0*
_output_shapes
:h
lstm_654/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_654/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_654/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_654/strided_slice_1StridedSlicelstm_654/Shape_1:output:0'lstm_654/strided_slice_1/stack:output:0)lstm_654/strided_slice_1/stack_1:output:0)lstm_654/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_654/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_654/TensorArrayV2TensorListReserve-lstm_654/TensorArrayV2/element_shape:output:0!lstm_654/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_654/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_654/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_654/transpose:y:0Glstm_654/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_654/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_654/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_654/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_654/strided_slice_2StridedSlicelstm_654/transpose:y:0'lstm_654/strided_slice_2/stack:output:0)lstm_654/strided_slice_2/stack_1:output:0)lstm_654/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_654/lstm_cell_618/MatMul/ReadVariableOpReadVariableOp5lstm_654_lstm_cell_618_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_654/lstm_cell_618/MatMulMatMul!lstm_654/strided_slice_2:output:04lstm_654/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_654/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp7lstm_654_lstm_cell_618_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_654/lstm_cell_618/MatMul_1MatMullstm_654/zeros:output:06lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_654/lstm_cell_618/addAddV2'lstm_654/lstm_cell_618/MatMul:product:0)lstm_654/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_654/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp6lstm_654_lstm_cell_618_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_654/lstm_cell_618/BiasAddBiasAddlstm_654/lstm_cell_618/add:z:05lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_654/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_654/lstm_cell_618/splitSplit/lstm_654/lstm_cell_618/split/split_dim:output:0'lstm_654/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_654/lstm_cell_618/SigmoidSigmoid%lstm_654/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_654/lstm_cell_618/Sigmoid_1Sigmoid%lstm_654/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_654/lstm_cell_618/mulMul$lstm_654/lstm_cell_618/Sigmoid_1:y:0lstm_654/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_654/lstm_cell_618/ReluRelu%lstm_654/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_654/lstm_cell_618/mul_1Mul"lstm_654/lstm_cell_618/Sigmoid:y:0)lstm_654/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_654/lstm_cell_618/add_1AddV2lstm_654/lstm_cell_618/mul:z:0 lstm_654/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_654/lstm_cell_618/Sigmoid_2Sigmoid%lstm_654/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_654/lstm_cell_618/Relu_1Relu lstm_654/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_654/lstm_cell_618/mul_2Mul$lstm_654/lstm_cell_618/Sigmoid_2:y:0+lstm_654/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_654/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_654/TensorArrayV2_1TensorListReserve/lstm_654/TensorArrayV2_1/element_shape:output:0!lstm_654/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_654/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_654/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_654/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_654/whileWhile$lstm_654/while/loop_counter:output:0*lstm_654/while/maximum_iterations:output:0lstm_654/time:output:0!lstm_654/TensorArrayV2_1:handle:0lstm_654/zeros:output:0lstm_654/zeros_1:output:0!lstm_654/strided_slice_1:output:0@lstm_654/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_654_lstm_cell_618_matmul_readvariableop_resource7lstm_654_lstm_cell_618_matmul_1_readvariableop_resource6lstm_654_lstm_cell_618_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_654_while_body_3754682*'
condR
lstm_654_while_cond_3754681*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_654/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_654/TensorArrayV2Stack/TensorListStackTensorListStacklstm_654/while:output:3Blstm_654/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_654/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_654/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_654/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_654/strided_slice_3StridedSlice4lstm_654/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_654/strided_slice_3/stack:output:0)lstm_654/strided_slice_3/stack_1:output:0)lstm_654/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_654/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_654/transpose_1	Transpose4lstm_654/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_654/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_654/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_655/ShapeShapelstm_654/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_655/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_655/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_655/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_655/strided_sliceStridedSlicelstm_655/Shape:output:0%lstm_655/strided_slice/stack:output:0'lstm_655/strided_slice/stack_1:output:0'lstm_655/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_655/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_655/zeros/packedPacklstm_655/strided_slice:output:0 lstm_655/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_655/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_655/zerosFilllstm_655/zeros/packed:output:0lstm_655/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_655/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_655/zeros_1/packedPacklstm_655/strided_slice:output:0"lstm_655/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_655/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_655/zeros_1Fill lstm_655/zeros_1/packed:output:0lstm_655/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_655/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_655/transpose	Transposelstm_654/transpose_1:y:0 lstm_655/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_655/Shape_1Shapelstm_655/transpose:y:0*
T0*
_output_shapes
:h
lstm_655/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_655/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_655/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_655/strided_slice_1StridedSlicelstm_655/Shape_1:output:0'lstm_655/strided_slice_1/stack:output:0)lstm_655/strided_slice_1/stack_1:output:0)lstm_655/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_655/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_655/TensorArrayV2TensorListReserve-lstm_655/TensorArrayV2/element_shape:output:0!lstm_655/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_655/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_655/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_655/transpose:y:0Glstm_655/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_655/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_655/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_655/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_655/strided_slice_2StridedSlicelstm_655/transpose:y:0'lstm_655/strided_slice_2/stack:output:0)lstm_655/strided_slice_2/stack_1:output:0)lstm_655/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_655/lstm_cell_619/MatMul/ReadVariableOpReadVariableOp5lstm_655_lstm_cell_619_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_655/lstm_cell_619/MatMulMatMul!lstm_655/strided_slice_2:output:04lstm_655/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_655/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp7lstm_655_lstm_cell_619_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_655/lstm_cell_619/MatMul_1MatMullstm_655/zeros:output:06lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_655/lstm_cell_619/addAddV2'lstm_655/lstm_cell_619/MatMul:product:0)lstm_655/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_655/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp6lstm_655_lstm_cell_619_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_655/lstm_cell_619/BiasAddBiasAddlstm_655/lstm_cell_619/add:z:05lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_655/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_655/lstm_cell_619/splitSplit/lstm_655/lstm_cell_619/split/split_dim:output:0'lstm_655/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_655/lstm_cell_619/SigmoidSigmoid%lstm_655/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_655/lstm_cell_619/Sigmoid_1Sigmoid%lstm_655/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_655/lstm_cell_619/mulMul$lstm_655/lstm_cell_619/Sigmoid_1:y:0lstm_655/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_655/lstm_cell_619/ReluRelu%lstm_655/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_655/lstm_cell_619/mul_1Mul"lstm_655/lstm_cell_619/Sigmoid:y:0)lstm_655/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_655/lstm_cell_619/add_1AddV2lstm_655/lstm_cell_619/mul:z:0 lstm_655/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_655/lstm_cell_619/Sigmoid_2Sigmoid%lstm_655/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_655/lstm_cell_619/Relu_1Relu lstm_655/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_655/lstm_cell_619/mul_2Mul$lstm_655/lstm_cell_619/Sigmoid_2:y:0+lstm_655/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_655/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_655/TensorArrayV2_1TensorListReserve/lstm_655/TensorArrayV2_1/element_shape:output:0!lstm_655/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_655/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_655/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_655/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_655/whileWhile$lstm_655/while/loop_counter:output:0*lstm_655/while/maximum_iterations:output:0lstm_655/time:output:0!lstm_655/TensorArrayV2_1:handle:0lstm_655/zeros:output:0lstm_655/zeros_1:output:0!lstm_655/strided_slice_1:output:0@lstm_655/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_655_lstm_cell_619_matmul_readvariableop_resource7lstm_655_lstm_cell_619_matmul_1_readvariableop_resource6lstm_655_lstm_cell_619_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_655_while_body_3754821*'
condR
lstm_655_while_cond_3754820*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_655/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_655/TensorArrayV2Stack/TensorListStackTensorListStacklstm_655/while:output:3Blstm_655/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_655/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_655/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_655/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_655/strided_slice_3StridedSlice4lstm_655/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_655/strided_slice_3/stack:output:0)lstm_655/strided_slice_3/stack_1:output:0)lstm_655/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_655/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_655/transpose_1	Transpose4lstm_655/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_655/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_655/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_656/ShapeShapelstm_655/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_656/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_656/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_656/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_656/strided_sliceStridedSlicelstm_656/Shape:output:0%lstm_656/strided_slice/stack:output:0'lstm_656/strided_slice/stack_1:output:0'lstm_656/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_656/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_656/zeros/packedPacklstm_656/strided_slice:output:0 lstm_656/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_656/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_656/zerosFilllstm_656/zeros/packed:output:0lstm_656/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_656/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_656/zeros_1/packedPacklstm_656/strided_slice:output:0"lstm_656/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_656/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_656/zeros_1Fill lstm_656/zeros_1/packed:output:0lstm_656/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_656/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_656/transpose	Transposelstm_655/transpose_1:y:0 lstm_656/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_656/Shape_1Shapelstm_656/transpose:y:0*
T0*
_output_shapes
:h
lstm_656/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_656/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_656/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_656/strided_slice_1StridedSlicelstm_656/Shape_1:output:0'lstm_656/strided_slice_1/stack:output:0)lstm_656/strided_slice_1/stack_1:output:0)lstm_656/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_656/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_656/TensorArrayV2TensorListReserve-lstm_656/TensorArrayV2/element_shape:output:0!lstm_656/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_656/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_656/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_656/transpose:y:0Glstm_656/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_656/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_656/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_656/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_656/strided_slice_2StridedSlicelstm_656/transpose:y:0'lstm_656/strided_slice_2/stack:output:0)lstm_656/strided_slice_2/stack_1:output:0)lstm_656/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_656/lstm_cell_620/MatMul/ReadVariableOpReadVariableOp5lstm_656_lstm_cell_620_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_656/lstm_cell_620/MatMulMatMul!lstm_656/strided_slice_2:output:04lstm_656/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_656/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp7lstm_656_lstm_cell_620_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_656/lstm_cell_620/MatMul_1MatMullstm_656/zeros:output:06lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_656/lstm_cell_620/addAddV2'lstm_656/lstm_cell_620/MatMul:product:0)lstm_656/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_656/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp6lstm_656_lstm_cell_620_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_656/lstm_cell_620/BiasAddBiasAddlstm_656/lstm_cell_620/add:z:05lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_656/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_656/lstm_cell_620/splitSplit/lstm_656/lstm_cell_620/split/split_dim:output:0'lstm_656/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_656/lstm_cell_620/SigmoidSigmoid%lstm_656/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_656/lstm_cell_620/Sigmoid_1Sigmoid%lstm_656/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_656/lstm_cell_620/mulMul$lstm_656/lstm_cell_620/Sigmoid_1:y:0lstm_656/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_656/lstm_cell_620/ReluRelu%lstm_656/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_656/lstm_cell_620/mul_1Mul"lstm_656/lstm_cell_620/Sigmoid:y:0)lstm_656/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_656/lstm_cell_620/add_1AddV2lstm_656/lstm_cell_620/mul:z:0 lstm_656/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_656/lstm_cell_620/Sigmoid_2Sigmoid%lstm_656/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_656/lstm_cell_620/Relu_1Relu lstm_656/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_656/lstm_cell_620/mul_2Mul$lstm_656/lstm_cell_620/Sigmoid_2:y:0+lstm_656/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_656/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_656/TensorArrayV2_1TensorListReserve/lstm_656/TensorArrayV2_1/element_shape:output:0!lstm_656/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_656/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_656/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_656/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_656/whileWhile$lstm_656/while/loop_counter:output:0*lstm_656/while/maximum_iterations:output:0lstm_656/time:output:0!lstm_656/TensorArrayV2_1:handle:0lstm_656/zeros:output:0lstm_656/zeros_1:output:0!lstm_656/strided_slice_1:output:0@lstm_656/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_656_lstm_cell_620_matmul_readvariableop_resource7lstm_656_lstm_cell_620_matmul_1_readvariableop_resource6lstm_656_lstm_cell_620_biasadd_readvariableop_resource*
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
_stateful_parallelism( *'
bodyR
lstm_656_while_body_3754960*'
condR
lstm_656_while_cond_3754959*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_656/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_656/TensorArrayV2Stack/TensorListStackTensorListStacklstm_656/while:output:3Blstm_656/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_656/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_656/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_656/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_656/strided_slice_3StridedSlice4lstm_656/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_656/strided_slice_3/stack:output:0)lstm_656/strided_slice_3/stack_1:output:0)lstm_656/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_656/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_656/transpose_1	Transpose4lstm_656/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_656/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_656/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_218/MatMul/ReadVariableOpReadVariableOp(dense_218_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_218/MatMulMatMul!lstm_656/strided_slice_3:output:0'dense_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_218/BiasAdd/ReadVariableOpReadVariableOp)dense_218_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_218/BiasAddBiasAdddense_218/MatMul:product:0(dense_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_218/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_218/BiasAdd/ReadVariableOp ^dense_218/MatMul/ReadVariableOp.^lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp-^lstm_654/lstm_cell_618/MatMul/ReadVariableOp/^lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp^lstm_654/while.^lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp-^lstm_655/lstm_cell_619/MatMul/ReadVariableOp/^lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp^lstm_655/while.^lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp-^lstm_656/lstm_cell_620/MatMul/ReadVariableOp/^lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp^lstm_656/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_218/BiasAdd/ReadVariableOp dense_218/BiasAdd/ReadVariableOp2B
dense_218/MatMul/ReadVariableOpdense_218/MatMul/ReadVariableOp2^
-lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp-lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp2\
,lstm_654/lstm_cell_618/MatMul/ReadVariableOp,lstm_654/lstm_cell_618/MatMul/ReadVariableOp2`
.lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp.lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp2 
lstm_654/whilelstm_654/while2^
-lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp-lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp2\
,lstm_655/lstm_cell_619/MatMul/ReadVariableOp,lstm_655/lstm_cell_619/MatMul/ReadVariableOp2`
.lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp.lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp2 
lstm_655/whilelstm_655/while2^
-lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp-lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp2\
,lstm_656/lstm_cell_620/MatMul/ReadVariableOp,lstm_656/lstm_cell_620/MatMul/ReadVariableOp2`
.lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp.lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp2 
lstm_656/whilelstm_656/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_3753089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3753089___redundant_placeholder05
1while_while_cond_3753089___redundant_placeholder15
1while_while_cond_3753089___redundant_placeholder25
1while_while_cond_3753089___redundant_placeholder3
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
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756709

inputs?
,lstm_cell_619_matmul_readvariableop_resource:	d�A
.lstm_cell_619_matmul_1_readvariableop_resource:	2�<
-lstm_cell_619_biasadd_readvariableop_resource:	�
identity��$lstm_cell_619/BiasAdd/ReadVariableOp�#lstm_cell_619/MatMul/ReadVariableOp�%lstm_cell_619/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_619/MatMul/ReadVariableOpReadVariableOp,lstm_cell_619_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_619/MatMulMatMulstrided_slice_2:output:0+lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_619_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_619/MatMul_1MatMulzeros:output:0-lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_619/addAddV2lstm_cell_619/MatMul:product:0 lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_619_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_619/BiasAddBiasAddlstm_cell_619/add:z:0,lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_619/splitSplit&lstm_cell_619/split/split_dim:output:0lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_619/SigmoidSigmoidlstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_1Sigmoidlstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_619/mulMullstm_cell_619/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_619/ReluRelulstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_1Mullstm_cell_619/Sigmoid:y:0 lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_619/add_1AddV2lstm_cell_619/mul:z:0lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_2Sigmoidlstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_619/Relu_1Relulstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_2Mullstm_cell_619/Sigmoid_2:y:0"lstm_cell_619/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_619_matmul_readvariableop_resource.lstm_cell_619_matmul_1_readvariableop_resource-lstm_cell_619_biasadd_readvariableop_resource*
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
while_body_3756625*
condR
while_cond_3756624*K
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
NoOpNoOp%^lstm_cell_619/BiasAdd/ReadVariableOp$^lstm_cell_619/MatMul/ReadVariableOp&^lstm_cell_619/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_619/BiasAdd/ReadVariableOp$lstm_cell_619/BiasAdd/ReadVariableOp2J
#lstm_cell_619/MatMul/ReadVariableOp#lstm_cell_619/MatMul/ReadVariableOp2N
%lstm_cell_619/MatMul_1/ReadVariableOp%lstm_cell_619/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
lstm_656_while_cond_3754959.
*lstm_656_while_lstm_656_while_loop_counter4
0lstm_656_while_lstm_656_while_maximum_iterations
lstm_656_while_placeholder 
lstm_656_while_placeholder_1 
lstm_656_while_placeholder_2 
lstm_656_while_placeholder_30
,lstm_656_while_less_lstm_656_strided_slice_1G
Clstm_656_while_lstm_656_while_cond_3754959___redundant_placeholder0G
Clstm_656_while_lstm_656_while_cond_3754959___redundant_placeholder1G
Clstm_656_while_lstm_656_while_cond_3754959___redundant_placeholder2G
Clstm_656_while_lstm_656_while_cond_3754959___redundant_placeholder3
lstm_656_while_identity
�
lstm_656/while/LessLesslstm_656_while_placeholder,lstm_656_while_less_lstm_656_strided_slice_1*
T0*
_output_shapes
: ]
lstm_656/while/IdentityIdentitylstm_656/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_656_while_identity lstm_656/while/Identity:output:0*(
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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3753076

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
�#
�
while_body_3753281
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_620_3753305_0:2(/
while_lstm_cell_620_3753307_0:
(+
while_lstm_cell_620_3753309_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_620_3753305:2(-
while_lstm_cell_620_3753307:
()
while_lstm_cell_620_3753309:(��+while/lstm_cell_620/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_620/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_620_3753305_0while_lstm_cell_620_3753307_0while_lstm_cell_620_3753309_0*
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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3753222�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_620/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_620/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_620/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_620/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_620_3753305while_lstm_cell_620_3753305_0"<
while_lstm_cell_620_3753307while_lstm_cell_620_3753307_0"<
while_lstm_cell_620_3753309while_lstm_cell_620_3753309_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_620/StatefulPartitionedCall+while/lstm_cell_620/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

�
%__inference_signature_wrapper_3754569
lstm_654_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_654_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3752309o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_654_input
�
�
/__inference_lstm_cell_620_layer_call_fn_3757574

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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3753222o
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
�J
�
E__inference_lstm_655_layer_call_and_return_conditional_losses_3754189

inputs?
,lstm_cell_619_matmul_readvariableop_resource:	d�A
.lstm_cell_619_matmul_1_readvariableop_resource:	2�<
-lstm_cell_619_biasadd_readvariableop_resource:	�
identity��$lstm_cell_619/BiasAdd/ReadVariableOp�#lstm_cell_619/MatMul/ReadVariableOp�%lstm_cell_619/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_619/MatMul/ReadVariableOpReadVariableOp,lstm_cell_619_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_619/MatMulMatMulstrided_slice_2:output:0+lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_619_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_619/MatMul_1MatMulzeros:output:0-lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_619/addAddV2lstm_cell_619/MatMul:product:0 lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_619_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_619/BiasAddBiasAddlstm_cell_619/add:z:0,lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_619/splitSplit&lstm_cell_619/split/split_dim:output:0lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_619/SigmoidSigmoidlstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_1Sigmoidlstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_619/mulMullstm_cell_619/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_619/ReluRelulstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_1Mullstm_cell_619/Sigmoid:y:0 lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_619/add_1AddV2lstm_cell_619/mul:z:0lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_2Sigmoidlstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_619/Relu_1Relulstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_2Mullstm_cell_619/Sigmoid_2:y:0"lstm_cell_619/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_619_matmul_readvariableop_resource.lstm_cell_619_matmul_1_readvariableop_resource-lstm_cell_619_biasadd_readvariableop_resource*
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
while_body_3754105*
condR
while_cond_3754104*K
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
NoOpNoOp%^lstm_cell_619/BiasAdd/ReadVariableOp$^lstm_cell_619/MatMul/ReadVariableOp&^lstm_cell_619/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_619/BiasAdd/ReadVariableOp$lstm_cell_619/BiasAdd/ReadVariableOp2J
#lstm_cell_619/MatMul/ReadVariableOp#lstm_cell_619/MatMul/ReadVariableOp2N
%lstm_cell_619/MatMul_1/ReadVariableOp%lstm_cell_619/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
*__inference_lstm_655_layer_call_fn_3756137

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
GPU 2J 8� *N
fIRG
E__inference_lstm_655_layer_call_and_return_conditional_losses_3754189s
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
�8
�
while_body_3755580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_618_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_618_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_618_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_618_matmul_readvariableop_resource:	�G
4while_lstm_cell_618_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_618_biasadd_readvariableop_resource:	���*while/lstm_cell_618/BiasAdd/ReadVariableOp�)while/lstm_cell_618/MatMul/ReadVariableOp�+while/lstm_cell_618/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_618/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_618_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_618/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_618_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_618/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_618/addAddV2$while/lstm_cell_618/MatMul:product:0&while/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_618_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_618/BiasAddBiasAddwhile/lstm_cell_618/add:z:02while/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_618/splitSplit,while/lstm_cell_618/split/split_dim:output:0$while/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_618/SigmoidSigmoid"while/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_1Sigmoid"while/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mulMul!while/lstm_cell_618/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_618/ReluRelu"while/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_1Mulwhile/lstm_cell_618/Sigmoid:y:0&while/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/add_1AddV2while/lstm_cell_618/mul:z:0while/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_2Sigmoid"while/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_618/Relu_1Reluwhile/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_2Mul!while/lstm_cell_618/Sigmoid_2:y:0(while/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_618/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_618/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_618/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_618/BiasAdd/ReadVariableOp*^while/lstm_cell_618/MatMul/ReadVariableOp,^while/lstm_cell_618/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_618_biasadd_readvariableop_resource5while_lstm_cell_618_biasadd_readvariableop_resource_0"n
4while_lstm_cell_618_matmul_1_readvariableop_resource6while_lstm_cell_618_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_618_matmul_readvariableop_resource4while_lstm_cell_618_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_618/BiasAdd/ReadVariableOp*while/lstm_cell_618/BiasAdd/ReadVariableOp2V
)while/lstm_cell_618/MatMul/ReadVariableOp)while/lstm_cell_618/MatMul/ReadVariableOp2Z
+while/lstm_cell_618/MatMul_1/ReadVariableOp+while/lstm_cell_618/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3752930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3752930___redundant_placeholder05
1while_while_cond_3752930___redundant_placeholder15
1while_while_cond_3752930___redundant_placeholder25
1while_while_cond_3752930___redundant_placeholder3
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
while_cond_3754104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3754104___redundant_placeholder05
1while_while_cond_3754104___redundant_placeholder15
1while_while_cond_3754104___redundant_placeholder25
1while_while_cond_3754104___redundant_placeholder3
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
��
�
"__inference__wrapped_model_3752309
lstm_654_inputW
Dsequential_218_lstm_654_lstm_cell_618_matmul_readvariableop_resource:	�Y
Fsequential_218_lstm_654_lstm_cell_618_matmul_1_readvariableop_resource:	d�T
Esequential_218_lstm_654_lstm_cell_618_biasadd_readvariableop_resource:	�W
Dsequential_218_lstm_655_lstm_cell_619_matmul_readvariableop_resource:	d�Y
Fsequential_218_lstm_655_lstm_cell_619_matmul_1_readvariableop_resource:	2�T
Esequential_218_lstm_655_lstm_cell_619_biasadd_readvariableop_resource:	�V
Dsequential_218_lstm_656_lstm_cell_620_matmul_readvariableop_resource:2(X
Fsequential_218_lstm_656_lstm_cell_620_matmul_1_readvariableop_resource:
(S
Esequential_218_lstm_656_lstm_cell_620_biasadd_readvariableop_resource:(I
7sequential_218_dense_218_matmul_readvariableop_resource:
F
8sequential_218_dense_218_biasadd_readvariableop_resource:
identity��/sequential_218/dense_218/BiasAdd/ReadVariableOp�.sequential_218/dense_218/MatMul/ReadVariableOp�<sequential_218/lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp�;sequential_218/lstm_654/lstm_cell_618/MatMul/ReadVariableOp�=sequential_218/lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp�sequential_218/lstm_654/while�<sequential_218/lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp�;sequential_218/lstm_655/lstm_cell_619/MatMul/ReadVariableOp�=sequential_218/lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp�sequential_218/lstm_655/while�<sequential_218/lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp�;sequential_218/lstm_656/lstm_cell_620/MatMul/ReadVariableOp�=sequential_218/lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp�sequential_218/lstm_656/while[
sequential_218/lstm_654/ShapeShapelstm_654_input*
T0*
_output_shapes
:u
+sequential_218/lstm_654/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_218/lstm_654/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_218/lstm_654/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_218/lstm_654/strided_sliceStridedSlice&sequential_218/lstm_654/Shape:output:04sequential_218/lstm_654/strided_slice/stack:output:06sequential_218/lstm_654/strided_slice/stack_1:output:06sequential_218/lstm_654/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_218/lstm_654/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_218/lstm_654/zeros/packedPack.sequential_218/lstm_654/strided_slice:output:0/sequential_218/lstm_654/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_218/lstm_654/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_218/lstm_654/zerosFill-sequential_218/lstm_654/zeros/packed:output:0,sequential_218/lstm_654/zeros/Const:output:0*
T0*'
_output_shapes
:���������dj
(sequential_218/lstm_654/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
&sequential_218/lstm_654/zeros_1/packedPack.sequential_218/lstm_654/strided_slice:output:01sequential_218/lstm_654/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_218/lstm_654/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_218/lstm_654/zeros_1Fill/sequential_218/lstm_654/zeros_1/packed:output:0.sequential_218/lstm_654/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d{
&sequential_218/lstm_654/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_218/lstm_654/transpose	Transposelstm_654_input/sequential_218/lstm_654/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
sequential_218/lstm_654/Shape_1Shape%sequential_218/lstm_654/transpose:y:0*
T0*
_output_shapes
:w
-sequential_218/lstm_654/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_218/lstm_654/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_218/lstm_654/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_218/lstm_654/strided_slice_1StridedSlice(sequential_218/lstm_654/Shape_1:output:06sequential_218/lstm_654/strided_slice_1/stack:output:08sequential_218/lstm_654/strided_slice_1/stack_1:output:08sequential_218/lstm_654/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_218/lstm_654/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_218/lstm_654/TensorArrayV2TensorListReserve<sequential_218/lstm_654/TensorArrayV2/element_shape:output:00sequential_218/lstm_654/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_218/lstm_654/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_218/lstm_654/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_218/lstm_654/transpose:y:0Vsequential_218/lstm_654/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_218/lstm_654/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_218/lstm_654/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_218/lstm_654/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_218/lstm_654/strided_slice_2StridedSlice%sequential_218/lstm_654/transpose:y:06sequential_218/lstm_654/strided_slice_2/stack:output:08sequential_218/lstm_654/strided_slice_2/stack_1:output:08sequential_218/lstm_654/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
;sequential_218/lstm_654/lstm_cell_618/MatMul/ReadVariableOpReadVariableOpDsequential_218_lstm_654_lstm_cell_618_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,sequential_218/lstm_654/lstm_cell_618/MatMulMatMul0sequential_218/lstm_654/strided_slice_2:output:0Csequential_218/lstm_654/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_218/lstm_654/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOpFsequential_218_lstm_654_lstm_cell_618_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
.sequential_218/lstm_654/lstm_cell_618/MatMul_1MatMul&sequential_218/lstm_654/zeros:output:0Esequential_218/lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_218/lstm_654/lstm_cell_618/addAddV26sequential_218/lstm_654/lstm_cell_618/MatMul:product:08sequential_218/lstm_654/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_218/lstm_654/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOpEsequential_218_lstm_654_lstm_cell_618_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_218/lstm_654/lstm_cell_618/BiasAddBiasAdd-sequential_218/lstm_654/lstm_cell_618/add:z:0Dsequential_218/lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_218/lstm_654/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_218/lstm_654/lstm_cell_618/splitSplit>sequential_218/lstm_654/lstm_cell_618/split/split_dim:output:06sequential_218/lstm_654/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_218/lstm_654/lstm_cell_618/SigmoidSigmoid4sequential_218/lstm_654/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_218/lstm_654/lstm_cell_618/Sigmoid_1Sigmoid4sequential_218/lstm_654/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_218/lstm_654/lstm_cell_618/mulMul3sequential_218/lstm_654/lstm_cell_618/Sigmoid_1:y:0(sequential_218/lstm_654/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential_218/lstm_654/lstm_cell_618/ReluRelu4sequential_218/lstm_654/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_218/lstm_654/lstm_cell_618/mul_1Mul1sequential_218/lstm_654/lstm_cell_618/Sigmoid:y:08sequential_218/lstm_654/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_218/lstm_654/lstm_cell_618/add_1AddV2-sequential_218/lstm_654/lstm_cell_618/mul:z:0/sequential_218/lstm_654/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_218/lstm_654/lstm_cell_618/Sigmoid_2Sigmoid4sequential_218/lstm_654/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_218/lstm_654/lstm_cell_618/Relu_1Relu/sequential_218/lstm_654/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_218/lstm_654/lstm_cell_618/mul_2Mul3sequential_218/lstm_654/lstm_cell_618/Sigmoid_2:y:0:sequential_218/lstm_654/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
5sequential_218/lstm_654/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'sequential_218/lstm_654/TensorArrayV2_1TensorListReserve>sequential_218/lstm_654/TensorArrayV2_1/element_shape:output:00sequential_218/lstm_654/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_218/lstm_654/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_218/lstm_654/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_218/lstm_654/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_218/lstm_654/whileWhile3sequential_218/lstm_654/while/loop_counter:output:09sequential_218/lstm_654/while/maximum_iterations:output:0%sequential_218/lstm_654/time:output:00sequential_218/lstm_654/TensorArrayV2_1:handle:0&sequential_218/lstm_654/zeros:output:0(sequential_218/lstm_654/zeros_1:output:00sequential_218/lstm_654/strided_slice_1:output:0Osequential_218/lstm_654/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_218_lstm_654_lstm_cell_618_matmul_readvariableop_resourceFsequential_218_lstm_654_lstm_cell_618_matmul_1_readvariableop_resourceEsequential_218_lstm_654_lstm_cell_618_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_218_lstm_654_while_body_3751941*6
cond.R,
*sequential_218_lstm_654_while_cond_3751940*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Hsequential_218/lstm_654/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
:sequential_218/lstm_654/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_218/lstm_654/while:output:3Qsequential_218/lstm_654/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0�
-sequential_218/lstm_654/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_218/lstm_654/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_218/lstm_654/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_218/lstm_654/strided_slice_3StridedSliceCsequential_218/lstm_654/TensorArrayV2Stack/TensorListStack:tensor:06sequential_218/lstm_654/strided_slice_3/stack:output:08sequential_218/lstm_654/strided_slice_3/stack_1:output:08sequential_218/lstm_654/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask}
(sequential_218/lstm_654/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_218/lstm_654/transpose_1	TransposeCsequential_218/lstm_654/TensorArrayV2Stack/TensorListStack:tensor:01sequential_218/lstm_654/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ds
sequential_218/lstm_654/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_218/lstm_655/ShapeShape'sequential_218/lstm_654/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_218/lstm_655/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_218/lstm_655/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_218/lstm_655/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_218/lstm_655/strided_sliceStridedSlice&sequential_218/lstm_655/Shape:output:04sequential_218/lstm_655/strided_slice/stack:output:06sequential_218/lstm_655/strided_slice/stack_1:output:06sequential_218/lstm_655/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_218/lstm_655/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_218/lstm_655/zeros/packedPack.sequential_218/lstm_655/strided_slice:output:0/sequential_218/lstm_655/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_218/lstm_655/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_218/lstm_655/zerosFill-sequential_218/lstm_655/zeros/packed:output:0,sequential_218/lstm_655/zeros/Const:output:0*
T0*'
_output_shapes
:���������2j
(sequential_218/lstm_655/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
&sequential_218/lstm_655/zeros_1/packedPack.sequential_218/lstm_655/strided_slice:output:01sequential_218/lstm_655/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_218/lstm_655/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_218/lstm_655/zeros_1Fill/sequential_218/lstm_655/zeros_1/packed:output:0.sequential_218/lstm_655/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2{
&sequential_218/lstm_655/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_218/lstm_655/transpose	Transpose'sequential_218/lstm_654/transpose_1:y:0/sequential_218/lstm_655/transpose/perm:output:0*
T0*+
_output_shapes
:���������dt
sequential_218/lstm_655/Shape_1Shape%sequential_218/lstm_655/transpose:y:0*
T0*
_output_shapes
:w
-sequential_218/lstm_655/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_218/lstm_655/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_218/lstm_655/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_218/lstm_655/strided_slice_1StridedSlice(sequential_218/lstm_655/Shape_1:output:06sequential_218/lstm_655/strided_slice_1/stack:output:08sequential_218/lstm_655/strided_slice_1/stack_1:output:08sequential_218/lstm_655/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_218/lstm_655/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_218/lstm_655/TensorArrayV2TensorListReserve<sequential_218/lstm_655/TensorArrayV2/element_shape:output:00sequential_218/lstm_655/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_218/lstm_655/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_218/lstm_655/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_218/lstm_655/transpose:y:0Vsequential_218/lstm_655/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_218/lstm_655/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_218/lstm_655/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_218/lstm_655/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_218/lstm_655/strided_slice_2StridedSlice%sequential_218/lstm_655/transpose:y:06sequential_218/lstm_655/strided_slice_2/stack:output:08sequential_218/lstm_655/strided_slice_2/stack_1:output:08sequential_218/lstm_655/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
;sequential_218/lstm_655/lstm_cell_619/MatMul/ReadVariableOpReadVariableOpDsequential_218_lstm_655_lstm_cell_619_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_218/lstm_655/lstm_cell_619/MatMulMatMul0sequential_218/lstm_655/strided_slice_2:output:0Csequential_218/lstm_655/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_218/lstm_655/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOpFsequential_218_lstm_655_lstm_cell_619_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
.sequential_218/lstm_655/lstm_cell_619/MatMul_1MatMul&sequential_218/lstm_655/zeros:output:0Esequential_218/lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_218/lstm_655/lstm_cell_619/addAddV26sequential_218/lstm_655/lstm_cell_619/MatMul:product:08sequential_218/lstm_655/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_218/lstm_655/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOpEsequential_218_lstm_655_lstm_cell_619_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_218/lstm_655/lstm_cell_619/BiasAddBiasAdd-sequential_218/lstm_655/lstm_cell_619/add:z:0Dsequential_218/lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_218/lstm_655/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_218/lstm_655/lstm_cell_619/splitSplit>sequential_218/lstm_655/lstm_cell_619/split/split_dim:output:06sequential_218/lstm_655/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
-sequential_218/lstm_655/lstm_cell_619/SigmoidSigmoid4sequential_218/lstm_655/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2�
/sequential_218/lstm_655/lstm_cell_619/Sigmoid_1Sigmoid4sequential_218/lstm_655/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
)sequential_218/lstm_655/lstm_cell_619/mulMul3sequential_218/lstm_655/lstm_cell_619/Sigmoid_1:y:0(sequential_218/lstm_655/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential_218/lstm_655/lstm_cell_619/ReluRelu4sequential_218/lstm_655/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
+sequential_218/lstm_655/lstm_cell_619/mul_1Mul1sequential_218/lstm_655/lstm_cell_619/Sigmoid:y:08sequential_218/lstm_655/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
+sequential_218/lstm_655/lstm_cell_619/add_1AddV2-sequential_218/lstm_655/lstm_cell_619/mul:z:0/sequential_218/lstm_655/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_218/lstm_655/lstm_cell_619/Sigmoid_2Sigmoid4sequential_218/lstm_655/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2�
,sequential_218/lstm_655/lstm_cell_619/Relu_1Relu/sequential_218/lstm_655/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_218/lstm_655/lstm_cell_619/mul_2Mul3sequential_218/lstm_655/lstm_cell_619/Sigmoid_2:y:0:sequential_218/lstm_655/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
5sequential_218/lstm_655/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'sequential_218/lstm_655/TensorArrayV2_1TensorListReserve>sequential_218/lstm_655/TensorArrayV2_1/element_shape:output:00sequential_218/lstm_655/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_218/lstm_655/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_218/lstm_655/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_218/lstm_655/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_218/lstm_655/whileWhile3sequential_218/lstm_655/while/loop_counter:output:09sequential_218/lstm_655/while/maximum_iterations:output:0%sequential_218/lstm_655/time:output:00sequential_218/lstm_655/TensorArrayV2_1:handle:0&sequential_218/lstm_655/zeros:output:0(sequential_218/lstm_655/zeros_1:output:00sequential_218/lstm_655/strided_slice_1:output:0Osequential_218/lstm_655/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_218_lstm_655_lstm_cell_619_matmul_readvariableop_resourceFsequential_218_lstm_655_lstm_cell_619_matmul_1_readvariableop_resourceEsequential_218_lstm_655_lstm_cell_619_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_218_lstm_655_while_body_3752080*6
cond.R,
*sequential_218_lstm_655_while_cond_3752079*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Hsequential_218/lstm_655/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
:sequential_218/lstm_655/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_218/lstm_655/while:output:3Qsequential_218/lstm_655/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0�
-sequential_218/lstm_655/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_218/lstm_655/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_218/lstm_655/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_218/lstm_655/strided_slice_3StridedSliceCsequential_218/lstm_655/TensorArrayV2Stack/TensorListStack:tensor:06sequential_218/lstm_655/strided_slice_3/stack:output:08sequential_218/lstm_655/strided_slice_3/stack_1:output:08sequential_218/lstm_655/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask}
(sequential_218/lstm_655/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_218/lstm_655/transpose_1	TransposeCsequential_218/lstm_655/TensorArrayV2Stack/TensorListStack:tensor:01sequential_218/lstm_655/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2s
sequential_218/lstm_655/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_218/lstm_656/ShapeShape'sequential_218/lstm_655/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_218/lstm_656/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_218/lstm_656/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_218/lstm_656/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_218/lstm_656/strided_sliceStridedSlice&sequential_218/lstm_656/Shape:output:04sequential_218/lstm_656/strided_slice/stack:output:06sequential_218/lstm_656/strided_slice/stack_1:output:06sequential_218/lstm_656/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_218/lstm_656/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_218/lstm_656/zeros/packedPack.sequential_218/lstm_656/strided_slice:output:0/sequential_218/lstm_656/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_218/lstm_656/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_218/lstm_656/zerosFill-sequential_218/lstm_656/zeros/packed:output:0,sequential_218/lstm_656/zeros/Const:output:0*
T0*'
_output_shapes
:���������
j
(sequential_218/lstm_656/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&sequential_218/lstm_656/zeros_1/packedPack.sequential_218/lstm_656/strided_slice:output:01sequential_218/lstm_656/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_218/lstm_656/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_218/lstm_656/zeros_1Fill/sequential_218/lstm_656/zeros_1/packed:output:0.sequential_218/lstm_656/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
{
&sequential_218/lstm_656/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_218/lstm_656/transpose	Transpose'sequential_218/lstm_655/transpose_1:y:0/sequential_218/lstm_656/transpose/perm:output:0*
T0*+
_output_shapes
:���������2t
sequential_218/lstm_656/Shape_1Shape%sequential_218/lstm_656/transpose:y:0*
T0*
_output_shapes
:w
-sequential_218/lstm_656/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_218/lstm_656/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_218/lstm_656/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_218/lstm_656/strided_slice_1StridedSlice(sequential_218/lstm_656/Shape_1:output:06sequential_218/lstm_656/strided_slice_1/stack:output:08sequential_218/lstm_656/strided_slice_1/stack_1:output:08sequential_218/lstm_656/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_218/lstm_656/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_218/lstm_656/TensorArrayV2TensorListReserve<sequential_218/lstm_656/TensorArrayV2/element_shape:output:00sequential_218/lstm_656/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_218/lstm_656/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_218/lstm_656/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_218/lstm_656/transpose:y:0Vsequential_218/lstm_656/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_218/lstm_656/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_218/lstm_656/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_218/lstm_656/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_218/lstm_656/strided_slice_2StridedSlice%sequential_218/lstm_656/transpose:y:06sequential_218/lstm_656/strided_slice_2/stack:output:08sequential_218/lstm_656/strided_slice_2/stack_1:output:08sequential_218/lstm_656/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
;sequential_218/lstm_656/lstm_cell_620/MatMul/ReadVariableOpReadVariableOpDsequential_218_lstm_656_lstm_cell_620_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
,sequential_218/lstm_656/lstm_cell_620/MatMulMatMul0sequential_218/lstm_656/strided_slice_2:output:0Csequential_218/lstm_656/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
=sequential_218/lstm_656/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOpFsequential_218_lstm_656_lstm_cell_620_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
.sequential_218/lstm_656/lstm_cell_620/MatMul_1MatMul&sequential_218/lstm_656/zeros:output:0Esequential_218/lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)sequential_218/lstm_656/lstm_cell_620/addAddV26sequential_218/lstm_656/lstm_cell_620/MatMul:product:08sequential_218/lstm_656/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
<sequential_218/lstm_656/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOpEsequential_218_lstm_656_lstm_cell_620_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
-sequential_218/lstm_656/lstm_cell_620/BiasAddBiasAdd-sequential_218/lstm_656/lstm_cell_620/add:z:0Dsequential_218/lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(w
5sequential_218/lstm_656/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_218/lstm_656/lstm_cell_620/splitSplit>sequential_218/lstm_656/lstm_cell_620/split/split_dim:output:06sequential_218/lstm_656/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
-sequential_218/lstm_656/lstm_cell_620/SigmoidSigmoid4sequential_218/lstm_656/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
�
/sequential_218/lstm_656/lstm_cell_620/Sigmoid_1Sigmoid4sequential_218/lstm_656/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
)sequential_218/lstm_656/lstm_cell_620/mulMul3sequential_218/lstm_656/lstm_cell_620/Sigmoid_1:y:0(sequential_218/lstm_656/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
*sequential_218/lstm_656/lstm_cell_620/ReluRelu4sequential_218/lstm_656/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
+sequential_218/lstm_656/lstm_cell_620/mul_1Mul1sequential_218/lstm_656/lstm_cell_620/Sigmoid:y:08sequential_218/lstm_656/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
+sequential_218/lstm_656/lstm_cell_620/add_1AddV2-sequential_218/lstm_656/lstm_cell_620/mul:z:0/sequential_218/lstm_656/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_218/lstm_656/lstm_cell_620/Sigmoid_2Sigmoid4sequential_218/lstm_656/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
�
,sequential_218/lstm_656/lstm_cell_620/Relu_1Relu/sequential_218/lstm_656/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_218/lstm_656/lstm_cell_620/mul_2Mul3sequential_218/lstm_656/lstm_cell_620/Sigmoid_2:y:0:sequential_218/lstm_656/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
5sequential_218/lstm_656/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
'sequential_218/lstm_656/TensorArrayV2_1TensorListReserve>sequential_218/lstm_656/TensorArrayV2_1/element_shape:output:00sequential_218/lstm_656/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_218/lstm_656/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_218/lstm_656/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_218/lstm_656/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_218/lstm_656/whileWhile3sequential_218/lstm_656/while/loop_counter:output:09sequential_218/lstm_656/while/maximum_iterations:output:0%sequential_218/lstm_656/time:output:00sequential_218/lstm_656/TensorArrayV2_1:handle:0&sequential_218/lstm_656/zeros:output:0(sequential_218/lstm_656/zeros_1:output:00sequential_218/lstm_656/strided_slice_1:output:0Osequential_218/lstm_656/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_218_lstm_656_lstm_cell_620_matmul_readvariableop_resourceFsequential_218_lstm_656_lstm_cell_620_matmul_1_readvariableop_resourceEsequential_218_lstm_656_lstm_cell_620_biasadd_readvariableop_resource*
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
_stateful_parallelism( *6
body.R,
*sequential_218_lstm_656_while_body_3752219*6
cond.R,
*sequential_218_lstm_656_while_cond_3752218*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Hsequential_218/lstm_656/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
:sequential_218/lstm_656/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_218/lstm_656/while:output:3Qsequential_218/lstm_656/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0�
-sequential_218/lstm_656/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_218/lstm_656/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_218/lstm_656/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_218/lstm_656/strided_slice_3StridedSliceCsequential_218/lstm_656/TensorArrayV2Stack/TensorListStack:tensor:06sequential_218/lstm_656/strided_slice_3/stack:output:08sequential_218/lstm_656/strided_slice_3/stack_1:output:08sequential_218/lstm_656/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask}
(sequential_218/lstm_656/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_218/lstm_656/transpose_1	TransposeCsequential_218/lstm_656/TensorArrayV2Stack/TensorListStack:tensor:01sequential_218/lstm_656/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
s
sequential_218/lstm_656/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_218/dense_218/MatMul/ReadVariableOpReadVariableOp7sequential_218_dense_218_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_218/dense_218/MatMulMatMul0sequential_218/lstm_656/strided_slice_3:output:06sequential_218/dense_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_218/dense_218/BiasAdd/ReadVariableOpReadVariableOp8sequential_218_dense_218_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_218/dense_218/BiasAddBiasAdd)sequential_218/dense_218/MatMul:product:07sequential_218/dense_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_218/dense_218/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_218/dense_218/BiasAdd/ReadVariableOp/^sequential_218/dense_218/MatMul/ReadVariableOp=^sequential_218/lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp<^sequential_218/lstm_654/lstm_cell_618/MatMul/ReadVariableOp>^sequential_218/lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp^sequential_218/lstm_654/while=^sequential_218/lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp<^sequential_218/lstm_655/lstm_cell_619/MatMul/ReadVariableOp>^sequential_218/lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp^sequential_218/lstm_655/while=^sequential_218/lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp<^sequential_218/lstm_656/lstm_cell_620/MatMul/ReadVariableOp>^sequential_218/lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp^sequential_218/lstm_656/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_218/dense_218/BiasAdd/ReadVariableOp/sequential_218/dense_218/BiasAdd/ReadVariableOp2`
.sequential_218/dense_218/MatMul/ReadVariableOp.sequential_218/dense_218/MatMul/ReadVariableOp2|
<sequential_218/lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp<sequential_218/lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp2z
;sequential_218/lstm_654/lstm_cell_618/MatMul/ReadVariableOp;sequential_218/lstm_654/lstm_cell_618/MatMul/ReadVariableOp2~
=sequential_218/lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp=sequential_218/lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp2>
sequential_218/lstm_654/whilesequential_218/lstm_654/while2|
<sequential_218/lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp<sequential_218/lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp2z
;sequential_218/lstm_655/lstm_cell_619/MatMul/ReadVariableOp;sequential_218/lstm_655/lstm_cell_619/MatMul/ReadVariableOp2~
=sequential_218/lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp=sequential_218/lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp2>
sequential_218/lstm_655/whilesequential_218/lstm_655/while2|
<sequential_218/lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp<sequential_218/lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp2z
;sequential_218/lstm_656/lstm_cell_620/MatMul/ReadVariableOp;sequential_218/lstm_656/lstm_cell_620/MatMul/ReadVariableOp2~
=sequential_218/lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp=sequential_218/lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp2>
sequential_218/lstm_656/whilesequential_218/lstm_656/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_654_input
�

�
lstm_654_while_cond_3755108.
*lstm_654_while_lstm_654_while_loop_counter4
0lstm_654_while_lstm_654_while_maximum_iterations
lstm_654_while_placeholder 
lstm_654_while_placeholder_1 
lstm_654_while_placeholder_2 
lstm_654_while_placeholder_30
,lstm_654_while_less_lstm_654_strided_slice_1G
Clstm_654_while_lstm_654_while_cond_3755108___redundant_placeholder0G
Clstm_654_while_lstm_654_while_cond_3755108___redundant_placeholder1G
Clstm_654_while_lstm_654_while_cond_3755108___redundant_placeholder2G
Clstm_654_while_lstm_654_while_cond_3755108___redundant_placeholder3
lstm_654_while_identity
�
lstm_654/while/LessLesslstm_654_while_placeholder,lstm_654_while_less_lstm_654_strided_slice_1*
T0*
_output_shapes
: ]
lstm_654/while/IdentityIdentitylstm_654/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_654_while_identity lstm_654/while/Identity:output:0*(
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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3757540

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
�T
�
*sequential_218_lstm_655_while_body_3752080L
Hsequential_218_lstm_655_while_sequential_218_lstm_655_while_loop_counterR
Nsequential_218_lstm_655_while_sequential_218_lstm_655_while_maximum_iterations-
)sequential_218_lstm_655_while_placeholder/
+sequential_218_lstm_655_while_placeholder_1/
+sequential_218_lstm_655_while_placeholder_2/
+sequential_218_lstm_655_while_placeholder_3K
Gsequential_218_lstm_655_while_sequential_218_lstm_655_strided_slice_1_0�
�sequential_218_lstm_655_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_655_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_218_lstm_655_while_lstm_cell_619_matmul_readvariableop_resource_0:	d�a
Nsequential_218_lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource_0:	2�\
Msequential_218_lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource_0:	�*
&sequential_218_lstm_655_while_identity,
(sequential_218_lstm_655_while_identity_1,
(sequential_218_lstm_655_while_identity_2,
(sequential_218_lstm_655_while_identity_3,
(sequential_218_lstm_655_while_identity_4,
(sequential_218_lstm_655_while_identity_5I
Esequential_218_lstm_655_while_sequential_218_lstm_655_strided_slice_1�
�sequential_218_lstm_655_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_655_tensorarrayunstack_tensorlistfromtensor]
Jsequential_218_lstm_655_while_lstm_cell_619_matmul_readvariableop_resource:	d�_
Lsequential_218_lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource:	2�Z
Ksequential_218_lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource:	���Bsequential_218/lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp�Asequential_218/lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp�Csequential_218/lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp�
Osequential_218/lstm_655/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
Asequential_218/lstm_655/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_218_lstm_655_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_655_tensorarrayunstack_tensorlistfromtensor_0)sequential_218_lstm_655_while_placeholderXsequential_218/lstm_655/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
Asequential_218/lstm_655/while/lstm_cell_619/MatMul/ReadVariableOpReadVariableOpLsequential_218_lstm_655_while_lstm_cell_619_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_218/lstm_655/while/lstm_cell_619/MatMulMatMulHsequential_218/lstm_655/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_218/lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_218/lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOpNsequential_218_lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
4sequential_218/lstm_655/while/lstm_cell_619/MatMul_1MatMul+sequential_218_lstm_655_while_placeholder_2Ksequential_218/lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_218/lstm_655/while/lstm_cell_619/addAddV2<sequential_218/lstm_655/while/lstm_cell_619/MatMul:product:0>sequential_218/lstm_655/while/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_218/lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOpMsequential_218_lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_218/lstm_655/while/lstm_cell_619/BiasAddBiasAdd3sequential_218/lstm_655/while/lstm_cell_619/add:z:0Jsequential_218/lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_218/lstm_655/while/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_218/lstm_655/while/lstm_cell_619/splitSplitDsequential_218/lstm_655/while/lstm_cell_619/split/split_dim:output:0<sequential_218/lstm_655/while/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
3sequential_218/lstm_655/while/lstm_cell_619/SigmoidSigmoid:sequential_218/lstm_655/while/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2�
5sequential_218/lstm_655/while/lstm_cell_619/Sigmoid_1Sigmoid:sequential_218/lstm_655/while/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
/sequential_218/lstm_655/while/lstm_cell_619/mulMul9sequential_218/lstm_655/while/lstm_cell_619/Sigmoid_1:y:0+sequential_218_lstm_655_while_placeholder_3*
T0*'
_output_shapes
:���������2�
0sequential_218/lstm_655/while/lstm_cell_619/ReluRelu:sequential_218/lstm_655/while/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
1sequential_218/lstm_655/while/lstm_cell_619/mul_1Mul7sequential_218/lstm_655/while/lstm_cell_619/Sigmoid:y:0>sequential_218/lstm_655/while/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
1sequential_218/lstm_655/while/lstm_cell_619/add_1AddV23sequential_218/lstm_655/while/lstm_cell_619/mul:z:05sequential_218/lstm_655/while/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2�
5sequential_218/lstm_655/while/lstm_cell_619/Sigmoid_2Sigmoid:sequential_218/lstm_655/while/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2�
2sequential_218/lstm_655/while/lstm_cell_619/Relu_1Relu5sequential_218/lstm_655/while/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_218/lstm_655/while/lstm_cell_619/mul_2Mul9sequential_218/lstm_655/while/lstm_cell_619/Sigmoid_2:y:0@sequential_218/lstm_655/while/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Bsequential_218/lstm_655/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_218_lstm_655_while_placeholder_1)sequential_218_lstm_655_while_placeholder5sequential_218/lstm_655/while/lstm_cell_619/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_218/lstm_655/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_218/lstm_655/while/addAddV2)sequential_218_lstm_655_while_placeholder,sequential_218/lstm_655/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_218/lstm_655/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_218/lstm_655/while/add_1AddV2Hsequential_218_lstm_655_while_sequential_218_lstm_655_while_loop_counter.sequential_218/lstm_655/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_218/lstm_655/while/IdentityIdentity'sequential_218/lstm_655/while/add_1:z:0#^sequential_218/lstm_655/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_655/while/Identity_1IdentityNsequential_218_lstm_655_while_sequential_218_lstm_655_while_maximum_iterations#^sequential_218/lstm_655/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_655/while/Identity_2Identity%sequential_218/lstm_655/while/add:z:0#^sequential_218/lstm_655/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_655/while/Identity_3IdentityRsequential_218/lstm_655/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_218/lstm_655/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_655/while/Identity_4Identity5sequential_218/lstm_655/while/lstm_cell_619/mul_2:z:0#^sequential_218/lstm_655/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_218/lstm_655/while/Identity_5Identity5sequential_218/lstm_655/while/lstm_cell_619/add_1:z:0#^sequential_218/lstm_655/while/NoOp*
T0*'
_output_shapes
:���������2�
"sequential_218/lstm_655/while/NoOpNoOpC^sequential_218/lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOpB^sequential_218/lstm_655/while/lstm_cell_619/MatMul/ReadVariableOpD^sequential_218/lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_218_lstm_655_while_identity/sequential_218/lstm_655/while/Identity:output:0"]
(sequential_218_lstm_655_while_identity_11sequential_218/lstm_655/while/Identity_1:output:0"]
(sequential_218_lstm_655_while_identity_21sequential_218/lstm_655/while/Identity_2:output:0"]
(sequential_218_lstm_655_while_identity_31sequential_218/lstm_655/while/Identity_3:output:0"]
(sequential_218_lstm_655_while_identity_41sequential_218/lstm_655/while/Identity_4:output:0"]
(sequential_218_lstm_655_while_identity_51sequential_218/lstm_655/while/Identity_5:output:0"�
Ksequential_218_lstm_655_while_lstm_cell_619_biasadd_readvariableop_resourceMsequential_218_lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource_0"�
Lsequential_218_lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resourceNsequential_218_lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource_0"�
Jsequential_218_lstm_655_while_lstm_cell_619_matmul_readvariableop_resourceLsequential_218_lstm_655_while_lstm_cell_619_matmul_readvariableop_resource_0"�
Esequential_218_lstm_655_while_sequential_218_lstm_655_strided_slice_1Gsequential_218_lstm_655_while_sequential_218_lstm_655_strided_slice_1_0"�
�sequential_218_lstm_655_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_655_tensorarrayunstack_tensorlistfromtensor�sequential_218_lstm_655_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_655_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
Bsequential_218/lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOpBsequential_218/lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp2�
Asequential_218/lstm_655/while/lstm_cell_619/MatMul/ReadVariableOpAsequential_218/lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp2�
Csequential_218/lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOpCsequential_218/lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�8
�
E__inference_lstm_654_layer_call_and_return_conditional_losses_3752459

inputs(
lstm_cell_618_3752377:	�(
lstm_cell_618_3752379:	d�$
lstm_cell_618_3752381:	�
identity��%lstm_cell_618/StatefulPartitionedCall�while;
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
%lstm_cell_618/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_618_3752377lstm_cell_618_3752379lstm_cell_618_3752381*
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
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3752376n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_618_3752377lstm_cell_618_3752379lstm_cell_618_3752381*
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
while_body_3752390*
condR
while_cond_3752389*K
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
NoOpNoOp&^lstm_cell_618/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_618/StatefulPartitionedCall%lstm_cell_618/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�C
�

lstm_655_while_body_3755248.
*lstm_655_while_lstm_655_while_loop_counter4
0lstm_655_while_lstm_655_while_maximum_iterations
lstm_655_while_placeholder 
lstm_655_while_placeholder_1 
lstm_655_while_placeholder_2 
lstm_655_while_placeholder_3-
)lstm_655_while_lstm_655_strided_slice_1_0i
elstm_655_while_tensorarrayv2read_tensorlistgetitem_lstm_655_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_655_while_lstm_cell_619_matmul_readvariableop_resource_0:	d�R
?lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource_0:	2�M
>lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource_0:	�
lstm_655_while_identity
lstm_655_while_identity_1
lstm_655_while_identity_2
lstm_655_while_identity_3
lstm_655_while_identity_4
lstm_655_while_identity_5+
'lstm_655_while_lstm_655_strided_slice_1g
clstm_655_while_tensorarrayv2read_tensorlistgetitem_lstm_655_tensorarrayunstack_tensorlistfromtensorN
;lstm_655_while_lstm_cell_619_matmul_readvariableop_resource:	d�P
=lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource:	2�K
<lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource:	���3lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp�2lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp�4lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp�
@lstm_655/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_655/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_655_while_tensorarrayv2read_tensorlistgetitem_lstm_655_tensorarrayunstack_tensorlistfromtensor_0lstm_655_while_placeholderIlstm_655/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_655/while/lstm_cell_619/MatMul/ReadVariableOpReadVariableOp=lstm_655_while_lstm_cell_619_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_655/while/lstm_cell_619/MatMulMatMul9lstm_655/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp?lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_655/while/lstm_cell_619/MatMul_1MatMullstm_655_while_placeholder_2<lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_655/while/lstm_cell_619/addAddV2-lstm_655/while/lstm_cell_619/MatMul:product:0/lstm_655/while/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp>lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_655/while/lstm_cell_619/BiasAddBiasAdd$lstm_655/while/lstm_cell_619/add:z:0;lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_655/while/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_655/while/lstm_cell_619/splitSplit5lstm_655/while/lstm_cell_619/split/split_dim:output:0-lstm_655/while/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_655/while/lstm_cell_619/SigmoidSigmoid+lstm_655/while/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_655/while/lstm_cell_619/Sigmoid_1Sigmoid+lstm_655/while/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_655/while/lstm_cell_619/mulMul*lstm_655/while/lstm_cell_619/Sigmoid_1:y:0lstm_655_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_655/while/lstm_cell_619/ReluRelu+lstm_655/while/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_655/while/lstm_cell_619/mul_1Mul(lstm_655/while/lstm_cell_619/Sigmoid:y:0/lstm_655/while/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_655/while/lstm_cell_619/add_1AddV2$lstm_655/while/lstm_cell_619/mul:z:0&lstm_655/while/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_655/while/lstm_cell_619/Sigmoid_2Sigmoid+lstm_655/while/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_655/while/lstm_cell_619/Relu_1Relu&lstm_655/while/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_655/while/lstm_cell_619/mul_2Mul*lstm_655/while/lstm_cell_619/Sigmoid_2:y:01lstm_655/while/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_655/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_655_while_placeholder_1lstm_655_while_placeholder&lstm_655/while/lstm_cell_619/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_655/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_655/while/addAddV2lstm_655_while_placeholderlstm_655/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_655/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_655/while/add_1AddV2*lstm_655_while_lstm_655_while_loop_counterlstm_655/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_655/while/IdentityIdentitylstm_655/while/add_1:z:0^lstm_655/while/NoOp*
T0*
_output_shapes
: �
lstm_655/while/Identity_1Identity0lstm_655_while_lstm_655_while_maximum_iterations^lstm_655/while/NoOp*
T0*
_output_shapes
: t
lstm_655/while/Identity_2Identitylstm_655/while/add:z:0^lstm_655/while/NoOp*
T0*
_output_shapes
: �
lstm_655/while/Identity_3IdentityClstm_655/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_655/while/NoOp*
T0*
_output_shapes
: �
lstm_655/while/Identity_4Identity&lstm_655/while/lstm_cell_619/mul_2:z:0^lstm_655/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_655/while/Identity_5Identity&lstm_655/while/lstm_cell_619/add_1:z:0^lstm_655/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_655/while/NoOpNoOp4^lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp3^lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp5^lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_655_while_identity lstm_655/while/Identity:output:0"?
lstm_655_while_identity_1"lstm_655/while/Identity_1:output:0"?
lstm_655_while_identity_2"lstm_655/while/Identity_2:output:0"?
lstm_655_while_identity_3"lstm_655/while/Identity_3:output:0"?
lstm_655_while_identity_4"lstm_655/while/Identity_4:output:0"?
lstm_655_while_identity_5"lstm_655/while/Identity_5:output:0"T
'lstm_655_while_lstm_655_strided_slice_1)lstm_655_while_lstm_655_strided_slice_1_0"~
<lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource>lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource_0"�
=lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource?lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource_0"|
;lstm_655_while_lstm_cell_619_matmul_readvariableop_resource=lstm_655_while_lstm_cell_619_matmul_readvariableop_resource_0"�
clstm_655_while_tensorarrayv2read_tensorlistgetitem_lstm_655_tensorarrayunstack_tensorlistfromtensorelstm_655_while_tensorarrayv2read_tensorlistgetitem_lstm_655_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp3lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp2h
2lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp2lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp2l
4lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp4lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�8
�
while_body_3753574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_619_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_619_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_619_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_619_matmul_readvariableop_resource:	d�G
4while_lstm_cell_619_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_619_biasadd_readvariableop_resource:	���*while/lstm_cell_619/BiasAdd/ReadVariableOp�)while/lstm_cell_619/MatMul/ReadVariableOp�+while/lstm_cell_619/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_619/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_619_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_619/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_619_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_619/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_619/addAddV2$while/lstm_cell_619/MatMul:product:0&while/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_619_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_619/BiasAddBiasAddwhile/lstm_cell_619/add:z:02while/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_619/splitSplit,while/lstm_cell_619/split/split_dim:output:0$while/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_619/SigmoidSigmoid"while/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_1Sigmoid"while/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mulMul!while/lstm_cell_619/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_619/ReluRelu"while/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_1Mulwhile/lstm_cell_619/Sigmoid:y:0&while/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/add_1AddV2while/lstm_cell_619/mul:z:0while/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_2Sigmoid"while/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_619/Relu_1Reluwhile/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_2Mul!while/lstm_cell_619/Sigmoid_2:y:0(while/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_619/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_619/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_619/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_619/BiasAdd/ReadVariableOp*^while/lstm_cell_619/MatMul/ReadVariableOp,^while/lstm_cell_619/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_619_biasadd_readvariableop_resource5while_lstm_cell_619_biasadd_readvariableop_resource_0"n
4while_lstm_cell_619_matmul_1_readvariableop_resource6while_lstm_cell_619_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_619_matmul_readvariableop_resource4while_lstm_cell_619_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_619/BiasAdd/ReadVariableOp*while/lstm_cell_619/BiasAdd/ReadVariableOp2V
)while/lstm_cell_619/MatMul/ReadVariableOp)while/lstm_cell_619/MatMul/ReadVariableOp2Z
+while/lstm_cell_619/MatMul_1/ReadVariableOp+while/lstm_cell_619/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3753222

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
�

�
lstm_654_while_cond_3754681.
*lstm_654_while_lstm_654_while_loop_counter4
0lstm_654_while_lstm_654_while_maximum_iterations
lstm_654_while_placeholder 
lstm_654_while_placeholder_1 
lstm_654_while_placeholder_2 
lstm_654_while_placeholder_30
,lstm_654_while_less_lstm_654_strided_slice_1G
Clstm_654_while_lstm_654_while_cond_3754681___redundant_placeholder0G
Clstm_654_while_lstm_654_while_cond_3754681___redundant_placeholder1G
Clstm_654_while_lstm_654_while_cond_3754681___redundant_placeholder2G
Clstm_654_while_lstm_654_while_cond_3754681___redundant_placeholder3
lstm_654_while_identity
�
lstm_654/while/LessLesslstm_654_while_placeholder,lstm_654_while_less_lstm_654_strided_slice_1*
T0*
_output_shapes
: ]
lstm_654/while/IdentityIdentitylstm_654/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_654_while_identity lstm_654/while/Identity:output:0*(
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
while_cond_3752389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3752389___redundant_placeholder05
1while_while_cond_3752389___redundant_placeholder15
1while_while_cond_3752389___redundant_placeholder25
1while_while_cond_3752389___redundant_placeholder3
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
while_cond_3753939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3753939___redundant_placeholder05
1while_while_cond_3753939___redundant_placeholder15
1while_while_cond_3753939___redundant_placeholder25
1while_while_cond_3753939___redundant_placeholder3
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
while_cond_3755722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3755722___redundant_placeholder05
1while_while_cond_3755722___redundant_placeholder15
1while_while_cond_3755722___redundant_placeholder25
1while_while_cond_3755722___redundant_placeholder3
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
�
�
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3757442

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
�
�
while_cond_3756195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3756195___redundant_placeholder05
1while_while_cond_3756195___redundant_placeholder15
1while_while_cond_3756195___redundant_placeholder25
1while_while_cond_3756195___redundant_placeholder3
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
while_body_3756625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_619_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_619_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_619_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_619_matmul_readvariableop_resource:	d�G
4while_lstm_cell_619_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_619_biasadd_readvariableop_resource:	���*while/lstm_cell_619/BiasAdd/ReadVariableOp�)while/lstm_cell_619/MatMul/ReadVariableOp�+while/lstm_cell_619/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_619/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_619_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_619/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_619_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_619/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_619/addAddV2$while/lstm_cell_619/MatMul:product:0&while/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_619_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_619/BiasAddBiasAddwhile/lstm_cell_619/add:z:02while/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_619/splitSplit,while/lstm_cell_619/split/split_dim:output:0$while/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_619/SigmoidSigmoid"while/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_1Sigmoid"while/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mulMul!while/lstm_cell_619/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_619/ReluRelu"while/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_1Mulwhile/lstm_cell_619/Sigmoid:y:0&while/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/add_1AddV2while/lstm_cell_619/mul:z:0while/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_2Sigmoid"while/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_619/Relu_1Reluwhile/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_2Mul!while/lstm_cell_619/Sigmoid_2:y:0(while/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_619/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_619/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_619/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_619/BiasAdd/ReadVariableOp*^while/lstm_cell_619/MatMul/ReadVariableOp,^while/lstm_cell_619/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_619_biasadd_readvariableop_resource5while_lstm_cell_619_biasadd_readvariableop_resource_0"n
4while_lstm_cell_619_matmul_1_readvariableop_resource6while_lstm_cell_619_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_619_matmul_readvariableop_resource4while_lstm_cell_619_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_619/BiasAdd/ReadVariableOp*while/lstm_cell_619/BiasAdd/ReadVariableOp2V
)while/lstm_cell_619/MatMul/ReadVariableOp)while/lstm_cell_619/MatMul/ReadVariableOp2Z
+while/lstm_cell_619/MatMul_1/ReadVariableOp+while/lstm_cell_619/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
/__inference_lstm_cell_618_layer_call_fn_3757378

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
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3752522o
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
�8
�
while_body_3756339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_619_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_619_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_619_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_619_matmul_readvariableop_resource:	d�G
4while_lstm_cell_619_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_619_biasadd_readvariableop_resource:	���*while/lstm_cell_619/BiasAdd/ReadVariableOp�)while/lstm_cell_619/MatMul/ReadVariableOp�+while/lstm_cell_619/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_619/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_619_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_619/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_619_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_619/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_619/addAddV2$while/lstm_cell_619/MatMul:product:0&while/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_619_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_619/BiasAddBiasAddwhile/lstm_cell_619/add:z:02while/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_619/splitSplit,while/lstm_cell_619/split/split_dim:output:0$while/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_619/SigmoidSigmoid"while/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_1Sigmoid"while/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mulMul!while/lstm_cell_619/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_619/ReluRelu"while/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_1Mulwhile/lstm_cell_619/Sigmoid:y:0&while/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/add_1AddV2while/lstm_cell_619/mul:z:0while/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_2Sigmoid"while/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_619/Relu_1Reluwhile/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_2Mul!while/lstm_cell_619/Sigmoid_2:y:0(while/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_619/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_619/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_619/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_619/BiasAdd/ReadVariableOp*^while/lstm_cell_619/MatMul/ReadVariableOp,^while/lstm_cell_619/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_619_biasadd_readvariableop_resource5while_lstm_cell_619_biasadd_readvariableop_resource_0"n
4while_lstm_cell_619_matmul_1_readvariableop_resource6while_lstm_cell_619_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_619_matmul_readvariableop_resource4while_lstm_cell_619_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_619/BiasAdd/ReadVariableOp*while/lstm_cell_619/BiasAdd/ReadVariableOp2V
)while/lstm_cell_619/MatMul/ReadVariableOp)while/lstm_cell_619/MatMul/ReadVariableOp2Z
+while/lstm_cell_619/MatMul_1/ReadVariableOp+while/lstm_cell_619/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756423
inputs_0?
,lstm_cell_619_matmul_readvariableop_resource:	d�A
.lstm_cell_619_matmul_1_readvariableop_resource:	2�<
-lstm_cell_619_biasadd_readvariableop_resource:	�
identity��$lstm_cell_619/BiasAdd/ReadVariableOp�#lstm_cell_619/MatMul/ReadVariableOp�%lstm_cell_619/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_619/MatMul/ReadVariableOpReadVariableOp,lstm_cell_619_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_619/MatMulMatMulstrided_slice_2:output:0+lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_619_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_619/MatMul_1MatMulzeros:output:0-lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_619/addAddV2lstm_cell_619/MatMul:product:0 lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_619_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_619/BiasAddBiasAddlstm_cell_619/add:z:0,lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_619/splitSplit&lstm_cell_619/split/split_dim:output:0lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_619/SigmoidSigmoidlstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_1Sigmoidlstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_619/mulMullstm_cell_619/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_619/ReluRelulstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_1Mullstm_cell_619/Sigmoid:y:0 lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_619/add_1AddV2lstm_cell_619/mul:z:0lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_2Sigmoidlstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_619/Relu_1Relulstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_2Mullstm_cell_619/Sigmoid_2:y:0"lstm_cell_619/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_619_matmul_readvariableop_resource.lstm_cell_619_matmul_1_readvariableop_resource-lstm_cell_619_biasadd_readvariableop_resource*
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
while_body_3756339*
condR
while_cond_3756338*K
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
NoOpNoOp%^lstm_cell_619/BiasAdd/ReadVariableOp$^lstm_cell_619/MatMul/ReadVariableOp&^lstm_cell_619/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_619/BiasAdd/ReadVariableOp$lstm_cell_619/BiasAdd/ReadVariableOp2J
#lstm_cell_619/MatMul/ReadVariableOp#lstm_cell_619/MatMul/ReadVariableOp2N
%lstm_cell_619/MatMul_1/ReadVariableOp%lstm_cell_619/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
K__inference_sequential_218_layer_call_and_return_conditional_losses_3753833

inputs#
lstm_654_3753509:	�#
lstm_654_3753511:	d�
lstm_654_3753513:	�#
lstm_655_3753659:	d�#
lstm_655_3753661:	2�
lstm_655_3753663:	�"
lstm_656_3753809:2("
lstm_656_3753811:
(
lstm_656_3753813:(#
dense_218_3753827:

dense_218_3753829:
identity��!dense_218/StatefulPartitionedCall� lstm_654/StatefulPartitionedCall� lstm_655/StatefulPartitionedCall� lstm_656/StatefulPartitionedCall�
 lstm_654/StatefulPartitionedCallStatefulPartitionedCallinputslstm_654_3753509lstm_654_3753511lstm_654_3753513*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_654_layer_call_and_return_conditional_losses_3753508�
 lstm_655/StatefulPartitionedCallStatefulPartitionedCall)lstm_654/StatefulPartitionedCall:output:0lstm_655_3753659lstm_655_3753661lstm_655_3753663*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_655_layer_call_and_return_conditional_losses_3753658�
 lstm_656/StatefulPartitionedCallStatefulPartitionedCall)lstm_655/StatefulPartitionedCall:output:0lstm_656_3753809lstm_656_3753811lstm_656_3753813*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_656_layer_call_and_return_conditional_losses_3753808�
!dense_218/StatefulPartitionedCallStatefulPartitionedCall)lstm_656/StatefulPartitionedCall:output:0dense_218_3753827dense_218_3753829*
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
GPU 2J 8� *O
fJRH
F__inference_dense_218_layer_call_and_return_conditional_losses_3753826y
IdentityIdentity*dense_218/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_218/StatefulPartitionedCall!^lstm_654/StatefulPartitionedCall!^lstm_655/StatefulPartitionedCall!^lstm_656/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_218/StatefulPartitionedCall!dense_218/StatefulPartitionedCall2D
 lstm_654/StatefulPartitionedCall lstm_654/StatefulPartitionedCall2D
 lstm_655/StatefulPartitionedCall lstm_655/StatefulPartitionedCall2D
 lstm_656/StatefulPartitionedCall lstm_656/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_3756338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3756338___redundant_placeholder05
1while_while_cond_3756338___redundant_placeholder15
1while_while_cond_3756338___redundant_placeholder25
1while_while_cond_3756338___redundant_placeholder3
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
E__inference_lstm_655_layer_call_and_return_conditional_losses_3753000

inputs(
lstm_cell_619_3752918:	d�(
lstm_cell_619_3752920:	2�$
lstm_cell_619_3752922:	�
identity��%lstm_cell_619/StatefulPartitionedCall�while;
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
%lstm_cell_619/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_619_3752918lstm_cell_619_3752920lstm_cell_619_3752922*
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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3752872n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_619_3752918lstm_cell_619_3752920lstm_cell_619_3752922*
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
while_body_3752931*
condR
while_cond_3752930*K
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
NoOpNoOp&^lstm_cell_619/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_619/StatefulPartitionedCall%lstm_cell_619/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
*__inference_lstm_654_layer_call_fn_3755521

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
GPU 2J 8� *N
fIRG
E__inference_lstm_654_layer_call_and_return_conditional_losses_3754354s
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
while_body_3752390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_618_3752414_0:	�0
while_lstm_cell_618_3752416_0:	d�,
while_lstm_cell_618_3752418_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_618_3752414:	�.
while_lstm_cell_618_3752416:	d�*
while_lstm_cell_618_3752418:	���+while/lstm_cell_618/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_618/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_618_3752414_0while_lstm_cell_618_3752416_0while_lstm_cell_618_3752418_0*
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
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3752376�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_618/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_618/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_618/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_618/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_618_3752414while_lstm_cell_618_3752414_0"<
while_lstm_cell_618_3752416while_lstm_cell_618_3752416_0"<
while_lstm_cell_618_3752418while_lstm_cell_618_3752418_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_618/StatefulPartitionedCall+while/lstm_cell_618/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�
�
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3752522

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
�

�
0__inference_sequential_218_layer_call_fn_3754623

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
GPU 2J 8� *T
fORM
K__inference_sequential_218_layer_call_and_return_conditional_losses_3754422o
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
�#
�
while_body_3752931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_619_3752955_0:	d�0
while_lstm_cell_619_3752957_0:	2�,
while_lstm_cell_619_3752959_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_619_3752955:	d�.
while_lstm_cell_619_3752957:	2�*
while_lstm_cell_619_3752959:	���+while/lstm_cell_619/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_619/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_619_3752955_0while_lstm_cell_619_3752957_0while_lstm_cell_619_3752959_0*
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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3752872�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_619/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_619/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_619/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_619/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_619_3752955while_lstm_cell_619_3752955_0"<
while_lstm_cell_619_3752957while_lstm_cell_619_3752957_0"<
while_lstm_cell_619_3752959while_lstm_cell_619_3752959_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_619/StatefulPartitionedCall+while/lstm_cell_619/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�8
�
while_body_3756196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_619_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_619_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_619_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_619_matmul_readvariableop_resource:	d�G
4while_lstm_cell_619_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_619_biasadd_readvariableop_resource:	���*while/lstm_cell_619/BiasAdd/ReadVariableOp�)while/lstm_cell_619/MatMul/ReadVariableOp�+while/lstm_cell_619/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_619/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_619_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_619/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_619_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_619/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_619/addAddV2$while/lstm_cell_619/MatMul:product:0&while/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_619_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_619/BiasAddBiasAddwhile/lstm_cell_619/add:z:02while/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_619/splitSplit,while/lstm_cell_619/split/split_dim:output:0$while/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_619/SigmoidSigmoid"while/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_1Sigmoid"while/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mulMul!while/lstm_cell_619/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_619/ReluRelu"while/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_1Mulwhile/lstm_cell_619/Sigmoid:y:0&while/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/add_1AddV2while/lstm_cell_619/mul:z:0while/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_2Sigmoid"while/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_619/Relu_1Reluwhile/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_2Mul!while/lstm_cell_619/Sigmoid_2:y:0(while/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_619/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_619/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_619/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_619/BiasAdd/ReadVariableOp*^while/lstm_cell_619/MatMul/ReadVariableOp,^while/lstm_cell_619/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_619_biasadd_readvariableop_resource5while_lstm_cell_619_biasadd_readvariableop_resource_0"n
4while_lstm_cell_619_matmul_1_readvariableop_resource6while_lstm_cell_619_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_619_matmul_readvariableop_resource4while_lstm_cell_619_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_619/BiasAdd/ReadVariableOp*while/lstm_cell_619/BiasAdd/ReadVariableOp2V
)while/lstm_cell_619/MatMul/ReadVariableOp)while/lstm_cell_619/MatMul/ReadVariableOp2Z
+while/lstm_cell_619/MatMul_1/ReadVariableOp+while/lstm_cell_619/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�8
�
while_body_3756955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_620_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_620_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_620_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_620_matmul_readvariableop_resource:2(F
4while_lstm_cell_620_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_620_biasadd_readvariableop_resource:(��*while/lstm_cell_620/BiasAdd/ReadVariableOp�)while/lstm_cell_620/MatMul/ReadVariableOp�+while/lstm_cell_620/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_620/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_620_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_620/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_620_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_620/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_620/addAddV2$while/lstm_cell_620/MatMul:product:0&while/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_620_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_620/BiasAddBiasAddwhile/lstm_cell_620/add:z:02while/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_620/splitSplit,while/lstm_cell_620/split/split_dim:output:0$while/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_620/SigmoidSigmoid"while/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_1Sigmoid"while/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mulMul!while/lstm_cell_620/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_620/ReluRelu"while/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_1Mulwhile/lstm_cell_620/Sigmoid:y:0&while/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/add_1AddV2while/lstm_cell_620/mul:z:0while/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_2Sigmoid"while/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_620/Relu_1Reluwhile/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_2Mul!while/lstm_cell_620/Sigmoid_2:y:0(while/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_620/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_620/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_620/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_620/BiasAdd/ReadVariableOp*^while/lstm_cell_620/MatMul/ReadVariableOp,^while/lstm_cell_620/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_620_biasadd_readvariableop_resource5while_lstm_cell_620_biasadd_readvariableop_resource_0"n
4while_lstm_cell_620_matmul_1_readvariableop_resource6while_lstm_cell_620_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_620_matmul_readvariableop_resource4while_lstm_cell_620_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_620/BiasAdd/ReadVariableOp*while/lstm_cell_620/BiasAdd/ReadVariableOp2V
)while/lstm_cell_620/MatMul/ReadVariableOp)while/lstm_cell_620/MatMul/ReadVariableOp2Z
+while/lstm_cell_620/MatMul_1/ReadVariableOp+while/lstm_cell_620/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
�
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3757606

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
�
while_cond_3753573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3753573___redundant_placeholder05
1while_while_cond_3753573___redundant_placeholder15
1while_while_cond_3753573___redundant_placeholder25
1while_while_cond_3753573___redundant_placeholder3
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
�
�
K__inference_sequential_218_layer_call_and_return_conditional_losses_3754534
lstm_654_input#
lstm_654_3754507:	�#
lstm_654_3754509:	d�
lstm_654_3754511:	�#
lstm_655_3754514:	d�#
lstm_655_3754516:	2�
lstm_655_3754518:	�"
lstm_656_3754521:2("
lstm_656_3754523:
(
lstm_656_3754525:(#
dense_218_3754528:

dense_218_3754530:
identity��!dense_218/StatefulPartitionedCall� lstm_654/StatefulPartitionedCall� lstm_655/StatefulPartitionedCall� lstm_656/StatefulPartitionedCall�
 lstm_654/StatefulPartitionedCallStatefulPartitionedCalllstm_654_inputlstm_654_3754507lstm_654_3754509lstm_654_3754511*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_654_layer_call_and_return_conditional_losses_3754354�
 lstm_655/StatefulPartitionedCallStatefulPartitionedCall)lstm_654/StatefulPartitionedCall:output:0lstm_655_3754514lstm_655_3754516lstm_655_3754518*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_655_layer_call_and_return_conditional_losses_3754189�
 lstm_656/StatefulPartitionedCallStatefulPartitionedCall)lstm_655/StatefulPartitionedCall:output:0lstm_656_3754521lstm_656_3754523lstm_656_3754525*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_656_layer_call_and_return_conditional_losses_3754024�
!dense_218/StatefulPartitionedCallStatefulPartitionedCall)lstm_656/StatefulPartitionedCall:output:0dense_218_3754528dense_218_3754530*
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
GPU 2J 8� *O
fJRH
F__inference_dense_218_layer_call_and_return_conditional_losses_3753826y
IdentityIdentity*dense_218/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_218/StatefulPartitionedCall!^lstm_654/StatefulPartitionedCall!^lstm_655/StatefulPartitionedCall!^lstm_656/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_218/StatefulPartitionedCall!dense_218/StatefulPartitionedCall2D
 lstm_654/StatefulPartitionedCall lstm_654/StatefulPartitionedCall2D
 lstm_655/StatefulPartitionedCall lstm_655/StatefulPartitionedCall2D
 lstm_656/StatefulPartitionedCall lstm_656/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_654_input
�	
�
F__inference_dense_218_layer_call_and_return_conditional_losses_3753826

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
�J
�
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756566

inputs?
,lstm_cell_619_matmul_readvariableop_resource:	d�A
.lstm_cell_619_matmul_1_readvariableop_resource:	2�<
-lstm_cell_619_biasadd_readvariableop_resource:	�
identity��$lstm_cell_619/BiasAdd/ReadVariableOp�#lstm_cell_619/MatMul/ReadVariableOp�%lstm_cell_619/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_619/MatMul/ReadVariableOpReadVariableOp,lstm_cell_619_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_619/MatMulMatMulstrided_slice_2:output:0+lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_619_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_619/MatMul_1MatMulzeros:output:0-lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_619/addAddV2lstm_cell_619/MatMul:product:0 lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_619_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_619/BiasAddBiasAddlstm_cell_619/add:z:0,lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_619/splitSplit&lstm_cell_619/split/split_dim:output:0lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_619/SigmoidSigmoidlstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_1Sigmoidlstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_619/mulMullstm_cell_619/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_619/ReluRelulstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_1Mullstm_cell_619/Sigmoid:y:0 lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_619/add_1AddV2lstm_cell_619/mul:z:0lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_2Sigmoidlstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_619/Relu_1Relulstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_2Mullstm_cell_619/Sigmoid_2:y:0"lstm_cell_619/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_619_matmul_readvariableop_resource.lstm_cell_619_matmul_1_readvariableop_resource-lstm_cell_619_biasadd_readvariableop_resource*
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
while_body_3756482*
condR
while_cond_3756481*K
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
NoOpNoOp%^lstm_cell_619/BiasAdd/ReadVariableOp$^lstm_cell_619/MatMul/ReadVariableOp&^lstm_cell_619/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_619/BiasAdd/ReadVariableOp$lstm_cell_619/BiasAdd/ReadVariableOp2J
#lstm_cell_619/MatMul/ReadVariableOp#lstm_cell_619/MatMul/ReadVariableOp2N
%lstm_cell_619/MatMul_1/ReadVariableOp%lstm_cell_619/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
K__inference_sequential_218_layer_call_and_return_conditional_losses_3754422

inputs#
lstm_654_3754395:	�#
lstm_654_3754397:	d�
lstm_654_3754399:	�#
lstm_655_3754402:	d�#
lstm_655_3754404:	2�
lstm_655_3754406:	�"
lstm_656_3754409:2("
lstm_656_3754411:
(
lstm_656_3754413:(#
dense_218_3754416:

dense_218_3754418:
identity��!dense_218/StatefulPartitionedCall� lstm_654/StatefulPartitionedCall� lstm_655/StatefulPartitionedCall� lstm_656/StatefulPartitionedCall�
 lstm_654/StatefulPartitionedCallStatefulPartitionedCallinputslstm_654_3754395lstm_654_3754397lstm_654_3754399*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_654_layer_call_and_return_conditional_losses_3754354�
 lstm_655/StatefulPartitionedCallStatefulPartitionedCall)lstm_654/StatefulPartitionedCall:output:0lstm_655_3754402lstm_655_3754404lstm_655_3754406*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_655_layer_call_and_return_conditional_losses_3754189�
 lstm_656/StatefulPartitionedCallStatefulPartitionedCall)lstm_655/StatefulPartitionedCall:output:0lstm_656_3754409lstm_656_3754411lstm_656_3754413*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_656_layer_call_and_return_conditional_losses_3754024�
!dense_218/StatefulPartitionedCallStatefulPartitionedCall)lstm_656/StatefulPartitionedCall:output:0dense_218_3754416dense_218_3754418*
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
GPU 2J 8� *O
fJRH
F__inference_dense_218_layer_call_and_return_conditional_losses_3753826y
IdentityIdentity*dense_218/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_218/StatefulPartitionedCall!^lstm_654/StatefulPartitionedCall!^lstm_655/StatefulPartitionedCall!^lstm_656/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_218/StatefulPartitionedCall!dense_218/StatefulPartitionedCall2D
 lstm_654/StatefulPartitionedCall lstm_654/StatefulPartitionedCall2D
 lstm_655/StatefulPartitionedCall lstm_655/StatefulPartitionedCall2D
 lstm_656/StatefulPartitionedCall lstm_656/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�K
�
E__inference_lstm_656_layer_call_and_return_conditional_losses_3757039
inputs_0>
,lstm_cell_620_matmul_readvariableop_resource:2(@
.lstm_cell_620_matmul_1_readvariableop_resource:
(;
-lstm_cell_620_biasadd_readvariableop_resource:(
identity��$lstm_cell_620/BiasAdd/ReadVariableOp�#lstm_cell_620/MatMul/ReadVariableOp�%lstm_cell_620/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_620/MatMul/ReadVariableOpReadVariableOp,lstm_cell_620_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_620/MatMulMatMulstrided_slice_2:output:0+lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_620_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_620/MatMul_1MatMulzeros:output:0-lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_620/addAddV2lstm_cell_620/MatMul:product:0 lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_620_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_620/BiasAddBiasAddlstm_cell_620/add:z:0,lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_620/splitSplit&lstm_cell_620/split/split_dim:output:0lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_620/SigmoidSigmoidlstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_1Sigmoidlstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_620/mulMullstm_cell_620/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_620/ReluRelulstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_1Mullstm_cell_620/Sigmoid:y:0 lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_620/add_1AddV2lstm_cell_620/mul:z:0lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_2Sigmoidlstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_620/Relu_1Relulstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_2Mullstm_cell_620/Sigmoid_2:y:0"lstm_cell_620/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_620_matmul_readvariableop_resource.lstm_cell_620_matmul_1_readvariableop_resource-lstm_cell_620_biasadd_readvariableop_resource*
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
while_body_3756955*
condR
while_cond_3756954*K
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
NoOpNoOp%^lstm_cell_620/BiasAdd/ReadVariableOp$^lstm_cell_620/MatMul/ReadVariableOp&^lstm_cell_620/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_620/BiasAdd/ReadVariableOp$lstm_cell_620/BiasAdd/ReadVariableOp2J
#lstm_cell_620/MatMul/ReadVariableOp#lstm_cell_620/MatMul/ReadVariableOp2N
%lstm_cell_620/MatMul_1/ReadVariableOp%lstm_cell_620/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�#
�
while_body_3752581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_618_3752605_0:	�0
while_lstm_cell_618_3752607_0:	d�,
while_lstm_cell_618_3752609_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_618_3752605:	�.
while_lstm_cell_618_3752607:	d�*
while_lstm_cell_618_3752609:	���+while/lstm_cell_618/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_618/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_618_3752605_0while_lstm_cell_618_3752607_0while_lstm_cell_618_3752609_0*
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
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3752522�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_618/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_618/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_618/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_618/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_618_3752605while_lstm_cell_618_3752605_0"<
while_lstm_cell_618_3752607while_lstm_cell_618_3752607_0"<
while_lstm_cell_618_3752609while_lstm_cell_618_3752609_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_618/StatefulPartitionedCall+while/lstm_cell_618/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�C
�

lstm_655_while_body_3754821.
*lstm_655_while_lstm_655_while_loop_counter4
0lstm_655_while_lstm_655_while_maximum_iterations
lstm_655_while_placeholder 
lstm_655_while_placeholder_1 
lstm_655_while_placeholder_2 
lstm_655_while_placeholder_3-
)lstm_655_while_lstm_655_strided_slice_1_0i
elstm_655_while_tensorarrayv2read_tensorlistgetitem_lstm_655_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_655_while_lstm_cell_619_matmul_readvariableop_resource_0:	d�R
?lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource_0:	2�M
>lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource_0:	�
lstm_655_while_identity
lstm_655_while_identity_1
lstm_655_while_identity_2
lstm_655_while_identity_3
lstm_655_while_identity_4
lstm_655_while_identity_5+
'lstm_655_while_lstm_655_strided_slice_1g
clstm_655_while_tensorarrayv2read_tensorlistgetitem_lstm_655_tensorarrayunstack_tensorlistfromtensorN
;lstm_655_while_lstm_cell_619_matmul_readvariableop_resource:	d�P
=lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource:	2�K
<lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource:	���3lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp�2lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp�4lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp�
@lstm_655/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_655/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_655_while_tensorarrayv2read_tensorlistgetitem_lstm_655_tensorarrayunstack_tensorlistfromtensor_0lstm_655_while_placeholderIlstm_655/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_655/while/lstm_cell_619/MatMul/ReadVariableOpReadVariableOp=lstm_655_while_lstm_cell_619_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_655/while/lstm_cell_619/MatMulMatMul9lstm_655/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp?lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_655/while/lstm_cell_619/MatMul_1MatMullstm_655_while_placeholder_2<lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_655/while/lstm_cell_619/addAddV2-lstm_655/while/lstm_cell_619/MatMul:product:0/lstm_655/while/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp>lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_655/while/lstm_cell_619/BiasAddBiasAdd$lstm_655/while/lstm_cell_619/add:z:0;lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_655/while/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_655/while/lstm_cell_619/splitSplit5lstm_655/while/lstm_cell_619/split/split_dim:output:0-lstm_655/while/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_655/while/lstm_cell_619/SigmoidSigmoid+lstm_655/while/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_655/while/lstm_cell_619/Sigmoid_1Sigmoid+lstm_655/while/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_655/while/lstm_cell_619/mulMul*lstm_655/while/lstm_cell_619/Sigmoid_1:y:0lstm_655_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_655/while/lstm_cell_619/ReluRelu+lstm_655/while/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_655/while/lstm_cell_619/mul_1Mul(lstm_655/while/lstm_cell_619/Sigmoid:y:0/lstm_655/while/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_655/while/lstm_cell_619/add_1AddV2$lstm_655/while/lstm_cell_619/mul:z:0&lstm_655/while/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_655/while/lstm_cell_619/Sigmoid_2Sigmoid+lstm_655/while/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_655/while/lstm_cell_619/Relu_1Relu&lstm_655/while/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_655/while/lstm_cell_619/mul_2Mul*lstm_655/while/lstm_cell_619/Sigmoid_2:y:01lstm_655/while/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_655/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_655_while_placeholder_1lstm_655_while_placeholder&lstm_655/while/lstm_cell_619/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_655/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_655/while/addAddV2lstm_655_while_placeholderlstm_655/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_655/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_655/while/add_1AddV2*lstm_655_while_lstm_655_while_loop_counterlstm_655/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_655/while/IdentityIdentitylstm_655/while/add_1:z:0^lstm_655/while/NoOp*
T0*
_output_shapes
: �
lstm_655/while/Identity_1Identity0lstm_655_while_lstm_655_while_maximum_iterations^lstm_655/while/NoOp*
T0*
_output_shapes
: t
lstm_655/while/Identity_2Identitylstm_655/while/add:z:0^lstm_655/while/NoOp*
T0*
_output_shapes
: �
lstm_655/while/Identity_3IdentityClstm_655/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_655/while/NoOp*
T0*
_output_shapes
: �
lstm_655/while/Identity_4Identity&lstm_655/while/lstm_cell_619/mul_2:z:0^lstm_655/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_655/while/Identity_5Identity&lstm_655/while/lstm_cell_619/add_1:z:0^lstm_655/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_655/while/NoOpNoOp4^lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp3^lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp5^lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_655_while_identity lstm_655/while/Identity:output:0"?
lstm_655_while_identity_1"lstm_655/while/Identity_1:output:0"?
lstm_655_while_identity_2"lstm_655/while/Identity_2:output:0"?
lstm_655_while_identity_3"lstm_655/while/Identity_3:output:0"?
lstm_655_while_identity_4"lstm_655/while/Identity_4:output:0"?
lstm_655_while_identity_5"lstm_655/while/Identity_5:output:0"T
'lstm_655_while_lstm_655_strided_slice_1)lstm_655_while_lstm_655_strided_slice_1_0"~
<lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource>lstm_655_while_lstm_cell_619_biasadd_readvariableop_resource_0"�
=lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource?lstm_655_while_lstm_cell_619_matmul_1_readvariableop_resource_0"|
;lstm_655_while_lstm_cell_619_matmul_readvariableop_resource=lstm_655_while_lstm_cell_619_matmul_readvariableop_resource_0"�
clstm_655_while_tensorarrayv2read_tensorlistgetitem_lstm_655_tensorarrayunstack_tensorlistfromtensorelstm_655_while_tensorarrayv2read_tensorlistgetitem_lstm_655_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp3lstm_655/while/lstm_cell_619/BiasAdd/ReadVariableOp2h
2lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp2lstm_655/while/lstm_cell_619/MatMul/ReadVariableOp2l
4lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp4lstm_655/while/lstm_cell_619/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

�
0__inference_sequential_218_layer_call_fn_3754474
lstm_654_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_654_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8� *T
fORM
K__inference_sequential_218_layer_call_and_return_conditional_losses_3754422o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_654_input
�J
�
E__inference_lstm_656_layer_call_and_return_conditional_losses_3754024

inputs>
,lstm_cell_620_matmul_readvariableop_resource:2(@
.lstm_cell_620_matmul_1_readvariableop_resource:
(;
-lstm_cell_620_biasadd_readvariableop_resource:(
identity��$lstm_cell_620/BiasAdd/ReadVariableOp�#lstm_cell_620/MatMul/ReadVariableOp�%lstm_cell_620/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_620/MatMul/ReadVariableOpReadVariableOp,lstm_cell_620_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_620/MatMulMatMulstrided_slice_2:output:0+lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_620_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_620/MatMul_1MatMulzeros:output:0-lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_620/addAddV2lstm_cell_620/MatMul:product:0 lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_620_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_620/BiasAddBiasAddlstm_cell_620/add:z:0,lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_620/splitSplit&lstm_cell_620/split/split_dim:output:0lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_620/SigmoidSigmoidlstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_1Sigmoidlstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_620/mulMullstm_cell_620/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_620/ReluRelulstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_1Mullstm_cell_620/Sigmoid:y:0 lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_620/add_1AddV2lstm_cell_620/mul:z:0lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_2Sigmoidlstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_620/Relu_1Relulstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_2Mullstm_cell_620/Sigmoid_2:y:0"lstm_cell_620/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_620_matmul_readvariableop_resource.lstm_cell_620_matmul_1_readvariableop_resource-lstm_cell_620_biasadd_readvariableop_resource*
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
while_body_3753940*
condR
while_cond_3753939*K
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
NoOpNoOp%^lstm_cell_620/BiasAdd/ReadVariableOp$^lstm_cell_620/MatMul/ReadVariableOp&^lstm_cell_620/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_620/BiasAdd/ReadVariableOp$lstm_cell_620/BiasAdd/ReadVariableOp2J
#lstm_cell_620/MatMul/ReadVariableOp#lstm_cell_620/MatMul/ReadVariableOp2N
%lstm_cell_620/MatMul_1/ReadVariableOp%lstm_cell_620/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
*__inference_lstm_655_layer_call_fn_3756126

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
GPU 2J 8� *N
fIRG
E__inference_lstm_655_layer_call_and_return_conditional_losses_3753658s
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
*__inference_lstm_654_layer_call_fn_3755510

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
GPU 2J 8� *N
fIRG
E__inference_lstm_654_layer_call_and_return_conditional_losses_3753508s
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
�K
�
E__inference_lstm_654_layer_call_and_return_conditional_losses_3755664
inputs_0?
,lstm_cell_618_matmul_readvariableop_resource:	�A
.lstm_cell_618_matmul_1_readvariableop_resource:	d�<
-lstm_cell_618_biasadd_readvariableop_resource:	�
identity��$lstm_cell_618/BiasAdd/ReadVariableOp�#lstm_cell_618/MatMul/ReadVariableOp�%lstm_cell_618/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_618/MatMul/ReadVariableOpReadVariableOp,lstm_cell_618_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_618/MatMulMatMulstrided_slice_2:output:0+lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_618_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_618/MatMul_1MatMulzeros:output:0-lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_618/addAddV2lstm_cell_618/MatMul:product:0 lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_618_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_618/BiasAddBiasAddlstm_cell_618/add:z:0,lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_618/splitSplit&lstm_cell_618/split/split_dim:output:0lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_618/SigmoidSigmoidlstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_1Sigmoidlstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_618/mulMullstm_cell_618/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_618/ReluRelulstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_1Mullstm_cell_618/Sigmoid:y:0 lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_618/add_1AddV2lstm_cell_618/mul:z:0lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_2Sigmoidlstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_618/Relu_1Relulstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_2Mullstm_cell_618/Sigmoid_2:y:0"lstm_cell_618/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_618_matmul_readvariableop_resource.lstm_cell_618_matmul_1_readvariableop_resource-lstm_cell_618_biasadd_readvariableop_resource*
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
while_body_3755580*
condR
while_cond_3755579*K
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
NoOpNoOp%^lstm_cell_618/BiasAdd/ReadVariableOp$^lstm_cell_618/MatMul/ReadVariableOp&^lstm_cell_618/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_618/BiasAdd/ReadVariableOp$lstm_cell_618/BiasAdd/ReadVariableOp2J
#lstm_cell_618/MatMul/ReadVariableOp#lstm_cell_618/MatMul/ReadVariableOp2N
%lstm_cell_618/MatMul_1/ReadVariableOp%lstm_cell_618/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�8
�
while_body_3756482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_619_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_619_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_619_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_619_matmul_readvariableop_resource:	d�G
4while_lstm_cell_619_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_619_biasadd_readvariableop_resource:	���*while/lstm_cell_619/BiasAdd/ReadVariableOp�)while/lstm_cell_619/MatMul/ReadVariableOp�+while/lstm_cell_619/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_619/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_619_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_619/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_619_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_619/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_619/addAddV2$while/lstm_cell_619/MatMul:product:0&while/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_619_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_619/BiasAddBiasAddwhile/lstm_cell_619/add:z:02while/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_619/splitSplit,while/lstm_cell_619/split/split_dim:output:0$while/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_619/SigmoidSigmoid"while/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_1Sigmoid"while/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mulMul!while/lstm_cell_619/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_619/ReluRelu"while/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_1Mulwhile/lstm_cell_619/Sigmoid:y:0&while/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/add_1AddV2while/lstm_cell_619/mul:z:0while/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_2Sigmoid"while/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_619/Relu_1Reluwhile/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_2Mul!while/lstm_cell_619/Sigmoid_2:y:0(while/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_619/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_619/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_619/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_619/BiasAdd/ReadVariableOp*^while/lstm_cell_619/MatMul/ReadVariableOp,^while/lstm_cell_619/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_619_biasadd_readvariableop_resource5while_lstm_cell_619_biasadd_readvariableop_resource_0"n
4while_lstm_cell_619_matmul_1_readvariableop_resource6while_lstm_cell_619_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_619_matmul_readvariableop_resource4while_lstm_cell_619_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_619/BiasAdd/ReadVariableOp*while/lstm_cell_619/BiasAdd/ReadVariableOp2V
)while/lstm_cell_619/MatMul/ReadVariableOp)while/lstm_cell_619/MatMul/ReadVariableOp2Z
+while/lstm_cell_619/MatMul_1/ReadVariableOp+while/lstm_cell_619/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3757410

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
�8
�
while_body_3753940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_620_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_620_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_620_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_620_matmul_readvariableop_resource:2(F
4while_lstm_cell_620_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_620_biasadd_readvariableop_resource:(��*while/lstm_cell_620/BiasAdd/ReadVariableOp�)while/lstm_cell_620/MatMul/ReadVariableOp�+while/lstm_cell_620/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_620/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_620_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_620/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_620_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_620/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_620/addAddV2$while/lstm_cell_620/MatMul:product:0&while/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_620_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_620/BiasAddBiasAddwhile/lstm_cell_620/add:z:02while/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_620/splitSplit,while/lstm_cell_620/split/split_dim:output:0$while/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_620/SigmoidSigmoid"while/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_1Sigmoid"while/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mulMul!while/lstm_cell_620/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_620/ReluRelu"while/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_1Mulwhile/lstm_cell_620/Sigmoid:y:0&while/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/add_1AddV2while/lstm_cell_620/mul:z:0while/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_2Sigmoid"while/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_620/Relu_1Reluwhile/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_2Mul!while/lstm_cell_620/Sigmoid_2:y:0(while/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_620/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_620/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_620/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_620/BiasAdd/ReadVariableOp*^while/lstm_cell_620/MatMul/ReadVariableOp,^while/lstm_cell_620/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_620_biasadd_readvariableop_resource5while_lstm_cell_620_biasadd_readvariableop_resource_0"n
4while_lstm_cell_620_matmul_1_readvariableop_resource6while_lstm_cell_620_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_620_matmul_readvariableop_resource4while_lstm_cell_620_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_620/BiasAdd/ReadVariableOp*while/lstm_cell_620/BiasAdd/ReadVariableOp2V
)while/lstm_cell_620/MatMul/ReadVariableOp)while/lstm_cell_620/MatMul/ReadVariableOp2Z
+while/lstm_cell_620/MatMul_1/ReadVariableOp+while/lstm_cell_620/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_655_layer_call_fn_3756104
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
GPU 2J 8� *N
fIRG
E__inference_lstm_655_layer_call_and_return_conditional_losses_3752809|
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
E__inference_lstm_656_layer_call_and_return_conditional_losses_3753350

inputs'
lstm_cell_620_3753268:2('
lstm_cell_620_3753270:
(#
lstm_cell_620_3753272:(
identity��%lstm_cell_620/StatefulPartitionedCall�while;
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
%lstm_cell_620/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_620_3753268lstm_cell_620_3753270lstm_cell_620_3753272*
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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3753222n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_620_3753268lstm_cell_620_3753270lstm_cell_620_3753272*
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
while_body_3753281*
condR
while_cond_3753280*K
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
NoOpNoOp&^lstm_cell_620/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_620/StatefulPartitionedCall%lstm_cell_620/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�J
�
E__inference_lstm_656_layer_call_and_return_conditional_losses_3757325

inputs>
,lstm_cell_620_matmul_readvariableop_resource:2(@
.lstm_cell_620_matmul_1_readvariableop_resource:
(;
-lstm_cell_620_biasadd_readvariableop_resource:(
identity��$lstm_cell_620/BiasAdd/ReadVariableOp�#lstm_cell_620/MatMul/ReadVariableOp�%lstm_cell_620/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_620/MatMul/ReadVariableOpReadVariableOp,lstm_cell_620_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_620/MatMulMatMulstrided_slice_2:output:0+lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_620_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_620/MatMul_1MatMulzeros:output:0-lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_620/addAddV2lstm_cell_620/MatMul:product:0 lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_620_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_620/BiasAddBiasAddlstm_cell_620/add:z:0,lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_620/splitSplit&lstm_cell_620/split/split_dim:output:0lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_620/SigmoidSigmoidlstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_1Sigmoidlstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_620/mulMullstm_cell_620/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_620/ReluRelulstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_1Mullstm_cell_620/Sigmoid:y:0 lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_620/add_1AddV2lstm_cell_620/mul:z:0lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_2Sigmoidlstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_620/Relu_1Relulstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_2Mullstm_cell_620/Sigmoid_2:y:0"lstm_cell_620/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_620_matmul_readvariableop_resource.lstm_cell_620_matmul_1_readvariableop_resource-lstm_cell_620_biasadd_readvariableop_resource*
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
while_body_3757241*
condR
while_cond_3757240*K
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
NoOpNoOp%^lstm_cell_620/BiasAdd/ReadVariableOp$^lstm_cell_620/MatMul/ReadVariableOp&^lstm_cell_620/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_620/BiasAdd/ReadVariableOp$lstm_cell_620/BiasAdd/ReadVariableOp2J
#lstm_cell_620/MatMul/ReadVariableOp#lstm_cell_620/MatMul/ReadVariableOp2N
%lstm_cell_620/MatMul_1/ReadVariableOp%lstm_cell_620/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
lstm_655_while_cond_3754820.
*lstm_655_while_lstm_655_while_loop_counter4
0lstm_655_while_lstm_655_while_maximum_iterations
lstm_655_while_placeholder 
lstm_655_while_placeholder_1 
lstm_655_while_placeholder_2 
lstm_655_while_placeholder_30
,lstm_655_while_less_lstm_655_strided_slice_1G
Clstm_655_while_lstm_655_while_cond_3754820___redundant_placeholder0G
Clstm_655_while_lstm_655_while_cond_3754820___redundant_placeholder1G
Clstm_655_while_lstm_655_while_cond_3754820___redundant_placeholder2G
Clstm_655_while_lstm_655_while_cond_3754820___redundant_placeholder3
lstm_655_while_identity
�
lstm_655/while/LessLesslstm_655_while_placeholder,lstm_655_while_less_lstm_655_strided_slice_1*
T0*
_output_shapes
: ]
lstm_655/while/IdentityIdentitylstm_655/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_655_while_identity lstm_655/while/Identity:output:0*(
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
while_cond_3753723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3753723___redundant_placeholder05
1while_while_cond_3753723___redundant_placeholder15
1while_while_cond_3753723___redundant_placeholder25
1while_while_cond_3753723___redundant_placeholder3
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
while_cond_3757240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3757240___redundant_placeholder05
1while_while_cond_3757240___redundant_placeholder15
1while_while_cond_3757240___redundant_placeholder25
1while_while_cond_3757240___redundant_placeholder3
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
�C
�

lstm_656_while_body_3754960.
*lstm_656_while_lstm_656_while_loop_counter4
0lstm_656_while_lstm_656_while_maximum_iterations
lstm_656_while_placeholder 
lstm_656_while_placeholder_1 
lstm_656_while_placeholder_2 
lstm_656_while_placeholder_3-
)lstm_656_while_lstm_656_strided_slice_1_0i
elstm_656_while_tensorarrayv2read_tensorlistgetitem_lstm_656_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_656_while_lstm_cell_620_matmul_readvariableop_resource_0:2(Q
?lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource_0:
(L
>lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource_0:(
lstm_656_while_identity
lstm_656_while_identity_1
lstm_656_while_identity_2
lstm_656_while_identity_3
lstm_656_while_identity_4
lstm_656_while_identity_5+
'lstm_656_while_lstm_656_strided_slice_1g
clstm_656_while_tensorarrayv2read_tensorlistgetitem_lstm_656_tensorarrayunstack_tensorlistfromtensorM
;lstm_656_while_lstm_cell_620_matmul_readvariableop_resource:2(O
=lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource:
(J
<lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource:(��3lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp�2lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp�4lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp�
@lstm_656/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_656/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_656_while_tensorarrayv2read_tensorlistgetitem_lstm_656_tensorarrayunstack_tensorlistfromtensor_0lstm_656_while_placeholderIlstm_656/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_656/while/lstm_cell_620/MatMul/ReadVariableOpReadVariableOp=lstm_656_while_lstm_cell_620_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_656/while/lstm_cell_620/MatMulMatMul9lstm_656/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp?lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_656/while/lstm_cell_620/MatMul_1MatMullstm_656_while_placeholder_2<lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_656/while/lstm_cell_620/addAddV2-lstm_656/while/lstm_cell_620/MatMul:product:0/lstm_656/while/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp>lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_656/while/lstm_cell_620/BiasAddBiasAdd$lstm_656/while/lstm_cell_620/add:z:0;lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_656/while/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_656/while/lstm_cell_620/splitSplit5lstm_656/while/lstm_cell_620/split/split_dim:output:0-lstm_656/while/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_656/while/lstm_cell_620/SigmoidSigmoid+lstm_656/while/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_656/while/lstm_cell_620/Sigmoid_1Sigmoid+lstm_656/while/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_656/while/lstm_cell_620/mulMul*lstm_656/while/lstm_cell_620/Sigmoid_1:y:0lstm_656_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_656/while/lstm_cell_620/ReluRelu+lstm_656/while/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_656/while/lstm_cell_620/mul_1Mul(lstm_656/while/lstm_cell_620/Sigmoid:y:0/lstm_656/while/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_656/while/lstm_cell_620/add_1AddV2$lstm_656/while/lstm_cell_620/mul:z:0&lstm_656/while/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_656/while/lstm_cell_620/Sigmoid_2Sigmoid+lstm_656/while/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_656/while/lstm_cell_620/Relu_1Relu&lstm_656/while/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_656/while/lstm_cell_620/mul_2Mul*lstm_656/while/lstm_cell_620/Sigmoid_2:y:01lstm_656/while/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_656/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_656_while_placeholder_1lstm_656_while_placeholder&lstm_656/while/lstm_cell_620/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_656/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_656/while/addAddV2lstm_656_while_placeholderlstm_656/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_656/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_656/while/add_1AddV2*lstm_656_while_lstm_656_while_loop_counterlstm_656/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_656/while/IdentityIdentitylstm_656/while/add_1:z:0^lstm_656/while/NoOp*
T0*
_output_shapes
: �
lstm_656/while/Identity_1Identity0lstm_656_while_lstm_656_while_maximum_iterations^lstm_656/while/NoOp*
T0*
_output_shapes
: t
lstm_656/while/Identity_2Identitylstm_656/while/add:z:0^lstm_656/while/NoOp*
T0*
_output_shapes
: �
lstm_656/while/Identity_3IdentityClstm_656/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_656/while/NoOp*
T0*
_output_shapes
: �
lstm_656/while/Identity_4Identity&lstm_656/while/lstm_cell_620/mul_2:z:0^lstm_656/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_656/while/Identity_5Identity&lstm_656/while/lstm_cell_620/add_1:z:0^lstm_656/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_656/while/NoOpNoOp4^lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp3^lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp5^lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_656_while_identity lstm_656/while/Identity:output:0"?
lstm_656_while_identity_1"lstm_656/while/Identity_1:output:0"?
lstm_656_while_identity_2"lstm_656/while/Identity_2:output:0"?
lstm_656_while_identity_3"lstm_656/while/Identity_3:output:0"?
lstm_656_while_identity_4"lstm_656/while/Identity_4:output:0"?
lstm_656_while_identity_5"lstm_656/while/Identity_5:output:0"T
'lstm_656_while_lstm_656_strided_slice_1)lstm_656_while_lstm_656_strided_slice_1_0"~
<lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource>lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource_0"�
=lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource?lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource_0"|
;lstm_656_while_lstm_cell_620_matmul_readvariableop_resource=lstm_656_while_lstm_cell_620_matmul_readvariableop_resource_0"�
clstm_656_while_tensorarrayv2read_tensorlistgetitem_lstm_656_tensorarrayunstack_tensorlistfromtensorelstm_656_while_tensorarrayv2read_tensorlistgetitem_lstm_656_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp3lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp2h
2lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp2lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp2l
4lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp4lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
�
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3752376

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
�T
�
*sequential_218_lstm_656_while_body_3752219L
Hsequential_218_lstm_656_while_sequential_218_lstm_656_while_loop_counterR
Nsequential_218_lstm_656_while_sequential_218_lstm_656_while_maximum_iterations-
)sequential_218_lstm_656_while_placeholder/
+sequential_218_lstm_656_while_placeholder_1/
+sequential_218_lstm_656_while_placeholder_2/
+sequential_218_lstm_656_while_placeholder_3K
Gsequential_218_lstm_656_while_sequential_218_lstm_656_strided_slice_1_0�
�sequential_218_lstm_656_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_656_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_218_lstm_656_while_lstm_cell_620_matmul_readvariableop_resource_0:2(`
Nsequential_218_lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource_0:
([
Msequential_218_lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource_0:(*
&sequential_218_lstm_656_while_identity,
(sequential_218_lstm_656_while_identity_1,
(sequential_218_lstm_656_while_identity_2,
(sequential_218_lstm_656_while_identity_3,
(sequential_218_lstm_656_while_identity_4,
(sequential_218_lstm_656_while_identity_5I
Esequential_218_lstm_656_while_sequential_218_lstm_656_strided_slice_1�
�sequential_218_lstm_656_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_656_tensorarrayunstack_tensorlistfromtensor\
Jsequential_218_lstm_656_while_lstm_cell_620_matmul_readvariableop_resource:2(^
Lsequential_218_lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource:
(Y
Ksequential_218_lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource:(��Bsequential_218/lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp�Asequential_218/lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp�Csequential_218/lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp�
Osequential_218/lstm_656/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Asequential_218/lstm_656/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_218_lstm_656_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_656_tensorarrayunstack_tensorlistfromtensor_0)sequential_218_lstm_656_while_placeholderXsequential_218/lstm_656/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Asequential_218/lstm_656/while/lstm_cell_620/MatMul/ReadVariableOpReadVariableOpLsequential_218_lstm_656_while_lstm_cell_620_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
2sequential_218/lstm_656/while/lstm_cell_620/MatMulMatMulHsequential_218/lstm_656/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_218/lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_218/lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOpNsequential_218_lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
4sequential_218/lstm_656/while/lstm_cell_620/MatMul_1MatMul+sequential_218_lstm_656_while_placeholder_2Ksequential_218/lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_218/lstm_656/while/lstm_cell_620/addAddV2<sequential_218/lstm_656/while/lstm_cell_620/MatMul:product:0>sequential_218/lstm_656/while/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
Bsequential_218/lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOpMsequential_218_lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
3sequential_218/lstm_656/while/lstm_cell_620/BiasAddBiasAdd3sequential_218/lstm_656/while/lstm_cell_620/add:z:0Jsequential_218/lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(}
;sequential_218/lstm_656/while/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_218/lstm_656/while/lstm_cell_620/splitSplitDsequential_218/lstm_656/while/lstm_cell_620/split/split_dim:output:0<sequential_218/lstm_656/while/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
3sequential_218/lstm_656/while/lstm_cell_620/SigmoidSigmoid:sequential_218/lstm_656/while/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
�
5sequential_218/lstm_656/while/lstm_cell_620/Sigmoid_1Sigmoid:sequential_218/lstm_656/while/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
/sequential_218/lstm_656/while/lstm_cell_620/mulMul9sequential_218/lstm_656/while/lstm_cell_620/Sigmoid_1:y:0+sequential_218_lstm_656_while_placeholder_3*
T0*'
_output_shapes
:���������
�
0sequential_218/lstm_656/while/lstm_cell_620/ReluRelu:sequential_218/lstm_656/while/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
1sequential_218/lstm_656/while/lstm_cell_620/mul_1Mul7sequential_218/lstm_656/while/lstm_cell_620/Sigmoid:y:0>sequential_218/lstm_656/while/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
1sequential_218/lstm_656/while/lstm_cell_620/add_1AddV23sequential_218/lstm_656/while/lstm_cell_620/mul:z:05sequential_218/lstm_656/while/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
�
5sequential_218/lstm_656/while/lstm_cell_620/Sigmoid_2Sigmoid:sequential_218/lstm_656/while/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
�
2sequential_218/lstm_656/while/lstm_cell_620/Relu_1Relu5sequential_218/lstm_656/while/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_218/lstm_656/while/lstm_cell_620/mul_2Mul9sequential_218/lstm_656/while/lstm_cell_620/Sigmoid_2:y:0@sequential_218/lstm_656/while/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Bsequential_218/lstm_656/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_218_lstm_656_while_placeholder_1)sequential_218_lstm_656_while_placeholder5sequential_218/lstm_656/while/lstm_cell_620/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_218/lstm_656/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_218/lstm_656/while/addAddV2)sequential_218_lstm_656_while_placeholder,sequential_218/lstm_656/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_218/lstm_656/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_218/lstm_656/while/add_1AddV2Hsequential_218_lstm_656_while_sequential_218_lstm_656_while_loop_counter.sequential_218/lstm_656/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_218/lstm_656/while/IdentityIdentity'sequential_218/lstm_656/while/add_1:z:0#^sequential_218/lstm_656/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_656/while/Identity_1IdentityNsequential_218_lstm_656_while_sequential_218_lstm_656_while_maximum_iterations#^sequential_218/lstm_656/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_656/while/Identity_2Identity%sequential_218/lstm_656/while/add:z:0#^sequential_218/lstm_656/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_656/while/Identity_3IdentityRsequential_218/lstm_656/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_218/lstm_656/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_656/while/Identity_4Identity5sequential_218/lstm_656/while/lstm_cell_620/mul_2:z:0#^sequential_218/lstm_656/while/NoOp*
T0*'
_output_shapes
:���������
�
(sequential_218/lstm_656/while/Identity_5Identity5sequential_218/lstm_656/while/lstm_cell_620/add_1:z:0#^sequential_218/lstm_656/while/NoOp*
T0*'
_output_shapes
:���������
�
"sequential_218/lstm_656/while/NoOpNoOpC^sequential_218/lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOpB^sequential_218/lstm_656/while/lstm_cell_620/MatMul/ReadVariableOpD^sequential_218/lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_218_lstm_656_while_identity/sequential_218/lstm_656/while/Identity:output:0"]
(sequential_218_lstm_656_while_identity_11sequential_218/lstm_656/while/Identity_1:output:0"]
(sequential_218_lstm_656_while_identity_21sequential_218/lstm_656/while/Identity_2:output:0"]
(sequential_218_lstm_656_while_identity_31sequential_218/lstm_656/while/Identity_3:output:0"]
(sequential_218_lstm_656_while_identity_41sequential_218/lstm_656/while/Identity_4:output:0"]
(sequential_218_lstm_656_while_identity_51sequential_218/lstm_656/while/Identity_5:output:0"�
Ksequential_218_lstm_656_while_lstm_cell_620_biasadd_readvariableop_resourceMsequential_218_lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource_0"�
Lsequential_218_lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resourceNsequential_218_lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource_0"�
Jsequential_218_lstm_656_while_lstm_cell_620_matmul_readvariableop_resourceLsequential_218_lstm_656_while_lstm_cell_620_matmul_readvariableop_resource_0"�
Esequential_218_lstm_656_while_sequential_218_lstm_656_strided_slice_1Gsequential_218_lstm_656_while_sequential_218_lstm_656_strided_slice_1_0"�
�sequential_218_lstm_656_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_656_tensorarrayunstack_tensorlistfromtensor�sequential_218_lstm_656_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_656_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
Bsequential_218/lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOpBsequential_218/lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp2�
Asequential_218/lstm_656/while/lstm_cell_620/MatMul/ReadVariableOpAsequential_218/lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp2�
Csequential_218/lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOpCsequential_218/lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�J
�
E__inference_lstm_656_layer_call_and_return_conditional_losses_3753808

inputs>
,lstm_cell_620_matmul_readvariableop_resource:2(@
.lstm_cell_620_matmul_1_readvariableop_resource:
(;
-lstm_cell_620_biasadd_readvariableop_resource:(
identity��$lstm_cell_620/BiasAdd/ReadVariableOp�#lstm_cell_620/MatMul/ReadVariableOp�%lstm_cell_620/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_620/MatMul/ReadVariableOpReadVariableOp,lstm_cell_620_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_620/MatMulMatMulstrided_slice_2:output:0+lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_620_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_620/MatMul_1MatMulzeros:output:0-lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_620/addAddV2lstm_cell_620/MatMul:product:0 lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_620_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_620/BiasAddBiasAddlstm_cell_620/add:z:0,lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_620/splitSplit&lstm_cell_620/split/split_dim:output:0lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_620/SigmoidSigmoidlstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_1Sigmoidlstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_620/mulMullstm_cell_620/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_620/ReluRelulstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_1Mullstm_cell_620/Sigmoid:y:0 lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_620/add_1AddV2lstm_cell_620/mul:z:0lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_620/Sigmoid_2Sigmoidlstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_620/Relu_1Relulstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_620/mul_2Mullstm_cell_620/Sigmoid_2:y:0"lstm_cell_620/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_620_matmul_readvariableop_resource.lstm_cell_620_matmul_1_readvariableop_resource-lstm_cell_620_biasadd_readvariableop_resource*
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
while_body_3753724*
condR
while_cond_3753723*K
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
NoOpNoOp%^lstm_cell_620/BiasAdd/ReadVariableOp$^lstm_cell_620/MatMul/ReadVariableOp&^lstm_cell_620/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_620/BiasAdd/ReadVariableOp$lstm_cell_620/BiasAdd/ReadVariableOp2J
#lstm_cell_620/MatMul/ReadVariableOp#lstm_cell_620/MatMul/ReadVariableOp2N
%lstm_cell_620/MatMul_1/ReadVariableOp%lstm_cell_620/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_3754269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3754269___redundant_placeholder05
1while_while_cond_3754269___redundant_placeholder15
1while_while_cond_3754269___redundant_placeholder25
1while_while_cond_3754269___redundant_placeholder3
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
while_cond_3755579
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3755579___redundant_placeholder05
1while_while_cond_3755579___redundant_placeholder15
1while_while_cond_3755579___redundant_placeholder25
1while_while_cond_3755579___redundant_placeholder3
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
while_cond_3756481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3756481___redundant_placeholder05
1while_while_cond_3756481___redundant_placeholder15
1while_while_cond_3756481___redundant_placeholder25
1while_while_cond_3756481___redundant_placeholder3
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
�W
�
 __inference__traced_save_3757781
file_prefix/
+savev2_dense_218_kernel_read_readvariableop-
)savev2_dense_218_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_654_lstm_cell_654_kernel_read_readvariableopF
Bsavev2_lstm_654_lstm_cell_654_recurrent_kernel_read_readvariableop:
6savev2_lstm_654_lstm_cell_654_bias_read_readvariableop<
8savev2_lstm_655_lstm_cell_655_kernel_read_readvariableopF
Bsavev2_lstm_655_lstm_cell_655_recurrent_kernel_read_readvariableop:
6savev2_lstm_655_lstm_cell_655_bias_read_readvariableop<
8savev2_lstm_656_lstm_cell_656_kernel_read_readvariableopF
Bsavev2_lstm_656_lstm_cell_656_recurrent_kernel_read_readvariableop:
6savev2_lstm_656_lstm_cell_656_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_218_kernel_m_read_readvariableop4
0savev2_adam_dense_218_bias_m_read_readvariableopC
?savev2_adam_lstm_654_lstm_cell_654_kernel_m_read_readvariableopM
Isavev2_adam_lstm_654_lstm_cell_654_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_654_lstm_cell_654_bias_m_read_readvariableopC
?savev2_adam_lstm_655_lstm_cell_655_kernel_m_read_readvariableopM
Isavev2_adam_lstm_655_lstm_cell_655_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_655_lstm_cell_655_bias_m_read_readvariableopC
?savev2_adam_lstm_656_lstm_cell_656_kernel_m_read_readvariableopM
Isavev2_adam_lstm_656_lstm_cell_656_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_656_lstm_cell_656_bias_m_read_readvariableop6
2savev2_adam_dense_218_kernel_v_read_readvariableop4
0savev2_adam_dense_218_bias_v_read_readvariableopC
?savev2_adam_lstm_654_lstm_cell_654_kernel_v_read_readvariableopM
Isavev2_adam_lstm_654_lstm_cell_654_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_654_lstm_cell_654_bias_v_read_readvariableopC
?savev2_adam_lstm_655_lstm_cell_655_kernel_v_read_readvariableopM
Isavev2_adam_lstm_655_lstm_cell_655_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_655_lstm_cell_655_bias_v_read_readvariableopC
?savev2_adam_lstm_656_lstm_cell_656_kernel_v_read_readvariableopM
Isavev2_adam_lstm_656_lstm_cell_656_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_656_lstm_cell_656_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_218_kernel_read_readvariableop)savev2_dense_218_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_654_lstm_cell_654_kernel_read_readvariableopBsavev2_lstm_654_lstm_cell_654_recurrent_kernel_read_readvariableop6savev2_lstm_654_lstm_cell_654_bias_read_readvariableop8savev2_lstm_655_lstm_cell_655_kernel_read_readvariableopBsavev2_lstm_655_lstm_cell_655_recurrent_kernel_read_readvariableop6savev2_lstm_655_lstm_cell_655_bias_read_readvariableop8savev2_lstm_656_lstm_cell_656_kernel_read_readvariableopBsavev2_lstm_656_lstm_cell_656_recurrent_kernel_read_readvariableop6savev2_lstm_656_lstm_cell_656_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_218_kernel_m_read_readvariableop0savev2_adam_dense_218_bias_m_read_readvariableop?savev2_adam_lstm_654_lstm_cell_654_kernel_m_read_readvariableopIsavev2_adam_lstm_654_lstm_cell_654_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_654_lstm_cell_654_bias_m_read_readvariableop?savev2_adam_lstm_655_lstm_cell_655_kernel_m_read_readvariableopIsavev2_adam_lstm_655_lstm_cell_655_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_655_lstm_cell_655_bias_m_read_readvariableop?savev2_adam_lstm_656_lstm_cell_656_kernel_m_read_readvariableopIsavev2_adam_lstm_656_lstm_cell_656_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_656_lstm_cell_656_bias_m_read_readvariableop2savev2_adam_dense_218_kernel_v_read_readvariableop0savev2_adam_dense_218_bias_v_read_readvariableop?savev2_adam_lstm_654_lstm_cell_654_kernel_v_read_readvariableopIsavev2_adam_lstm_654_lstm_cell_654_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_654_lstm_cell_654_bias_v_read_readvariableop?savev2_adam_lstm_655_lstm_cell_655_kernel_v_read_readvariableopIsavev2_adam_lstm_655_lstm_cell_655_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_655_lstm_cell_655_bias_v_read_readvariableop?savev2_adam_lstm_656_lstm_cell_656_kernel_v_read_readvariableopIsavev2_adam_lstm_656_lstm_cell_656_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_656_lstm_cell_656_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�
�
*__inference_lstm_656_layer_call_fn_3756753

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
GPU 2J 8� *N
fIRG
E__inference_lstm_656_layer_call_and_return_conditional_losses_3754024o
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
�
*__inference_lstm_654_layer_call_fn_3755499
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
GPU 2J 8� *N
fIRG
E__inference_lstm_654_layer_call_and_return_conditional_losses_3752650|
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
�8
�
while_body_3754105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_619_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_619_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_619_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_619_matmul_readvariableop_resource:	d�G
4while_lstm_cell_619_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_619_biasadd_readvariableop_resource:	���*while/lstm_cell_619/BiasAdd/ReadVariableOp�)while/lstm_cell_619/MatMul/ReadVariableOp�+while/lstm_cell_619/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_619/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_619_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_619/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_619_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_619/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_619/addAddV2$while/lstm_cell_619/MatMul:product:0&while/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_619_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_619/BiasAddBiasAddwhile/lstm_cell_619/add:z:02while/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_619/splitSplit,while/lstm_cell_619/split/split_dim:output:0$while/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_619/SigmoidSigmoid"while/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_1Sigmoid"while/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mulMul!while/lstm_cell_619/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_619/ReluRelu"while/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_1Mulwhile/lstm_cell_619/Sigmoid:y:0&while/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/add_1AddV2while/lstm_cell_619/mul:z:0while/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_619/Sigmoid_2Sigmoid"while/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_619/Relu_1Reluwhile/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_619/mul_2Mul!while/lstm_cell_619/Sigmoid_2:y:0(while/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_619/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_619/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_619/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_619/BiasAdd/ReadVariableOp*^while/lstm_cell_619/MatMul/ReadVariableOp,^while/lstm_cell_619/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_619_biasadd_readvariableop_resource5while_lstm_cell_619_biasadd_readvariableop_resource_0"n
4while_lstm_cell_619_matmul_1_readvariableop_resource6while_lstm_cell_619_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_619_matmul_readvariableop_resource4while_lstm_cell_619_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_619/BiasAdd/ReadVariableOp*while/lstm_cell_619/BiasAdd/ReadVariableOp2V
)while/lstm_cell_619/MatMul/ReadVariableOp)while/lstm_cell_619/MatMul/ReadVariableOp2Z
+while/lstm_cell_619/MatMul_1/ReadVariableOp+while/lstm_cell_619/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
*sequential_218_lstm_655_while_cond_3752079L
Hsequential_218_lstm_655_while_sequential_218_lstm_655_while_loop_counterR
Nsequential_218_lstm_655_while_sequential_218_lstm_655_while_maximum_iterations-
)sequential_218_lstm_655_while_placeholder/
+sequential_218_lstm_655_while_placeholder_1/
+sequential_218_lstm_655_while_placeholder_2/
+sequential_218_lstm_655_while_placeholder_3N
Jsequential_218_lstm_655_while_less_sequential_218_lstm_655_strided_slice_1e
asequential_218_lstm_655_while_sequential_218_lstm_655_while_cond_3752079___redundant_placeholder0e
asequential_218_lstm_655_while_sequential_218_lstm_655_while_cond_3752079___redundant_placeholder1e
asequential_218_lstm_655_while_sequential_218_lstm_655_while_cond_3752079___redundant_placeholder2e
asequential_218_lstm_655_while_sequential_218_lstm_655_while_cond_3752079___redundant_placeholder3*
&sequential_218_lstm_655_while_identity
�
"sequential_218/lstm_655/while/LessLess)sequential_218_lstm_655_while_placeholderJsequential_218_lstm_655_while_less_sequential_218_lstm_655_strided_slice_1*
T0*
_output_shapes
: {
&sequential_218/lstm_655/while/IdentityIdentity&sequential_218/lstm_655/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_218_lstm_655_while_identity/sequential_218/lstm_655/while/Identity:output:0*(
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
while_cond_3753280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3753280___redundant_placeholder05
1while_while_cond_3753280___redundant_placeholder15
1while_while_cond_3753280___redundant_placeholder25
1while_while_cond_3753280___redundant_placeholder3
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
while_body_3753724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_620_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_620_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_620_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_620_matmul_readvariableop_resource:2(F
4while_lstm_cell_620_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_620_biasadd_readvariableop_resource:(��*while/lstm_cell_620/BiasAdd/ReadVariableOp�)while/lstm_cell_620/MatMul/ReadVariableOp�+while/lstm_cell_620/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_620/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_620_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_620/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_620_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_620/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_620/addAddV2$while/lstm_cell_620/MatMul:product:0&while/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_620_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_620/BiasAddBiasAddwhile/lstm_cell_620/add:z:02while/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_620/splitSplit,while/lstm_cell_620/split/split_dim:output:0$while/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_620/SigmoidSigmoid"while/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_1Sigmoid"while/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mulMul!while/lstm_cell_620/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_620/ReluRelu"while/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_1Mulwhile/lstm_cell_620/Sigmoid:y:0&while/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/add_1AddV2while/lstm_cell_620/mul:z:0while/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_2Sigmoid"while/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_620/Relu_1Reluwhile/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_2Mul!while/lstm_cell_620/Sigmoid_2:y:0(while/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_620/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_620/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_620/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_620/BiasAdd/ReadVariableOp*^while/lstm_cell_620/MatMul/ReadVariableOp,^while/lstm_cell_620/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_620_biasadd_readvariableop_resource5while_lstm_cell_620_biasadd_readvariableop_resource_0"n
4while_lstm_cell_620_matmul_1_readvariableop_resource6while_lstm_cell_620_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_620_matmul_readvariableop_resource4while_lstm_cell_620_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_620/BiasAdd/ReadVariableOp*while/lstm_cell_620/BiasAdd/ReadVariableOp2V
)while/lstm_cell_620/MatMul/ReadVariableOp)while/lstm_cell_620/MatMul/ReadVariableOp2Z
+while/lstm_cell_620/MatMul_1/ReadVariableOp+while/lstm_cell_620/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3753090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_620_3753114_0:2(/
while_lstm_cell_620_3753116_0:
(+
while_lstm_cell_620_3753118_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_620_3753114:2(-
while_lstm_cell_620_3753116:
()
while_lstm_cell_620_3753118:(��+while/lstm_cell_620/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_620/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_620_3753114_0while_lstm_cell_620_3753116_0while_lstm_cell_620_3753118_0*
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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3753076�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_620/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_620/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_620/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_620/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_620_3753114while_lstm_cell_620_3753114_0"<
while_lstm_cell_620_3753116while_lstm_cell_620_3753116_0"<
while_lstm_cell_620_3753118while_lstm_cell_620_3753118_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_620/StatefulPartitionedCall+while/lstm_cell_620/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�C
�

lstm_654_while_body_3755109.
*lstm_654_while_lstm_654_while_loop_counter4
0lstm_654_while_lstm_654_while_maximum_iterations
lstm_654_while_placeholder 
lstm_654_while_placeholder_1 
lstm_654_while_placeholder_2 
lstm_654_while_placeholder_3-
)lstm_654_while_lstm_654_strided_slice_1_0i
elstm_654_while_tensorarrayv2read_tensorlistgetitem_lstm_654_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_654_while_lstm_cell_618_matmul_readvariableop_resource_0:	�R
?lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource_0:	d�M
>lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource_0:	�
lstm_654_while_identity
lstm_654_while_identity_1
lstm_654_while_identity_2
lstm_654_while_identity_3
lstm_654_while_identity_4
lstm_654_while_identity_5+
'lstm_654_while_lstm_654_strided_slice_1g
clstm_654_while_tensorarrayv2read_tensorlistgetitem_lstm_654_tensorarrayunstack_tensorlistfromtensorN
;lstm_654_while_lstm_cell_618_matmul_readvariableop_resource:	�P
=lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource:	d�K
<lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource:	���3lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp�2lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp�4lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp�
@lstm_654/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_654/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_654_while_tensorarrayv2read_tensorlistgetitem_lstm_654_tensorarrayunstack_tensorlistfromtensor_0lstm_654_while_placeholderIlstm_654/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_654/while/lstm_cell_618/MatMul/ReadVariableOpReadVariableOp=lstm_654_while_lstm_cell_618_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_654/while/lstm_cell_618/MatMulMatMul9lstm_654/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp?lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_654/while/lstm_cell_618/MatMul_1MatMullstm_654_while_placeholder_2<lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_654/while/lstm_cell_618/addAddV2-lstm_654/while/lstm_cell_618/MatMul:product:0/lstm_654/while/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp>lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_654/while/lstm_cell_618/BiasAddBiasAdd$lstm_654/while/lstm_cell_618/add:z:0;lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_654/while/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_654/while/lstm_cell_618/splitSplit5lstm_654/while/lstm_cell_618/split/split_dim:output:0-lstm_654/while/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_654/while/lstm_cell_618/SigmoidSigmoid+lstm_654/while/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_654/while/lstm_cell_618/Sigmoid_1Sigmoid+lstm_654/while/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_654/while/lstm_cell_618/mulMul*lstm_654/while/lstm_cell_618/Sigmoid_1:y:0lstm_654_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_654/while/lstm_cell_618/ReluRelu+lstm_654/while/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_654/while/lstm_cell_618/mul_1Mul(lstm_654/while/lstm_cell_618/Sigmoid:y:0/lstm_654/while/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_654/while/lstm_cell_618/add_1AddV2$lstm_654/while/lstm_cell_618/mul:z:0&lstm_654/while/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_654/while/lstm_cell_618/Sigmoid_2Sigmoid+lstm_654/while/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_654/while/lstm_cell_618/Relu_1Relu&lstm_654/while/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_654/while/lstm_cell_618/mul_2Mul*lstm_654/while/lstm_cell_618/Sigmoid_2:y:01lstm_654/while/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_654/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_654_while_placeholder_1lstm_654_while_placeholder&lstm_654/while/lstm_cell_618/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_654/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_654/while/addAddV2lstm_654_while_placeholderlstm_654/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_654/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_654/while/add_1AddV2*lstm_654_while_lstm_654_while_loop_counterlstm_654/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_654/while/IdentityIdentitylstm_654/while/add_1:z:0^lstm_654/while/NoOp*
T0*
_output_shapes
: �
lstm_654/while/Identity_1Identity0lstm_654_while_lstm_654_while_maximum_iterations^lstm_654/while/NoOp*
T0*
_output_shapes
: t
lstm_654/while/Identity_2Identitylstm_654/while/add:z:0^lstm_654/while/NoOp*
T0*
_output_shapes
: �
lstm_654/while/Identity_3IdentityClstm_654/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_654/while/NoOp*
T0*
_output_shapes
: �
lstm_654/while/Identity_4Identity&lstm_654/while/lstm_cell_618/mul_2:z:0^lstm_654/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_654/while/Identity_5Identity&lstm_654/while/lstm_cell_618/add_1:z:0^lstm_654/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_654/while/NoOpNoOp4^lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp3^lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp5^lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_654_while_identity lstm_654/while/Identity:output:0"?
lstm_654_while_identity_1"lstm_654/while/Identity_1:output:0"?
lstm_654_while_identity_2"lstm_654/while/Identity_2:output:0"?
lstm_654_while_identity_3"lstm_654/while/Identity_3:output:0"?
lstm_654_while_identity_4"lstm_654/while/Identity_4:output:0"?
lstm_654_while_identity_5"lstm_654/while/Identity_5:output:0"T
'lstm_654_while_lstm_654_strided_slice_1)lstm_654_while_lstm_654_strided_slice_1_0"~
<lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource>lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource_0"�
=lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource?lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource_0"|
;lstm_654_while_lstm_cell_618_matmul_readvariableop_resource=lstm_654_while_lstm_cell_618_matmul_readvariableop_resource_0"�
clstm_654_while_tensorarrayv2read_tensorlistgetitem_lstm_654_tensorarrayunstack_tensorlistfromtensorelstm_654_while_tensorarrayv2read_tensorlistgetitem_lstm_654_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp3lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp2h
2lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp2lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp2l
4lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp4lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_655_layer_call_and_return_conditional_losses_3753658

inputs?
,lstm_cell_619_matmul_readvariableop_resource:	d�A
.lstm_cell_619_matmul_1_readvariableop_resource:	2�<
-lstm_cell_619_biasadd_readvariableop_resource:	�
identity��$lstm_cell_619/BiasAdd/ReadVariableOp�#lstm_cell_619/MatMul/ReadVariableOp�%lstm_cell_619/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_619/MatMul/ReadVariableOpReadVariableOp,lstm_cell_619_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_619/MatMulMatMulstrided_slice_2:output:0+lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_619_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_619/MatMul_1MatMulzeros:output:0-lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_619/addAddV2lstm_cell_619/MatMul:product:0 lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_619_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_619/BiasAddBiasAddlstm_cell_619/add:z:0,lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_619/splitSplit&lstm_cell_619/split/split_dim:output:0lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_619/SigmoidSigmoidlstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_1Sigmoidlstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_619/mulMullstm_cell_619/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_619/ReluRelulstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_1Mullstm_cell_619/Sigmoid:y:0 lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_619/add_1AddV2lstm_cell_619/mul:z:0lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_619/Sigmoid_2Sigmoidlstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_619/Relu_1Relulstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_619/mul_2Mullstm_cell_619/Sigmoid_2:y:0"lstm_cell_619/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_619_matmul_readvariableop_resource.lstm_cell_619_matmul_1_readvariableop_resource-lstm_cell_619_biasadd_readvariableop_resource*
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
while_body_3753574*
condR
while_cond_3753573*K
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
NoOpNoOp%^lstm_cell_619/BiasAdd/ReadVariableOp$^lstm_cell_619/MatMul/ReadVariableOp&^lstm_cell_619/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_619/BiasAdd/ReadVariableOp$lstm_cell_619/BiasAdd/ReadVariableOp2J
#lstm_cell_619/MatMul/ReadVariableOp#lstm_cell_619/MatMul/ReadVariableOp2N
%lstm_cell_619/MatMul_1/ReadVariableOp%lstm_cell_619/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
E__inference_lstm_655_layer_call_and_return_conditional_losses_3752809

inputs(
lstm_cell_619_3752727:	d�(
lstm_cell_619_3752729:	2�$
lstm_cell_619_3752731:	�
identity��%lstm_cell_619/StatefulPartitionedCall�while;
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
%lstm_cell_619/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_619_3752727lstm_cell_619_3752729lstm_cell_619_3752731*
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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3752726n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_619_3752727lstm_cell_619_3752729lstm_cell_619_3752731*
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
while_body_3752740*
condR
while_cond_3752739*K
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
NoOpNoOp&^lstm_cell_619/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_619/StatefulPartitionedCall%lstm_cell_619/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�8
�
E__inference_lstm_654_layer_call_and_return_conditional_losses_3752650

inputs(
lstm_cell_618_3752568:	�(
lstm_cell_618_3752570:	d�$
lstm_cell_618_3752572:	�
identity��%lstm_cell_618/StatefulPartitionedCall�while;
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
%lstm_cell_618/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_618_3752568lstm_cell_618_3752570lstm_cell_618_3752572*
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
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3752522n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_618_3752568lstm_cell_618_3752570lstm_cell_618_3752572*
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
while_body_3752581*
condR
while_cond_3752580*K
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
NoOpNoOp&^lstm_cell_618/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_618/StatefulPartitionedCall%lstm_cell_618/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
��
�
K__inference_sequential_218_layer_call_and_return_conditional_losses_3755477

inputsH
5lstm_654_lstm_cell_618_matmul_readvariableop_resource:	�J
7lstm_654_lstm_cell_618_matmul_1_readvariableop_resource:	d�E
6lstm_654_lstm_cell_618_biasadd_readvariableop_resource:	�H
5lstm_655_lstm_cell_619_matmul_readvariableop_resource:	d�J
7lstm_655_lstm_cell_619_matmul_1_readvariableop_resource:	2�E
6lstm_655_lstm_cell_619_biasadd_readvariableop_resource:	�G
5lstm_656_lstm_cell_620_matmul_readvariableop_resource:2(I
7lstm_656_lstm_cell_620_matmul_1_readvariableop_resource:
(D
6lstm_656_lstm_cell_620_biasadd_readvariableop_resource:(:
(dense_218_matmul_readvariableop_resource:
7
)dense_218_biasadd_readvariableop_resource:
identity�� dense_218/BiasAdd/ReadVariableOp�dense_218/MatMul/ReadVariableOp�-lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp�,lstm_654/lstm_cell_618/MatMul/ReadVariableOp�.lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp�lstm_654/while�-lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp�,lstm_655/lstm_cell_619/MatMul/ReadVariableOp�.lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp�lstm_655/while�-lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp�,lstm_656/lstm_cell_620/MatMul/ReadVariableOp�.lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp�lstm_656/whileD
lstm_654/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_654/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_654/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_654/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_654/strided_sliceStridedSlicelstm_654/Shape:output:0%lstm_654/strided_slice/stack:output:0'lstm_654/strided_slice/stack_1:output:0'lstm_654/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_654/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_654/zeros/packedPacklstm_654/strided_slice:output:0 lstm_654/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_654/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_654/zerosFilllstm_654/zeros/packed:output:0lstm_654/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_654/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_654/zeros_1/packedPacklstm_654/strided_slice:output:0"lstm_654/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_654/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_654/zeros_1Fill lstm_654/zeros_1/packed:output:0lstm_654/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_654/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_654/transpose	Transposeinputs lstm_654/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_654/Shape_1Shapelstm_654/transpose:y:0*
T0*
_output_shapes
:h
lstm_654/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_654/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_654/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_654/strided_slice_1StridedSlicelstm_654/Shape_1:output:0'lstm_654/strided_slice_1/stack:output:0)lstm_654/strided_slice_1/stack_1:output:0)lstm_654/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_654/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_654/TensorArrayV2TensorListReserve-lstm_654/TensorArrayV2/element_shape:output:0!lstm_654/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_654/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_654/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_654/transpose:y:0Glstm_654/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_654/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_654/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_654/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_654/strided_slice_2StridedSlicelstm_654/transpose:y:0'lstm_654/strided_slice_2/stack:output:0)lstm_654/strided_slice_2/stack_1:output:0)lstm_654/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_654/lstm_cell_618/MatMul/ReadVariableOpReadVariableOp5lstm_654_lstm_cell_618_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_654/lstm_cell_618/MatMulMatMul!lstm_654/strided_slice_2:output:04lstm_654/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_654/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp7lstm_654_lstm_cell_618_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_654/lstm_cell_618/MatMul_1MatMullstm_654/zeros:output:06lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_654/lstm_cell_618/addAddV2'lstm_654/lstm_cell_618/MatMul:product:0)lstm_654/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_654/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp6lstm_654_lstm_cell_618_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_654/lstm_cell_618/BiasAddBiasAddlstm_654/lstm_cell_618/add:z:05lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_654/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_654/lstm_cell_618/splitSplit/lstm_654/lstm_cell_618/split/split_dim:output:0'lstm_654/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_654/lstm_cell_618/SigmoidSigmoid%lstm_654/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_654/lstm_cell_618/Sigmoid_1Sigmoid%lstm_654/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_654/lstm_cell_618/mulMul$lstm_654/lstm_cell_618/Sigmoid_1:y:0lstm_654/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_654/lstm_cell_618/ReluRelu%lstm_654/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_654/lstm_cell_618/mul_1Mul"lstm_654/lstm_cell_618/Sigmoid:y:0)lstm_654/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_654/lstm_cell_618/add_1AddV2lstm_654/lstm_cell_618/mul:z:0 lstm_654/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_654/lstm_cell_618/Sigmoid_2Sigmoid%lstm_654/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_654/lstm_cell_618/Relu_1Relu lstm_654/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_654/lstm_cell_618/mul_2Mul$lstm_654/lstm_cell_618/Sigmoid_2:y:0+lstm_654/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_654/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_654/TensorArrayV2_1TensorListReserve/lstm_654/TensorArrayV2_1/element_shape:output:0!lstm_654/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_654/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_654/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_654/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_654/whileWhile$lstm_654/while/loop_counter:output:0*lstm_654/while/maximum_iterations:output:0lstm_654/time:output:0!lstm_654/TensorArrayV2_1:handle:0lstm_654/zeros:output:0lstm_654/zeros_1:output:0!lstm_654/strided_slice_1:output:0@lstm_654/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_654_lstm_cell_618_matmul_readvariableop_resource7lstm_654_lstm_cell_618_matmul_1_readvariableop_resource6lstm_654_lstm_cell_618_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_654_while_body_3755109*'
condR
lstm_654_while_cond_3755108*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_654/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_654/TensorArrayV2Stack/TensorListStackTensorListStacklstm_654/while:output:3Blstm_654/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_654/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_654/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_654/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_654/strided_slice_3StridedSlice4lstm_654/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_654/strided_slice_3/stack:output:0)lstm_654/strided_slice_3/stack_1:output:0)lstm_654/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_654/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_654/transpose_1	Transpose4lstm_654/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_654/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_654/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_655/ShapeShapelstm_654/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_655/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_655/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_655/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_655/strided_sliceStridedSlicelstm_655/Shape:output:0%lstm_655/strided_slice/stack:output:0'lstm_655/strided_slice/stack_1:output:0'lstm_655/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_655/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_655/zeros/packedPacklstm_655/strided_slice:output:0 lstm_655/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_655/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_655/zerosFilllstm_655/zeros/packed:output:0lstm_655/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_655/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_655/zeros_1/packedPacklstm_655/strided_slice:output:0"lstm_655/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_655/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_655/zeros_1Fill lstm_655/zeros_1/packed:output:0lstm_655/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_655/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_655/transpose	Transposelstm_654/transpose_1:y:0 lstm_655/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_655/Shape_1Shapelstm_655/transpose:y:0*
T0*
_output_shapes
:h
lstm_655/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_655/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_655/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_655/strided_slice_1StridedSlicelstm_655/Shape_1:output:0'lstm_655/strided_slice_1/stack:output:0)lstm_655/strided_slice_1/stack_1:output:0)lstm_655/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_655/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_655/TensorArrayV2TensorListReserve-lstm_655/TensorArrayV2/element_shape:output:0!lstm_655/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_655/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_655/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_655/transpose:y:0Glstm_655/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_655/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_655/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_655/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_655/strided_slice_2StridedSlicelstm_655/transpose:y:0'lstm_655/strided_slice_2/stack:output:0)lstm_655/strided_slice_2/stack_1:output:0)lstm_655/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_655/lstm_cell_619/MatMul/ReadVariableOpReadVariableOp5lstm_655_lstm_cell_619_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_655/lstm_cell_619/MatMulMatMul!lstm_655/strided_slice_2:output:04lstm_655/lstm_cell_619/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_655/lstm_cell_619/MatMul_1/ReadVariableOpReadVariableOp7lstm_655_lstm_cell_619_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_655/lstm_cell_619/MatMul_1MatMullstm_655/zeros:output:06lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_655/lstm_cell_619/addAddV2'lstm_655/lstm_cell_619/MatMul:product:0)lstm_655/lstm_cell_619/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_655/lstm_cell_619/BiasAdd/ReadVariableOpReadVariableOp6lstm_655_lstm_cell_619_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_655/lstm_cell_619/BiasAddBiasAddlstm_655/lstm_cell_619/add:z:05lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_655/lstm_cell_619/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_655/lstm_cell_619/splitSplit/lstm_655/lstm_cell_619/split/split_dim:output:0'lstm_655/lstm_cell_619/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_655/lstm_cell_619/SigmoidSigmoid%lstm_655/lstm_cell_619/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_655/lstm_cell_619/Sigmoid_1Sigmoid%lstm_655/lstm_cell_619/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_655/lstm_cell_619/mulMul$lstm_655/lstm_cell_619/Sigmoid_1:y:0lstm_655/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_655/lstm_cell_619/ReluRelu%lstm_655/lstm_cell_619/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_655/lstm_cell_619/mul_1Mul"lstm_655/lstm_cell_619/Sigmoid:y:0)lstm_655/lstm_cell_619/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_655/lstm_cell_619/add_1AddV2lstm_655/lstm_cell_619/mul:z:0 lstm_655/lstm_cell_619/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_655/lstm_cell_619/Sigmoid_2Sigmoid%lstm_655/lstm_cell_619/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_655/lstm_cell_619/Relu_1Relu lstm_655/lstm_cell_619/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_655/lstm_cell_619/mul_2Mul$lstm_655/lstm_cell_619/Sigmoid_2:y:0+lstm_655/lstm_cell_619/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_655/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_655/TensorArrayV2_1TensorListReserve/lstm_655/TensorArrayV2_1/element_shape:output:0!lstm_655/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_655/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_655/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_655/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_655/whileWhile$lstm_655/while/loop_counter:output:0*lstm_655/while/maximum_iterations:output:0lstm_655/time:output:0!lstm_655/TensorArrayV2_1:handle:0lstm_655/zeros:output:0lstm_655/zeros_1:output:0!lstm_655/strided_slice_1:output:0@lstm_655/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_655_lstm_cell_619_matmul_readvariableop_resource7lstm_655_lstm_cell_619_matmul_1_readvariableop_resource6lstm_655_lstm_cell_619_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_655_while_body_3755248*'
condR
lstm_655_while_cond_3755247*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_655/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_655/TensorArrayV2Stack/TensorListStackTensorListStacklstm_655/while:output:3Blstm_655/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_655/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_655/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_655/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_655/strided_slice_3StridedSlice4lstm_655/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_655/strided_slice_3/stack:output:0)lstm_655/strided_slice_3/stack_1:output:0)lstm_655/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_655/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_655/transpose_1	Transpose4lstm_655/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_655/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_655/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_656/ShapeShapelstm_655/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_656/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_656/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_656/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_656/strided_sliceStridedSlicelstm_656/Shape:output:0%lstm_656/strided_slice/stack:output:0'lstm_656/strided_slice/stack_1:output:0'lstm_656/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_656/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_656/zeros/packedPacklstm_656/strided_slice:output:0 lstm_656/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_656/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_656/zerosFilllstm_656/zeros/packed:output:0lstm_656/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_656/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_656/zeros_1/packedPacklstm_656/strided_slice:output:0"lstm_656/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_656/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_656/zeros_1Fill lstm_656/zeros_1/packed:output:0lstm_656/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_656/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_656/transpose	Transposelstm_655/transpose_1:y:0 lstm_656/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_656/Shape_1Shapelstm_656/transpose:y:0*
T0*
_output_shapes
:h
lstm_656/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_656/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_656/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_656/strided_slice_1StridedSlicelstm_656/Shape_1:output:0'lstm_656/strided_slice_1/stack:output:0)lstm_656/strided_slice_1/stack_1:output:0)lstm_656/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_656/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_656/TensorArrayV2TensorListReserve-lstm_656/TensorArrayV2/element_shape:output:0!lstm_656/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_656/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_656/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_656/transpose:y:0Glstm_656/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_656/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_656/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_656/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_656/strided_slice_2StridedSlicelstm_656/transpose:y:0'lstm_656/strided_slice_2/stack:output:0)lstm_656/strided_slice_2/stack_1:output:0)lstm_656/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_656/lstm_cell_620/MatMul/ReadVariableOpReadVariableOp5lstm_656_lstm_cell_620_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_656/lstm_cell_620/MatMulMatMul!lstm_656/strided_slice_2:output:04lstm_656/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_656/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp7lstm_656_lstm_cell_620_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_656/lstm_cell_620/MatMul_1MatMullstm_656/zeros:output:06lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_656/lstm_cell_620/addAddV2'lstm_656/lstm_cell_620/MatMul:product:0)lstm_656/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_656/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp6lstm_656_lstm_cell_620_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_656/lstm_cell_620/BiasAddBiasAddlstm_656/lstm_cell_620/add:z:05lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_656/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_656/lstm_cell_620/splitSplit/lstm_656/lstm_cell_620/split/split_dim:output:0'lstm_656/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_656/lstm_cell_620/SigmoidSigmoid%lstm_656/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_656/lstm_cell_620/Sigmoid_1Sigmoid%lstm_656/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_656/lstm_cell_620/mulMul$lstm_656/lstm_cell_620/Sigmoid_1:y:0lstm_656/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_656/lstm_cell_620/ReluRelu%lstm_656/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_656/lstm_cell_620/mul_1Mul"lstm_656/lstm_cell_620/Sigmoid:y:0)lstm_656/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_656/lstm_cell_620/add_1AddV2lstm_656/lstm_cell_620/mul:z:0 lstm_656/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_656/lstm_cell_620/Sigmoid_2Sigmoid%lstm_656/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_656/lstm_cell_620/Relu_1Relu lstm_656/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_656/lstm_cell_620/mul_2Mul$lstm_656/lstm_cell_620/Sigmoid_2:y:0+lstm_656/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_656/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_656/TensorArrayV2_1TensorListReserve/lstm_656/TensorArrayV2_1/element_shape:output:0!lstm_656/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_656/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_656/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_656/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_656/whileWhile$lstm_656/while/loop_counter:output:0*lstm_656/while/maximum_iterations:output:0lstm_656/time:output:0!lstm_656/TensorArrayV2_1:handle:0lstm_656/zeros:output:0lstm_656/zeros_1:output:0!lstm_656/strided_slice_1:output:0@lstm_656/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_656_lstm_cell_620_matmul_readvariableop_resource7lstm_656_lstm_cell_620_matmul_1_readvariableop_resource6lstm_656_lstm_cell_620_biasadd_readvariableop_resource*
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
_stateful_parallelism( *'
bodyR
lstm_656_while_body_3755387*'
condR
lstm_656_while_cond_3755386*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_656/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_656/TensorArrayV2Stack/TensorListStackTensorListStacklstm_656/while:output:3Blstm_656/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_656/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_656/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_656/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_656/strided_slice_3StridedSlice4lstm_656/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_656/strided_slice_3/stack:output:0)lstm_656/strided_slice_3/stack_1:output:0)lstm_656/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_656/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_656/transpose_1	Transpose4lstm_656/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_656/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_656/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_218/MatMul/ReadVariableOpReadVariableOp(dense_218_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_218/MatMulMatMul!lstm_656/strided_slice_3:output:0'dense_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_218/BiasAdd/ReadVariableOpReadVariableOp)dense_218_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_218/BiasAddBiasAdddense_218/MatMul:product:0(dense_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_218/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_218/BiasAdd/ReadVariableOp ^dense_218/MatMul/ReadVariableOp.^lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp-^lstm_654/lstm_cell_618/MatMul/ReadVariableOp/^lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp^lstm_654/while.^lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp-^lstm_655/lstm_cell_619/MatMul/ReadVariableOp/^lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp^lstm_655/while.^lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp-^lstm_656/lstm_cell_620/MatMul/ReadVariableOp/^lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp^lstm_656/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_218/BiasAdd/ReadVariableOp dense_218/BiasAdd/ReadVariableOp2B
dense_218/MatMul/ReadVariableOpdense_218/MatMul/ReadVariableOp2^
-lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp-lstm_654/lstm_cell_618/BiasAdd/ReadVariableOp2\
,lstm_654/lstm_cell_618/MatMul/ReadVariableOp,lstm_654/lstm_cell_618/MatMul/ReadVariableOp2`
.lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp.lstm_654/lstm_cell_618/MatMul_1/ReadVariableOp2 
lstm_654/whilelstm_654/while2^
-lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp-lstm_655/lstm_cell_619/BiasAdd/ReadVariableOp2\
,lstm_655/lstm_cell_619/MatMul/ReadVariableOp,lstm_655/lstm_cell_619/MatMul/ReadVariableOp2`
.lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp.lstm_655/lstm_cell_619/MatMul_1/ReadVariableOp2 
lstm_655/whilelstm_655/while2^
-lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp-lstm_656/lstm_cell_620/BiasAdd/ReadVariableOp2\
,lstm_656/lstm_cell_620/MatMul/ReadVariableOp,lstm_656/lstm_cell_620/MatMul/ReadVariableOp2`
.lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp.lstm_656/lstm_cell_620/MatMul_1/ReadVariableOp2 
lstm_656/whilelstm_656/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�C
�

lstm_656_while_body_3755387.
*lstm_656_while_lstm_656_while_loop_counter4
0lstm_656_while_lstm_656_while_maximum_iterations
lstm_656_while_placeholder 
lstm_656_while_placeholder_1 
lstm_656_while_placeholder_2 
lstm_656_while_placeholder_3-
)lstm_656_while_lstm_656_strided_slice_1_0i
elstm_656_while_tensorarrayv2read_tensorlistgetitem_lstm_656_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_656_while_lstm_cell_620_matmul_readvariableop_resource_0:2(Q
?lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource_0:
(L
>lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource_0:(
lstm_656_while_identity
lstm_656_while_identity_1
lstm_656_while_identity_2
lstm_656_while_identity_3
lstm_656_while_identity_4
lstm_656_while_identity_5+
'lstm_656_while_lstm_656_strided_slice_1g
clstm_656_while_tensorarrayv2read_tensorlistgetitem_lstm_656_tensorarrayunstack_tensorlistfromtensorM
;lstm_656_while_lstm_cell_620_matmul_readvariableop_resource:2(O
=lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource:
(J
<lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource:(��3lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp�2lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp�4lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp�
@lstm_656/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_656/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_656_while_tensorarrayv2read_tensorlistgetitem_lstm_656_tensorarrayunstack_tensorlistfromtensor_0lstm_656_while_placeholderIlstm_656/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_656/while/lstm_cell_620/MatMul/ReadVariableOpReadVariableOp=lstm_656_while_lstm_cell_620_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_656/while/lstm_cell_620/MatMulMatMul9lstm_656/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp?lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_656/while/lstm_cell_620/MatMul_1MatMullstm_656_while_placeholder_2<lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_656/while/lstm_cell_620/addAddV2-lstm_656/while/lstm_cell_620/MatMul:product:0/lstm_656/while/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp>lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_656/while/lstm_cell_620/BiasAddBiasAdd$lstm_656/while/lstm_cell_620/add:z:0;lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_656/while/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_656/while/lstm_cell_620/splitSplit5lstm_656/while/lstm_cell_620/split/split_dim:output:0-lstm_656/while/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_656/while/lstm_cell_620/SigmoidSigmoid+lstm_656/while/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_656/while/lstm_cell_620/Sigmoid_1Sigmoid+lstm_656/while/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_656/while/lstm_cell_620/mulMul*lstm_656/while/lstm_cell_620/Sigmoid_1:y:0lstm_656_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_656/while/lstm_cell_620/ReluRelu+lstm_656/while/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_656/while/lstm_cell_620/mul_1Mul(lstm_656/while/lstm_cell_620/Sigmoid:y:0/lstm_656/while/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_656/while/lstm_cell_620/add_1AddV2$lstm_656/while/lstm_cell_620/mul:z:0&lstm_656/while/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_656/while/lstm_cell_620/Sigmoid_2Sigmoid+lstm_656/while/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_656/while/lstm_cell_620/Relu_1Relu&lstm_656/while/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_656/while/lstm_cell_620/mul_2Mul*lstm_656/while/lstm_cell_620/Sigmoid_2:y:01lstm_656/while/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_656/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_656_while_placeholder_1lstm_656_while_placeholder&lstm_656/while/lstm_cell_620/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_656/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_656/while/addAddV2lstm_656_while_placeholderlstm_656/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_656/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_656/while/add_1AddV2*lstm_656_while_lstm_656_while_loop_counterlstm_656/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_656/while/IdentityIdentitylstm_656/while/add_1:z:0^lstm_656/while/NoOp*
T0*
_output_shapes
: �
lstm_656/while/Identity_1Identity0lstm_656_while_lstm_656_while_maximum_iterations^lstm_656/while/NoOp*
T0*
_output_shapes
: t
lstm_656/while/Identity_2Identitylstm_656/while/add:z:0^lstm_656/while/NoOp*
T0*
_output_shapes
: �
lstm_656/while/Identity_3IdentityClstm_656/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_656/while/NoOp*
T0*
_output_shapes
: �
lstm_656/while/Identity_4Identity&lstm_656/while/lstm_cell_620/mul_2:z:0^lstm_656/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_656/while/Identity_5Identity&lstm_656/while/lstm_cell_620/add_1:z:0^lstm_656/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_656/while/NoOpNoOp4^lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp3^lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp5^lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_656_while_identity lstm_656/while/Identity:output:0"?
lstm_656_while_identity_1"lstm_656/while/Identity_1:output:0"?
lstm_656_while_identity_2"lstm_656/while/Identity_2:output:0"?
lstm_656_while_identity_3"lstm_656/while/Identity_3:output:0"?
lstm_656_while_identity_4"lstm_656/while/Identity_4:output:0"?
lstm_656_while_identity_5"lstm_656/while/Identity_5:output:0"T
'lstm_656_while_lstm_656_strided_slice_1)lstm_656_while_lstm_656_strided_slice_1_0"~
<lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource>lstm_656_while_lstm_cell_620_biasadd_readvariableop_resource_0"�
=lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource?lstm_656_while_lstm_cell_620_matmul_1_readvariableop_resource_0"|
;lstm_656_while_lstm_cell_620_matmul_readvariableop_resource=lstm_656_while_lstm_cell_620_matmul_readvariableop_resource_0"�
clstm_656_while_tensorarrayv2read_tensorlistgetitem_lstm_656_tensorarrayunstack_tensorlistfromtensorelstm_656_while_tensorarrayv2read_tensorlistgetitem_lstm_656_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp3lstm_656/while/lstm_cell_620/BiasAdd/ReadVariableOp2h
2lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp2lstm_656/while/lstm_cell_620/MatMul/ReadVariableOp2l
4lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp4lstm_656/while/lstm_cell_620/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
while_cond_3756624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3756624___redundant_placeholder05
1while_while_cond_3756624___redundant_placeholder15
1while_while_cond_3756624___redundant_placeholder25
1while_while_cond_3756624___redundant_placeholder3
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
�
�
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3757638

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
�
�
*__inference_lstm_656_layer_call_fn_3756742

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
GPU 2J 8� *N
fIRG
E__inference_lstm_656_layer_call_and_return_conditional_losses_3753808o
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
�
�
/__inference_lstm_cell_618_layer_call_fn_3757361

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
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3752376o
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
�C
�

lstm_654_while_body_3754682.
*lstm_654_while_lstm_654_while_loop_counter4
0lstm_654_while_lstm_654_while_maximum_iterations
lstm_654_while_placeholder 
lstm_654_while_placeholder_1 
lstm_654_while_placeholder_2 
lstm_654_while_placeholder_3-
)lstm_654_while_lstm_654_strided_slice_1_0i
elstm_654_while_tensorarrayv2read_tensorlistgetitem_lstm_654_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_654_while_lstm_cell_618_matmul_readvariableop_resource_0:	�R
?lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource_0:	d�M
>lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource_0:	�
lstm_654_while_identity
lstm_654_while_identity_1
lstm_654_while_identity_2
lstm_654_while_identity_3
lstm_654_while_identity_4
lstm_654_while_identity_5+
'lstm_654_while_lstm_654_strided_slice_1g
clstm_654_while_tensorarrayv2read_tensorlistgetitem_lstm_654_tensorarrayunstack_tensorlistfromtensorN
;lstm_654_while_lstm_cell_618_matmul_readvariableop_resource:	�P
=lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource:	d�K
<lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource:	���3lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp�2lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp�4lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp�
@lstm_654/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_654/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_654_while_tensorarrayv2read_tensorlistgetitem_lstm_654_tensorarrayunstack_tensorlistfromtensor_0lstm_654_while_placeholderIlstm_654/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_654/while/lstm_cell_618/MatMul/ReadVariableOpReadVariableOp=lstm_654_while_lstm_cell_618_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_654/while/lstm_cell_618/MatMulMatMul9lstm_654/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp?lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_654/while/lstm_cell_618/MatMul_1MatMullstm_654_while_placeholder_2<lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_654/while/lstm_cell_618/addAddV2-lstm_654/while/lstm_cell_618/MatMul:product:0/lstm_654/while/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp>lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_654/while/lstm_cell_618/BiasAddBiasAdd$lstm_654/while/lstm_cell_618/add:z:0;lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_654/while/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_654/while/lstm_cell_618/splitSplit5lstm_654/while/lstm_cell_618/split/split_dim:output:0-lstm_654/while/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_654/while/lstm_cell_618/SigmoidSigmoid+lstm_654/while/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_654/while/lstm_cell_618/Sigmoid_1Sigmoid+lstm_654/while/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_654/while/lstm_cell_618/mulMul*lstm_654/while/lstm_cell_618/Sigmoid_1:y:0lstm_654_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_654/while/lstm_cell_618/ReluRelu+lstm_654/while/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_654/while/lstm_cell_618/mul_1Mul(lstm_654/while/lstm_cell_618/Sigmoid:y:0/lstm_654/while/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_654/while/lstm_cell_618/add_1AddV2$lstm_654/while/lstm_cell_618/mul:z:0&lstm_654/while/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_654/while/lstm_cell_618/Sigmoid_2Sigmoid+lstm_654/while/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_654/while/lstm_cell_618/Relu_1Relu&lstm_654/while/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_654/while/lstm_cell_618/mul_2Mul*lstm_654/while/lstm_cell_618/Sigmoid_2:y:01lstm_654/while/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_654/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_654_while_placeholder_1lstm_654_while_placeholder&lstm_654/while/lstm_cell_618/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_654/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_654/while/addAddV2lstm_654_while_placeholderlstm_654/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_654/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_654/while/add_1AddV2*lstm_654_while_lstm_654_while_loop_counterlstm_654/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_654/while/IdentityIdentitylstm_654/while/add_1:z:0^lstm_654/while/NoOp*
T0*
_output_shapes
: �
lstm_654/while/Identity_1Identity0lstm_654_while_lstm_654_while_maximum_iterations^lstm_654/while/NoOp*
T0*
_output_shapes
: t
lstm_654/while/Identity_2Identitylstm_654/while/add:z:0^lstm_654/while/NoOp*
T0*
_output_shapes
: �
lstm_654/while/Identity_3IdentityClstm_654/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_654/while/NoOp*
T0*
_output_shapes
: �
lstm_654/while/Identity_4Identity&lstm_654/while/lstm_cell_618/mul_2:z:0^lstm_654/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_654/while/Identity_5Identity&lstm_654/while/lstm_cell_618/add_1:z:0^lstm_654/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_654/while/NoOpNoOp4^lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp3^lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp5^lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_654_while_identity lstm_654/while/Identity:output:0"?
lstm_654_while_identity_1"lstm_654/while/Identity_1:output:0"?
lstm_654_while_identity_2"lstm_654/while/Identity_2:output:0"?
lstm_654_while_identity_3"lstm_654/while/Identity_3:output:0"?
lstm_654_while_identity_4"lstm_654/while/Identity_4:output:0"?
lstm_654_while_identity_5"lstm_654/while/Identity_5:output:0"T
'lstm_654_while_lstm_654_strided_slice_1)lstm_654_while_lstm_654_strided_slice_1_0"~
<lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource>lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource_0"�
=lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource?lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource_0"|
;lstm_654_while_lstm_cell_618_matmul_readvariableop_resource=lstm_654_while_lstm_cell_618_matmul_readvariableop_resource_0"�
clstm_654_while_tensorarrayv2read_tensorlistgetitem_lstm_654_tensorarrayunstack_tensorlistfromtensorelstm_654_while_tensorarrayv2read_tensorlistgetitem_lstm_654_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp3lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp2h
2lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp2lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp2l
4lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp4lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

�
lstm_656_while_cond_3755386.
*lstm_656_while_lstm_656_while_loop_counter4
0lstm_656_while_lstm_656_while_maximum_iterations
lstm_656_while_placeholder 
lstm_656_while_placeholder_1 
lstm_656_while_placeholder_2 
lstm_656_while_placeholder_30
,lstm_656_while_less_lstm_656_strided_slice_1G
Clstm_656_while_lstm_656_while_cond_3755386___redundant_placeholder0G
Clstm_656_while_lstm_656_while_cond_3755386___redundant_placeholder1G
Clstm_656_while_lstm_656_while_cond_3755386___redundant_placeholder2G
Clstm_656_while_lstm_656_while_cond_3755386___redundant_placeholder3
lstm_656_while_identity
�
lstm_656/while/LessLesslstm_656_while_placeholder,lstm_656_while_less_lstm_656_strided_slice_1*
T0*
_output_shapes
: ]
lstm_656/while/IdentityIdentitylstm_656/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_656_while_identity lstm_656/while/Identity:output:0*(
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
�T
�
*sequential_218_lstm_654_while_body_3751941L
Hsequential_218_lstm_654_while_sequential_218_lstm_654_while_loop_counterR
Nsequential_218_lstm_654_while_sequential_218_lstm_654_while_maximum_iterations-
)sequential_218_lstm_654_while_placeholder/
+sequential_218_lstm_654_while_placeholder_1/
+sequential_218_lstm_654_while_placeholder_2/
+sequential_218_lstm_654_while_placeholder_3K
Gsequential_218_lstm_654_while_sequential_218_lstm_654_strided_slice_1_0�
�sequential_218_lstm_654_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_654_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_218_lstm_654_while_lstm_cell_618_matmul_readvariableop_resource_0:	�a
Nsequential_218_lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource_0:	d�\
Msequential_218_lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource_0:	�*
&sequential_218_lstm_654_while_identity,
(sequential_218_lstm_654_while_identity_1,
(sequential_218_lstm_654_while_identity_2,
(sequential_218_lstm_654_while_identity_3,
(sequential_218_lstm_654_while_identity_4,
(sequential_218_lstm_654_while_identity_5I
Esequential_218_lstm_654_while_sequential_218_lstm_654_strided_slice_1�
�sequential_218_lstm_654_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_654_tensorarrayunstack_tensorlistfromtensor]
Jsequential_218_lstm_654_while_lstm_cell_618_matmul_readvariableop_resource:	�_
Lsequential_218_lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource:	d�Z
Ksequential_218_lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource:	���Bsequential_218/lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp�Asequential_218/lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp�Csequential_218/lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp�
Osequential_218/lstm_654/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_218/lstm_654/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_218_lstm_654_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_654_tensorarrayunstack_tensorlistfromtensor_0)sequential_218_lstm_654_while_placeholderXsequential_218/lstm_654/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Asequential_218/lstm_654/while/lstm_cell_618/MatMul/ReadVariableOpReadVariableOpLsequential_218_lstm_654_while_lstm_cell_618_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
2sequential_218/lstm_654/while/lstm_cell_618/MatMulMatMulHsequential_218/lstm_654/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_218/lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_218/lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOpNsequential_218_lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
4sequential_218/lstm_654/while/lstm_cell_618/MatMul_1MatMul+sequential_218_lstm_654_while_placeholder_2Ksequential_218/lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_218/lstm_654/while/lstm_cell_618/addAddV2<sequential_218/lstm_654/while/lstm_cell_618/MatMul:product:0>sequential_218/lstm_654/while/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_218/lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOpMsequential_218_lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_218/lstm_654/while/lstm_cell_618/BiasAddBiasAdd3sequential_218/lstm_654/while/lstm_cell_618/add:z:0Jsequential_218/lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_218/lstm_654/while/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_218/lstm_654/while/lstm_cell_618/splitSplitDsequential_218/lstm_654/while/lstm_cell_618/split/split_dim:output:0<sequential_218/lstm_654/while/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
3sequential_218/lstm_654/while/lstm_cell_618/SigmoidSigmoid:sequential_218/lstm_654/while/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d�
5sequential_218/lstm_654/while/lstm_cell_618/Sigmoid_1Sigmoid:sequential_218/lstm_654/while/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
/sequential_218/lstm_654/while/lstm_cell_618/mulMul9sequential_218/lstm_654/while/lstm_cell_618/Sigmoid_1:y:0+sequential_218_lstm_654_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential_218/lstm_654/while/lstm_cell_618/ReluRelu:sequential_218/lstm_654/while/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
1sequential_218/lstm_654/while/lstm_cell_618/mul_1Mul7sequential_218/lstm_654/while/lstm_cell_618/Sigmoid:y:0>sequential_218/lstm_654/while/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
1sequential_218/lstm_654/while/lstm_cell_618/add_1AddV23sequential_218/lstm_654/while/lstm_cell_618/mul:z:05sequential_218/lstm_654/while/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d�
5sequential_218/lstm_654/while/lstm_cell_618/Sigmoid_2Sigmoid:sequential_218/lstm_654/while/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������d�
2sequential_218/lstm_654/while/lstm_cell_618/Relu_1Relu5sequential_218/lstm_654/while/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
1sequential_218/lstm_654/while/lstm_cell_618/mul_2Mul9sequential_218/lstm_654/while/lstm_cell_618/Sigmoid_2:y:0@sequential_218/lstm_654/while/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Bsequential_218/lstm_654/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_218_lstm_654_while_placeholder_1)sequential_218_lstm_654_while_placeholder5sequential_218/lstm_654/while/lstm_cell_618/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_218/lstm_654/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_218/lstm_654/while/addAddV2)sequential_218_lstm_654_while_placeholder,sequential_218/lstm_654/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_218/lstm_654/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_218/lstm_654/while/add_1AddV2Hsequential_218_lstm_654_while_sequential_218_lstm_654_while_loop_counter.sequential_218/lstm_654/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_218/lstm_654/while/IdentityIdentity'sequential_218/lstm_654/while/add_1:z:0#^sequential_218/lstm_654/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_654/while/Identity_1IdentityNsequential_218_lstm_654_while_sequential_218_lstm_654_while_maximum_iterations#^sequential_218/lstm_654/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_654/while/Identity_2Identity%sequential_218/lstm_654/while/add:z:0#^sequential_218/lstm_654/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_654/while/Identity_3IdentityRsequential_218/lstm_654/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_218/lstm_654/while/NoOp*
T0*
_output_shapes
: �
(sequential_218/lstm_654/while/Identity_4Identity5sequential_218/lstm_654/while/lstm_cell_618/mul_2:z:0#^sequential_218/lstm_654/while/NoOp*
T0*'
_output_shapes
:���������d�
(sequential_218/lstm_654/while/Identity_5Identity5sequential_218/lstm_654/while/lstm_cell_618/add_1:z:0#^sequential_218/lstm_654/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential_218/lstm_654/while/NoOpNoOpC^sequential_218/lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOpB^sequential_218/lstm_654/while/lstm_cell_618/MatMul/ReadVariableOpD^sequential_218/lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_218_lstm_654_while_identity/sequential_218/lstm_654/while/Identity:output:0"]
(sequential_218_lstm_654_while_identity_11sequential_218/lstm_654/while/Identity_1:output:0"]
(sequential_218_lstm_654_while_identity_21sequential_218/lstm_654/while/Identity_2:output:0"]
(sequential_218_lstm_654_while_identity_31sequential_218/lstm_654/while/Identity_3:output:0"]
(sequential_218_lstm_654_while_identity_41sequential_218/lstm_654/while/Identity_4:output:0"]
(sequential_218_lstm_654_while_identity_51sequential_218/lstm_654/while/Identity_5:output:0"�
Ksequential_218_lstm_654_while_lstm_cell_618_biasadd_readvariableop_resourceMsequential_218_lstm_654_while_lstm_cell_618_biasadd_readvariableop_resource_0"�
Lsequential_218_lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resourceNsequential_218_lstm_654_while_lstm_cell_618_matmul_1_readvariableop_resource_0"�
Jsequential_218_lstm_654_while_lstm_cell_618_matmul_readvariableop_resourceLsequential_218_lstm_654_while_lstm_cell_618_matmul_readvariableop_resource_0"�
Esequential_218_lstm_654_while_sequential_218_lstm_654_strided_slice_1Gsequential_218_lstm_654_while_sequential_218_lstm_654_strided_slice_1_0"�
�sequential_218_lstm_654_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_654_tensorarrayunstack_tensorlistfromtensor�sequential_218_lstm_654_while_tensorarrayv2read_tensorlistgetitem_sequential_218_lstm_654_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
Bsequential_218/lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOpBsequential_218/lstm_654/while/lstm_cell_618/BiasAdd/ReadVariableOp2�
Asequential_218/lstm_654/while/lstm_cell_618/MatMul/ReadVariableOpAsequential_218/lstm_654/while/lstm_cell_618/MatMul/ReadVariableOp2�
Csequential_218/lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOpCsequential_218/lstm_654/while/lstm_cell_618/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_654_layer_call_and_return_conditional_losses_3755807
inputs_0?
,lstm_cell_618_matmul_readvariableop_resource:	�A
.lstm_cell_618_matmul_1_readvariableop_resource:	d�<
-lstm_cell_618_biasadd_readvariableop_resource:	�
identity��$lstm_cell_618/BiasAdd/ReadVariableOp�#lstm_cell_618/MatMul/ReadVariableOp�%lstm_cell_618/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_618/MatMul/ReadVariableOpReadVariableOp,lstm_cell_618_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_618/MatMulMatMulstrided_slice_2:output:0+lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_618_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_618/MatMul_1MatMulzeros:output:0-lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_618/addAddV2lstm_cell_618/MatMul:product:0 lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_618_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_618/BiasAddBiasAddlstm_cell_618/add:z:0,lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_618/splitSplit&lstm_cell_618/split/split_dim:output:0lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_618/SigmoidSigmoidlstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_1Sigmoidlstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_618/mulMullstm_cell_618/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_618/ReluRelulstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_1Mullstm_cell_618/Sigmoid:y:0 lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_618/add_1AddV2lstm_cell_618/mul:z:0lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_2Sigmoidlstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_618/Relu_1Relulstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_2Mullstm_cell_618/Sigmoid_2:y:0"lstm_cell_618/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_618_matmul_readvariableop_resource.lstm_cell_618_matmul_1_readvariableop_resource-lstm_cell_618_biasadd_readvariableop_resource*
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
while_body_3755723*
condR
while_cond_3755722*K
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
NoOpNoOp%^lstm_cell_618/BiasAdd/ReadVariableOp$^lstm_cell_618/MatMul/ReadVariableOp&^lstm_cell_618/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_618/BiasAdd/ReadVariableOp$lstm_cell_618/BiasAdd/ReadVariableOp2J
#lstm_cell_618/MatMul/ReadVariableOp#lstm_cell_618/MatMul/ReadVariableOp2N
%lstm_cell_618/MatMul_1/ReadVariableOp%lstm_cell_618/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
*sequential_218_lstm_656_while_cond_3752218L
Hsequential_218_lstm_656_while_sequential_218_lstm_656_while_loop_counterR
Nsequential_218_lstm_656_while_sequential_218_lstm_656_while_maximum_iterations-
)sequential_218_lstm_656_while_placeholder/
+sequential_218_lstm_656_while_placeholder_1/
+sequential_218_lstm_656_while_placeholder_2/
+sequential_218_lstm_656_while_placeholder_3N
Jsequential_218_lstm_656_while_less_sequential_218_lstm_656_strided_slice_1e
asequential_218_lstm_656_while_sequential_218_lstm_656_while_cond_3752218___redundant_placeholder0e
asequential_218_lstm_656_while_sequential_218_lstm_656_while_cond_3752218___redundant_placeholder1e
asequential_218_lstm_656_while_sequential_218_lstm_656_while_cond_3752218___redundant_placeholder2e
asequential_218_lstm_656_while_sequential_218_lstm_656_while_cond_3752218___redundant_placeholder3*
&sequential_218_lstm_656_while_identity
�
"sequential_218/lstm_656/while/LessLess)sequential_218_lstm_656_while_placeholderJsequential_218_lstm_656_while_less_sequential_218_lstm_656_strided_slice_1*
T0*
_output_shapes
: {
&sequential_218/lstm_656/while/IdentityIdentity&sequential_218/lstm_656/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_218_lstm_656_while_identity/sequential_218/lstm_656/while/Identity:output:0*(
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
while_cond_3756954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3756954___redundant_placeholder05
1while_while_cond_3756954___redundant_placeholder15
1while_while_cond_3756954___redundant_placeholder25
1while_while_cond_3756954___redundant_placeholder3
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
while_body_3757241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_620_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_620_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_620_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_620_matmul_readvariableop_resource:2(F
4while_lstm_cell_620_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_620_biasadd_readvariableop_resource:(��*while/lstm_cell_620/BiasAdd/ReadVariableOp�)while/lstm_cell_620/MatMul/ReadVariableOp�+while/lstm_cell_620/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_620/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_620_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_620/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_620/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_620/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_620_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_620/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_620/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_620/addAddV2$while/lstm_cell_620/MatMul:product:0&while/lstm_cell_620/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_620/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_620_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_620/BiasAddBiasAddwhile/lstm_cell_620/add:z:02while/lstm_cell_620/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_620/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_620/splitSplit,while/lstm_cell_620/split/split_dim:output:0$while/lstm_cell_620/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_620/SigmoidSigmoid"while/lstm_cell_620/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_1Sigmoid"while/lstm_cell_620/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mulMul!while/lstm_cell_620/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_620/ReluRelu"while/lstm_cell_620/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_1Mulwhile/lstm_cell_620/Sigmoid:y:0&while/lstm_cell_620/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/add_1AddV2while/lstm_cell_620/mul:z:0while/lstm_cell_620/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_620/Sigmoid_2Sigmoid"while/lstm_cell_620/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_620/Relu_1Reluwhile/lstm_cell_620/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_620/mul_2Mul!while/lstm_cell_620/Sigmoid_2:y:0(while/lstm_cell_620/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_620/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_620/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_620/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_620/BiasAdd/ReadVariableOp*^while/lstm_cell_620/MatMul/ReadVariableOp,^while/lstm_cell_620/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_620_biasadd_readvariableop_resource5while_lstm_cell_620_biasadd_readvariableop_resource_0"n
4while_lstm_cell_620_matmul_1_readvariableop_resource6while_lstm_cell_620_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_620_matmul_readvariableop_resource4while_lstm_cell_620_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_620/BiasAdd/ReadVariableOp*while/lstm_cell_620/BiasAdd/ReadVariableOp2V
)while/lstm_cell_620/MatMul/ReadVariableOp)while/lstm_cell_620/MatMul/ReadVariableOp2Z
+while/lstm_cell_620/MatMul_1/ReadVariableOp+while/lstm_cell_620/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�J
�
E__inference_lstm_654_layer_call_and_return_conditional_losses_3756093

inputs?
,lstm_cell_618_matmul_readvariableop_resource:	�A
.lstm_cell_618_matmul_1_readvariableop_resource:	d�<
-lstm_cell_618_biasadd_readvariableop_resource:	�
identity��$lstm_cell_618/BiasAdd/ReadVariableOp�#lstm_cell_618/MatMul/ReadVariableOp�%lstm_cell_618/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_618/MatMul/ReadVariableOpReadVariableOp,lstm_cell_618_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_618/MatMulMatMulstrided_slice_2:output:0+lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_618_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_618/MatMul_1MatMulzeros:output:0-lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_618/addAddV2lstm_cell_618/MatMul:product:0 lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_618_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_618/BiasAddBiasAddlstm_cell_618/add:z:0,lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_618/splitSplit&lstm_cell_618/split/split_dim:output:0lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_618/SigmoidSigmoidlstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_1Sigmoidlstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_618/mulMullstm_cell_618/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_618/ReluRelulstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_1Mullstm_cell_618/Sigmoid:y:0 lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_618/add_1AddV2lstm_cell_618/mul:z:0lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_618/Sigmoid_2Sigmoidlstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_618/Relu_1Relulstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_618/mul_2Mullstm_cell_618/Sigmoid_2:y:0"lstm_cell_618/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_618_matmul_readvariableop_resource.lstm_cell_618_matmul_1_readvariableop_resource-lstm_cell_618_biasadd_readvariableop_resource*
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
while_body_3756009*
condR
while_cond_3756008*K
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
NoOpNoOp%^lstm_cell_618/BiasAdd/ReadVariableOp$^lstm_cell_618/MatMul/ReadVariableOp&^lstm_cell_618/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_618/BiasAdd/ReadVariableOp$lstm_cell_618/BiasAdd/ReadVariableOp2J
#lstm_cell_618/MatMul/ReadVariableOp#lstm_cell_618/MatMul/ReadVariableOp2N
%lstm_cell_618/MatMul_1/ReadVariableOp%lstm_cell_618/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_3753424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_618_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_618_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_618_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_618_matmul_readvariableop_resource:	�G
4while_lstm_cell_618_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_618_biasadd_readvariableop_resource:	���*while/lstm_cell_618/BiasAdd/ReadVariableOp�)while/lstm_cell_618/MatMul/ReadVariableOp�+while/lstm_cell_618/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_618/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_618_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_618/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_618_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_618/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_618/addAddV2$while/lstm_cell_618/MatMul:product:0&while/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_618_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_618/BiasAddBiasAddwhile/lstm_cell_618/add:z:02while/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_618/splitSplit,while/lstm_cell_618/split/split_dim:output:0$while/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_618/SigmoidSigmoid"while/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_1Sigmoid"while/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mulMul!while/lstm_cell_618/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_618/ReluRelu"while/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_1Mulwhile/lstm_cell_618/Sigmoid:y:0&while/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/add_1AddV2while/lstm_cell_618/mul:z:0while/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_2Sigmoid"while/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_618/Relu_1Reluwhile/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_2Mul!while/lstm_cell_618/Sigmoid_2:y:0(while/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_618/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_618/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_618/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_618/BiasAdd/ReadVariableOp*^while/lstm_cell_618/MatMul/ReadVariableOp,^while/lstm_cell_618/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_618_biasadd_readvariableop_resource5while_lstm_cell_618_biasadd_readvariableop_resource_0"n
4while_lstm_cell_618_matmul_1_readvariableop_resource6while_lstm_cell_618_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_618_matmul_readvariableop_resource4while_lstm_cell_618_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_618/BiasAdd/ReadVariableOp*while/lstm_cell_618/BiasAdd/ReadVariableOp2V
)while/lstm_cell_618/MatMul/ReadVariableOp)while/lstm_cell_618/MatMul/ReadVariableOp2Z
+while/lstm_cell_618/MatMul_1/ReadVariableOp+while/lstm_cell_618/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
K__inference_sequential_218_layer_call_and_return_conditional_losses_3754504
lstm_654_input#
lstm_654_3754477:	�#
lstm_654_3754479:	d�
lstm_654_3754481:	�#
lstm_655_3754484:	d�#
lstm_655_3754486:	2�
lstm_655_3754488:	�"
lstm_656_3754491:2("
lstm_656_3754493:
(
lstm_656_3754495:(#
dense_218_3754498:

dense_218_3754500:
identity��!dense_218/StatefulPartitionedCall� lstm_654/StatefulPartitionedCall� lstm_655/StatefulPartitionedCall� lstm_656/StatefulPartitionedCall�
 lstm_654/StatefulPartitionedCallStatefulPartitionedCalllstm_654_inputlstm_654_3754477lstm_654_3754479lstm_654_3754481*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_654_layer_call_and_return_conditional_losses_3753508�
 lstm_655/StatefulPartitionedCallStatefulPartitionedCall)lstm_654/StatefulPartitionedCall:output:0lstm_655_3754484lstm_655_3754486lstm_655_3754488*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_655_layer_call_and_return_conditional_losses_3753658�
 lstm_656/StatefulPartitionedCallStatefulPartitionedCall)lstm_655/StatefulPartitionedCall:output:0lstm_656_3754491lstm_656_3754493lstm_656_3754495*
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
GPU 2J 8� *N
fIRG
E__inference_lstm_656_layer_call_and_return_conditional_losses_3753808�
!dense_218/StatefulPartitionedCallStatefulPartitionedCall)lstm_656/StatefulPartitionedCall:output:0dense_218_3754498dense_218_3754500*
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
GPU 2J 8� *O
fJRH
F__inference_dense_218_layer_call_and_return_conditional_losses_3753826y
IdentityIdentity*dense_218/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_218/StatefulPartitionedCall!^lstm_654/StatefulPartitionedCall!^lstm_655/StatefulPartitionedCall!^lstm_656/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_218/StatefulPartitionedCall!dense_218/StatefulPartitionedCall2D
 lstm_654/StatefulPartitionedCall lstm_654/StatefulPartitionedCall2D
 lstm_655/StatefulPartitionedCall lstm_655/StatefulPartitionedCall2D
 lstm_656/StatefulPartitionedCall lstm_656/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_654_input
�#
�
while_body_3752740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_619_3752764_0:	d�0
while_lstm_cell_619_3752766_0:	2�,
while_lstm_cell_619_3752768_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_619_3752764:	d�.
while_lstm_cell_619_3752766:	2�*
while_lstm_cell_619_3752768:	���+while/lstm_cell_619/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_619/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_619_3752764_0while_lstm_cell_619_3752766_0while_lstm_cell_619_3752768_0*
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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3752726�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_619/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_619/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_619/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_619/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_619_3752764while_lstm_cell_619_3752764_0"<
while_lstm_cell_619_3752766while_lstm_cell_619_3752766_0"<
while_lstm_cell_619_3752768while_lstm_cell_619_3752768_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_619/StatefulPartitionedCall+while/lstm_cell_619/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3752872

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
while_body_3756009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_618_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_618_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_618_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_618_matmul_readvariableop_resource:	�G
4while_lstm_cell_618_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_618_biasadd_readvariableop_resource:	���*while/lstm_cell_618/BiasAdd/ReadVariableOp�)while/lstm_cell_618/MatMul/ReadVariableOp�+while/lstm_cell_618/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_618/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_618_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_618/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_618/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_618/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_618_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_618/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_618/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_618/addAddV2$while/lstm_cell_618/MatMul:product:0&while/lstm_cell_618/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_618/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_618_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_618/BiasAddBiasAddwhile/lstm_cell_618/add:z:02while/lstm_cell_618/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_618/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_618/splitSplit,while/lstm_cell_618/split/split_dim:output:0$while/lstm_cell_618/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_618/SigmoidSigmoid"while/lstm_cell_618/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_1Sigmoid"while/lstm_cell_618/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mulMul!while/lstm_cell_618/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_618/ReluRelu"while/lstm_cell_618/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_1Mulwhile/lstm_cell_618/Sigmoid:y:0&while/lstm_cell_618/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/add_1AddV2while/lstm_cell_618/mul:z:0while/lstm_cell_618/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_618/Sigmoid_2Sigmoid"while/lstm_cell_618/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_618/Relu_1Reluwhile/lstm_cell_618/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_618/mul_2Mul!while/lstm_cell_618/Sigmoid_2:y:0(while/lstm_cell_618/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_618/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_618/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_618/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_618/BiasAdd/ReadVariableOp*^while/lstm_cell_618/MatMul/ReadVariableOp,^while/lstm_cell_618/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_618_biasadd_readvariableop_resource5while_lstm_cell_618_biasadd_readvariableop_resource_0"n
4while_lstm_cell_618_matmul_1_readvariableop_resource6while_lstm_cell_618_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_618_matmul_readvariableop_resource4while_lstm_cell_618_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_618/BiasAdd/ReadVariableOp*while/lstm_cell_618/BiasAdd/ReadVariableOp2V
)while/lstm_cell_618/MatMul/ReadVariableOp)while/lstm_cell_618/MatMul/ReadVariableOp2Z
+while/lstm_cell_618/MatMul_1/ReadVariableOp+while/lstm_cell_618/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
: "�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
lstm_654_input;
 serving_default_lstm_654_input:0���������=
	dense_2180
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
": 
2dense_218/kernel
:2dense_218/bias
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
0:.	�2lstm_654/lstm_cell_654/kernel
::8	d�2'lstm_654/lstm_cell_654/recurrent_kernel
*:(�2lstm_654/lstm_cell_654/bias
0:.	d�2lstm_655/lstm_cell_655/kernel
::8	2�2'lstm_655/lstm_cell_655/recurrent_kernel
*:(�2lstm_655/lstm_cell_655/bias
/:-2(2lstm_656/lstm_cell_656/kernel
9:7
(2'lstm_656/lstm_cell_656/recurrent_kernel
):'(2lstm_656/lstm_cell_656/bias
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
':%
2Adam/dense_218/kernel/m
!:2Adam/dense_218/bias/m
5:3	�2$Adam/lstm_654/lstm_cell_654/kernel/m
?:=	d�2.Adam/lstm_654/lstm_cell_654/recurrent_kernel/m
/:-�2"Adam/lstm_654/lstm_cell_654/bias/m
5:3	d�2$Adam/lstm_655/lstm_cell_655/kernel/m
?:=	2�2.Adam/lstm_655/lstm_cell_655/recurrent_kernel/m
/:-�2"Adam/lstm_655/lstm_cell_655/bias/m
4:22(2$Adam/lstm_656/lstm_cell_656/kernel/m
>:<
(2.Adam/lstm_656/lstm_cell_656/recurrent_kernel/m
.:,(2"Adam/lstm_656/lstm_cell_656/bias/m
':%
2Adam/dense_218/kernel/v
!:2Adam/dense_218/bias/v
5:3	�2$Adam/lstm_654/lstm_cell_654/kernel/v
?:=	d�2.Adam/lstm_654/lstm_cell_654/recurrent_kernel/v
/:-�2"Adam/lstm_654/lstm_cell_654/bias/v
5:3	d�2$Adam/lstm_655/lstm_cell_655/kernel/v
?:=	2�2.Adam/lstm_655/lstm_cell_655/recurrent_kernel/v
/:-�2"Adam/lstm_655/lstm_cell_655/bias/v
4:22(2$Adam/lstm_656/lstm_cell_656/kernel/v
>:<
(2.Adam/lstm_656/lstm_cell_656/recurrent_kernel/v
.:,(2"Adam/lstm_656/lstm_cell_656/bias/v
�2�
0__inference_sequential_218_layer_call_fn_3753858
0__inference_sequential_218_layer_call_fn_3754596
0__inference_sequential_218_layer_call_fn_3754623
0__inference_sequential_218_layer_call_fn_3754474�
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
K__inference_sequential_218_layer_call_and_return_conditional_losses_3755050
K__inference_sequential_218_layer_call_and_return_conditional_losses_3755477
K__inference_sequential_218_layer_call_and_return_conditional_losses_3754504
K__inference_sequential_218_layer_call_and_return_conditional_losses_3754534�
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
"__inference__wrapped_model_3752309lstm_654_input"�
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
*__inference_lstm_654_layer_call_fn_3755488
*__inference_lstm_654_layer_call_fn_3755499
*__inference_lstm_654_layer_call_fn_3755510
*__inference_lstm_654_layer_call_fn_3755521�
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
E__inference_lstm_654_layer_call_and_return_conditional_losses_3755664
E__inference_lstm_654_layer_call_and_return_conditional_losses_3755807
E__inference_lstm_654_layer_call_and_return_conditional_losses_3755950
E__inference_lstm_654_layer_call_and_return_conditional_losses_3756093�
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
*__inference_lstm_655_layer_call_fn_3756104
*__inference_lstm_655_layer_call_fn_3756115
*__inference_lstm_655_layer_call_fn_3756126
*__inference_lstm_655_layer_call_fn_3756137�
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
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756280
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756423
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756566
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756709�
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
*__inference_lstm_656_layer_call_fn_3756720
*__inference_lstm_656_layer_call_fn_3756731
*__inference_lstm_656_layer_call_fn_3756742
*__inference_lstm_656_layer_call_fn_3756753�
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
E__inference_lstm_656_layer_call_and_return_conditional_losses_3756896
E__inference_lstm_656_layer_call_and_return_conditional_losses_3757039
E__inference_lstm_656_layer_call_and_return_conditional_losses_3757182
E__inference_lstm_656_layer_call_and_return_conditional_losses_3757325�
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
+__inference_dense_218_layer_call_fn_3757334�
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
F__inference_dense_218_layer_call_and_return_conditional_losses_3757344�
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
%__inference_signature_wrapper_3754569lstm_654_input"�
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
/__inference_lstm_cell_618_layer_call_fn_3757361
/__inference_lstm_cell_618_layer_call_fn_3757378�
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
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3757410
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3757442�
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
/__inference_lstm_cell_619_layer_call_fn_3757459
/__inference_lstm_cell_619_layer_call_fn_3757476�
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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3757508
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3757540�
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
/__inference_lstm_cell_620_layer_call_fn_3757557
/__inference_lstm_cell_620_layer_call_fn_3757574�
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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3757606
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3757638�
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
"__inference__wrapped_model_3752309�-./012345!";�8
1�.
,�)
lstm_654_input���������
� "5�2
0
	dense_218#� 
	dense_218����������
F__inference_dense_218_layer_call_and_return_conditional_losses_3757344\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� ~
+__inference_dense_218_layer_call_fn_3757334O!"/�,
%�"
 �
inputs���������

� "�����������
E__inference_lstm_654_layer_call_and_return_conditional_losses_3755664�-./O�L
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
E__inference_lstm_654_layer_call_and_return_conditional_losses_3755807�-./O�L
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
E__inference_lstm_654_layer_call_and_return_conditional_losses_3755950q-./?�<
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
E__inference_lstm_654_layer_call_and_return_conditional_losses_3756093q-./?�<
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
*__inference_lstm_654_layer_call_fn_3755488}-./O�L
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
*__inference_lstm_654_layer_call_fn_3755499}-./O�L
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
*__inference_lstm_654_layer_call_fn_3755510d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
*__inference_lstm_654_layer_call_fn_3755521d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756280�012O�L
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
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756423�012O�L
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
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756566q012?�<
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
E__inference_lstm_655_layer_call_and_return_conditional_losses_3756709q012?�<
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
*__inference_lstm_655_layer_call_fn_3756104}012O�L
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
*__inference_lstm_655_layer_call_fn_3756115}012O�L
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
*__inference_lstm_655_layer_call_fn_3756126d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
*__inference_lstm_655_layer_call_fn_3756137d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
E__inference_lstm_656_layer_call_and_return_conditional_losses_3756896}345O�L
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
E__inference_lstm_656_layer_call_and_return_conditional_losses_3757039}345O�L
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
E__inference_lstm_656_layer_call_and_return_conditional_losses_3757182m345?�<
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
E__inference_lstm_656_layer_call_and_return_conditional_losses_3757325m345?�<
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
*__inference_lstm_656_layer_call_fn_3756720p345O�L
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
*__inference_lstm_656_layer_call_fn_3756731p345O�L
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
*__inference_lstm_656_layer_call_fn_3756742`345?�<
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
*__inference_lstm_656_layer_call_fn_3756753`345?�<
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
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3757410�-./��}
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
J__inference_lstm_cell_618_layer_call_and_return_conditional_losses_3757442�-./��}
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
/__inference_lstm_cell_618_layer_call_fn_3757361�-./��}
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
/__inference_lstm_cell_618_layer_call_fn_3757378�-./��}
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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3757508�012��}
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
J__inference_lstm_cell_619_layer_call_and_return_conditional_losses_3757540�012��}
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
/__inference_lstm_cell_619_layer_call_fn_3757459�012��}
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
/__inference_lstm_cell_619_layer_call_fn_3757476�012��}
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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3757606�345��}
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
J__inference_lstm_cell_620_layer_call_and_return_conditional_losses_3757638�345��}
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
/__inference_lstm_cell_620_layer_call_fn_3757557�345��}
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
/__inference_lstm_cell_620_layer_call_fn_3757574�345��}
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
K__inference_sequential_218_layer_call_and_return_conditional_losses_3754504y-./012345!"C�@
9�6
,�)
lstm_654_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_218_layer_call_and_return_conditional_losses_3754534y-./012345!"C�@
9�6
,�)
lstm_654_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_218_layer_call_and_return_conditional_losses_3755050q-./012345!";�8
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
K__inference_sequential_218_layer_call_and_return_conditional_losses_3755477q-./012345!";�8
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
0__inference_sequential_218_layer_call_fn_3753858l-./012345!"C�@
9�6
,�)
lstm_654_input���������
p 

 
� "�����������
0__inference_sequential_218_layer_call_fn_3754474l-./012345!"C�@
9�6
,�)
lstm_654_input���������
p

 
� "�����������
0__inference_sequential_218_layer_call_fn_3754596d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
0__inference_sequential_218_layer_call_fn_3754623d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_3754569�-./012345!"M�J
� 
C�@
>
lstm_654_input,�)
lstm_654_input���������"5�2
0
	dense_218#� 
	dense_218���������
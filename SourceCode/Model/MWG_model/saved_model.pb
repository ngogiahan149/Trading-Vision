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
z
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_54/kernel
s
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel*
_output_shapes

:
*
dtype0
r
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_54/bias
k
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
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
lstm_162/lstm_cell_162/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_162/lstm_cell_162/kernel
�
1lstm_162/lstm_cell_162/kernel/Read/ReadVariableOpReadVariableOplstm_162/lstm_cell_162/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_162/lstm_cell_162/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_162/lstm_cell_162/recurrent_kernel
�
;lstm_162/lstm_cell_162/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_162/lstm_cell_162/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_162/lstm_cell_162/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_162/lstm_cell_162/bias
�
/lstm_162/lstm_cell_162/bias/Read/ReadVariableOpReadVariableOplstm_162/lstm_cell_162/bias*
_output_shapes	
:�*
dtype0
�
lstm_163/lstm_cell_163/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_163/lstm_cell_163/kernel
�
1lstm_163/lstm_cell_163/kernel/Read/ReadVariableOpReadVariableOplstm_163/lstm_cell_163/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_163/lstm_cell_163/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_163/lstm_cell_163/recurrent_kernel
�
;lstm_163/lstm_cell_163/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_163/lstm_cell_163/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_163/lstm_cell_163/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_163/lstm_cell_163/bias
�
/lstm_163/lstm_cell_163/bias/Read/ReadVariableOpReadVariableOplstm_163/lstm_cell_163/bias*
_output_shapes	
:�*
dtype0
�
lstm_164/lstm_cell_164/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_164/lstm_cell_164/kernel
�
1lstm_164/lstm_cell_164/kernel/Read/ReadVariableOpReadVariableOplstm_164/lstm_cell_164/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_164/lstm_cell_164/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_164/lstm_cell_164/recurrent_kernel
�
;lstm_164/lstm_cell_164/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_164/lstm_cell_164/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_164/lstm_cell_164/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_164/lstm_cell_164/bias
�
/lstm_164/lstm_cell_164/bias/Read/ReadVariableOpReadVariableOplstm_164/lstm_cell_164/bias*
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
Adam/dense_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_54/kernel/m
�
*Adam/dense_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_54/bias/m
y
(Adam/dense_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_162/lstm_cell_162/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_162/lstm_cell_162/kernel/m
�
8Adam/lstm_162/lstm_cell_162/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_162/lstm_cell_162/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_162/lstm_cell_162/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_162/lstm_cell_162/recurrent_kernel/m
�
BAdam/lstm_162/lstm_cell_162/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_162/lstm_cell_162/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_162/lstm_cell_162/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_162/lstm_cell_162/bias/m
�
6Adam/lstm_162/lstm_cell_162/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_162/lstm_cell_162/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_163/lstm_cell_163/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_163/lstm_cell_163/kernel/m
�
8Adam/lstm_163/lstm_cell_163/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_163/lstm_cell_163/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_163/lstm_cell_163/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_163/lstm_cell_163/recurrent_kernel/m
�
BAdam/lstm_163/lstm_cell_163/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_163/lstm_cell_163/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_163/lstm_cell_163/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_163/lstm_cell_163/bias/m
�
6Adam/lstm_163/lstm_cell_163/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_163/lstm_cell_163/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_164/lstm_cell_164/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_164/lstm_cell_164/kernel/m
�
8Adam/lstm_164/lstm_cell_164/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_164/lstm_cell_164/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_164/lstm_cell_164/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_164/lstm_cell_164/recurrent_kernel/m
�
BAdam/lstm_164/lstm_cell_164/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_164/lstm_cell_164/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_164/lstm_cell_164/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_164/lstm_cell_164/bias/m
�
6Adam/lstm_164/lstm_cell_164/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_164/lstm_cell_164/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_54/kernel/v
�
*Adam/dense_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_54/bias/v
y
(Adam/dense_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_162/lstm_cell_162/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_162/lstm_cell_162/kernel/v
�
8Adam/lstm_162/lstm_cell_162/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_162/lstm_cell_162/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_162/lstm_cell_162/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_162/lstm_cell_162/recurrent_kernel/v
�
BAdam/lstm_162/lstm_cell_162/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_162/lstm_cell_162/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_162/lstm_cell_162/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_162/lstm_cell_162/bias/v
�
6Adam/lstm_162/lstm_cell_162/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_162/lstm_cell_162/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_163/lstm_cell_163/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_163/lstm_cell_163/kernel/v
�
8Adam/lstm_163/lstm_cell_163/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_163/lstm_cell_163/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_163/lstm_cell_163/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_163/lstm_cell_163/recurrent_kernel/v
�
BAdam/lstm_163/lstm_cell_163/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_163/lstm_cell_163/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_163/lstm_cell_163/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_163/lstm_cell_163/bias/v
�
6Adam/lstm_163/lstm_cell_163/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_163/lstm_cell_163/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_164/lstm_cell_164/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_164/lstm_cell_164/kernel/v
�
8Adam/lstm_164/lstm_cell_164/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_164/lstm_cell_164/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_164/lstm_cell_164/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_164/lstm_cell_164/recurrent_kernel/v
�
BAdam/lstm_164/lstm_cell_164/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_164/lstm_cell_164/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_164/lstm_cell_164/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_164/lstm_cell_164/bias/v
�
6Adam/lstm_164/lstm_cell_164/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_164/lstm_cell_164/bias/v*
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
[Y
VARIABLE_VALUEdense_54/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_54/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_162/lstm_cell_162/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_162/lstm_cell_162/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_162/lstm_cell_162/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_163/lstm_cell_163/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_163/lstm_cell_163/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_163/lstm_cell_163/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_164/lstm_cell_164/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_164/lstm_cell_164/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_164/lstm_cell_164/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_54/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_54/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_162/lstm_cell_162/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_162/lstm_cell_162/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_162/lstm_cell_162/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_163/lstm_cell_163/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_163/lstm_cell_163/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_163/lstm_cell_163/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_164/lstm_cell_164/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_164/lstm_cell_164/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_164/lstm_cell_164/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_54/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_54/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_162/lstm_cell_162/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_162/lstm_cell_162/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_162/lstm_cell_162/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_163/lstm_cell_163/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_163/lstm_cell_163/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_163/lstm_cell_163/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_164/lstm_cell_164/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_164/lstm_cell_164/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_164/lstm_cell_164/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_162_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_162_inputlstm_162/lstm_cell_162/kernel'lstm_162/lstm_cell_162/recurrent_kernellstm_162/lstm_cell_162/biaslstm_163/lstm_cell_163/kernel'lstm_163/lstm_cell_163/recurrent_kernellstm_163/lstm_cell_163/biaslstm_164/lstm_cell_164/kernel'lstm_164/lstm_cell_164/recurrent_kernellstm_164/lstm_cell_164/biasdense_54/kerneldense_54/bias*
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
GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_268711
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_162/lstm_cell_162/kernel/Read/ReadVariableOp;lstm_162/lstm_cell_162/recurrent_kernel/Read/ReadVariableOp/lstm_162/lstm_cell_162/bias/Read/ReadVariableOp1lstm_163/lstm_cell_163/kernel/Read/ReadVariableOp;lstm_163/lstm_cell_163/recurrent_kernel/Read/ReadVariableOp/lstm_163/lstm_cell_163/bias/Read/ReadVariableOp1lstm_164/lstm_cell_164/kernel/Read/ReadVariableOp;lstm_164/lstm_cell_164/recurrent_kernel/Read/ReadVariableOp/lstm_164/lstm_cell_164/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_54/kernel/m/Read/ReadVariableOp(Adam/dense_54/bias/m/Read/ReadVariableOp8Adam/lstm_162/lstm_cell_162/kernel/m/Read/ReadVariableOpBAdam/lstm_162/lstm_cell_162/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_162/lstm_cell_162/bias/m/Read/ReadVariableOp8Adam/lstm_163/lstm_cell_163/kernel/m/Read/ReadVariableOpBAdam/lstm_163/lstm_cell_163/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_163/lstm_cell_163/bias/m/Read/ReadVariableOp8Adam/lstm_164/lstm_cell_164/kernel/m/Read/ReadVariableOpBAdam/lstm_164/lstm_cell_164/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_164/lstm_cell_164/bias/m/Read/ReadVariableOp*Adam/dense_54/kernel/v/Read/ReadVariableOp(Adam/dense_54/bias/v/Read/ReadVariableOp8Adam/lstm_162/lstm_cell_162/kernel/v/Read/ReadVariableOpBAdam/lstm_162/lstm_cell_162/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_162/lstm_cell_162/bias/v/Read/ReadVariableOp8Adam/lstm_163/lstm_cell_163/kernel/v/Read/ReadVariableOpBAdam/lstm_163/lstm_cell_163/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_163/lstm_cell_163/bias/v/Read/ReadVariableOp8Adam/lstm_164/lstm_cell_164/kernel/v/Read/ReadVariableOpBAdam/lstm_164/lstm_cell_164/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_164/lstm_cell_164/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8� *(
f#R!
__inference__traced_save_271923
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_54/kerneldense_54/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_162/lstm_cell_162/kernel'lstm_162/lstm_cell_162/recurrent_kernellstm_162/lstm_cell_162/biaslstm_163/lstm_cell_163/kernel'lstm_163/lstm_cell_163/recurrent_kernellstm_163/lstm_cell_163/biaslstm_164/lstm_cell_164/kernel'lstm_164/lstm_cell_164/recurrent_kernellstm_164/lstm_cell_164/biastotalcountAdam/dense_54/kernel/mAdam/dense_54/bias/m$Adam/lstm_162/lstm_cell_162/kernel/m.Adam/lstm_162/lstm_cell_162/recurrent_kernel/m"Adam/lstm_162/lstm_cell_162/bias/m$Adam/lstm_163/lstm_cell_163/kernel/m.Adam/lstm_163/lstm_cell_163/recurrent_kernel/m"Adam/lstm_163/lstm_cell_163/bias/m$Adam/lstm_164/lstm_cell_164/kernel/m.Adam/lstm_164/lstm_cell_164/recurrent_kernel/m"Adam/lstm_164/lstm_cell_164/bias/mAdam/dense_54/kernel/vAdam/dense_54/bias/v$Adam/lstm_162/lstm_cell_162/kernel/v.Adam/lstm_162/lstm_cell_162/recurrent_kernel/v"Adam/lstm_162/lstm_cell_162/bias/v$Adam/lstm_163/lstm_cell_163/kernel/v.Adam/lstm_163/lstm_cell_163/recurrent_kernel/v"Adam/lstm_163/lstm_cell_163/bias/v$Adam/lstm_164/lstm_cell_164/kernel/v.Adam/lstm_164/lstm_cell_164/recurrent_kernel/v"Adam/lstm_164/lstm_cell_164/bias/v*4
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_272053��+
�
�
)__inference_lstm_163_layer_call_fn_270246
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_266951|
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
�
�
while_cond_268081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_268081___redundant_placeholder04
0while_while_cond_268081___redundant_placeholder14
0while_while_cond_268081___redundant_placeholder24
0while_while_cond_268081___redundant_placeholder3
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
while_cond_269721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_269721___redundant_placeholder04
0while_while_cond_269721___redundant_placeholder14
0while_while_cond_269721___redundant_placeholder24
0while_while_cond_269721___redundant_placeholder3
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
while_body_270338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	d�H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	2�C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	d�F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	2�A
2while_lstm_cell_43_biasadd_readvariableop_resource:	���)while/lstm_cell_43/BiasAdd/ReadVariableOp�(while/lstm_cell_43/MatMul/ReadVariableOp�*while/lstm_cell_43/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitz
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2t
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2q
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2y
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_270767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	d�H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	2�C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	d�F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	2�A
2while_lstm_cell_43_biasadd_readvariableop_resource:	���)while/lstm_cell_43/BiasAdd/ReadVariableOp�(while/lstm_cell_43/MatMul/ReadVariableOp�*while/lstm_cell_43/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitz
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2t
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2q
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2y
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(sequential_54_lstm_162_while_cond_266082J
Fsequential_54_lstm_162_while_sequential_54_lstm_162_while_loop_counterP
Lsequential_54_lstm_162_while_sequential_54_lstm_162_while_maximum_iterations,
(sequential_54_lstm_162_while_placeholder.
*sequential_54_lstm_162_while_placeholder_1.
*sequential_54_lstm_162_while_placeholder_2.
*sequential_54_lstm_162_while_placeholder_3L
Hsequential_54_lstm_162_while_less_sequential_54_lstm_162_strided_slice_1b
^sequential_54_lstm_162_while_sequential_54_lstm_162_while_cond_266082___redundant_placeholder0b
^sequential_54_lstm_162_while_sequential_54_lstm_162_while_cond_266082___redundant_placeholder1b
^sequential_54_lstm_162_while_sequential_54_lstm_162_while_cond_266082___redundant_placeholder2b
^sequential_54_lstm_162_while_sequential_54_lstm_162_while_cond_266082___redundant_placeholder3)
%sequential_54_lstm_162_while_identity
�
!sequential_54/lstm_162/while/LessLess(sequential_54_lstm_162_while_placeholderHsequential_54_lstm_162_while_less_sequential_54_lstm_162_strided_slice_1*
T0*
_output_shapes
: y
%sequential_54/lstm_162/while/IdentityIdentity%sequential_54/lstm_162/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_54_lstm_162_while_identity.sequential_54/lstm_162/while/Identity:output:0*(
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
�S
�
(sequential_54_lstm_163_while_body_266222J
Fsequential_54_lstm_163_while_sequential_54_lstm_163_while_loop_counterP
Lsequential_54_lstm_163_while_sequential_54_lstm_163_while_maximum_iterations,
(sequential_54_lstm_163_while_placeholder.
*sequential_54_lstm_163_while_placeholder_1.
*sequential_54_lstm_163_while_placeholder_2.
*sequential_54_lstm_163_while_placeholder_3I
Esequential_54_lstm_163_while_sequential_54_lstm_163_strided_slice_1_0�
�sequential_54_lstm_163_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_163_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_54_lstm_163_while_lstm_cell_43_matmul_readvariableop_resource_0:	d�_
Lsequential_54_lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource_0:	2�Z
Ksequential_54_lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource_0:	�)
%sequential_54_lstm_163_while_identity+
'sequential_54_lstm_163_while_identity_1+
'sequential_54_lstm_163_while_identity_2+
'sequential_54_lstm_163_while_identity_3+
'sequential_54_lstm_163_while_identity_4+
'sequential_54_lstm_163_while_identity_5G
Csequential_54_lstm_163_while_sequential_54_lstm_163_strided_slice_1�
sequential_54_lstm_163_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_163_tensorarrayunstack_tensorlistfromtensor[
Hsequential_54_lstm_163_while_lstm_cell_43_matmul_readvariableop_resource:	d�]
Jsequential_54_lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource:	2�X
Isequential_54_lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource:	���@sequential_54/lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp�?sequential_54/lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp�Asequential_54/lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp�
Nsequential_54/lstm_163/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
@sequential_54/lstm_163/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_54_lstm_163_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_163_tensorarrayunstack_tensorlistfromtensor_0(sequential_54_lstm_163_while_placeholderWsequential_54/lstm_163/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
?sequential_54/lstm_163/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOpJsequential_54_lstm_163_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
0sequential_54/lstm_163/while/lstm_cell_43/MatMulMatMulGsequential_54/lstm_163/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_54/lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Asequential_54/lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOpLsequential_54_lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
2sequential_54/lstm_163/while/lstm_cell_43/MatMul_1MatMul*sequential_54_lstm_163_while_placeholder_2Isequential_54/lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_54/lstm_163/while/lstm_cell_43/addAddV2:sequential_54/lstm_163/while/lstm_cell_43/MatMul:product:0<sequential_54/lstm_163/while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@sequential_54/lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOpKsequential_54_lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
1sequential_54/lstm_163/while/lstm_cell_43/BiasAddBiasAdd1sequential_54/lstm_163/while/lstm_cell_43/add:z:0Hsequential_54/lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9sequential_54/lstm_163/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_54/lstm_163/while/lstm_cell_43/splitSplitBsequential_54/lstm_163/while/lstm_cell_43/split/split_dim:output:0:sequential_54/lstm_163/while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
1sequential_54/lstm_163/while/lstm_cell_43/SigmoidSigmoid8sequential_54/lstm_163/while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2�
3sequential_54/lstm_163/while/lstm_cell_43/Sigmoid_1Sigmoid8sequential_54/lstm_163/while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
-sequential_54/lstm_163/while/lstm_cell_43/mulMul7sequential_54/lstm_163/while/lstm_cell_43/Sigmoid_1:y:0*sequential_54_lstm_163_while_placeholder_3*
T0*'
_output_shapes
:���������2�
.sequential_54/lstm_163/while/lstm_cell_43/ReluRelu8sequential_54/lstm_163/while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
/sequential_54/lstm_163/while/lstm_cell_43/mul_1Mul5sequential_54/lstm_163/while/lstm_cell_43/Sigmoid:y:0<sequential_54/lstm_163/while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
/sequential_54/lstm_163/while/lstm_cell_43/add_1AddV21sequential_54/lstm_163/while/lstm_cell_43/mul:z:03sequential_54/lstm_163/while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2�
3sequential_54/lstm_163/while/lstm_cell_43/Sigmoid_2Sigmoid8sequential_54/lstm_163/while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2�
0sequential_54/lstm_163/while/lstm_cell_43/Relu_1Relu3sequential_54/lstm_163/while/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_54/lstm_163/while/lstm_cell_43/mul_2Mul7sequential_54/lstm_163/while/lstm_cell_43/Sigmoid_2:y:0>sequential_54/lstm_163/while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Asequential_54/lstm_163/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_54_lstm_163_while_placeholder_1(sequential_54_lstm_163_while_placeholder3sequential_54/lstm_163/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype0:���d
"sequential_54/lstm_163/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
 sequential_54/lstm_163/while/addAddV2(sequential_54_lstm_163_while_placeholder+sequential_54/lstm_163/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_54/lstm_163/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
"sequential_54/lstm_163/while/add_1AddV2Fsequential_54_lstm_163_while_sequential_54_lstm_163_while_loop_counter-sequential_54/lstm_163/while/add_1/y:output:0*
T0*
_output_shapes
: �
%sequential_54/lstm_163/while/IdentityIdentity&sequential_54/lstm_163/while/add_1:z:0"^sequential_54/lstm_163/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_163/while/Identity_1IdentityLsequential_54_lstm_163_while_sequential_54_lstm_163_while_maximum_iterations"^sequential_54/lstm_163/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_163/while/Identity_2Identity$sequential_54/lstm_163/while/add:z:0"^sequential_54/lstm_163/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_163/while/Identity_3IdentityQsequential_54/lstm_163/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_54/lstm_163/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_163/while/Identity_4Identity3sequential_54/lstm_163/while/lstm_cell_43/mul_2:z:0"^sequential_54/lstm_163/while/NoOp*
T0*'
_output_shapes
:���������2�
'sequential_54/lstm_163/while/Identity_5Identity3sequential_54/lstm_163/while/lstm_cell_43/add_1:z:0"^sequential_54/lstm_163/while/NoOp*
T0*'
_output_shapes
:���������2�
!sequential_54/lstm_163/while/NoOpNoOpA^sequential_54/lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp@^sequential_54/lstm_163/while/lstm_cell_43/MatMul/ReadVariableOpB^sequential_54/lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_54_lstm_163_while_identity.sequential_54/lstm_163/while/Identity:output:0"[
'sequential_54_lstm_163_while_identity_10sequential_54/lstm_163/while/Identity_1:output:0"[
'sequential_54_lstm_163_while_identity_20sequential_54/lstm_163/while/Identity_2:output:0"[
'sequential_54_lstm_163_while_identity_30sequential_54/lstm_163/while/Identity_3:output:0"[
'sequential_54_lstm_163_while_identity_40sequential_54/lstm_163/while/Identity_4:output:0"[
'sequential_54_lstm_163_while_identity_50sequential_54/lstm_163/while/Identity_5:output:0"�
Isequential_54_lstm_163_while_lstm_cell_43_biasadd_readvariableop_resourceKsequential_54_lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource_0"�
Jsequential_54_lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resourceLsequential_54_lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource_0"�
Hsequential_54_lstm_163_while_lstm_cell_43_matmul_readvariableop_resourceJsequential_54_lstm_163_while_lstm_cell_43_matmul_readvariableop_resource_0"�
Csequential_54_lstm_163_while_sequential_54_lstm_163_strided_slice_1Esequential_54_lstm_163_while_sequential_54_lstm_163_strided_slice_1_0"�
sequential_54_lstm_163_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_163_tensorarrayunstack_tensorlistfromtensor�sequential_54_lstm_163_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_163_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
@sequential_54/lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp@sequential_54/lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp2�
?sequential_54/lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp?sequential_54/lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp2�
Asequential_54/lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOpAsequential_54/lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�B
�

lstm_162_while_body_269251.
*lstm_162_while_lstm_162_while_loop_counter4
0lstm_162_while_lstm_162_while_maximum_iterations
lstm_162_while_placeholder 
lstm_162_while_placeholder_1 
lstm_162_while_placeholder_2 
lstm_162_while_placeholder_3-
)lstm_162_while_lstm_162_strided_slice_1_0i
elstm_162_while_tensorarrayv2read_tensorlistgetitem_lstm_162_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_162_while_lstm_cell_42_matmul_readvariableop_resource_0:	�Q
>lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource_0:	d�L
=lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource_0:	�
lstm_162_while_identity
lstm_162_while_identity_1
lstm_162_while_identity_2
lstm_162_while_identity_3
lstm_162_while_identity_4
lstm_162_while_identity_5+
'lstm_162_while_lstm_162_strided_slice_1g
clstm_162_while_tensorarrayv2read_tensorlistgetitem_lstm_162_tensorarrayunstack_tensorlistfromtensorM
:lstm_162_while_lstm_cell_42_matmul_readvariableop_resource:	�O
<lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource:	d�J
;lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource:	���2lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp�1lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp�3lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp�
@lstm_162/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_162/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_162_while_tensorarrayv2read_tensorlistgetitem_lstm_162_tensorarrayunstack_tensorlistfromtensor_0lstm_162_while_placeholderIlstm_162/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1lstm_162/while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp<lstm_162_while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"lstm_162/while/lstm_cell_42/MatMulMatMul9lstm_162/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp>lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
$lstm_162/while/lstm_cell_42/MatMul_1MatMullstm_162_while_placeholder_2;lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_162/while/lstm_cell_42/addAddV2,lstm_162/while/lstm_cell_42/MatMul:product:0.lstm_162/while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp=lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_162/while/lstm_cell_42/BiasAddBiasAdd#lstm_162/while/lstm_cell_42/add:z:0:lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_162/while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_162/while/lstm_cell_42/splitSplit4lstm_162/while/lstm_cell_42/split/split_dim:output:0,lstm_162/while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
#lstm_162/while/lstm_cell_42/SigmoidSigmoid*lstm_162/while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d�
%lstm_162/while/lstm_cell_42/Sigmoid_1Sigmoid*lstm_162/while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_162/while/lstm_cell_42/mulMul)lstm_162/while/lstm_cell_42/Sigmoid_1:y:0lstm_162_while_placeholder_3*
T0*'
_output_shapes
:���������d�
 lstm_162/while/lstm_cell_42/ReluRelu*lstm_162/while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_162/while/lstm_cell_42/mul_1Mul'lstm_162/while/lstm_cell_42/Sigmoid:y:0.lstm_162/while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
!lstm_162/while/lstm_cell_42/add_1AddV2#lstm_162/while/lstm_cell_42/mul:z:0%lstm_162/while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d�
%lstm_162/while/lstm_cell_42/Sigmoid_2Sigmoid*lstm_162/while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������d�
"lstm_162/while/lstm_cell_42/Relu_1Relu%lstm_162/while/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_162/while/lstm_cell_42/mul_2Mul)lstm_162/while/lstm_cell_42/Sigmoid_2:y:00lstm_162/while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_162/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_162_while_placeholder_1lstm_162_while_placeholder%lstm_162/while/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_162/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_162/while/addAddV2lstm_162_while_placeholderlstm_162/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_162/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_162/while/add_1AddV2*lstm_162_while_lstm_162_while_loop_counterlstm_162/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_162/while/IdentityIdentitylstm_162/while/add_1:z:0^lstm_162/while/NoOp*
T0*
_output_shapes
: �
lstm_162/while/Identity_1Identity0lstm_162_while_lstm_162_while_maximum_iterations^lstm_162/while/NoOp*
T0*
_output_shapes
: t
lstm_162/while/Identity_2Identitylstm_162/while/add:z:0^lstm_162/while/NoOp*
T0*
_output_shapes
: �
lstm_162/while/Identity_3IdentityClstm_162/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_162/while/NoOp*
T0*
_output_shapes
: �
lstm_162/while/Identity_4Identity%lstm_162/while/lstm_cell_42/mul_2:z:0^lstm_162/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_162/while/Identity_5Identity%lstm_162/while/lstm_cell_42/add_1:z:0^lstm_162/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_162/while/NoOpNoOp3^lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp2^lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp4^lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_162_while_identity lstm_162/while/Identity:output:0"?
lstm_162_while_identity_1"lstm_162/while/Identity_1:output:0"?
lstm_162_while_identity_2"lstm_162/while/Identity_2:output:0"?
lstm_162_while_identity_3"lstm_162/while/Identity_3:output:0"?
lstm_162_while_identity_4"lstm_162/while/Identity_4:output:0"?
lstm_162_while_identity_5"lstm_162/while/Identity_5:output:0"T
'lstm_162_while_lstm_162_strided_slice_1)lstm_162_while_lstm_162_strided_slice_1_0"|
;lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource=lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource_0"~
<lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource>lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource_0"z
:lstm_162_while_lstm_cell_42_matmul_readvariableop_resource<lstm_162_while_lstm_cell_42_matmul_readvariableop_resource_0"�
clstm_162_while_tensorarrayv2read_tensorlistgetitem_lstm_162_tensorarrayunstack_tensorlistfromtensorelstm_162_while_tensorarrayv2read_tensorlistgetitem_lstm_162_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp2lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp2f
1lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp1lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp2j
3lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp3lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_163_layer_call_fn_270279

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
D__inference_lstm_163_layer_call_and_return_conditional_losses_268331s
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
�
while_cond_267865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_267865___redundant_placeholder04
0while_while_cond_267865___redundant_placeholder14
0while_while_cond_267865___redundant_placeholder24
0while_while_cond_267865___redundant_placeholder3
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
)__inference_lstm_164_layer_call_fn_270873
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_267492o
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
while_cond_267565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_267565___redundant_placeholder04
0while_while_cond_267565___redundant_placeholder14
0while_while_cond_267565___redundant_placeholder24
0while_while_cond_267565___redundant_placeholder3
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
while_cond_266531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_266531___redundant_placeholder04
0while_while_cond_266531___redundant_placeholder14
0while_while_cond_266531___redundant_placeholder24
0while_while_cond_266531___redundant_placeholder3
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
.__inference_sequential_54_layer_call_fn_268738

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
GPU 2J 8� *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_267975o
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
�8
�
while_body_269722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	d�C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	�F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	d�A
2while_lstm_cell_42_biasadd_readvariableop_resource:	���)while/lstm_cell_42/BiasAdd/ReadVariableOp�(while/lstm_cell_42/MatMul/ReadVariableOp�*while/lstm_cell_42/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitz
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dt
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������dq
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dy
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_163_layer_call_fn_270268

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
D__inference_lstm_163_layer_call_and_return_conditional_losses_267800s
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
)__inference_lstm_162_layer_call_fn_269663

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
D__inference_lstm_162_layer_call_and_return_conditional_losses_268496s
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
�J
�
D__inference_lstm_162_layer_call_and_return_conditional_losses_269949
inputs_0>
+lstm_cell_42_matmul_readvariableop_resource:	�@
-lstm_cell_42_matmul_1_readvariableop_resource:	d�;
,lstm_cell_42_biasadd_readvariableop_resource:	�
identity��#lstm_cell_42/BiasAdd/ReadVariableOp�"lstm_cell_42/MatMul/ReadVariableOp�$lstm_cell_42/MatMul_1/ReadVariableOp�while=
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitn
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������dw
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dh
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d{
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������de
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
bodyR
while_body_269865*
condR
while_cond_269864*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�

�
.__inference_sequential_54_layer_call_fn_268616
lstm_162_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_162_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8� *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_268564o
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
_user_specified_namelstm_162_input
�
�
I__inference_sequential_54_layer_call_and_return_conditional_losses_268646
lstm_162_input"
lstm_162_268619:	�"
lstm_162_268621:	d�
lstm_162_268623:	�"
lstm_163_268626:	d�"
lstm_163_268628:	2�
lstm_163_268630:	�!
lstm_164_268633:2(!
lstm_164_268635:
(
lstm_164_268637:(!
dense_54_268640:

dense_54_268642:
identity�� dense_54/StatefulPartitionedCall� lstm_162/StatefulPartitionedCall� lstm_163/StatefulPartitionedCall� lstm_164/StatefulPartitionedCall�
 lstm_162/StatefulPartitionedCallStatefulPartitionedCalllstm_162_inputlstm_162_268619lstm_162_268621lstm_162_268623*
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_267650�
 lstm_163/StatefulPartitionedCallStatefulPartitionedCall)lstm_162/StatefulPartitionedCall:output:0lstm_163_268626lstm_163_268628lstm_163_268630*
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_267800�
 lstm_164/StatefulPartitionedCallStatefulPartitionedCall)lstm_163/StatefulPartitionedCall:output:0lstm_164_268633lstm_164_268635lstm_164_268637*
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_267950�
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)lstm_164/StatefulPartitionedCall:output:0dense_54_268640dense_54_268642*
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
GPU 2J 8� *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_267968x
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_54/StatefulPartitionedCall!^lstm_162/StatefulPartitionedCall!^lstm_163/StatefulPartitionedCall!^lstm_164/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 lstm_162/StatefulPartitionedCall lstm_162/StatefulPartitionedCall2D
 lstm_163/StatefulPartitionedCall lstm_163/StatefulPartitionedCall2D
 lstm_164/StatefulPartitionedCall lstm_164/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_162_input
�J
�
D__inference_lstm_163_layer_call_and_return_conditional_losses_270851

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	d�@
-lstm_cell_43_matmul_1_readvariableop_resource:	2�;
,lstm_cell_43_biasadd_readvariableop_resource:	�
identity��#lstm_cell_43/BiasAdd/ReadVariableOp�"lstm_cell_43/MatMul/ReadVariableOp�$lstm_cell_43/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitn
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2w
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2h
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2{
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2e
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
bodyR
while_body_270767*
condR
while_cond_270766*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�B
�

lstm_162_while_body_268824.
*lstm_162_while_lstm_162_while_loop_counter4
0lstm_162_while_lstm_162_while_maximum_iterations
lstm_162_while_placeholder 
lstm_162_while_placeholder_1 
lstm_162_while_placeholder_2 
lstm_162_while_placeholder_3-
)lstm_162_while_lstm_162_strided_slice_1_0i
elstm_162_while_tensorarrayv2read_tensorlistgetitem_lstm_162_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_162_while_lstm_cell_42_matmul_readvariableop_resource_0:	�Q
>lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource_0:	d�L
=lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource_0:	�
lstm_162_while_identity
lstm_162_while_identity_1
lstm_162_while_identity_2
lstm_162_while_identity_3
lstm_162_while_identity_4
lstm_162_while_identity_5+
'lstm_162_while_lstm_162_strided_slice_1g
clstm_162_while_tensorarrayv2read_tensorlistgetitem_lstm_162_tensorarrayunstack_tensorlistfromtensorM
:lstm_162_while_lstm_cell_42_matmul_readvariableop_resource:	�O
<lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource:	d�J
;lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource:	���2lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp�1lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp�3lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp�
@lstm_162/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_162/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_162_while_tensorarrayv2read_tensorlistgetitem_lstm_162_tensorarrayunstack_tensorlistfromtensor_0lstm_162_while_placeholderIlstm_162/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1lstm_162/while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp<lstm_162_while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"lstm_162/while/lstm_cell_42/MatMulMatMul9lstm_162/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp>lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
$lstm_162/while/lstm_cell_42/MatMul_1MatMullstm_162_while_placeholder_2;lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_162/while/lstm_cell_42/addAddV2,lstm_162/while/lstm_cell_42/MatMul:product:0.lstm_162/while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp=lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_162/while/lstm_cell_42/BiasAddBiasAdd#lstm_162/while/lstm_cell_42/add:z:0:lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_162/while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_162/while/lstm_cell_42/splitSplit4lstm_162/while/lstm_cell_42/split/split_dim:output:0,lstm_162/while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
#lstm_162/while/lstm_cell_42/SigmoidSigmoid*lstm_162/while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d�
%lstm_162/while/lstm_cell_42/Sigmoid_1Sigmoid*lstm_162/while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_162/while/lstm_cell_42/mulMul)lstm_162/while/lstm_cell_42/Sigmoid_1:y:0lstm_162_while_placeholder_3*
T0*'
_output_shapes
:���������d�
 lstm_162/while/lstm_cell_42/ReluRelu*lstm_162/while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_162/while/lstm_cell_42/mul_1Mul'lstm_162/while/lstm_cell_42/Sigmoid:y:0.lstm_162/while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
!lstm_162/while/lstm_cell_42/add_1AddV2#lstm_162/while/lstm_cell_42/mul:z:0%lstm_162/while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d�
%lstm_162/while/lstm_cell_42/Sigmoid_2Sigmoid*lstm_162/while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������d�
"lstm_162/while/lstm_cell_42/Relu_1Relu%lstm_162/while/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
!lstm_162/while/lstm_cell_42/mul_2Mul)lstm_162/while/lstm_cell_42/Sigmoid_2:y:00lstm_162/while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_162/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_162_while_placeholder_1lstm_162_while_placeholder%lstm_162/while/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_162/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_162/while/addAddV2lstm_162_while_placeholderlstm_162/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_162/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_162/while/add_1AddV2*lstm_162_while_lstm_162_while_loop_counterlstm_162/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_162/while/IdentityIdentitylstm_162/while/add_1:z:0^lstm_162/while/NoOp*
T0*
_output_shapes
: �
lstm_162/while/Identity_1Identity0lstm_162_while_lstm_162_while_maximum_iterations^lstm_162/while/NoOp*
T0*
_output_shapes
: t
lstm_162/while/Identity_2Identitylstm_162/while/add:z:0^lstm_162/while/NoOp*
T0*
_output_shapes
: �
lstm_162/while/Identity_3IdentityClstm_162/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_162/while/NoOp*
T0*
_output_shapes
: �
lstm_162/while/Identity_4Identity%lstm_162/while/lstm_cell_42/mul_2:z:0^lstm_162/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_162/while/Identity_5Identity%lstm_162/while/lstm_cell_42/add_1:z:0^lstm_162/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_162/while/NoOpNoOp3^lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp2^lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp4^lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_162_while_identity lstm_162/while/Identity:output:0"?
lstm_162_while_identity_1"lstm_162/while/Identity_1:output:0"?
lstm_162_while_identity_2"lstm_162/while/Identity_2:output:0"?
lstm_162_while_identity_3"lstm_162/while/Identity_3:output:0"?
lstm_162_while_identity_4"lstm_162/while/Identity_4:output:0"?
lstm_162_while_identity_5"lstm_162/while/Identity_5:output:0"T
'lstm_162_while_lstm_162_strided_slice_1)lstm_162_while_lstm_162_strided_slice_1_0"|
;lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource=lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource_0"~
<lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource>lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource_0"z
:lstm_162_while_lstm_cell_42_matmul_readvariableop_resource<lstm_162_while_lstm_cell_42_matmul_readvariableop_resource_0"�
clstm_162_while_tensorarrayv2read_tensorlistgetitem_lstm_162_tensorarrayunstack_tensorlistfromtensorelstm_162_while_tensorarrayv2read_tensorlistgetitem_lstm_162_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp2lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp2f
1lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp1lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp2j
3lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp3lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�S
�
(sequential_54_lstm_164_while_body_266361J
Fsequential_54_lstm_164_while_sequential_54_lstm_164_while_loop_counterP
Lsequential_54_lstm_164_while_sequential_54_lstm_164_while_maximum_iterations,
(sequential_54_lstm_164_while_placeholder.
*sequential_54_lstm_164_while_placeholder_1.
*sequential_54_lstm_164_while_placeholder_2.
*sequential_54_lstm_164_while_placeholder_3I
Esequential_54_lstm_164_while_sequential_54_lstm_164_strided_slice_1_0�
�sequential_54_lstm_164_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_164_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_54_lstm_164_while_lstm_cell_44_matmul_readvariableop_resource_0:2(^
Lsequential_54_lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource_0:
(Y
Ksequential_54_lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource_0:()
%sequential_54_lstm_164_while_identity+
'sequential_54_lstm_164_while_identity_1+
'sequential_54_lstm_164_while_identity_2+
'sequential_54_lstm_164_while_identity_3+
'sequential_54_lstm_164_while_identity_4+
'sequential_54_lstm_164_while_identity_5G
Csequential_54_lstm_164_while_sequential_54_lstm_164_strided_slice_1�
sequential_54_lstm_164_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_164_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_54_lstm_164_while_lstm_cell_44_matmul_readvariableop_resource:2(\
Jsequential_54_lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource:
(W
Isequential_54_lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource:(��@sequential_54/lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp�?sequential_54/lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp�Asequential_54/lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp�
Nsequential_54/lstm_164/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
@sequential_54/lstm_164/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_54_lstm_164_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_164_tensorarrayunstack_tensorlistfromtensor_0(sequential_54_lstm_164_while_placeholderWsequential_54/lstm_164/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
?sequential_54/lstm_164/while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOpJsequential_54_lstm_164_while_lstm_cell_44_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
0sequential_54/lstm_164/while/lstm_cell_44/MatMulMatMulGsequential_54/lstm_164/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_54/lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Asequential_54/lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOpLsequential_54_lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
2sequential_54/lstm_164/while/lstm_cell_44/MatMul_1MatMul*sequential_54_lstm_164_while_placeholder_2Isequential_54/lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-sequential_54/lstm_164/while/lstm_cell_44/addAddV2:sequential_54/lstm_164/while/lstm_cell_44/MatMul:product:0<sequential_54/lstm_164/while/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
@sequential_54/lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOpKsequential_54_lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
1sequential_54/lstm_164/while/lstm_cell_44/BiasAddBiasAdd1sequential_54/lstm_164/while/lstm_cell_44/add:z:0Hsequential_54/lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������({
9sequential_54/lstm_164/while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_54/lstm_164/while/lstm_cell_44/splitSplitBsequential_54/lstm_164/while/lstm_cell_44/split/split_dim:output:0:sequential_54/lstm_164/while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
1sequential_54/lstm_164/while/lstm_cell_44/SigmoidSigmoid8sequential_54/lstm_164/while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
�
3sequential_54/lstm_164/while/lstm_cell_44/Sigmoid_1Sigmoid8sequential_54/lstm_164/while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
-sequential_54/lstm_164/while/lstm_cell_44/mulMul7sequential_54/lstm_164/while/lstm_cell_44/Sigmoid_1:y:0*sequential_54_lstm_164_while_placeholder_3*
T0*'
_output_shapes
:���������
�
.sequential_54/lstm_164/while/lstm_cell_44/ReluRelu8sequential_54/lstm_164/while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
/sequential_54/lstm_164/while/lstm_cell_44/mul_1Mul5sequential_54/lstm_164/while/lstm_cell_44/Sigmoid:y:0<sequential_54/lstm_164/while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
/sequential_54/lstm_164/while/lstm_cell_44/add_1AddV21sequential_54/lstm_164/while/lstm_cell_44/mul:z:03sequential_54/lstm_164/while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
�
3sequential_54/lstm_164/while/lstm_cell_44/Sigmoid_2Sigmoid8sequential_54/lstm_164/while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
�
0sequential_54/lstm_164/while/lstm_cell_44/Relu_1Relu3sequential_54/lstm_164/while/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_54/lstm_164/while/lstm_cell_44/mul_2Mul7sequential_54/lstm_164/while/lstm_cell_44/Sigmoid_2:y:0>sequential_54/lstm_164/while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Asequential_54/lstm_164/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_54_lstm_164_while_placeholder_1(sequential_54_lstm_164_while_placeholder3sequential_54/lstm_164/while/lstm_cell_44/mul_2:z:0*
_output_shapes
: *
element_dtype0:���d
"sequential_54/lstm_164/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
 sequential_54/lstm_164/while/addAddV2(sequential_54_lstm_164_while_placeholder+sequential_54/lstm_164/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_54/lstm_164/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
"sequential_54/lstm_164/while/add_1AddV2Fsequential_54_lstm_164_while_sequential_54_lstm_164_while_loop_counter-sequential_54/lstm_164/while/add_1/y:output:0*
T0*
_output_shapes
: �
%sequential_54/lstm_164/while/IdentityIdentity&sequential_54/lstm_164/while/add_1:z:0"^sequential_54/lstm_164/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_164/while/Identity_1IdentityLsequential_54_lstm_164_while_sequential_54_lstm_164_while_maximum_iterations"^sequential_54/lstm_164/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_164/while/Identity_2Identity$sequential_54/lstm_164/while/add:z:0"^sequential_54/lstm_164/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_164/while/Identity_3IdentityQsequential_54/lstm_164/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_54/lstm_164/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_164/while/Identity_4Identity3sequential_54/lstm_164/while/lstm_cell_44/mul_2:z:0"^sequential_54/lstm_164/while/NoOp*
T0*'
_output_shapes
:���������
�
'sequential_54/lstm_164/while/Identity_5Identity3sequential_54/lstm_164/while/lstm_cell_44/add_1:z:0"^sequential_54/lstm_164/while/NoOp*
T0*'
_output_shapes
:���������
�
!sequential_54/lstm_164/while/NoOpNoOpA^sequential_54/lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp@^sequential_54/lstm_164/while/lstm_cell_44/MatMul/ReadVariableOpB^sequential_54/lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_54_lstm_164_while_identity.sequential_54/lstm_164/while/Identity:output:0"[
'sequential_54_lstm_164_while_identity_10sequential_54/lstm_164/while/Identity_1:output:0"[
'sequential_54_lstm_164_while_identity_20sequential_54/lstm_164/while/Identity_2:output:0"[
'sequential_54_lstm_164_while_identity_30sequential_54/lstm_164/while/Identity_3:output:0"[
'sequential_54_lstm_164_while_identity_40sequential_54/lstm_164/while/Identity_4:output:0"[
'sequential_54_lstm_164_while_identity_50sequential_54/lstm_164/while/Identity_5:output:0"�
Isequential_54_lstm_164_while_lstm_cell_44_biasadd_readvariableop_resourceKsequential_54_lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource_0"�
Jsequential_54_lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resourceLsequential_54_lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource_0"�
Hsequential_54_lstm_164_while_lstm_cell_44_matmul_readvariableop_resourceJsequential_54_lstm_164_while_lstm_cell_44_matmul_readvariableop_resource_0"�
Csequential_54_lstm_164_while_sequential_54_lstm_164_strided_slice_1Esequential_54_lstm_164_while_sequential_54_lstm_164_strided_slice_1_0"�
sequential_54_lstm_164_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_164_tensorarrayunstack_tensorlistfromtensor�sequential_54_lstm_164_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_164_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
@sequential_54/lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp@sequential_54/lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp2�
?sequential_54/lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp?sequential_54/lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp2�
Asequential_54/lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOpAsequential_54/lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_267716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	d�H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	2�C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	d�F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	2�A
2while_lstm_cell_43_biasadd_readvariableop_resource:	���)while/lstm_cell_43/BiasAdd/ReadVariableOp�(while/lstm_cell_43/MatMul/ReadVariableOp�*while/lstm_cell_43/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitz
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2t
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2q
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2y
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_266664

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

�
lstm_164_while_cond_269101.
*lstm_164_while_lstm_164_while_loop_counter4
0lstm_164_while_lstm_164_while_maximum_iterations
lstm_164_while_placeholder 
lstm_164_while_placeholder_1 
lstm_164_while_placeholder_2 
lstm_164_while_placeholder_30
,lstm_164_while_less_lstm_164_strided_slice_1F
Blstm_164_while_lstm_164_while_cond_269101___redundant_placeholder0F
Blstm_164_while_lstm_164_while_cond_269101___redundant_placeholder1F
Blstm_164_while_lstm_164_while_cond_269101___redundant_placeholder2F
Blstm_164_while_lstm_164_while_cond_269101___redundant_placeholder3
lstm_164_while_identity
�
lstm_164/while/LessLesslstm_164_while_placeholder,lstm_164_while_less_lstm_164_strided_slice_1*
T0*
_output_shapes
: ]
lstm_164/while/IdentityIdentitylstm_164/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_164_while_identity lstm_164/while/Identity:output:0*(
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
�7
�
while_body_271240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_44_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_44_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_44_matmul_readvariableop_resource:2(E
3while_lstm_cell_44_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_44_biasadd_readvariableop_resource:(��)while/lstm_cell_44/BiasAdd/ReadVariableOp�(while/lstm_cell_44/MatMul/ReadVariableOp�*while/lstm_cell_44/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_162_while_cond_268823.
*lstm_162_while_lstm_162_while_loop_counter4
0lstm_162_while_lstm_162_while_maximum_iterations
lstm_162_while_placeholder 
lstm_162_while_placeholder_1 
lstm_162_while_placeholder_2 
lstm_162_while_placeholder_30
,lstm_162_while_less_lstm_162_strided_slice_1F
Blstm_162_while_lstm_162_while_cond_268823___redundant_placeholder0F
Blstm_162_while_lstm_162_while_cond_268823___redundant_placeholder1F
Blstm_162_while_lstm_162_while_cond_268823___redundant_placeholder2F
Blstm_162_while_lstm_162_while_cond_268823___redundant_placeholder3
lstm_162_while_identity
�
lstm_162/while/LessLesslstm_162_while_placeholder,lstm_162_while_less_lstm_162_strided_slice_1*
T0*
_output_shapes
: ]
lstm_162/while/IdentityIdentitylstm_162/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_162_while_identity lstm_162/while/Identity:output:0*(
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
while_body_270481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	d�H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	2�C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	d�F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	2�A
2while_lstm_cell_43_biasadd_readvariableop_resource:	���)while/lstm_cell_43/BiasAdd/ReadVariableOp�(while/lstm_cell_43/MatMul/ReadVariableOp�*while/lstm_cell_43/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitz
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2t
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2q
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2y
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�J
�
D__inference_lstm_162_layer_call_and_return_conditional_losses_270092

inputs>
+lstm_cell_42_matmul_readvariableop_resource:	�@
-lstm_cell_42_matmul_1_readvariableop_resource:	d�;
,lstm_cell_42_biasadd_readvariableop_resource:	�
identity��#lstm_cell_42/BiasAdd/ReadVariableOp�"lstm_cell_42/MatMul/ReadVariableOp�$lstm_cell_42/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitn
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������dw
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dh
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d{
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������de
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
bodyR
while_body_270008*
condR
while_cond_270007*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_268246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_268246___redundant_placeholder04
0while_while_cond_268246___redundant_placeholder14
0while_while_cond_268246___redundant_placeholder24
0while_while_cond_268246___redundant_placeholder3
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
)__inference_dense_54_layer_call_fn_271476

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
GPU 2J 8� *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_267968o
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
�
D__inference_lstm_163_layer_call_and_return_conditional_losses_266951

inputs&
lstm_cell_43_266869:	d�&
lstm_cell_43_266871:	2�"
lstm_cell_43_266873:	�
identity��$lstm_cell_43/StatefulPartitionedCall�while;
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
$lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_43_266869lstm_cell_43_266871lstm_cell_43_266873*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_266868n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_43_266869lstm_cell_43_266871lstm_cell_43_266873*
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
bodyR
while_body_266882*
condR
while_cond_266881*K
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
 :������������������2u
NoOpNoOp%^lstm_cell_43/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_43/StatefulPartitionedCall$lstm_cell_43/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_42_layer_call_fn_271503

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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_266518o
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
�J
�
D__inference_lstm_163_layer_call_and_return_conditional_losses_270565
inputs_0>
+lstm_cell_43_matmul_readvariableop_resource:	d�@
-lstm_cell_43_matmul_1_readvariableop_resource:	2�;
,lstm_cell_43_biasadd_readvariableop_resource:	�
identity��#lstm_cell_43/BiasAdd/ReadVariableOp�"lstm_cell_43/MatMul/ReadVariableOp�$lstm_cell_43/MatMul_1/ReadVariableOp�while=
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitn
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2w
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2h
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2{
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2e
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
bodyR
while_body_270481*
condR
while_cond_270480*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
)__inference_lstm_162_layer_call_fn_269641
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_266792|
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
�J
�
D__inference_lstm_163_layer_call_and_return_conditional_losses_268331

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	d�@
-lstm_cell_43_matmul_1_readvariableop_resource:	2�;
,lstm_cell_43_biasadd_readvariableop_resource:	�
identity��#lstm_cell_43/BiasAdd/ReadVariableOp�"lstm_cell_43/MatMul/ReadVariableOp�$lstm_cell_43/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitn
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2w
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2h
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2{
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2e
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
bodyR
while_body_268247*
condR
while_cond_268246*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�"
�
while_body_266532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_42_266556_0:	�.
while_lstm_cell_42_266558_0:	d�*
while_lstm_cell_42_266560_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_42_266556:	�,
while_lstm_cell_42_266558:	d�(
while_lstm_cell_42_266560:	���*while/lstm_cell_42/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_42_266556_0while_lstm_cell_42_266558_0while_lstm_cell_42_266560_0*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_266518�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_42/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_42/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity3while/lstm_cell_42/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dy

while/NoOpNoOp+^while/lstm_cell_42/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_42_266556while_lstm_cell_42_266556_0"8
while_lstm_cell_42_266558while_lstm_cell_42_266558_0"8
while_lstm_cell_42_266560while_lstm_cell_42_266560_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_42/StatefulPartitionedCall*while/lstm_cell_42/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_271748

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
while_cond_267072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_267072___redundant_placeholder04
0while_while_cond_267072___redundant_placeholder14
0while_while_cond_267072___redundant_placeholder24
0while_while_cond_267072___redundant_placeholder3
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
while_cond_270150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_270150___redundant_placeholder04
0while_while_cond_270150___redundant_placeholder14
0while_while_cond_270150___redundant_placeholder24
0while_while_cond_270150___redundant_placeholder3
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
.__inference_sequential_54_layer_call_fn_268765

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
GPU 2J 8� *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_268564o
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
�B
�

lstm_164_while_body_269529.
*lstm_164_while_lstm_164_while_loop_counter4
0lstm_164_while_lstm_164_while_maximum_iterations
lstm_164_while_placeholder 
lstm_164_while_placeholder_1 
lstm_164_while_placeholder_2 
lstm_164_while_placeholder_3-
)lstm_164_while_lstm_164_strided_slice_1_0i
elstm_164_while_tensorarrayv2read_tensorlistgetitem_lstm_164_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_164_while_lstm_cell_44_matmul_readvariableop_resource_0:2(P
>lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource_0:
(K
=lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource_0:(
lstm_164_while_identity
lstm_164_while_identity_1
lstm_164_while_identity_2
lstm_164_while_identity_3
lstm_164_while_identity_4
lstm_164_while_identity_5+
'lstm_164_while_lstm_164_strided_slice_1g
clstm_164_while_tensorarrayv2read_tensorlistgetitem_lstm_164_tensorarrayunstack_tensorlistfromtensorL
:lstm_164_while_lstm_cell_44_matmul_readvariableop_resource:2(N
<lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource:
(I
;lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource:(��2lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp�1lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp�3lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp�
@lstm_164/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_164/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_164_while_tensorarrayv2read_tensorlistgetitem_lstm_164_tensorarrayunstack_tensorlistfromtensor_0lstm_164_while_placeholderIlstm_164/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
1lstm_164/while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp<lstm_164_while_lstm_cell_44_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
"lstm_164/while/lstm_cell_44/MatMulMatMul9lstm_164/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
3lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp>lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
$lstm_164/while/lstm_cell_44/MatMul_1MatMullstm_164_while_placeholder_2;lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_164/while/lstm_cell_44/addAddV2,lstm_164/while/lstm_cell_44/MatMul:product:0.lstm_164/while/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
2lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp=lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
#lstm_164/while/lstm_cell_44/BiasAddBiasAdd#lstm_164/while/lstm_cell_44/add:z:0:lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(m
+lstm_164/while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_164/while/lstm_cell_44/splitSplit4lstm_164/while/lstm_cell_44/split/split_dim:output:0,lstm_164/while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
#lstm_164/while/lstm_cell_44/SigmoidSigmoid*lstm_164/while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
�
%lstm_164/while/lstm_cell_44/Sigmoid_1Sigmoid*lstm_164/while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_164/while/lstm_cell_44/mulMul)lstm_164/while/lstm_cell_44/Sigmoid_1:y:0lstm_164_while_placeholder_3*
T0*'
_output_shapes
:���������
�
 lstm_164/while/lstm_cell_44/ReluRelu*lstm_164/while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
!lstm_164/while/lstm_cell_44/mul_1Mul'lstm_164/while/lstm_cell_44/Sigmoid:y:0.lstm_164/while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
!lstm_164/while/lstm_cell_44/add_1AddV2#lstm_164/while/lstm_cell_44/mul:z:0%lstm_164/while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
�
%lstm_164/while/lstm_cell_44/Sigmoid_2Sigmoid*lstm_164/while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
�
"lstm_164/while/lstm_cell_44/Relu_1Relu%lstm_164/while/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
!lstm_164/while/lstm_cell_44/mul_2Mul)lstm_164/while/lstm_cell_44/Sigmoid_2:y:00lstm_164/while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_164/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_164_while_placeholder_1lstm_164_while_placeholder%lstm_164/while/lstm_cell_44/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_164/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_164/while/addAddV2lstm_164_while_placeholderlstm_164/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_164/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_164/while/add_1AddV2*lstm_164_while_lstm_164_while_loop_counterlstm_164/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_164/while/IdentityIdentitylstm_164/while/add_1:z:0^lstm_164/while/NoOp*
T0*
_output_shapes
: �
lstm_164/while/Identity_1Identity0lstm_164_while_lstm_164_while_maximum_iterations^lstm_164/while/NoOp*
T0*
_output_shapes
: t
lstm_164/while/Identity_2Identitylstm_164/while/add:z:0^lstm_164/while/NoOp*
T0*
_output_shapes
: �
lstm_164/while/Identity_3IdentityClstm_164/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_164/while/NoOp*
T0*
_output_shapes
: �
lstm_164/while/Identity_4Identity%lstm_164/while/lstm_cell_44/mul_2:z:0^lstm_164/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_164/while/Identity_5Identity%lstm_164/while/lstm_cell_44/add_1:z:0^lstm_164/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_164/while/NoOpNoOp3^lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp2^lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp4^lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_164_while_identity lstm_164/while/Identity:output:0"?
lstm_164_while_identity_1"lstm_164/while/Identity_1:output:0"?
lstm_164_while_identity_2"lstm_164/while/Identity_2:output:0"?
lstm_164_while_identity_3"lstm_164/while/Identity_3:output:0"?
lstm_164_while_identity_4"lstm_164/while/Identity_4:output:0"?
lstm_164_while_identity_5"lstm_164/while/Identity_5:output:0"T
'lstm_164_while_lstm_164_strided_slice_1)lstm_164_while_lstm_164_strided_slice_1_0"|
;lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource=lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource_0"~
<lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource>lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource_0"z
:lstm_164_while_lstm_cell_44_matmul_readvariableop_resource<lstm_164_while_lstm_cell_44_matmul_readvariableop_resource_0"�
clstm_164_while_tensorarrayv2read_tensorlistgetitem_lstm_164_tensorarrayunstack_tensorlistfromtensorelstm_164_while_tensorarrayv2read_tensorlistgetitem_lstm_164_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2h
2lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp2lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp2f
1lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp1lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp2j
3lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp3lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_266518

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
�
�
while_cond_270953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_270953___redundant_placeholder04
0while_while_cond_270953___redundant_placeholder14
0while_while_cond_270953___redundant_placeholder24
0while_while_cond_270953___redundant_placeholder3
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
while_cond_267231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_267231___redundant_placeholder04
0while_while_cond_267231___redundant_placeholder14
0while_while_cond_267231___redundant_placeholder24
0while_while_cond_267231___redundant_placeholder3
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

�
$__inference_signature_wrapper_268711
lstm_162_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_162_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8� **
f%R#
!__inference__wrapped_model_266451o
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
_user_specified_namelstm_162_input
�8
�
D__inference_lstm_162_layer_call_and_return_conditional_losses_266601

inputs&
lstm_cell_42_266519:	�&
lstm_cell_42_266521:	d�"
lstm_cell_42_266523:	�
identity��$lstm_cell_42/StatefulPartitionedCall�while;
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
$lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_42_266519lstm_cell_42_266521lstm_cell_42_266523*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_266518n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_42_266519lstm_cell_42_266521lstm_cell_42_266523*
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
bodyR
while_body_266532*
condR
while_cond_266531*K
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
 :������������������du
NoOpNoOp%^lstm_cell_42/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_42/StatefulPartitionedCall$lstm_cell_42/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�8
�
D__inference_lstm_163_layer_call_and_return_conditional_losses_267142

inputs&
lstm_cell_43_267060:	d�&
lstm_cell_43_267062:	2�"
lstm_cell_43_267064:	�
identity��$lstm_cell_43/StatefulPartitionedCall�while;
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
$lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_43_267060lstm_cell_43_267062lstm_cell_43_267064*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_267014n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_43_267060lstm_cell_43_267062lstm_cell_43_267064*
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
bodyR
while_body_267073*
condR
while_cond_267072*K
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
 :������������������2u
NoOpNoOp%^lstm_cell_43/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_43/StatefulPartitionedCall$lstm_cell_43/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�J
�
D__inference_lstm_164_layer_call_and_return_conditional_losses_271467

inputs=
+lstm_cell_44_matmul_readvariableop_resource:2(?
-lstm_cell_44_matmul_1_readvariableop_resource:
(:
,lstm_cell_44_biasadd_readvariableop_resource:(
identity��#lstm_cell_44/BiasAdd/ReadVariableOp�"lstm_cell_44/MatMul/ReadVariableOp�$lstm_cell_44/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_271383*
condR
while_cond_271382*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�"
�
while_body_266723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_42_266747_0:	�.
while_lstm_cell_42_266749_0:	d�*
while_lstm_cell_42_266751_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_42_266747:	�,
while_lstm_cell_42_266749:	d�(
while_lstm_cell_42_266751:	���*while/lstm_cell_42/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_42_266747_0while_lstm_cell_42_266749_0while_lstm_cell_42_266751_0*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_266664�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_42/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_42/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity3while/lstm_cell_42/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dy

while/NoOpNoOp+^while/lstm_cell_42/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_42_266747while_lstm_cell_42_266747_0"8
while_lstm_cell_42_266749while_lstm_cell_42_266749_0"8
while_lstm_cell_42_266751while_lstm_cell_42_266751_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_42/StatefulPartitionedCall*while/lstm_cell_42/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_44_layer_call_fn_271716

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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_267364o
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
�8
�
while_body_270624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	d�H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	2�C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	d�F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	2�A
2while_lstm_cell_43_biasadd_readvariableop_resource:	���)while/lstm_cell_43/BiasAdd/ReadVariableOp�(while/lstm_cell_43/MatMul/ReadVariableOp�*while/lstm_cell_43/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitz
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2t
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2q
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2y
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_dense_54_layer_call_and_return_conditional_losses_267968

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
�8
�
while_body_269865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	d�C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	�F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	d�A
2while_lstm_cell_42_biasadd_readvariableop_resource:	���)while/lstm_cell_42/BiasAdd/ReadVariableOp�(while/lstm_cell_42/MatMul/ReadVariableOp�*while/lstm_cell_42/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitz
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dt
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������dq
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dy
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_267218

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
while_cond_270007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_270007___redundant_placeholder04
0while_while_cond_270007___redundant_placeholder14
0while_while_cond_270007___redundant_placeholder24
0while_while_cond_270007___redundant_placeholder3
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_270422
inputs_0>
+lstm_cell_43_matmul_readvariableop_resource:	d�@
-lstm_cell_43_matmul_1_readvariableop_resource:	2�;
,lstm_cell_43_biasadd_readvariableop_resource:	�
identity��#lstm_cell_43/BiasAdd/ReadVariableOp�"lstm_cell_43/MatMul/ReadVariableOp�$lstm_cell_43/MatMul_1/ReadVariableOp�while=
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitn
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2w
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2h
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2{
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2e
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
bodyR
while_body_270338*
condR
while_cond_270337*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
(sequential_54_lstm_163_while_cond_266221J
Fsequential_54_lstm_163_while_sequential_54_lstm_163_while_loop_counterP
Lsequential_54_lstm_163_while_sequential_54_lstm_163_while_maximum_iterations,
(sequential_54_lstm_163_while_placeholder.
*sequential_54_lstm_163_while_placeholder_1.
*sequential_54_lstm_163_while_placeholder_2.
*sequential_54_lstm_163_while_placeholder_3L
Hsequential_54_lstm_163_while_less_sequential_54_lstm_163_strided_slice_1b
^sequential_54_lstm_163_while_sequential_54_lstm_163_while_cond_266221___redundant_placeholder0b
^sequential_54_lstm_163_while_sequential_54_lstm_163_while_cond_266221___redundant_placeholder1b
^sequential_54_lstm_163_while_sequential_54_lstm_163_while_cond_266221___redundant_placeholder2b
^sequential_54_lstm_163_while_sequential_54_lstm_163_while_cond_266221___redundant_placeholder3)
%sequential_54_lstm_163_while_identity
�
!sequential_54/lstm_163/while/LessLess(sequential_54_lstm_163_while_placeholderHsequential_54_lstm_163_while_less_sequential_54_lstm_163_strided_slice_1*
T0*
_output_shapes
: y
%sequential_54/lstm_163/while/IdentityIdentity%sequential_54/lstm_163/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_54_lstm_163_while_identity.sequential_54/lstm_163/while/Identity:output:0*(
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_269806
inputs_0>
+lstm_cell_42_matmul_readvariableop_resource:	�@
-lstm_cell_42_matmul_1_readvariableop_resource:	d�;
,lstm_cell_42_biasadd_readvariableop_resource:	�
identity��#lstm_cell_42/BiasAdd/ReadVariableOp�"lstm_cell_42/MatMul/ReadVariableOp�$lstm_cell_42/MatMul_1/ReadVariableOp�while=
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitn
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������dw
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dh
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d{
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������de
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
bodyR
while_body_269722*
condR
while_cond_269721*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�8
�
D__inference_lstm_164_layer_call_and_return_conditional_losses_267492

inputs%
lstm_cell_44_267410:2(%
lstm_cell_44_267412:
(!
lstm_cell_44_267414:(
identity��$lstm_cell_44/StatefulPartitionedCall�while;
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
$lstm_cell_44/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_44_267410lstm_cell_44_267412lstm_cell_44_267414*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_267364n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_44_267410lstm_cell_44_267412lstm_cell_44_267414*
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
bodyR
while_body_267423*
condR
while_cond_267422*K
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
u
NoOpNoOp%^lstm_cell_44/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_44/StatefulPartitionedCall$lstm_cell_44/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
while_cond_270766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_270766___redundant_placeholder04
0while_while_cond_270766___redundant_placeholder14
0while_while_cond_270766___redundant_placeholder24
0while_while_cond_270766___redundant_placeholder3
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
�

�
lstm_163_while_cond_269389.
*lstm_163_while_lstm_163_while_loop_counter4
0lstm_163_while_lstm_163_while_maximum_iterations
lstm_163_while_placeholder 
lstm_163_while_placeholder_1 
lstm_163_while_placeholder_2 
lstm_163_while_placeholder_30
,lstm_163_while_less_lstm_163_strided_slice_1F
Blstm_163_while_lstm_163_while_cond_269389___redundant_placeholder0F
Blstm_163_while_lstm_163_while_cond_269389___redundant_placeholder1F
Blstm_163_while_lstm_163_while_cond_269389___redundant_placeholder2F
Blstm_163_while_lstm_163_while_cond_269389___redundant_placeholder3
lstm_163_while_identity
�
lstm_163/while/LessLesslstm_163_while_placeholder,lstm_163_while_less_lstm_163_strided_slice_1*
T0*
_output_shapes
: ]
lstm_163/while/IdentityIdentitylstm_163/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_163_while_identity lstm_163/while/Identity:output:0*(
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_266868

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
�
�
I__inference_sequential_54_layer_call_and_return_conditional_losses_267975

inputs"
lstm_162_267651:	�"
lstm_162_267653:	d�
lstm_162_267655:	�"
lstm_163_267801:	d�"
lstm_163_267803:	2�
lstm_163_267805:	�!
lstm_164_267951:2(!
lstm_164_267953:
(
lstm_164_267955:(!
dense_54_267969:

dense_54_267971:
identity�� dense_54/StatefulPartitionedCall� lstm_162/StatefulPartitionedCall� lstm_163/StatefulPartitionedCall� lstm_164/StatefulPartitionedCall�
 lstm_162/StatefulPartitionedCallStatefulPartitionedCallinputslstm_162_267651lstm_162_267653lstm_162_267655*
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_267650�
 lstm_163/StatefulPartitionedCallStatefulPartitionedCall)lstm_162/StatefulPartitionedCall:output:0lstm_163_267801lstm_163_267803lstm_163_267805*
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_267800�
 lstm_164/StatefulPartitionedCallStatefulPartitionedCall)lstm_163/StatefulPartitionedCall:output:0lstm_164_267951lstm_164_267953lstm_164_267955*
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_267950�
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)lstm_164/StatefulPartitionedCall:output:0dense_54_267969dense_54_267971*
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
GPU 2J 8� *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_267968x
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_54/StatefulPartitionedCall!^lstm_162/StatefulPartitionedCall!^lstm_163/StatefulPartitionedCall!^lstm_164/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 lstm_162/StatefulPartitionedCall lstm_162/StatefulPartitionedCall2D
 lstm_163/StatefulPartitionedCall lstm_163/StatefulPartitionedCall2D
 lstm_164/StatefulPartitionedCall lstm_164/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�B
�

lstm_164_while_body_269102.
*lstm_164_while_lstm_164_while_loop_counter4
0lstm_164_while_lstm_164_while_maximum_iterations
lstm_164_while_placeholder 
lstm_164_while_placeholder_1 
lstm_164_while_placeholder_2 
lstm_164_while_placeholder_3-
)lstm_164_while_lstm_164_strided_slice_1_0i
elstm_164_while_tensorarrayv2read_tensorlistgetitem_lstm_164_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_164_while_lstm_cell_44_matmul_readvariableop_resource_0:2(P
>lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource_0:
(K
=lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource_0:(
lstm_164_while_identity
lstm_164_while_identity_1
lstm_164_while_identity_2
lstm_164_while_identity_3
lstm_164_while_identity_4
lstm_164_while_identity_5+
'lstm_164_while_lstm_164_strided_slice_1g
clstm_164_while_tensorarrayv2read_tensorlistgetitem_lstm_164_tensorarrayunstack_tensorlistfromtensorL
:lstm_164_while_lstm_cell_44_matmul_readvariableop_resource:2(N
<lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource:
(I
;lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource:(��2lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp�1lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp�3lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp�
@lstm_164/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_164/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_164_while_tensorarrayv2read_tensorlistgetitem_lstm_164_tensorarrayunstack_tensorlistfromtensor_0lstm_164_while_placeholderIlstm_164/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
1lstm_164/while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp<lstm_164_while_lstm_cell_44_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
"lstm_164/while/lstm_cell_44/MatMulMatMul9lstm_164/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
3lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp>lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
$lstm_164/while/lstm_cell_44/MatMul_1MatMullstm_164_while_placeholder_2;lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_164/while/lstm_cell_44/addAddV2,lstm_164/while/lstm_cell_44/MatMul:product:0.lstm_164/while/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
2lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp=lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
#lstm_164/while/lstm_cell_44/BiasAddBiasAdd#lstm_164/while/lstm_cell_44/add:z:0:lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(m
+lstm_164/while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_164/while/lstm_cell_44/splitSplit4lstm_164/while/lstm_cell_44/split/split_dim:output:0,lstm_164/while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
#lstm_164/while/lstm_cell_44/SigmoidSigmoid*lstm_164/while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
�
%lstm_164/while/lstm_cell_44/Sigmoid_1Sigmoid*lstm_164/while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_164/while/lstm_cell_44/mulMul)lstm_164/while/lstm_cell_44/Sigmoid_1:y:0lstm_164_while_placeholder_3*
T0*'
_output_shapes
:���������
�
 lstm_164/while/lstm_cell_44/ReluRelu*lstm_164/while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
!lstm_164/while/lstm_cell_44/mul_1Mul'lstm_164/while/lstm_cell_44/Sigmoid:y:0.lstm_164/while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
!lstm_164/while/lstm_cell_44/add_1AddV2#lstm_164/while/lstm_cell_44/mul:z:0%lstm_164/while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
�
%lstm_164/while/lstm_cell_44/Sigmoid_2Sigmoid*lstm_164/while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
�
"lstm_164/while/lstm_cell_44/Relu_1Relu%lstm_164/while/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
!lstm_164/while/lstm_cell_44/mul_2Mul)lstm_164/while/lstm_cell_44/Sigmoid_2:y:00lstm_164/while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_164/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_164_while_placeholder_1lstm_164_while_placeholder%lstm_164/while/lstm_cell_44/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_164/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_164/while/addAddV2lstm_164_while_placeholderlstm_164/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_164/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_164/while/add_1AddV2*lstm_164_while_lstm_164_while_loop_counterlstm_164/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_164/while/IdentityIdentitylstm_164/while/add_1:z:0^lstm_164/while/NoOp*
T0*
_output_shapes
: �
lstm_164/while/Identity_1Identity0lstm_164_while_lstm_164_while_maximum_iterations^lstm_164/while/NoOp*
T0*
_output_shapes
: t
lstm_164/while/Identity_2Identitylstm_164/while/add:z:0^lstm_164/while/NoOp*
T0*
_output_shapes
: �
lstm_164/while/Identity_3IdentityClstm_164/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_164/while/NoOp*
T0*
_output_shapes
: �
lstm_164/while/Identity_4Identity%lstm_164/while/lstm_cell_44/mul_2:z:0^lstm_164/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_164/while/Identity_5Identity%lstm_164/while/lstm_cell_44/add_1:z:0^lstm_164/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_164/while/NoOpNoOp3^lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp2^lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp4^lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_164_while_identity lstm_164/while/Identity:output:0"?
lstm_164_while_identity_1"lstm_164/while/Identity_1:output:0"?
lstm_164_while_identity_2"lstm_164/while/Identity_2:output:0"?
lstm_164_while_identity_3"lstm_164/while/Identity_3:output:0"?
lstm_164_while_identity_4"lstm_164/while/Identity_4:output:0"?
lstm_164_while_identity_5"lstm_164/while/Identity_5:output:0"T
'lstm_164_while_lstm_164_strided_slice_1)lstm_164_while_lstm_164_strided_slice_1_0"|
;lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource=lstm_164_while_lstm_cell_44_biasadd_readvariableop_resource_0"~
<lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource>lstm_164_while_lstm_cell_44_matmul_1_readvariableop_resource_0"z
:lstm_164_while_lstm_cell_44_matmul_readvariableop_resource<lstm_164_while_lstm_cell_44_matmul_readvariableop_resource_0"�
clstm_164_while_tensorarrayv2read_tensorlistgetitem_lstm_164_tensorarrayunstack_tensorlistfromtensorelstm_164_while_tensorarrayv2read_tensorlistgetitem_lstm_164_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2h
2lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp2lstm_164/while/lstm_cell_44/BiasAdd/ReadVariableOp2f
1lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp1lstm_164/while/lstm_cell_44/MatMul/ReadVariableOp2j
3lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp3lstm_164/while/lstm_cell_44/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_268496

inputs>
+lstm_cell_42_matmul_readvariableop_resource:	�@
-lstm_cell_42_matmul_1_readvariableop_resource:	d�;
,lstm_cell_42_biasadd_readvariableop_resource:	�
identity��#lstm_cell_42/BiasAdd/ReadVariableOp�"lstm_cell_42/MatMul/ReadVariableOp�$lstm_cell_42/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitn
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������dw
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dh
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d{
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������de
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
bodyR
while_body_268412*
condR
while_cond_268411*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_267715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_267715___redundant_placeholder04
0while_while_cond_267715___redundant_placeholder14
0while_while_cond_267715___redundant_placeholder24
0while_while_cond_267715___redundant_placeholder3
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
while_body_268247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	d�H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	2�C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	d�F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	2�A
2while_lstm_cell_43_biasadd_readvariableop_resource:	���)while/lstm_cell_43/BiasAdd/ReadVariableOp�(while/lstm_cell_43/MatMul/ReadVariableOp�*while/lstm_cell_43/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitz
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2t
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2|
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2q
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2y
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_271552

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
�
D__inference_lstm_164_layer_call_and_return_conditional_losses_267301

inputs%
lstm_cell_44_267219:2(%
lstm_cell_44_267221:
(!
lstm_cell_44_267223:(
identity��$lstm_cell_44/StatefulPartitionedCall�while;
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
$lstm_cell_44/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_44_267219lstm_cell_44_267221lstm_cell_44_267223*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_267218n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_44_267219lstm_cell_44_267221lstm_cell_44_267223*
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
bodyR
while_body_267232*
condR
while_cond_267231*K
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
u
NoOpNoOp%^lstm_cell_44/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_44/StatefulPartitionedCall$lstm_cell_44/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
��
�
I__inference_sequential_54_layer_call_and_return_conditional_losses_269192

inputsG
4lstm_162_lstm_cell_42_matmul_readvariableop_resource:	�I
6lstm_162_lstm_cell_42_matmul_1_readvariableop_resource:	d�D
5lstm_162_lstm_cell_42_biasadd_readvariableop_resource:	�G
4lstm_163_lstm_cell_43_matmul_readvariableop_resource:	d�I
6lstm_163_lstm_cell_43_matmul_1_readvariableop_resource:	2�D
5lstm_163_lstm_cell_43_biasadd_readvariableop_resource:	�F
4lstm_164_lstm_cell_44_matmul_readvariableop_resource:2(H
6lstm_164_lstm_cell_44_matmul_1_readvariableop_resource:
(C
5lstm_164_lstm_cell_44_biasadd_readvariableop_resource:(9
'dense_54_matmul_readvariableop_resource:
6
(dense_54_biasadd_readvariableop_resource:
identity��dense_54/BiasAdd/ReadVariableOp�dense_54/MatMul/ReadVariableOp�,lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp�+lstm_162/lstm_cell_42/MatMul/ReadVariableOp�-lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp�lstm_162/while�,lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp�+lstm_163/lstm_cell_43/MatMul/ReadVariableOp�-lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp�lstm_163/while�,lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp�+lstm_164/lstm_cell_44/MatMul/ReadVariableOp�-lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp�lstm_164/whileD
lstm_162/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_162/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_162/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_162/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_162/strided_sliceStridedSlicelstm_162/Shape:output:0%lstm_162/strided_slice/stack:output:0'lstm_162/strided_slice/stack_1:output:0'lstm_162/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_162/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_162/zeros/packedPacklstm_162/strided_slice:output:0 lstm_162/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_162/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_162/zerosFilllstm_162/zeros/packed:output:0lstm_162/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_162/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_162/zeros_1/packedPacklstm_162/strided_slice:output:0"lstm_162/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_162/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_162/zeros_1Fill lstm_162/zeros_1/packed:output:0lstm_162/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_162/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_162/transpose	Transposeinputs lstm_162/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_162/Shape_1Shapelstm_162/transpose:y:0*
T0*
_output_shapes
:h
lstm_162/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_162/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_162/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_162/strided_slice_1StridedSlicelstm_162/Shape_1:output:0'lstm_162/strided_slice_1/stack:output:0)lstm_162/strided_slice_1/stack_1:output:0)lstm_162/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_162/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_162/TensorArrayV2TensorListReserve-lstm_162/TensorArrayV2/element_shape:output:0!lstm_162/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_162/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_162/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_162/transpose:y:0Glstm_162/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_162/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_162/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_162/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_162/strided_slice_2StridedSlicelstm_162/transpose:y:0'lstm_162/strided_slice_2/stack:output:0)lstm_162/strided_slice_2/stack_1:output:0)lstm_162/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+lstm_162/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp4lstm_162_lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_162/lstm_cell_42/MatMulMatMul!lstm_162/strided_slice_2:output:03lstm_162/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_162/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp6lstm_162_lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_162/lstm_cell_42/MatMul_1MatMullstm_162/zeros:output:05lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_162/lstm_cell_42/addAddV2&lstm_162/lstm_cell_42/MatMul:product:0(lstm_162/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_162/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp5lstm_162_lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_162/lstm_cell_42/BiasAddBiasAddlstm_162/lstm_cell_42/add:z:04lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_162/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_162/lstm_cell_42/splitSplit.lstm_162/lstm_cell_42/split/split_dim:output:0&lstm_162/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_162/lstm_cell_42/SigmoidSigmoid$lstm_162/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/Sigmoid_1Sigmoid$lstm_162/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/mulMul#lstm_162/lstm_cell_42/Sigmoid_1:y:0lstm_162/zeros_1:output:0*
T0*'
_output_shapes
:���������dz
lstm_162/lstm_cell_42/ReluRelu$lstm_162/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/mul_1Mul!lstm_162/lstm_cell_42/Sigmoid:y:0(lstm_162/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/add_1AddV2lstm_162/lstm_cell_42/mul:z:0lstm_162/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/Sigmoid_2Sigmoid$lstm_162/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������dw
lstm_162/lstm_cell_42/Relu_1Relulstm_162/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/mul_2Mul#lstm_162/lstm_cell_42/Sigmoid_2:y:0*lstm_162/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_162/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_162/TensorArrayV2_1TensorListReserve/lstm_162/TensorArrayV2_1/element_shape:output:0!lstm_162/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_162/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_162/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_162/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_162/whileWhile$lstm_162/while/loop_counter:output:0*lstm_162/while/maximum_iterations:output:0lstm_162/time:output:0!lstm_162/TensorArrayV2_1:handle:0lstm_162/zeros:output:0lstm_162/zeros_1:output:0!lstm_162/strided_slice_1:output:0@lstm_162/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_162_lstm_cell_42_matmul_readvariableop_resource6lstm_162_lstm_cell_42_matmul_1_readvariableop_resource5lstm_162_lstm_cell_42_biasadd_readvariableop_resource*
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
lstm_162_while_body_268824*&
condR
lstm_162_while_cond_268823*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_162/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_162/TensorArrayV2Stack/TensorListStackTensorListStacklstm_162/while:output:3Blstm_162/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_162/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_162/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_162/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_162/strided_slice_3StridedSlice4lstm_162/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_162/strided_slice_3/stack:output:0)lstm_162/strided_slice_3/stack_1:output:0)lstm_162/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_162/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_162/transpose_1	Transpose4lstm_162/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_162/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_162/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_163/ShapeShapelstm_162/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_163/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_163/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_163/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_163/strided_sliceStridedSlicelstm_163/Shape:output:0%lstm_163/strided_slice/stack:output:0'lstm_163/strided_slice/stack_1:output:0'lstm_163/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_163/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_163/zeros/packedPacklstm_163/strided_slice:output:0 lstm_163/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_163/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_163/zerosFilllstm_163/zeros/packed:output:0lstm_163/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_163/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_163/zeros_1/packedPacklstm_163/strided_slice:output:0"lstm_163/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_163/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_163/zeros_1Fill lstm_163/zeros_1/packed:output:0lstm_163/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_163/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_163/transpose	Transposelstm_162/transpose_1:y:0 lstm_163/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_163/Shape_1Shapelstm_163/transpose:y:0*
T0*
_output_shapes
:h
lstm_163/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_163/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_163/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_163/strided_slice_1StridedSlicelstm_163/Shape_1:output:0'lstm_163/strided_slice_1/stack:output:0)lstm_163/strided_slice_1/stack_1:output:0)lstm_163/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_163/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_163/TensorArrayV2TensorListReserve-lstm_163/TensorArrayV2/element_shape:output:0!lstm_163/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_163/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_163/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_163/transpose:y:0Glstm_163/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_163/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_163/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_163/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_163/strided_slice_2StridedSlicelstm_163/transpose:y:0'lstm_163/strided_slice_2/stack:output:0)lstm_163/strided_slice_2/stack_1:output:0)lstm_163/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
+lstm_163/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp4lstm_163_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_163/lstm_cell_43/MatMulMatMul!lstm_163/strided_slice_2:output:03lstm_163/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_163/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp6lstm_163_lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_163/lstm_cell_43/MatMul_1MatMullstm_163/zeros:output:05lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_163/lstm_cell_43/addAddV2&lstm_163/lstm_cell_43/MatMul:product:0(lstm_163/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_163/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp5lstm_163_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_163/lstm_cell_43/BiasAddBiasAddlstm_163/lstm_cell_43/add:z:04lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_163/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_163/lstm_cell_43/splitSplit.lstm_163/lstm_cell_43/split/split_dim:output:0&lstm_163/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_163/lstm_cell_43/SigmoidSigmoid$lstm_163/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/Sigmoid_1Sigmoid$lstm_163/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/mulMul#lstm_163/lstm_cell_43/Sigmoid_1:y:0lstm_163/zeros_1:output:0*
T0*'
_output_shapes
:���������2z
lstm_163/lstm_cell_43/ReluRelu$lstm_163/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/mul_1Mul!lstm_163/lstm_cell_43/Sigmoid:y:0(lstm_163/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/add_1AddV2lstm_163/lstm_cell_43/mul:z:0lstm_163/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/Sigmoid_2Sigmoid$lstm_163/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2w
lstm_163/lstm_cell_43/Relu_1Relulstm_163/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/mul_2Mul#lstm_163/lstm_cell_43/Sigmoid_2:y:0*lstm_163/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_163/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_163/TensorArrayV2_1TensorListReserve/lstm_163/TensorArrayV2_1/element_shape:output:0!lstm_163/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_163/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_163/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_163/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_163/whileWhile$lstm_163/while/loop_counter:output:0*lstm_163/while/maximum_iterations:output:0lstm_163/time:output:0!lstm_163/TensorArrayV2_1:handle:0lstm_163/zeros:output:0lstm_163/zeros_1:output:0!lstm_163/strided_slice_1:output:0@lstm_163/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_163_lstm_cell_43_matmul_readvariableop_resource6lstm_163_lstm_cell_43_matmul_1_readvariableop_resource5lstm_163_lstm_cell_43_biasadd_readvariableop_resource*
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
lstm_163_while_body_268963*&
condR
lstm_163_while_cond_268962*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_163/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_163/TensorArrayV2Stack/TensorListStackTensorListStacklstm_163/while:output:3Blstm_163/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_163/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_163/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_163/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_163/strided_slice_3StridedSlice4lstm_163/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_163/strided_slice_3/stack:output:0)lstm_163/strided_slice_3/stack_1:output:0)lstm_163/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_163/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_163/transpose_1	Transpose4lstm_163/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_163/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_163/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_164/ShapeShapelstm_163/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_164/strided_sliceStridedSlicelstm_164/Shape:output:0%lstm_164/strided_slice/stack:output:0'lstm_164/strided_slice/stack_1:output:0'lstm_164/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_164/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_164/zeros/packedPacklstm_164/strided_slice:output:0 lstm_164/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_164/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_164/zerosFilllstm_164/zeros/packed:output:0lstm_164/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_164/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_164/zeros_1/packedPacklstm_164/strided_slice:output:0"lstm_164/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_164/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_164/zeros_1Fill lstm_164/zeros_1/packed:output:0lstm_164/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_164/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_164/transpose	Transposelstm_163/transpose_1:y:0 lstm_164/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_164/Shape_1Shapelstm_164/transpose:y:0*
T0*
_output_shapes
:h
lstm_164/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_164/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_164/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_164/strided_slice_1StridedSlicelstm_164/Shape_1:output:0'lstm_164/strided_slice_1/stack:output:0)lstm_164/strided_slice_1/stack_1:output:0)lstm_164/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_164/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_164/TensorArrayV2TensorListReserve-lstm_164/TensorArrayV2/element_shape:output:0!lstm_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_164/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_164/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_164/transpose:y:0Glstm_164/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_164/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_164/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_164/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_164/strided_slice_2StridedSlicelstm_164/transpose:y:0'lstm_164/strided_slice_2/stack:output:0)lstm_164/strided_slice_2/stack_1:output:0)lstm_164/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
+lstm_164/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp4lstm_164_lstm_cell_44_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_164/lstm_cell_44/MatMulMatMul!lstm_164/strided_slice_2:output:03lstm_164/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-lstm_164/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp6lstm_164_lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_164/lstm_cell_44/MatMul_1MatMullstm_164/zeros:output:05lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_164/lstm_cell_44/addAddV2&lstm_164/lstm_cell_44/MatMul:product:0(lstm_164/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
,lstm_164/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp5lstm_164_lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_164/lstm_cell_44/BiasAddBiasAddlstm_164/lstm_cell_44/add:z:04lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(g
%lstm_164/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_164/lstm_cell_44/splitSplit.lstm_164/lstm_cell_44/split/split_dim:output:0&lstm_164/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_164/lstm_cell_44/SigmoidSigmoid$lstm_164/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/Sigmoid_1Sigmoid$lstm_164/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/mulMul#lstm_164/lstm_cell_44/Sigmoid_1:y:0lstm_164/zeros_1:output:0*
T0*'
_output_shapes
:���������
z
lstm_164/lstm_cell_44/ReluRelu$lstm_164/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/mul_1Mul!lstm_164/lstm_cell_44/Sigmoid:y:0(lstm_164/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/add_1AddV2lstm_164/lstm_cell_44/mul:z:0lstm_164/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/Sigmoid_2Sigmoid$lstm_164/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
w
lstm_164/lstm_cell_44/Relu_1Relulstm_164/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/mul_2Mul#lstm_164/lstm_cell_44/Sigmoid_2:y:0*lstm_164/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_164/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_164/TensorArrayV2_1TensorListReserve/lstm_164/TensorArrayV2_1/element_shape:output:0!lstm_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_164/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_164/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_164/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_164/whileWhile$lstm_164/while/loop_counter:output:0*lstm_164/while/maximum_iterations:output:0lstm_164/time:output:0!lstm_164/TensorArrayV2_1:handle:0lstm_164/zeros:output:0lstm_164/zeros_1:output:0!lstm_164/strided_slice_1:output:0@lstm_164/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_164_lstm_cell_44_matmul_readvariableop_resource6lstm_164_lstm_cell_44_matmul_1_readvariableop_resource5lstm_164_lstm_cell_44_biasadd_readvariableop_resource*
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
lstm_164_while_body_269102*&
condR
lstm_164_while_cond_269101*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_164/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_164/TensorArrayV2Stack/TensorListStackTensorListStacklstm_164/while:output:3Blstm_164/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_164/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_164/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_164/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_164/strided_slice_3StridedSlice4lstm_164/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_164/strided_slice_3/stack:output:0)lstm_164/strided_slice_3/stack_1:output:0)lstm_164/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_164/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_164/transpose_1	Transpose4lstm_164/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_164/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_164/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_54/MatMulMatMul!lstm_164/strided_slice_3:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_54/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp-^lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp,^lstm_162/lstm_cell_42/MatMul/ReadVariableOp.^lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp^lstm_162/while-^lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp,^lstm_163/lstm_cell_43/MatMul/ReadVariableOp.^lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp^lstm_163/while-^lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp,^lstm_164/lstm_cell_44/MatMul/ReadVariableOp.^lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp^lstm_164/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2\
,lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp,lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp2Z
+lstm_162/lstm_cell_42/MatMul/ReadVariableOp+lstm_162/lstm_cell_42/MatMul/ReadVariableOp2^
-lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp-lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp2 
lstm_162/whilelstm_162/while2\
,lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp,lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp2Z
+lstm_163/lstm_cell_43/MatMul/ReadVariableOp+lstm_163/lstm_cell_43/MatMul/ReadVariableOp2^
-lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp-lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp2 
lstm_163/whilelstm_163/while2\
,lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp,lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp2Z
+lstm_164/lstm_cell_44/MatMul/ReadVariableOp+lstm_164/lstm_cell_44/MatMul/ReadVariableOp2^
-lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp-lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp2 
lstm_164/whilelstm_164/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
.__inference_sequential_54_layer_call_fn_268000
lstm_162_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_162_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8� *R
fMRK
I__inference_sequential_54_layer_call_and_return_conditional_losses_267975o
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
_user_specified_namelstm_162_input
�8
�
while_body_270151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	d�C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	�F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	d�A
2while_lstm_cell_42_biasadd_readvariableop_resource:	���)while/lstm_cell_42/BiasAdd/ReadVariableOp�(while/lstm_cell_42/MatMul/ReadVariableOp�*while/lstm_cell_42/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitz
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dt
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������dq
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dy
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_163_while_body_269390.
*lstm_163_while_lstm_163_while_loop_counter4
0lstm_163_while_lstm_163_while_maximum_iterations
lstm_163_while_placeholder 
lstm_163_while_placeholder_1 
lstm_163_while_placeholder_2 
lstm_163_while_placeholder_3-
)lstm_163_while_lstm_163_strided_slice_1_0i
elstm_163_while_tensorarrayv2read_tensorlistgetitem_lstm_163_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_163_while_lstm_cell_43_matmul_readvariableop_resource_0:	d�Q
>lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource_0:	2�L
=lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource_0:	�
lstm_163_while_identity
lstm_163_while_identity_1
lstm_163_while_identity_2
lstm_163_while_identity_3
lstm_163_while_identity_4
lstm_163_while_identity_5+
'lstm_163_while_lstm_163_strided_slice_1g
clstm_163_while_tensorarrayv2read_tensorlistgetitem_lstm_163_tensorarrayunstack_tensorlistfromtensorM
:lstm_163_while_lstm_cell_43_matmul_readvariableop_resource:	d�O
<lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource:	2�J
;lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource:	���2lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp�1lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp�3lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp�
@lstm_163/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_163/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_163_while_tensorarrayv2read_tensorlistgetitem_lstm_163_tensorarrayunstack_tensorlistfromtensor_0lstm_163_while_placeholderIlstm_163/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
1lstm_163/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp<lstm_163_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
"lstm_163/while/lstm_cell_43/MatMulMatMul9lstm_163/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp>lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
$lstm_163/while/lstm_cell_43/MatMul_1MatMullstm_163_while_placeholder_2;lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_163/while/lstm_cell_43/addAddV2,lstm_163/while/lstm_cell_43/MatMul:product:0.lstm_163/while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp=lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_163/while/lstm_cell_43/BiasAddBiasAdd#lstm_163/while/lstm_cell_43/add:z:0:lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_163/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_163/while/lstm_cell_43/splitSplit4lstm_163/while/lstm_cell_43/split/split_dim:output:0,lstm_163/while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
#lstm_163/while/lstm_cell_43/SigmoidSigmoid*lstm_163/while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2�
%lstm_163/while/lstm_cell_43/Sigmoid_1Sigmoid*lstm_163/while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_163/while/lstm_cell_43/mulMul)lstm_163/while/lstm_cell_43/Sigmoid_1:y:0lstm_163_while_placeholder_3*
T0*'
_output_shapes
:���������2�
 lstm_163/while/lstm_cell_43/ReluRelu*lstm_163/while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
!lstm_163/while/lstm_cell_43/mul_1Mul'lstm_163/while/lstm_cell_43/Sigmoid:y:0.lstm_163/while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
!lstm_163/while/lstm_cell_43/add_1AddV2#lstm_163/while/lstm_cell_43/mul:z:0%lstm_163/while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2�
%lstm_163/while/lstm_cell_43/Sigmoid_2Sigmoid*lstm_163/while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2�
"lstm_163/while/lstm_cell_43/Relu_1Relu%lstm_163/while/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
!lstm_163/while/lstm_cell_43/mul_2Mul)lstm_163/while/lstm_cell_43/Sigmoid_2:y:00lstm_163/while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_163/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_163_while_placeholder_1lstm_163_while_placeholder%lstm_163/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_163/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_163/while/addAddV2lstm_163_while_placeholderlstm_163/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_163/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_163/while/add_1AddV2*lstm_163_while_lstm_163_while_loop_counterlstm_163/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_163/while/IdentityIdentitylstm_163/while/add_1:z:0^lstm_163/while/NoOp*
T0*
_output_shapes
: �
lstm_163/while/Identity_1Identity0lstm_163_while_lstm_163_while_maximum_iterations^lstm_163/while/NoOp*
T0*
_output_shapes
: t
lstm_163/while/Identity_2Identitylstm_163/while/add:z:0^lstm_163/while/NoOp*
T0*
_output_shapes
: �
lstm_163/while/Identity_3IdentityClstm_163/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_163/while/NoOp*
T0*
_output_shapes
: �
lstm_163/while/Identity_4Identity%lstm_163/while/lstm_cell_43/mul_2:z:0^lstm_163/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_163/while/Identity_5Identity%lstm_163/while/lstm_cell_43/add_1:z:0^lstm_163/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_163/while/NoOpNoOp3^lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp2^lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp4^lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_163_while_identity lstm_163/while/Identity:output:0"?
lstm_163_while_identity_1"lstm_163/while/Identity_1:output:0"?
lstm_163_while_identity_2"lstm_163/while/Identity_2:output:0"?
lstm_163_while_identity_3"lstm_163/while/Identity_3:output:0"?
lstm_163_while_identity_4"lstm_163/while/Identity_4:output:0"?
lstm_163_while_identity_5"lstm_163/while/Identity_5:output:0"T
'lstm_163_while_lstm_163_strided_slice_1)lstm_163_while_lstm_163_strided_slice_1_0"|
;lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource=lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource_0"~
<lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource>lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource_0"z
:lstm_163_while_lstm_cell_43_matmul_readvariableop_resource<lstm_163_while_lstm_cell_43_matmul_readvariableop_resource_0"�
clstm_163_while_tensorarrayv2read_tensorlistgetitem_lstm_163_tensorarrayunstack_tensorlistfromtensorelstm_163_while_tensorarrayv2read_tensorlistgetitem_lstm_163_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2h
2lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp2lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp2f
1lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp1lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp2j
3lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp3lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�7
�
while_body_270954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_44_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_44_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_44_matmul_readvariableop_resource:2(E
3while_lstm_cell_44_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_44_biasadd_readvariableop_resource:(��)while/lstm_cell_44/BiasAdd/ReadVariableOp�(while/lstm_cell_44/MatMul/ReadVariableOp�*while/lstm_cell_44/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_43_layer_call_fn_271601

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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_266868o
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
�7
�
while_body_271097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_44_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_44_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_44_matmul_readvariableop_resource:2(E
3while_lstm_cell_44_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_44_biasadd_readvariableop_resource:(��)while/lstm_cell_44/BiasAdd/ReadVariableOp�(while/lstm_cell_44/MatMul/ReadVariableOp�*while/lstm_cell_44/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_269864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_269864___redundant_placeholder04
0while_while_cond_269864___redundant_placeholder14
0while_while_cond_269864___redundant_placeholder24
0while_while_cond_269864___redundant_placeholder3
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
�"
�
while_body_267073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_43_267097_0:	d�.
while_lstm_cell_43_267099_0:	2�*
while_lstm_cell_43_267101_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_43_267097:	d�,
while_lstm_cell_43_267099:	2�(
while_lstm_cell_43_267101:	���*while/lstm_cell_43/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
*while/lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_43_267097_0while_lstm_cell_43_267099_0while_lstm_cell_43_267101_0*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_267014�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_43/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_43/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity3while/lstm_cell_43/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2y

while/NoOpNoOp+^while/lstm_cell_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_43_267097while_lstm_cell_43_267097_0"8
while_lstm_cell_43_267099while_lstm_cell_43_267099_0"8
while_lstm_cell_43_267101while_lstm_cell_43_267101_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_43/StatefulPartitionedCall*while/lstm_cell_43/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_271650

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
�
�
"__inference__traced_restore_272053
file_prefix2
 assignvariableop_dense_54_kernel:
.
 assignvariableop_1_dense_54_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_162_lstm_cell_162_kernel:	�M
:assignvariableop_8_lstm_162_lstm_cell_162_recurrent_kernel:	d�=
.assignvariableop_9_lstm_162_lstm_cell_162_bias:	�D
1assignvariableop_10_lstm_163_lstm_cell_163_kernel:	d�N
;assignvariableop_11_lstm_163_lstm_cell_163_recurrent_kernel:	2�>
/assignvariableop_12_lstm_163_lstm_cell_163_bias:	�C
1assignvariableop_13_lstm_164_lstm_cell_164_kernel:2(M
;assignvariableop_14_lstm_164_lstm_cell_164_recurrent_kernel:
(=
/assignvariableop_15_lstm_164_lstm_cell_164_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_54_kernel_m:
6
(assignvariableop_19_adam_dense_54_bias_m:K
8assignvariableop_20_adam_lstm_162_lstm_cell_162_kernel_m:	�U
Bassignvariableop_21_adam_lstm_162_lstm_cell_162_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_162_lstm_cell_162_bias_m:	�K
8assignvariableop_23_adam_lstm_163_lstm_cell_163_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_163_lstm_cell_163_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_163_lstm_cell_163_bias_m:	�J
8assignvariableop_26_adam_lstm_164_lstm_cell_164_kernel_m:2(T
Bassignvariableop_27_adam_lstm_164_lstm_cell_164_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_164_lstm_cell_164_bias_m:(<
*assignvariableop_29_adam_dense_54_kernel_v:
6
(assignvariableop_30_adam_dense_54_bias_v:K
8assignvariableop_31_adam_lstm_162_lstm_cell_162_kernel_v:	�U
Bassignvariableop_32_adam_lstm_162_lstm_cell_162_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_162_lstm_cell_162_bias_v:	�K
8assignvariableop_34_adam_lstm_163_lstm_cell_163_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_163_lstm_cell_163_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_163_lstm_cell_163_bias_v:	�J
8assignvariableop_37_adam_lstm_164_lstm_cell_164_kernel_v:2(T
Bassignvariableop_38_adam_lstm_164_lstm_cell_164_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_164_lstm_cell_164_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_54_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_54_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_162_lstm_cell_162_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_162_lstm_cell_162_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_162_lstm_cell_162_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_163_lstm_cell_163_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_163_lstm_cell_163_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_163_lstm_cell_163_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_164_lstm_cell_164_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_164_lstm_cell_164_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_164_lstm_cell_164_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_54_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_54_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_162_lstm_cell_162_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_162_lstm_cell_162_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_162_lstm_cell_162_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_163_lstm_cell_163_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_163_lstm_cell_163_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_163_lstm_cell_163_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_164_lstm_cell_164_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_164_lstm_cell_164_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_164_lstm_cell_164_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_54_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_54_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_162_lstm_cell_162_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_162_lstm_cell_162_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_162_lstm_cell_162_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_163_lstm_cell_163_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_163_lstm_cell_163_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_163_lstm_cell_163_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_164_lstm_cell_164_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_164_lstm_cell_164_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_164_lstm_cell_164_bias_vIdentity_39:output:0"/device:CPU:0*
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
�8
�
while_body_267566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	d�C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	�F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	d�A
2while_lstm_cell_42_biasadd_readvariableop_resource:	���)while/lstm_cell_42/BiasAdd/ReadVariableOp�(while/lstm_cell_42/MatMul/ReadVariableOp�*while/lstm_cell_42/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitz
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dt
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������dq
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dy
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�7
�
while_body_267866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_44_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_44_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_44_matmul_readvariableop_resource:2(E
3while_lstm_cell_44_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_44_biasadd_readvariableop_resource:(��)while/lstm_cell_44/BiasAdd/ReadVariableOp�(while/lstm_cell_44/MatMul/ReadVariableOp�*while/lstm_cell_44/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_267650

inputs>
+lstm_cell_42_matmul_readvariableop_resource:	�@
-lstm_cell_42_matmul_1_readvariableop_resource:	d�;
,lstm_cell_42_biasadd_readvariableop_resource:	�
identity��#lstm_cell_42/BiasAdd/ReadVariableOp�"lstm_cell_42/MatMul/ReadVariableOp�$lstm_cell_42/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitn
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������dw
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dh
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d{
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������de
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
bodyR
while_body_267566*
condR
while_cond_267565*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_268411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_268411___redundant_placeholder04
0while_while_cond_268411___redundant_placeholder14
0while_while_cond_268411___redundant_placeholder24
0while_while_cond_268411___redundant_placeholder3
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_271682

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

�
lstm_163_while_cond_268962.
*lstm_163_while_lstm_163_while_loop_counter4
0lstm_163_while_lstm_163_while_maximum_iterations
lstm_163_while_placeholder 
lstm_163_while_placeholder_1 
lstm_163_while_placeholder_2 
lstm_163_while_placeholder_30
,lstm_163_while_less_lstm_163_strided_slice_1F
Blstm_163_while_lstm_163_while_cond_268962___redundant_placeholder0F
Blstm_163_while_lstm_163_while_cond_268962___redundant_placeholder1F
Blstm_163_while_lstm_163_while_cond_268962___redundant_placeholder2F
Blstm_163_while_lstm_163_while_cond_268962___redundant_placeholder3
lstm_163_while_identity
�
lstm_163/while/LessLesslstm_163_while_placeholder,lstm_163_while_less_lstm_163_strided_slice_1*
T0*
_output_shapes
: ]
lstm_163/while/IdentityIdentitylstm_163/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_163_while_identity lstm_163/while/Identity:output:0*(
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_266792

inputs&
lstm_cell_42_266710:	�&
lstm_cell_42_266712:	d�"
lstm_cell_42_266714:	�
identity��$lstm_cell_42/StatefulPartitionedCall�while;
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
$lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_42_266710lstm_cell_42_266712lstm_cell_42_266714*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_266664n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_42_266710lstm_cell_42_266712lstm_cell_42_266714*
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
bodyR
while_body_266723*
condR
while_cond_266722*K
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
 :������������������du
NoOpNoOp%^lstm_cell_42/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_42/StatefulPartitionedCall$lstm_cell_42/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�J
�
D__inference_lstm_164_layer_call_and_return_conditional_losses_268166

inputs=
+lstm_cell_44_matmul_readvariableop_resource:2(?
-lstm_cell_44_matmul_1_readvariableop_resource:
(:
,lstm_cell_44_biasadd_readvariableop_resource:(
identity��#lstm_cell_44/BiasAdd/ReadVariableOp�"lstm_cell_44/MatMul/ReadVariableOp�$lstm_cell_44/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_268082*
condR
while_cond_268081*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_266881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_266881___redundant_placeholder04
0while_while_cond_266881___redundant_placeholder14
0while_while_cond_266881___redundant_placeholder24
0while_while_cond_266881___redundant_placeholder3
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_267950

inputs=
+lstm_cell_44_matmul_readvariableop_resource:2(?
-lstm_cell_44_matmul_1_readvariableop_resource:
(:
,lstm_cell_44_biasadd_readvariableop_resource:(
identity��#lstm_cell_44/BiasAdd/ReadVariableOp�"lstm_cell_44/MatMul/ReadVariableOp�$lstm_cell_44/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_267866*
condR
while_cond_267865*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
��
�
I__inference_sequential_54_layer_call_and_return_conditional_losses_269619

inputsG
4lstm_162_lstm_cell_42_matmul_readvariableop_resource:	�I
6lstm_162_lstm_cell_42_matmul_1_readvariableop_resource:	d�D
5lstm_162_lstm_cell_42_biasadd_readvariableop_resource:	�G
4lstm_163_lstm_cell_43_matmul_readvariableop_resource:	d�I
6lstm_163_lstm_cell_43_matmul_1_readvariableop_resource:	2�D
5lstm_163_lstm_cell_43_biasadd_readvariableop_resource:	�F
4lstm_164_lstm_cell_44_matmul_readvariableop_resource:2(H
6lstm_164_lstm_cell_44_matmul_1_readvariableop_resource:
(C
5lstm_164_lstm_cell_44_biasadd_readvariableop_resource:(9
'dense_54_matmul_readvariableop_resource:
6
(dense_54_biasadd_readvariableop_resource:
identity��dense_54/BiasAdd/ReadVariableOp�dense_54/MatMul/ReadVariableOp�,lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp�+lstm_162/lstm_cell_42/MatMul/ReadVariableOp�-lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp�lstm_162/while�,lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp�+lstm_163/lstm_cell_43/MatMul/ReadVariableOp�-lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp�lstm_163/while�,lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp�+lstm_164/lstm_cell_44/MatMul/ReadVariableOp�-lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp�lstm_164/whileD
lstm_162/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_162/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_162/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_162/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_162/strided_sliceStridedSlicelstm_162/Shape:output:0%lstm_162/strided_slice/stack:output:0'lstm_162/strided_slice/stack_1:output:0'lstm_162/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_162/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_162/zeros/packedPacklstm_162/strided_slice:output:0 lstm_162/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_162/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_162/zerosFilllstm_162/zeros/packed:output:0lstm_162/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_162/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_162/zeros_1/packedPacklstm_162/strided_slice:output:0"lstm_162/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_162/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_162/zeros_1Fill lstm_162/zeros_1/packed:output:0lstm_162/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_162/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_162/transpose	Transposeinputs lstm_162/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_162/Shape_1Shapelstm_162/transpose:y:0*
T0*
_output_shapes
:h
lstm_162/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_162/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_162/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_162/strided_slice_1StridedSlicelstm_162/Shape_1:output:0'lstm_162/strided_slice_1/stack:output:0)lstm_162/strided_slice_1/stack_1:output:0)lstm_162/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_162/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_162/TensorArrayV2TensorListReserve-lstm_162/TensorArrayV2/element_shape:output:0!lstm_162/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_162/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_162/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_162/transpose:y:0Glstm_162/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_162/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_162/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_162/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_162/strided_slice_2StridedSlicelstm_162/transpose:y:0'lstm_162/strided_slice_2/stack:output:0)lstm_162/strided_slice_2/stack_1:output:0)lstm_162/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+lstm_162/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp4lstm_162_lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_162/lstm_cell_42/MatMulMatMul!lstm_162/strided_slice_2:output:03lstm_162/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_162/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp6lstm_162_lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_162/lstm_cell_42/MatMul_1MatMullstm_162/zeros:output:05lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_162/lstm_cell_42/addAddV2&lstm_162/lstm_cell_42/MatMul:product:0(lstm_162/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_162/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp5lstm_162_lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_162/lstm_cell_42/BiasAddBiasAddlstm_162/lstm_cell_42/add:z:04lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_162/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_162/lstm_cell_42/splitSplit.lstm_162/lstm_cell_42/split/split_dim:output:0&lstm_162/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_162/lstm_cell_42/SigmoidSigmoid$lstm_162/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/Sigmoid_1Sigmoid$lstm_162/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/mulMul#lstm_162/lstm_cell_42/Sigmoid_1:y:0lstm_162/zeros_1:output:0*
T0*'
_output_shapes
:���������dz
lstm_162/lstm_cell_42/ReluRelu$lstm_162/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/mul_1Mul!lstm_162/lstm_cell_42/Sigmoid:y:0(lstm_162/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/add_1AddV2lstm_162/lstm_cell_42/mul:z:0lstm_162/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/Sigmoid_2Sigmoid$lstm_162/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������dw
lstm_162/lstm_cell_42/Relu_1Relulstm_162/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_162/lstm_cell_42/mul_2Mul#lstm_162/lstm_cell_42/Sigmoid_2:y:0*lstm_162/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_162/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_162/TensorArrayV2_1TensorListReserve/lstm_162/TensorArrayV2_1/element_shape:output:0!lstm_162/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_162/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_162/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_162/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_162/whileWhile$lstm_162/while/loop_counter:output:0*lstm_162/while/maximum_iterations:output:0lstm_162/time:output:0!lstm_162/TensorArrayV2_1:handle:0lstm_162/zeros:output:0lstm_162/zeros_1:output:0!lstm_162/strided_slice_1:output:0@lstm_162/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_162_lstm_cell_42_matmul_readvariableop_resource6lstm_162_lstm_cell_42_matmul_1_readvariableop_resource5lstm_162_lstm_cell_42_biasadd_readvariableop_resource*
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
lstm_162_while_body_269251*&
condR
lstm_162_while_cond_269250*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_162/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_162/TensorArrayV2Stack/TensorListStackTensorListStacklstm_162/while:output:3Blstm_162/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_162/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_162/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_162/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_162/strided_slice_3StridedSlice4lstm_162/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_162/strided_slice_3/stack:output:0)lstm_162/strided_slice_3/stack_1:output:0)lstm_162/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_162/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_162/transpose_1	Transpose4lstm_162/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_162/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_162/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_163/ShapeShapelstm_162/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_163/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_163/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_163/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_163/strided_sliceStridedSlicelstm_163/Shape:output:0%lstm_163/strided_slice/stack:output:0'lstm_163/strided_slice/stack_1:output:0'lstm_163/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_163/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_163/zeros/packedPacklstm_163/strided_slice:output:0 lstm_163/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_163/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_163/zerosFilllstm_163/zeros/packed:output:0lstm_163/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_163/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_163/zeros_1/packedPacklstm_163/strided_slice:output:0"lstm_163/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_163/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_163/zeros_1Fill lstm_163/zeros_1/packed:output:0lstm_163/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_163/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_163/transpose	Transposelstm_162/transpose_1:y:0 lstm_163/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_163/Shape_1Shapelstm_163/transpose:y:0*
T0*
_output_shapes
:h
lstm_163/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_163/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_163/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_163/strided_slice_1StridedSlicelstm_163/Shape_1:output:0'lstm_163/strided_slice_1/stack:output:0)lstm_163/strided_slice_1/stack_1:output:0)lstm_163/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_163/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_163/TensorArrayV2TensorListReserve-lstm_163/TensorArrayV2/element_shape:output:0!lstm_163/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_163/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_163/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_163/transpose:y:0Glstm_163/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_163/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_163/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_163/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_163/strided_slice_2StridedSlicelstm_163/transpose:y:0'lstm_163/strided_slice_2/stack:output:0)lstm_163/strided_slice_2/stack_1:output:0)lstm_163/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
+lstm_163/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp4lstm_163_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_163/lstm_cell_43/MatMulMatMul!lstm_163/strided_slice_2:output:03lstm_163/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-lstm_163/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp6lstm_163_lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_163/lstm_cell_43/MatMul_1MatMullstm_163/zeros:output:05lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_163/lstm_cell_43/addAddV2&lstm_163/lstm_cell_43/MatMul:product:0(lstm_163/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,lstm_163/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp5lstm_163_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_163/lstm_cell_43/BiasAddBiasAddlstm_163/lstm_cell_43/add:z:04lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%lstm_163/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_163/lstm_cell_43/splitSplit.lstm_163/lstm_cell_43/split/split_dim:output:0&lstm_163/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_163/lstm_cell_43/SigmoidSigmoid$lstm_163/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/Sigmoid_1Sigmoid$lstm_163/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/mulMul#lstm_163/lstm_cell_43/Sigmoid_1:y:0lstm_163/zeros_1:output:0*
T0*'
_output_shapes
:���������2z
lstm_163/lstm_cell_43/ReluRelu$lstm_163/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/mul_1Mul!lstm_163/lstm_cell_43/Sigmoid:y:0(lstm_163/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/add_1AddV2lstm_163/lstm_cell_43/mul:z:0lstm_163/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/Sigmoid_2Sigmoid$lstm_163/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2w
lstm_163/lstm_cell_43/Relu_1Relulstm_163/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_163/lstm_cell_43/mul_2Mul#lstm_163/lstm_cell_43/Sigmoid_2:y:0*lstm_163/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_163/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_163/TensorArrayV2_1TensorListReserve/lstm_163/TensorArrayV2_1/element_shape:output:0!lstm_163/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_163/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_163/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_163/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_163/whileWhile$lstm_163/while/loop_counter:output:0*lstm_163/while/maximum_iterations:output:0lstm_163/time:output:0!lstm_163/TensorArrayV2_1:handle:0lstm_163/zeros:output:0lstm_163/zeros_1:output:0!lstm_163/strided_slice_1:output:0@lstm_163/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_163_lstm_cell_43_matmul_readvariableop_resource6lstm_163_lstm_cell_43_matmul_1_readvariableop_resource5lstm_163_lstm_cell_43_biasadd_readvariableop_resource*
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
lstm_163_while_body_269390*&
condR
lstm_163_while_cond_269389*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_163/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_163/TensorArrayV2Stack/TensorListStackTensorListStacklstm_163/while:output:3Blstm_163/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_163/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_163/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_163/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_163/strided_slice_3StridedSlice4lstm_163/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_163/strided_slice_3/stack:output:0)lstm_163/strided_slice_3/stack_1:output:0)lstm_163/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_163/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_163/transpose_1	Transpose4lstm_163/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_163/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_163/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_164/ShapeShapelstm_163/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_164/strided_sliceStridedSlicelstm_164/Shape:output:0%lstm_164/strided_slice/stack:output:0'lstm_164/strided_slice/stack_1:output:0'lstm_164/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_164/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_164/zeros/packedPacklstm_164/strided_slice:output:0 lstm_164/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_164/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_164/zerosFilllstm_164/zeros/packed:output:0lstm_164/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_164/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_164/zeros_1/packedPacklstm_164/strided_slice:output:0"lstm_164/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_164/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_164/zeros_1Fill lstm_164/zeros_1/packed:output:0lstm_164/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_164/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_164/transpose	Transposelstm_163/transpose_1:y:0 lstm_164/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_164/Shape_1Shapelstm_164/transpose:y:0*
T0*
_output_shapes
:h
lstm_164/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_164/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_164/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_164/strided_slice_1StridedSlicelstm_164/Shape_1:output:0'lstm_164/strided_slice_1/stack:output:0)lstm_164/strided_slice_1/stack_1:output:0)lstm_164/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_164/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_164/TensorArrayV2TensorListReserve-lstm_164/TensorArrayV2/element_shape:output:0!lstm_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_164/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_164/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_164/transpose:y:0Glstm_164/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_164/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_164/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_164/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_164/strided_slice_2StridedSlicelstm_164/transpose:y:0'lstm_164/strided_slice_2/stack:output:0)lstm_164/strided_slice_2/stack_1:output:0)lstm_164/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
+lstm_164/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp4lstm_164_lstm_cell_44_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_164/lstm_cell_44/MatMulMatMul!lstm_164/strided_slice_2:output:03lstm_164/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
-lstm_164/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp6lstm_164_lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_164/lstm_cell_44/MatMul_1MatMullstm_164/zeros:output:05lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_164/lstm_cell_44/addAddV2&lstm_164/lstm_cell_44/MatMul:product:0(lstm_164/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
,lstm_164/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp5lstm_164_lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_164/lstm_cell_44/BiasAddBiasAddlstm_164/lstm_cell_44/add:z:04lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(g
%lstm_164/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_164/lstm_cell_44/splitSplit.lstm_164/lstm_cell_44/split/split_dim:output:0&lstm_164/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_164/lstm_cell_44/SigmoidSigmoid$lstm_164/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/Sigmoid_1Sigmoid$lstm_164/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/mulMul#lstm_164/lstm_cell_44/Sigmoid_1:y:0lstm_164/zeros_1:output:0*
T0*'
_output_shapes
:���������
z
lstm_164/lstm_cell_44/ReluRelu$lstm_164/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/mul_1Mul!lstm_164/lstm_cell_44/Sigmoid:y:0(lstm_164/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/add_1AddV2lstm_164/lstm_cell_44/mul:z:0lstm_164/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/Sigmoid_2Sigmoid$lstm_164/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
w
lstm_164/lstm_cell_44/Relu_1Relulstm_164/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_164/lstm_cell_44/mul_2Mul#lstm_164/lstm_cell_44/Sigmoid_2:y:0*lstm_164/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_164/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_164/TensorArrayV2_1TensorListReserve/lstm_164/TensorArrayV2_1/element_shape:output:0!lstm_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_164/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_164/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_164/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_164/whileWhile$lstm_164/while/loop_counter:output:0*lstm_164/while/maximum_iterations:output:0lstm_164/time:output:0!lstm_164/TensorArrayV2_1:handle:0lstm_164/zeros:output:0lstm_164/zeros_1:output:0!lstm_164/strided_slice_1:output:0@lstm_164/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_164_lstm_cell_44_matmul_readvariableop_resource6lstm_164_lstm_cell_44_matmul_1_readvariableop_resource5lstm_164_lstm_cell_44_biasadd_readvariableop_resource*
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
lstm_164_while_body_269529*&
condR
lstm_164_while_cond_269528*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_164/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_164/TensorArrayV2Stack/TensorListStackTensorListStacklstm_164/while:output:3Blstm_164/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_164/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_164/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_164/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_164/strided_slice_3StridedSlice4lstm_164/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_164/strided_slice_3/stack:output:0)lstm_164/strided_slice_3/stack_1:output:0)lstm_164/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_164/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_164/transpose_1	Transpose4lstm_164/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_164/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_164/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_54/MatMulMatMul!lstm_164/strided_slice_3:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_54/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp-^lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp,^lstm_162/lstm_cell_42/MatMul/ReadVariableOp.^lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp^lstm_162/while-^lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp,^lstm_163/lstm_cell_43/MatMul/ReadVariableOp.^lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp^lstm_163/while-^lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp,^lstm_164/lstm_cell_44/MatMul/ReadVariableOp.^lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp^lstm_164/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2\
,lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp,lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp2Z
+lstm_162/lstm_cell_42/MatMul/ReadVariableOp+lstm_162/lstm_cell_42/MatMul/ReadVariableOp2^
-lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp-lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp2 
lstm_162/whilelstm_162/while2\
,lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp,lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp2Z
+lstm_163/lstm_cell_43/MatMul/ReadVariableOp+lstm_163/lstm_cell_43/MatMul/ReadVariableOp2^
-lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp-lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp2 
lstm_163/whilelstm_163/while2\
,lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp,lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp2Z
+lstm_164/lstm_cell_44/MatMul/ReadVariableOp+lstm_164/lstm_cell_44/MatMul/ReadVariableOp2^
-lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp-lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp2 
lstm_164/whilelstm_164/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�B
�

lstm_163_while_body_268963.
*lstm_163_while_lstm_163_while_loop_counter4
0lstm_163_while_lstm_163_while_maximum_iterations
lstm_163_while_placeholder 
lstm_163_while_placeholder_1 
lstm_163_while_placeholder_2 
lstm_163_while_placeholder_3-
)lstm_163_while_lstm_163_strided_slice_1_0i
elstm_163_while_tensorarrayv2read_tensorlistgetitem_lstm_163_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_163_while_lstm_cell_43_matmul_readvariableop_resource_0:	d�Q
>lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource_0:	2�L
=lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource_0:	�
lstm_163_while_identity
lstm_163_while_identity_1
lstm_163_while_identity_2
lstm_163_while_identity_3
lstm_163_while_identity_4
lstm_163_while_identity_5+
'lstm_163_while_lstm_163_strided_slice_1g
clstm_163_while_tensorarrayv2read_tensorlistgetitem_lstm_163_tensorarrayunstack_tensorlistfromtensorM
:lstm_163_while_lstm_cell_43_matmul_readvariableop_resource:	d�O
<lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource:	2�J
;lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource:	���2lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp�1lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp�3lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp�
@lstm_163/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_163/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_163_while_tensorarrayv2read_tensorlistgetitem_lstm_163_tensorarrayunstack_tensorlistfromtensor_0lstm_163_while_placeholderIlstm_163/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
1lstm_163/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp<lstm_163_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
"lstm_163/while/lstm_cell_43/MatMulMatMul9lstm_163/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp>lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
$lstm_163/while/lstm_cell_43/MatMul_1MatMullstm_163_while_placeholder_2;lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_163/while/lstm_cell_43/addAddV2,lstm_163/while/lstm_cell_43/MatMul:product:0.lstm_163/while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp=lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#lstm_163/while/lstm_cell_43/BiasAddBiasAdd#lstm_163/while/lstm_cell_43/add:z:0:lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+lstm_163/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!lstm_163/while/lstm_cell_43/splitSplit4lstm_163/while/lstm_cell_43/split/split_dim:output:0,lstm_163/while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
#lstm_163/while/lstm_cell_43/SigmoidSigmoid*lstm_163/while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2�
%lstm_163/while/lstm_cell_43/Sigmoid_1Sigmoid*lstm_163/while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_163/while/lstm_cell_43/mulMul)lstm_163/while/lstm_cell_43/Sigmoid_1:y:0lstm_163_while_placeholder_3*
T0*'
_output_shapes
:���������2�
 lstm_163/while/lstm_cell_43/ReluRelu*lstm_163/while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
!lstm_163/while/lstm_cell_43/mul_1Mul'lstm_163/while/lstm_cell_43/Sigmoid:y:0.lstm_163/while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
!lstm_163/while/lstm_cell_43/add_1AddV2#lstm_163/while/lstm_cell_43/mul:z:0%lstm_163/while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2�
%lstm_163/while/lstm_cell_43/Sigmoid_2Sigmoid*lstm_163/while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2�
"lstm_163/while/lstm_cell_43/Relu_1Relu%lstm_163/while/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
!lstm_163/while/lstm_cell_43/mul_2Mul)lstm_163/while/lstm_cell_43/Sigmoid_2:y:00lstm_163/while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_163/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_163_while_placeholder_1lstm_163_while_placeholder%lstm_163/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_163/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_163/while/addAddV2lstm_163_while_placeholderlstm_163/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_163/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_163/while/add_1AddV2*lstm_163_while_lstm_163_while_loop_counterlstm_163/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_163/while/IdentityIdentitylstm_163/while/add_1:z:0^lstm_163/while/NoOp*
T0*
_output_shapes
: �
lstm_163/while/Identity_1Identity0lstm_163_while_lstm_163_while_maximum_iterations^lstm_163/while/NoOp*
T0*
_output_shapes
: t
lstm_163/while/Identity_2Identitylstm_163/while/add:z:0^lstm_163/while/NoOp*
T0*
_output_shapes
: �
lstm_163/while/Identity_3IdentityClstm_163/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_163/while/NoOp*
T0*
_output_shapes
: �
lstm_163/while/Identity_4Identity%lstm_163/while/lstm_cell_43/mul_2:z:0^lstm_163/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_163/while/Identity_5Identity%lstm_163/while/lstm_cell_43/add_1:z:0^lstm_163/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_163/while/NoOpNoOp3^lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp2^lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp4^lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_163_while_identity lstm_163/while/Identity:output:0"?
lstm_163_while_identity_1"lstm_163/while/Identity_1:output:0"?
lstm_163_while_identity_2"lstm_163/while/Identity_2:output:0"?
lstm_163_while_identity_3"lstm_163/while/Identity_3:output:0"?
lstm_163_while_identity_4"lstm_163/while/Identity_4:output:0"?
lstm_163_while_identity_5"lstm_163/while/Identity_5:output:0"T
'lstm_163_while_lstm_163_strided_slice_1)lstm_163_while_lstm_163_strided_slice_1_0"|
;lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource=lstm_163_while_lstm_cell_43_biasadd_readvariableop_resource_0"~
<lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource>lstm_163_while_lstm_cell_43_matmul_1_readvariableop_resource_0"z
:lstm_163_while_lstm_cell_43_matmul_readvariableop_resource<lstm_163_while_lstm_cell_43_matmul_readvariableop_resource_0"�
clstm_163_while_tensorarrayv2read_tensorlistgetitem_lstm_163_tensorarrayunstack_tensorlistfromtensorelstm_163_while_tensorarrayv2read_tensorlistgetitem_lstm_163_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2h
2lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp2lstm_163/while/lstm_cell_43/BiasAdd/ReadVariableOp2f
1lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp1lstm_163/while/lstm_cell_43/MatMul/ReadVariableOp2j
3lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp3lstm_163/while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_267422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_267422___redundant_placeholder04
0while_while_cond_267422___redundant_placeholder14
0while_while_cond_267422___redundant_placeholder24
0while_while_cond_267422___redundant_placeholder3
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
�"
�
while_body_266882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_43_266906_0:	d�.
while_lstm_cell_43_266908_0:	2�*
while_lstm_cell_43_266910_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_43_266906:	d�,
while_lstm_cell_43_266908:	2�(
while_lstm_cell_43_266910:	���*while/lstm_cell_43/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
*while/lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_43_266906_0while_lstm_cell_43_266908_0while_lstm_cell_43_266910_0*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_266868�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_43/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_43/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity3while/lstm_cell_43/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2y

while/NoOpNoOp+^while/lstm_cell_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_43_266906while_lstm_cell_43_266906_0"8
while_lstm_cell_43_266908while_lstm_cell_43_266908_0"8
while_lstm_cell_43_266910while_lstm_cell_43_266910_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_43/StatefulPartitionedCall*while/lstm_cell_43/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
I__inference_sequential_54_layer_call_and_return_conditional_losses_268564

inputs"
lstm_162_268537:	�"
lstm_162_268539:	d�
lstm_162_268541:	�"
lstm_163_268544:	d�"
lstm_163_268546:	2�
lstm_163_268548:	�!
lstm_164_268551:2(!
lstm_164_268553:
(
lstm_164_268555:(!
dense_54_268558:

dense_54_268560:
identity�� dense_54/StatefulPartitionedCall� lstm_162/StatefulPartitionedCall� lstm_163/StatefulPartitionedCall� lstm_164/StatefulPartitionedCall�
 lstm_162/StatefulPartitionedCallStatefulPartitionedCallinputslstm_162_268537lstm_162_268539lstm_162_268541*
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_268496�
 lstm_163/StatefulPartitionedCallStatefulPartitionedCall)lstm_162/StatefulPartitionedCall:output:0lstm_163_268544lstm_163_268546lstm_163_268548*
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_268331�
 lstm_164/StatefulPartitionedCallStatefulPartitionedCall)lstm_163/StatefulPartitionedCall:output:0lstm_164_268551lstm_164_268553lstm_164_268555*
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_268166�
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)lstm_164/StatefulPartitionedCall:output:0dense_54_268558dense_54_268560*
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
GPU 2J 8� *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_267968x
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_54/StatefulPartitionedCall!^lstm_162/StatefulPartitionedCall!^lstm_163/StatefulPartitionedCall!^lstm_164/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 lstm_162/StatefulPartitionedCall lstm_162/StatefulPartitionedCall2D
 lstm_163/StatefulPartitionedCall lstm_163/StatefulPartitionedCall2D
 lstm_164/StatefulPartitionedCall lstm_164/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�"
�
while_body_267232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_44_267256_0:2(-
while_lstm_cell_44_267258_0:
()
while_lstm_cell_44_267260_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_44_267256:2(+
while_lstm_cell_44_267258:
('
while_lstm_cell_44_267260:(��*while/lstm_cell_44/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
*while/lstm_cell_44/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_44_267256_0while_lstm_cell_44_267258_0while_lstm_cell_44_267260_0*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_267218�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_44/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_44/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity3while/lstm_cell_44/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
y

while/NoOpNoOp+^while/lstm_cell_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_44_267256while_lstm_cell_44_267256_0"8
while_lstm_cell_44_267258while_lstm_cell_44_267258_0"8
while_lstm_cell_44_267260while_lstm_cell_44_267260_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_44/StatefulPartitionedCall*while/lstm_cell_44/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�W
�
__inference__traced_save_271923
file_prefix.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_162_lstm_cell_162_kernel_read_readvariableopF
Bsavev2_lstm_162_lstm_cell_162_recurrent_kernel_read_readvariableop:
6savev2_lstm_162_lstm_cell_162_bias_read_readvariableop<
8savev2_lstm_163_lstm_cell_163_kernel_read_readvariableopF
Bsavev2_lstm_163_lstm_cell_163_recurrent_kernel_read_readvariableop:
6savev2_lstm_163_lstm_cell_163_bias_read_readvariableop<
8savev2_lstm_164_lstm_cell_164_kernel_read_readvariableopF
Bsavev2_lstm_164_lstm_cell_164_recurrent_kernel_read_readvariableop:
6savev2_lstm_164_lstm_cell_164_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_54_kernel_m_read_readvariableop3
/savev2_adam_dense_54_bias_m_read_readvariableopC
?savev2_adam_lstm_162_lstm_cell_162_kernel_m_read_readvariableopM
Isavev2_adam_lstm_162_lstm_cell_162_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_162_lstm_cell_162_bias_m_read_readvariableopC
?savev2_adam_lstm_163_lstm_cell_163_kernel_m_read_readvariableopM
Isavev2_adam_lstm_163_lstm_cell_163_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_163_lstm_cell_163_bias_m_read_readvariableopC
?savev2_adam_lstm_164_lstm_cell_164_kernel_m_read_readvariableopM
Isavev2_adam_lstm_164_lstm_cell_164_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_164_lstm_cell_164_bias_m_read_readvariableop5
1savev2_adam_dense_54_kernel_v_read_readvariableop3
/savev2_adam_dense_54_bias_v_read_readvariableopC
?savev2_adam_lstm_162_lstm_cell_162_kernel_v_read_readvariableopM
Isavev2_adam_lstm_162_lstm_cell_162_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_162_lstm_cell_162_bias_v_read_readvariableopC
?savev2_adam_lstm_163_lstm_cell_163_kernel_v_read_readvariableopM
Isavev2_adam_lstm_163_lstm_cell_163_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_163_lstm_cell_163_bias_v_read_readvariableopC
?savev2_adam_lstm_164_lstm_cell_164_kernel_v_read_readvariableopM
Isavev2_adam_lstm_164_lstm_cell_164_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_164_lstm_cell_164_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_162_lstm_cell_162_kernel_read_readvariableopBsavev2_lstm_162_lstm_cell_162_recurrent_kernel_read_readvariableop6savev2_lstm_162_lstm_cell_162_bias_read_readvariableop8savev2_lstm_163_lstm_cell_163_kernel_read_readvariableopBsavev2_lstm_163_lstm_cell_163_recurrent_kernel_read_readvariableop6savev2_lstm_163_lstm_cell_163_bias_read_readvariableop8savev2_lstm_164_lstm_cell_164_kernel_read_readvariableopBsavev2_lstm_164_lstm_cell_164_recurrent_kernel_read_readvariableop6savev2_lstm_164_lstm_cell_164_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_54_kernel_m_read_readvariableop/savev2_adam_dense_54_bias_m_read_readvariableop?savev2_adam_lstm_162_lstm_cell_162_kernel_m_read_readvariableopIsavev2_adam_lstm_162_lstm_cell_162_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_162_lstm_cell_162_bias_m_read_readvariableop?savev2_adam_lstm_163_lstm_cell_163_kernel_m_read_readvariableopIsavev2_adam_lstm_163_lstm_cell_163_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_163_lstm_cell_163_bias_m_read_readvariableop?savev2_adam_lstm_164_lstm_cell_164_kernel_m_read_readvariableopIsavev2_adam_lstm_164_lstm_cell_164_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_164_lstm_cell_164_bias_m_read_readvariableop1savev2_adam_dense_54_kernel_v_read_readvariableop/savev2_adam_dense_54_bias_v_read_readvariableop?savev2_adam_lstm_162_lstm_cell_162_kernel_v_read_readvariableopIsavev2_adam_lstm_162_lstm_cell_162_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_162_lstm_cell_162_bias_v_read_readvariableop?savev2_adam_lstm_163_lstm_cell_163_kernel_v_read_readvariableopIsavev2_adam_lstm_163_lstm_cell_163_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_163_lstm_cell_163_bias_v_read_readvariableop?savev2_adam_lstm_164_lstm_cell_164_kernel_v_read_readvariableopIsavev2_adam_lstm_164_lstm_cell_164_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_164_lstm_cell_164_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�

�
lstm_164_while_cond_269528.
*lstm_164_while_lstm_164_while_loop_counter4
0lstm_164_while_lstm_164_while_maximum_iterations
lstm_164_while_placeholder 
lstm_164_while_placeholder_1 
lstm_164_while_placeholder_2 
lstm_164_while_placeholder_30
,lstm_164_while_less_lstm_164_strided_slice_1F
Blstm_164_while_lstm_164_while_cond_269528___redundant_placeholder0F
Blstm_164_while_lstm_164_while_cond_269528___redundant_placeholder1F
Blstm_164_while_lstm_164_while_cond_269528___redundant_placeholder2F
Blstm_164_while_lstm_164_while_cond_269528___redundant_placeholder3
lstm_164_while_identity
�
lstm_164/while/LessLesslstm_164_while_placeholder,lstm_164_while_less_lstm_164_strided_slice_1*
T0*
_output_shapes
: ]
lstm_164/while/IdentityIdentitylstm_164/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_164_while_identity lstm_164/while/Identity:output:0*(
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_270708

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	d�@
-lstm_cell_43_matmul_1_readvariableop_resource:	2�;
,lstm_cell_43_biasadd_readvariableop_resource:	�
identity��#lstm_cell_43/BiasAdd/ReadVariableOp�"lstm_cell_43/MatMul/ReadVariableOp�$lstm_cell_43/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitn
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2w
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2h
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2{
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2e
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
bodyR
while_body_270624*
condR
while_cond_270623*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_44_layer_call_fn_271699

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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_267218o
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
�
�
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_271780

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
�S
�
(sequential_54_lstm_162_while_body_266083J
Fsequential_54_lstm_162_while_sequential_54_lstm_162_while_loop_counterP
Lsequential_54_lstm_162_while_sequential_54_lstm_162_while_maximum_iterations,
(sequential_54_lstm_162_while_placeholder.
*sequential_54_lstm_162_while_placeholder_1.
*sequential_54_lstm_162_while_placeholder_2.
*sequential_54_lstm_162_while_placeholder_3I
Esequential_54_lstm_162_while_sequential_54_lstm_162_strided_slice_1_0�
�sequential_54_lstm_162_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_162_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_54_lstm_162_while_lstm_cell_42_matmul_readvariableop_resource_0:	�_
Lsequential_54_lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource_0:	d�Z
Ksequential_54_lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource_0:	�)
%sequential_54_lstm_162_while_identity+
'sequential_54_lstm_162_while_identity_1+
'sequential_54_lstm_162_while_identity_2+
'sequential_54_lstm_162_while_identity_3+
'sequential_54_lstm_162_while_identity_4+
'sequential_54_lstm_162_while_identity_5G
Csequential_54_lstm_162_while_sequential_54_lstm_162_strided_slice_1�
sequential_54_lstm_162_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_162_tensorarrayunstack_tensorlistfromtensor[
Hsequential_54_lstm_162_while_lstm_cell_42_matmul_readvariableop_resource:	�]
Jsequential_54_lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource:	d�X
Isequential_54_lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource:	���@sequential_54/lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp�?sequential_54/lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp�Asequential_54/lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp�
Nsequential_54/lstm_162/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
@sequential_54/lstm_162/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_54_lstm_162_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_162_tensorarrayunstack_tensorlistfromtensor_0(sequential_54_lstm_162_while_placeholderWsequential_54/lstm_162/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
?sequential_54/lstm_162/while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOpJsequential_54_lstm_162_while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
0sequential_54/lstm_162/while/lstm_cell_42/MatMulMatMulGsequential_54/lstm_162/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_54/lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Asequential_54/lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOpLsequential_54_lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_54/lstm_162/while/lstm_cell_42/MatMul_1MatMul*sequential_54_lstm_162_while_placeholder_2Isequential_54/lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_54/lstm_162/while/lstm_cell_42/addAddV2:sequential_54/lstm_162/while/lstm_cell_42/MatMul:product:0<sequential_54/lstm_162/while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
@sequential_54/lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOpKsequential_54_lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
1sequential_54/lstm_162/while/lstm_cell_42/BiasAddBiasAdd1sequential_54/lstm_162/while/lstm_cell_42/add:z:0Hsequential_54/lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
9sequential_54/lstm_162/while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
/sequential_54/lstm_162/while/lstm_cell_42/splitSplitBsequential_54/lstm_162/while/lstm_cell_42/split/split_dim:output:0:sequential_54/lstm_162/while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
1sequential_54/lstm_162/while/lstm_cell_42/SigmoidSigmoid8sequential_54/lstm_162/while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d�
3sequential_54/lstm_162/while/lstm_cell_42/Sigmoid_1Sigmoid8sequential_54/lstm_162/while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
-sequential_54/lstm_162/while/lstm_cell_42/mulMul7sequential_54/lstm_162/while/lstm_cell_42/Sigmoid_1:y:0*sequential_54_lstm_162_while_placeholder_3*
T0*'
_output_shapes
:���������d�
.sequential_54/lstm_162/while/lstm_cell_42/ReluRelu8sequential_54/lstm_162/while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
/sequential_54/lstm_162/while/lstm_cell_42/mul_1Mul5sequential_54/lstm_162/while/lstm_cell_42/Sigmoid:y:0<sequential_54/lstm_162/while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
/sequential_54/lstm_162/while/lstm_cell_42/add_1AddV21sequential_54/lstm_162/while/lstm_cell_42/mul:z:03sequential_54/lstm_162/while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d�
3sequential_54/lstm_162/while/lstm_cell_42/Sigmoid_2Sigmoid8sequential_54/lstm_162/while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������d�
0sequential_54/lstm_162/while/lstm_cell_42/Relu_1Relu3sequential_54/lstm_162/while/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_54/lstm_162/while/lstm_cell_42/mul_2Mul7sequential_54/lstm_162/while/lstm_cell_42/Sigmoid_2:y:0>sequential_54/lstm_162/while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Asequential_54/lstm_162/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_54_lstm_162_while_placeholder_1(sequential_54_lstm_162_while_placeholder3sequential_54/lstm_162/while/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype0:���d
"sequential_54/lstm_162/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
 sequential_54/lstm_162/while/addAddV2(sequential_54_lstm_162_while_placeholder+sequential_54/lstm_162/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_54/lstm_162/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
"sequential_54/lstm_162/while/add_1AddV2Fsequential_54_lstm_162_while_sequential_54_lstm_162_while_loop_counter-sequential_54/lstm_162/while/add_1/y:output:0*
T0*
_output_shapes
: �
%sequential_54/lstm_162/while/IdentityIdentity&sequential_54/lstm_162/while/add_1:z:0"^sequential_54/lstm_162/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_162/while/Identity_1IdentityLsequential_54_lstm_162_while_sequential_54_lstm_162_while_maximum_iterations"^sequential_54/lstm_162/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_162/while/Identity_2Identity$sequential_54/lstm_162/while/add:z:0"^sequential_54/lstm_162/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_162/while/Identity_3IdentityQsequential_54/lstm_162/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_54/lstm_162/while/NoOp*
T0*
_output_shapes
: �
'sequential_54/lstm_162/while/Identity_4Identity3sequential_54/lstm_162/while/lstm_cell_42/mul_2:z:0"^sequential_54/lstm_162/while/NoOp*
T0*'
_output_shapes
:���������d�
'sequential_54/lstm_162/while/Identity_5Identity3sequential_54/lstm_162/while/lstm_cell_42/add_1:z:0"^sequential_54/lstm_162/while/NoOp*
T0*'
_output_shapes
:���������d�
!sequential_54/lstm_162/while/NoOpNoOpA^sequential_54/lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp@^sequential_54/lstm_162/while/lstm_cell_42/MatMul/ReadVariableOpB^sequential_54/lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_54_lstm_162_while_identity.sequential_54/lstm_162/while/Identity:output:0"[
'sequential_54_lstm_162_while_identity_10sequential_54/lstm_162/while/Identity_1:output:0"[
'sequential_54_lstm_162_while_identity_20sequential_54/lstm_162/while/Identity_2:output:0"[
'sequential_54_lstm_162_while_identity_30sequential_54/lstm_162/while/Identity_3:output:0"[
'sequential_54_lstm_162_while_identity_40sequential_54/lstm_162/while/Identity_4:output:0"[
'sequential_54_lstm_162_while_identity_50sequential_54/lstm_162/while/Identity_5:output:0"�
Isequential_54_lstm_162_while_lstm_cell_42_biasadd_readvariableop_resourceKsequential_54_lstm_162_while_lstm_cell_42_biasadd_readvariableop_resource_0"�
Jsequential_54_lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resourceLsequential_54_lstm_162_while_lstm_cell_42_matmul_1_readvariableop_resource_0"�
Hsequential_54_lstm_162_while_lstm_cell_42_matmul_readvariableop_resourceJsequential_54_lstm_162_while_lstm_cell_42_matmul_readvariableop_resource_0"�
Csequential_54_lstm_162_while_sequential_54_lstm_162_strided_slice_1Esequential_54_lstm_162_while_sequential_54_lstm_162_strided_slice_1_0"�
sequential_54_lstm_162_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_162_tensorarrayunstack_tensorlistfromtensor�sequential_54_lstm_162_while_tensorarrayv2read_tensorlistgetitem_sequential_54_lstm_162_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
@sequential_54/lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp@sequential_54/lstm_162/while/lstm_cell_42/BiasAdd/ReadVariableOp2�
?sequential_54/lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp?sequential_54/lstm_162/while/lstm_cell_42/MatMul/ReadVariableOp2�
Asequential_54/lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOpAsequential_54/lstm_162/while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_dense_54_layer_call_and_return_conditional_losses_271486

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
�
�
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_271584

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
�
-__inference_lstm_cell_42_layer_call_fn_271520

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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_266664o
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
while_cond_271382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_271382___redundant_placeholder04
0while_while_cond_271382___redundant_placeholder14
0while_while_cond_271382___redundant_placeholder24
0while_while_cond_271382___redundant_placeholder3
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
��
�
!__inference__wrapped_model_266451
lstm_162_inputU
Bsequential_54_lstm_162_lstm_cell_42_matmul_readvariableop_resource:	�W
Dsequential_54_lstm_162_lstm_cell_42_matmul_1_readvariableop_resource:	d�R
Csequential_54_lstm_162_lstm_cell_42_biasadd_readvariableop_resource:	�U
Bsequential_54_lstm_163_lstm_cell_43_matmul_readvariableop_resource:	d�W
Dsequential_54_lstm_163_lstm_cell_43_matmul_1_readvariableop_resource:	2�R
Csequential_54_lstm_163_lstm_cell_43_biasadd_readvariableop_resource:	�T
Bsequential_54_lstm_164_lstm_cell_44_matmul_readvariableop_resource:2(V
Dsequential_54_lstm_164_lstm_cell_44_matmul_1_readvariableop_resource:
(Q
Csequential_54_lstm_164_lstm_cell_44_biasadd_readvariableop_resource:(G
5sequential_54_dense_54_matmul_readvariableop_resource:
D
6sequential_54_dense_54_biasadd_readvariableop_resource:
identity��-sequential_54/dense_54/BiasAdd/ReadVariableOp�,sequential_54/dense_54/MatMul/ReadVariableOp�:sequential_54/lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp�9sequential_54/lstm_162/lstm_cell_42/MatMul/ReadVariableOp�;sequential_54/lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp�sequential_54/lstm_162/while�:sequential_54/lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp�9sequential_54/lstm_163/lstm_cell_43/MatMul/ReadVariableOp�;sequential_54/lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp�sequential_54/lstm_163/while�:sequential_54/lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp�9sequential_54/lstm_164/lstm_cell_44/MatMul/ReadVariableOp�;sequential_54/lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp�sequential_54/lstm_164/whileZ
sequential_54/lstm_162/ShapeShapelstm_162_input*
T0*
_output_shapes
:t
*sequential_54/lstm_162/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_54/lstm_162/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_54/lstm_162/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential_54/lstm_162/strided_sliceStridedSlice%sequential_54/lstm_162/Shape:output:03sequential_54/lstm_162/strided_slice/stack:output:05sequential_54/lstm_162/strided_slice/stack_1:output:05sequential_54/lstm_162/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_54/lstm_162/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
#sequential_54/lstm_162/zeros/packedPack-sequential_54/lstm_162/strided_slice:output:0.sequential_54/lstm_162/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_54/lstm_162/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_54/lstm_162/zerosFill,sequential_54/lstm_162/zeros/packed:output:0+sequential_54/lstm_162/zeros/Const:output:0*
T0*'
_output_shapes
:���������di
'sequential_54/lstm_162/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
%sequential_54/lstm_162/zeros_1/packedPack-sequential_54/lstm_162/strided_slice:output:00sequential_54/lstm_162/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_54/lstm_162/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_54/lstm_162/zeros_1Fill.sequential_54/lstm_162/zeros_1/packed:output:0-sequential_54/lstm_162/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dz
%sequential_54/lstm_162/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
 sequential_54/lstm_162/transpose	Transposelstm_162_input.sequential_54/lstm_162/transpose/perm:output:0*
T0*+
_output_shapes
:���������r
sequential_54/lstm_162/Shape_1Shape$sequential_54/lstm_162/transpose:y:0*
T0*
_output_shapes
:v
,sequential_54/lstm_162/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_54/lstm_162/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_54/lstm_162/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential_54/lstm_162/strided_slice_1StridedSlice'sequential_54/lstm_162/Shape_1:output:05sequential_54/lstm_162/strided_slice_1/stack:output:07sequential_54/lstm_162/strided_slice_1/stack_1:output:07sequential_54/lstm_162/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_54/lstm_162/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
$sequential_54/lstm_162/TensorArrayV2TensorListReserve;sequential_54/lstm_162/TensorArrayV2/element_shape:output:0/sequential_54/lstm_162/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Lsequential_54/lstm_162/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
>sequential_54/lstm_162/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_54/lstm_162/transpose:y:0Usequential_54/lstm_162/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���v
,sequential_54/lstm_162/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_54/lstm_162/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_54/lstm_162/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential_54/lstm_162/strided_slice_2StridedSlice$sequential_54/lstm_162/transpose:y:05sequential_54/lstm_162/strided_slice_2/stack:output:07sequential_54/lstm_162/strided_slice_2/stack_1:output:07sequential_54/lstm_162/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
9sequential_54/lstm_162/lstm_cell_42/MatMul/ReadVariableOpReadVariableOpBsequential_54_lstm_162_lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*sequential_54/lstm_162/lstm_cell_42/MatMulMatMul/sequential_54/lstm_162/strided_slice_2:output:0Asequential_54/lstm_162/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;sequential_54/lstm_162/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOpDsequential_54_lstm_162_lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_54/lstm_162/lstm_cell_42/MatMul_1MatMul%sequential_54/lstm_162/zeros:output:0Csequential_54/lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_54/lstm_162/lstm_cell_42/addAddV24sequential_54/lstm_162/lstm_cell_42/MatMul:product:06sequential_54/lstm_162/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:sequential_54/lstm_162/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOpCsequential_54_lstm_162_lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+sequential_54/lstm_162/lstm_cell_42/BiasAddBiasAdd+sequential_54/lstm_162/lstm_cell_42/add:z:0Bsequential_54/lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3sequential_54/lstm_162/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_54/lstm_162/lstm_cell_42/splitSplit<sequential_54/lstm_162/lstm_cell_42/split/split_dim:output:04sequential_54/lstm_162/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
+sequential_54/lstm_162/lstm_cell_42/SigmoidSigmoid2sequential_54/lstm_162/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d�
-sequential_54/lstm_162/lstm_cell_42/Sigmoid_1Sigmoid2sequential_54/lstm_162/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
'sequential_54/lstm_162/lstm_cell_42/mulMul1sequential_54/lstm_162/lstm_cell_42/Sigmoid_1:y:0'sequential_54/lstm_162/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
(sequential_54/lstm_162/lstm_cell_42/ReluRelu2sequential_54/lstm_162/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
)sequential_54/lstm_162/lstm_cell_42/mul_1Mul/sequential_54/lstm_162/lstm_cell_42/Sigmoid:y:06sequential_54/lstm_162/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
)sequential_54/lstm_162/lstm_cell_42/add_1AddV2+sequential_54/lstm_162/lstm_cell_42/mul:z:0-sequential_54/lstm_162/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d�
-sequential_54/lstm_162/lstm_cell_42/Sigmoid_2Sigmoid2sequential_54/lstm_162/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������d�
*sequential_54/lstm_162/lstm_cell_42/Relu_1Relu-sequential_54/lstm_162/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
)sequential_54/lstm_162/lstm_cell_42/mul_2Mul1sequential_54/lstm_162/lstm_cell_42/Sigmoid_2:y:08sequential_54/lstm_162/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
4sequential_54/lstm_162/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
&sequential_54/lstm_162/TensorArrayV2_1TensorListReserve=sequential_54/lstm_162/TensorArrayV2_1/element_shape:output:0/sequential_54/lstm_162/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���]
sequential_54/lstm_162/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_54/lstm_162/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������k
)sequential_54/lstm_162/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_54/lstm_162/whileWhile2sequential_54/lstm_162/while/loop_counter:output:08sequential_54/lstm_162/while/maximum_iterations:output:0$sequential_54/lstm_162/time:output:0/sequential_54/lstm_162/TensorArrayV2_1:handle:0%sequential_54/lstm_162/zeros:output:0'sequential_54/lstm_162/zeros_1:output:0/sequential_54/lstm_162/strided_slice_1:output:0Nsequential_54/lstm_162/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_54_lstm_162_lstm_cell_42_matmul_readvariableop_resourceDsequential_54_lstm_162_lstm_cell_42_matmul_1_readvariableop_resourceCsequential_54_lstm_162_lstm_cell_42_biasadd_readvariableop_resource*
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
(sequential_54_lstm_162_while_body_266083*4
cond,R*
(sequential_54_lstm_162_while_cond_266082*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Gsequential_54/lstm_162/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
9sequential_54/lstm_162/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_54/lstm_162/while:output:3Psequential_54/lstm_162/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0
,sequential_54/lstm_162/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������x
.sequential_54/lstm_162/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_54/lstm_162/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential_54/lstm_162/strided_slice_3StridedSliceBsequential_54/lstm_162/TensorArrayV2Stack/TensorListStack:tensor:05sequential_54/lstm_162/strided_slice_3/stack:output:07sequential_54/lstm_162/strided_slice_3/stack_1:output:07sequential_54/lstm_162/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask|
'sequential_54/lstm_162/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
"sequential_54/lstm_162/transpose_1	TransposeBsequential_54/lstm_162/TensorArrayV2Stack/TensorListStack:tensor:00sequential_54/lstm_162/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dr
sequential_54/lstm_162/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_54/lstm_163/ShapeShape&sequential_54/lstm_162/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_54/lstm_163/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_54/lstm_163/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_54/lstm_163/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential_54/lstm_163/strided_sliceStridedSlice%sequential_54/lstm_163/Shape:output:03sequential_54/lstm_163/strided_slice/stack:output:05sequential_54/lstm_163/strided_slice/stack_1:output:05sequential_54/lstm_163/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_54/lstm_163/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
#sequential_54/lstm_163/zeros/packedPack-sequential_54/lstm_163/strided_slice:output:0.sequential_54/lstm_163/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_54/lstm_163/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_54/lstm_163/zerosFill,sequential_54/lstm_163/zeros/packed:output:0+sequential_54/lstm_163/zeros/Const:output:0*
T0*'
_output_shapes
:���������2i
'sequential_54/lstm_163/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
%sequential_54/lstm_163/zeros_1/packedPack-sequential_54/lstm_163/strided_slice:output:00sequential_54/lstm_163/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_54/lstm_163/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_54/lstm_163/zeros_1Fill.sequential_54/lstm_163/zeros_1/packed:output:0-sequential_54/lstm_163/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2z
%sequential_54/lstm_163/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
 sequential_54/lstm_163/transpose	Transpose&sequential_54/lstm_162/transpose_1:y:0.sequential_54/lstm_163/transpose/perm:output:0*
T0*+
_output_shapes
:���������dr
sequential_54/lstm_163/Shape_1Shape$sequential_54/lstm_163/transpose:y:0*
T0*
_output_shapes
:v
,sequential_54/lstm_163/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_54/lstm_163/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_54/lstm_163/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential_54/lstm_163/strided_slice_1StridedSlice'sequential_54/lstm_163/Shape_1:output:05sequential_54/lstm_163/strided_slice_1/stack:output:07sequential_54/lstm_163/strided_slice_1/stack_1:output:07sequential_54/lstm_163/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_54/lstm_163/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
$sequential_54/lstm_163/TensorArrayV2TensorListReserve;sequential_54/lstm_163/TensorArrayV2/element_shape:output:0/sequential_54/lstm_163/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Lsequential_54/lstm_163/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
>sequential_54/lstm_163/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_54/lstm_163/transpose:y:0Usequential_54/lstm_163/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���v
,sequential_54/lstm_163/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_54/lstm_163/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_54/lstm_163/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential_54/lstm_163/strided_slice_2StridedSlice$sequential_54/lstm_163/transpose:y:05sequential_54/lstm_163/strided_slice_2/stack:output:07sequential_54/lstm_163/strided_slice_2/stack_1:output:07sequential_54/lstm_163/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
9sequential_54/lstm_163/lstm_cell_43/MatMul/ReadVariableOpReadVariableOpBsequential_54_lstm_163_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
*sequential_54/lstm_163/lstm_cell_43/MatMulMatMul/sequential_54/lstm_163/strided_slice_2:output:0Asequential_54/lstm_163/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;sequential_54/lstm_163/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOpDsequential_54_lstm_163_lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
,sequential_54/lstm_163/lstm_cell_43/MatMul_1MatMul%sequential_54/lstm_163/zeros:output:0Csequential_54/lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential_54/lstm_163/lstm_cell_43/addAddV24sequential_54/lstm_163/lstm_cell_43/MatMul:product:06sequential_54/lstm_163/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:sequential_54/lstm_163/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOpCsequential_54_lstm_163_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+sequential_54/lstm_163/lstm_cell_43/BiasAddBiasAdd+sequential_54/lstm_163/lstm_cell_43/add:z:0Bsequential_54/lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3sequential_54/lstm_163/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_54/lstm_163/lstm_cell_43/splitSplit<sequential_54/lstm_163/lstm_cell_43/split/split_dim:output:04sequential_54/lstm_163/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
+sequential_54/lstm_163/lstm_cell_43/SigmoidSigmoid2sequential_54/lstm_163/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2�
-sequential_54/lstm_163/lstm_cell_43/Sigmoid_1Sigmoid2sequential_54/lstm_163/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2�
'sequential_54/lstm_163/lstm_cell_43/mulMul1sequential_54/lstm_163/lstm_cell_43/Sigmoid_1:y:0'sequential_54/lstm_163/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
(sequential_54/lstm_163/lstm_cell_43/ReluRelu2sequential_54/lstm_163/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
)sequential_54/lstm_163/lstm_cell_43/mul_1Mul/sequential_54/lstm_163/lstm_cell_43/Sigmoid:y:06sequential_54/lstm_163/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2�
)sequential_54/lstm_163/lstm_cell_43/add_1AddV2+sequential_54/lstm_163/lstm_cell_43/mul:z:0-sequential_54/lstm_163/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2�
-sequential_54/lstm_163/lstm_cell_43/Sigmoid_2Sigmoid2sequential_54/lstm_163/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2�
*sequential_54/lstm_163/lstm_cell_43/Relu_1Relu-sequential_54/lstm_163/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
)sequential_54/lstm_163/lstm_cell_43/mul_2Mul1sequential_54/lstm_163/lstm_cell_43/Sigmoid_2:y:08sequential_54/lstm_163/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
4sequential_54/lstm_163/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
&sequential_54/lstm_163/TensorArrayV2_1TensorListReserve=sequential_54/lstm_163/TensorArrayV2_1/element_shape:output:0/sequential_54/lstm_163/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���]
sequential_54/lstm_163/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_54/lstm_163/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������k
)sequential_54/lstm_163/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_54/lstm_163/whileWhile2sequential_54/lstm_163/while/loop_counter:output:08sequential_54/lstm_163/while/maximum_iterations:output:0$sequential_54/lstm_163/time:output:0/sequential_54/lstm_163/TensorArrayV2_1:handle:0%sequential_54/lstm_163/zeros:output:0'sequential_54/lstm_163/zeros_1:output:0/sequential_54/lstm_163/strided_slice_1:output:0Nsequential_54/lstm_163/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_54_lstm_163_lstm_cell_43_matmul_readvariableop_resourceDsequential_54_lstm_163_lstm_cell_43_matmul_1_readvariableop_resourceCsequential_54_lstm_163_lstm_cell_43_biasadd_readvariableop_resource*
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
(sequential_54_lstm_163_while_body_266222*4
cond,R*
(sequential_54_lstm_163_while_cond_266221*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Gsequential_54/lstm_163/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
9sequential_54/lstm_163/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_54/lstm_163/while:output:3Psequential_54/lstm_163/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0
,sequential_54/lstm_163/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������x
.sequential_54/lstm_163/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_54/lstm_163/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential_54/lstm_163/strided_slice_3StridedSliceBsequential_54/lstm_163/TensorArrayV2Stack/TensorListStack:tensor:05sequential_54/lstm_163/strided_slice_3/stack:output:07sequential_54/lstm_163/strided_slice_3/stack_1:output:07sequential_54/lstm_163/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask|
'sequential_54/lstm_163/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
"sequential_54/lstm_163/transpose_1	TransposeBsequential_54/lstm_163/TensorArrayV2Stack/TensorListStack:tensor:00sequential_54/lstm_163/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2r
sequential_54/lstm_163/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_54/lstm_164/ShapeShape&sequential_54/lstm_163/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_54/lstm_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_54/lstm_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_54/lstm_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential_54/lstm_164/strided_sliceStridedSlice%sequential_54/lstm_164/Shape:output:03sequential_54/lstm_164/strided_slice/stack:output:05sequential_54/lstm_164/strided_slice/stack_1:output:05sequential_54/lstm_164/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_54/lstm_164/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
#sequential_54/lstm_164/zeros/packedPack-sequential_54/lstm_164/strided_slice:output:0.sequential_54/lstm_164/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_54/lstm_164/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_54/lstm_164/zerosFill,sequential_54/lstm_164/zeros/packed:output:0+sequential_54/lstm_164/zeros/Const:output:0*
T0*'
_output_shapes
:���������
i
'sequential_54/lstm_164/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
%sequential_54/lstm_164/zeros_1/packedPack-sequential_54/lstm_164/strided_slice:output:00sequential_54/lstm_164/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_54/lstm_164/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_54/lstm_164/zeros_1Fill.sequential_54/lstm_164/zeros_1/packed:output:0-sequential_54/lstm_164/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
z
%sequential_54/lstm_164/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
 sequential_54/lstm_164/transpose	Transpose&sequential_54/lstm_163/transpose_1:y:0.sequential_54/lstm_164/transpose/perm:output:0*
T0*+
_output_shapes
:���������2r
sequential_54/lstm_164/Shape_1Shape$sequential_54/lstm_164/transpose:y:0*
T0*
_output_shapes
:v
,sequential_54/lstm_164/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_54/lstm_164/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_54/lstm_164/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential_54/lstm_164/strided_slice_1StridedSlice'sequential_54/lstm_164/Shape_1:output:05sequential_54/lstm_164/strided_slice_1/stack:output:07sequential_54/lstm_164/strided_slice_1/stack_1:output:07sequential_54/lstm_164/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_54/lstm_164/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
$sequential_54/lstm_164/TensorArrayV2TensorListReserve;sequential_54/lstm_164/TensorArrayV2/element_shape:output:0/sequential_54/lstm_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Lsequential_54/lstm_164/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
>sequential_54/lstm_164/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_54/lstm_164/transpose:y:0Usequential_54/lstm_164/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���v
,sequential_54/lstm_164/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_54/lstm_164/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_54/lstm_164/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential_54/lstm_164/strided_slice_2StridedSlice$sequential_54/lstm_164/transpose:y:05sequential_54/lstm_164/strided_slice_2/stack:output:07sequential_54/lstm_164/strided_slice_2/stack_1:output:07sequential_54/lstm_164/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
9sequential_54/lstm_164/lstm_cell_44/MatMul/ReadVariableOpReadVariableOpBsequential_54_lstm_164_lstm_cell_44_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
*sequential_54/lstm_164/lstm_cell_44/MatMulMatMul/sequential_54/lstm_164/strided_slice_2:output:0Asequential_54/lstm_164/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
;sequential_54/lstm_164/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOpDsequential_54_lstm_164_lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
,sequential_54/lstm_164/lstm_cell_44/MatMul_1MatMul%sequential_54/lstm_164/zeros:output:0Csequential_54/lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
'sequential_54/lstm_164/lstm_cell_44/addAddV24sequential_54/lstm_164/lstm_cell_44/MatMul:product:06sequential_54/lstm_164/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
:sequential_54/lstm_164/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOpCsequential_54_lstm_164_lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
+sequential_54/lstm_164/lstm_cell_44/BiasAddBiasAdd+sequential_54/lstm_164/lstm_cell_44/add:z:0Bsequential_54/lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(u
3sequential_54/lstm_164/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_54/lstm_164/lstm_cell_44/splitSplit<sequential_54/lstm_164/lstm_cell_44/split/split_dim:output:04sequential_54/lstm_164/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
+sequential_54/lstm_164/lstm_cell_44/SigmoidSigmoid2sequential_54/lstm_164/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
�
-sequential_54/lstm_164/lstm_cell_44/Sigmoid_1Sigmoid2sequential_54/lstm_164/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
'sequential_54/lstm_164/lstm_cell_44/mulMul1sequential_54/lstm_164/lstm_cell_44/Sigmoid_1:y:0'sequential_54/lstm_164/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
(sequential_54/lstm_164/lstm_cell_44/ReluRelu2sequential_54/lstm_164/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
)sequential_54/lstm_164/lstm_cell_44/mul_1Mul/sequential_54/lstm_164/lstm_cell_44/Sigmoid:y:06sequential_54/lstm_164/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
)sequential_54/lstm_164/lstm_cell_44/add_1AddV2+sequential_54/lstm_164/lstm_cell_44/mul:z:0-sequential_54/lstm_164/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
�
-sequential_54/lstm_164/lstm_cell_44/Sigmoid_2Sigmoid2sequential_54/lstm_164/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
�
*sequential_54/lstm_164/lstm_cell_44/Relu_1Relu-sequential_54/lstm_164/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
)sequential_54/lstm_164/lstm_cell_44/mul_2Mul1sequential_54/lstm_164/lstm_cell_44/Sigmoid_2:y:08sequential_54/lstm_164/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
4sequential_54/lstm_164/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
&sequential_54/lstm_164/TensorArrayV2_1TensorListReserve=sequential_54/lstm_164/TensorArrayV2_1/element_shape:output:0/sequential_54/lstm_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���]
sequential_54/lstm_164/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_54/lstm_164/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������k
)sequential_54/lstm_164/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_54/lstm_164/whileWhile2sequential_54/lstm_164/while/loop_counter:output:08sequential_54/lstm_164/while/maximum_iterations:output:0$sequential_54/lstm_164/time:output:0/sequential_54/lstm_164/TensorArrayV2_1:handle:0%sequential_54/lstm_164/zeros:output:0'sequential_54/lstm_164/zeros_1:output:0/sequential_54/lstm_164/strided_slice_1:output:0Nsequential_54/lstm_164/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_54_lstm_164_lstm_cell_44_matmul_readvariableop_resourceDsequential_54_lstm_164_lstm_cell_44_matmul_1_readvariableop_resourceCsequential_54_lstm_164_lstm_cell_44_biasadd_readvariableop_resource*
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
(sequential_54_lstm_164_while_body_266361*4
cond,R*
(sequential_54_lstm_164_while_cond_266360*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Gsequential_54/lstm_164/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
9sequential_54/lstm_164/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_54/lstm_164/while:output:3Psequential_54/lstm_164/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0
,sequential_54/lstm_164/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������x
.sequential_54/lstm_164/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_54/lstm_164/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential_54/lstm_164/strided_slice_3StridedSliceBsequential_54/lstm_164/TensorArrayV2Stack/TensorListStack:tensor:05sequential_54/lstm_164/strided_slice_3/stack:output:07sequential_54/lstm_164/strided_slice_3/stack_1:output:07sequential_54/lstm_164/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask|
'sequential_54/lstm_164/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
"sequential_54/lstm_164/transpose_1	TransposeBsequential_54/lstm_164/TensorArrayV2Stack/TensorListStack:tensor:00sequential_54/lstm_164/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
r
sequential_54/lstm_164/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
,sequential_54/dense_54/MatMul/ReadVariableOpReadVariableOp5sequential_54_dense_54_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_54/dense_54/MatMulMatMul/sequential_54/lstm_164/strided_slice_3:output:04sequential_54/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_54/dense_54/BiasAdd/ReadVariableOpReadVariableOp6sequential_54_dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_54/dense_54/BiasAddBiasAdd'sequential_54/dense_54/MatMul:product:05sequential_54/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_54/dense_54/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_54/dense_54/BiasAdd/ReadVariableOp-^sequential_54/dense_54/MatMul/ReadVariableOp;^sequential_54/lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp:^sequential_54/lstm_162/lstm_cell_42/MatMul/ReadVariableOp<^sequential_54/lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp^sequential_54/lstm_162/while;^sequential_54/lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp:^sequential_54/lstm_163/lstm_cell_43/MatMul/ReadVariableOp<^sequential_54/lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp^sequential_54/lstm_163/while;^sequential_54/lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp:^sequential_54/lstm_164/lstm_cell_44/MatMul/ReadVariableOp<^sequential_54/lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp^sequential_54/lstm_164/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2^
-sequential_54/dense_54/BiasAdd/ReadVariableOp-sequential_54/dense_54/BiasAdd/ReadVariableOp2\
,sequential_54/dense_54/MatMul/ReadVariableOp,sequential_54/dense_54/MatMul/ReadVariableOp2x
:sequential_54/lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp:sequential_54/lstm_162/lstm_cell_42/BiasAdd/ReadVariableOp2v
9sequential_54/lstm_162/lstm_cell_42/MatMul/ReadVariableOp9sequential_54/lstm_162/lstm_cell_42/MatMul/ReadVariableOp2z
;sequential_54/lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp;sequential_54/lstm_162/lstm_cell_42/MatMul_1/ReadVariableOp2<
sequential_54/lstm_162/whilesequential_54/lstm_162/while2x
:sequential_54/lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp:sequential_54/lstm_163/lstm_cell_43/BiasAdd/ReadVariableOp2v
9sequential_54/lstm_163/lstm_cell_43/MatMul/ReadVariableOp9sequential_54/lstm_163/lstm_cell_43/MatMul/ReadVariableOp2z
;sequential_54/lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp;sequential_54/lstm_163/lstm_cell_43/MatMul_1/ReadVariableOp2<
sequential_54/lstm_163/whilesequential_54/lstm_163/while2x
:sequential_54/lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp:sequential_54/lstm_164/lstm_cell_44/BiasAdd/ReadVariableOp2v
9sequential_54/lstm_164/lstm_cell_44/MatMul/ReadVariableOp9sequential_54/lstm_164/lstm_cell_44/MatMul/ReadVariableOp2z
;sequential_54/lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp;sequential_54/lstm_164/lstm_cell_44/MatMul_1/ReadVariableOp2<
sequential_54/lstm_164/whilesequential_54/lstm_164/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_162_input
�
�
I__inference_sequential_54_layer_call_and_return_conditional_losses_268676
lstm_162_input"
lstm_162_268649:	�"
lstm_162_268651:	d�
lstm_162_268653:	�"
lstm_163_268656:	d�"
lstm_163_268658:	2�
lstm_163_268660:	�!
lstm_164_268663:2(!
lstm_164_268665:
(
lstm_164_268667:(!
dense_54_268670:

dense_54_268672:
identity�� dense_54/StatefulPartitionedCall� lstm_162/StatefulPartitionedCall� lstm_163/StatefulPartitionedCall� lstm_164/StatefulPartitionedCall�
 lstm_162/StatefulPartitionedCallStatefulPartitionedCalllstm_162_inputlstm_162_268649lstm_162_268651lstm_162_268653*
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_268496�
 lstm_163/StatefulPartitionedCallStatefulPartitionedCall)lstm_162/StatefulPartitionedCall:output:0lstm_163_268656lstm_163_268658lstm_163_268660*
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_268331�
 lstm_164/StatefulPartitionedCallStatefulPartitionedCall)lstm_163/StatefulPartitionedCall:output:0lstm_164_268663lstm_164_268665lstm_164_268667*
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_268166�
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)lstm_164/StatefulPartitionedCall:output:0dense_54_268670dense_54_268672*
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
GPU 2J 8� *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_267968x
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_54/StatefulPartitionedCall!^lstm_162/StatefulPartitionedCall!^lstm_163/StatefulPartitionedCall!^lstm_164/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 lstm_162/StatefulPartitionedCall lstm_162/StatefulPartitionedCall2D
 lstm_163/StatefulPartitionedCall lstm_163/StatefulPartitionedCall2D
 lstm_164/StatefulPartitionedCall lstm_164/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_162_input
�
�
(sequential_54_lstm_164_while_cond_266360J
Fsequential_54_lstm_164_while_sequential_54_lstm_164_while_loop_counterP
Lsequential_54_lstm_164_while_sequential_54_lstm_164_while_maximum_iterations,
(sequential_54_lstm_164_while_placeholder.
*sequential_54_lstm_164_while_placeholder_1.
*sequential_54_lstm_164_while_placeholder_2.
*sequential_54_lstm_164_while_placeholder_3L
Hsequential_54_lstm_164_while_less_sequential_54_lstm_164_strided_slice_1b
^sequential_54_lstm_164_while_sequential_54_lstm_164_while_cond_266360___redundant_placeholder0b
^sequential_54_lstm_164_while_sequential_54_lstm_164_while_cond_266360___redundant_placeholder1b
^sequential_54_lstm_164_while_sequential_54_lstm_164_while_cond_266360___redundant_placeholder2b
^sequential_54_lstm_164_while_sequential_54_lstm_164_while_cond_266360___redundant_placeholder3)
%sequential_54_lstm_164_while_identity
�
!sequential_54/lstm_164/while/LessLess(sequential_54_lstm_164_while_placeholderHsequential_54_lstm_164_while_less_sequential_54_lstm_164_strided_slice_1*
T0*
_output_shapes
: y
%sequential_54/lstm_164/while/IdentityIdentity%sequential_54/lstm_164/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_54_lstm_164_while_identity.sequential_54/lstm_164/while/Identity:output:0*(
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
)__inference_lstm_163_layer_call_fn_270257
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_267142|
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
�
�
while_cond_270480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_270480___redundant_placeholder04
0while_while_cond_270480___redundant_placeholder14
0while_while_cond_270480___redundant_placeholder24
0while_while_cond_270480___redundant_placeholder3
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
)__inference_lstm_164_layer_call_fn_270884

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
D__inference_lstm_164_layer_call_and_return_conditional_losses_267950o
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
�
�
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_267014

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
�7
�
while_body_271383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_44_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_44_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_44_matmul_readvariableop_resource:2(E
3while_lstm_cell_44_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_44_biasadd_readvariableop_resource:(��)while/lstm_cell_44/BiasAdd/ReadVariableOp�(while/lstm_cell_44/MatMul/ReadVariableOp�*while/lstm_cell_44/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_268412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	d�C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	�F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	d�A
2while_lstm_cell_42_biasadd_readvariableop_resource:	���)while/lstm_cell_42/BiasAdd/ReadVariableOp�(while/lstm_cell_42/MatMul/ReadVariableOp�*while/lstm_cell_42/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitz
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dt
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������dq
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dy
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_162_layer_call_fn_269630
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_266601|
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
)__inference_lstm_162_layer_call_fn_269652

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
D__inference_lstm_162_layer_call_and_return_conditional_losses_267650s
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
�
�
while_cond_271096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_271096___redundant_placeholder04
0while_while_cond_271096___redundant_placeholder14
0while_while_cond_271096___redundant_placeholder24
0while_while_cond_271096___redundant_placeholder3
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
while_body_270008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	d�C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	�F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	d�A
2while_lstm_cell_42_biasadd_readvariableop_resource:	���)while/lstm_cell_42/BiasAdd/ReadVariableOp�(while/lstm_cell_42/MatMul/ReadVariableOp�*while/lstm_cell_42/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitz
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dt
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������d|
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������dq
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dy
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_164_layer_call_fn_270862
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_267301o
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
�

�
lstm_162_while_cond_269250.
*lstm_162_while_lstm_162_while_loop_counter4
0lstm_162_while_lstm_162_while_maximum_iterations
lstm_162_while_placeholder 
lstm_162_while_placeholder_1 
lstm_162_while_placeholder_2 
lstm_162_while_placeholder_30
,lstm_162_while_less_lstm_162_strided_slice_1F
Blstm_162_while_lstm_162_while_cond_269250___redundant_placeholder0F
Blstm_162_while_lstm_162_while_cond_269250___redundant_placeholder1F
Blstm_162_while_lstm_162_while_cond_269250___redundant_placeholder2F
Blstm_162_while_lstm_162_while_cond_269250___redundant_placeholder3
lstm_162_while_identity
�
lstm_162/while/LessLesslstm_162_while_placeholder,lstm_162_while_less_lstm_162_strided_slice_1*
T0*
_output_shapes
: ]
lstm_162/while/IdentityIdentitylstm_162/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_162_while_identity lstm_162/while/Identity:output:0*(
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
while_cond_270623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_270623___redundant_placeholder04
0while_while_cond_270623___redundant_placeholder14
0while_while_cond_270623___redundant_placeholder24
0while_while_cond_270623___redundant_placeholder3
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_271181
inputs_0=
+lstm_cell_44_matmul_readvariableop_resource:2(?
-lstm_cell_44_matmul_1_readvariableop_resource:
(:
,lstm_cell_44_biasadd_readvariableop_resource:(
identity��#lstm_cell_44/BiasAdd/ReadVariableOp�"lstm_cell_44/MatMul/ReadVariableOp�$lstm_cell_44/MatMul_1/ReadVariableOp�while=
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_271097*
condR
while_cond_271096*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�J
�
D__inference_lstm_164_layer_call_and_return_conditional_losses_271038
inputs_0=
+lstm_cell_44_matmul_readvariableop_resource:2(?
-lstm_cell_44_matmul_1_readvariableop_resource:
(:
,lstm_cell_44_biasadd_readvariableop_resource:(
identity��#lstm_cell_44/BiasAdd/ReadVariableOp�"lstm_cell_44/MatMul/ReadVariableOp�$lstm_cell_44/MatMul_1/ReadVariableOp�while=
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_270954*
condR
while_cond_270953*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
)__inference_lstm_164_layer_call_fn_270895

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
D__inference_lstm_164_layer_call_and_return_conditional_losses_268166o
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
while_cond_270337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_270337___redundant_placeholder04
0while_while_cond_270337___redundant_placeholder14
0while_while_cond_270337___redundant_placeholder24
0while_while_cond_270337___redundant_placeholder3
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
�
�
-__inference_lstm_cell_43_layer_call_fn_271618

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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_267014o
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
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_267364

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
while_cond_266722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_266722___redundant_placeholder04
0while_while_cond_266722___redundant_placeholder14
0while_while_cond_266722___redundant_placeholder24
0while_while_cond_266722___redundant_placeholder3
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_270235

inputs>
+lstm_cell_42_matmul_readvariableop_resource:	�@
-lstm_cell_42_matmul_1_readvariableop_resource:	d�;
,lstm_cell_42_biasadd_readvariableop_resource:	�
identity��#lstm_cell_42/BiasAdd/ReadVariableOp�"lstm_cell_42/MatMul/ReadVariableOp�$lstm_cell_42/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitn
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:���������dw
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dh
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:���������d{
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:���������dp
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:���������de
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
bodyR
while_body_270151*
condR
while_cond_270150*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�"
�
while_body_267423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_44_267447_0:2(-
while_lstm_cell_44_267449_0:
()
while_lstm_cell_44_267451_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_44_267447:2(+
while_lstm_cell_44_267449:
('
while_lstm_cell_44_267451:(��*while/lstm_cell_44/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
*while/lstm_cell_44/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_44_267447_0while_lstm_cell_44_267449_0while_lstm_cell_44_267451_0*
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
GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_267364�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_44/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_44/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity3while/lstm_cell_44/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
y

while/NoOpNoOp+^while/lstm_cell_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_44_267447while_lstm_cell_44_267447_0"8
while_lstm_cell_44_267449while_lstm_cell_44_267449_0"8
while_lstm_cell_44_267451while_lstm_cell_44_267451_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_44/StatefulPartitionedCall*while/lstm_cell_44/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_271324

inputs=
+lstm_cell_44_matmul_readvariableop_resource:2(?
-lstm_cell_44_matmul_1_readvariableop_resource:
(:
,lstm_cell_44_biasadd_readvariableop_resource:(
identity��#lstm_cell_44/BiasAdd/ReadVariableOp�"lstm_cell_44/MatMul/ReadVariableOp�$lstm_cell_44/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_271240*
condR
while_cond_271239*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_271239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_271239___redundant_placeholder04
0while_while_cond_271239___redundant_placeholder14
0while_while_cond_271239___redundant_placeholder24
0while_while_cond_271239___redundant_placeholder3
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
�7
�
while_body_268082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_44_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_44_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_44_matmul_readvariableop_resource:2(E
3while_lstm_cell_44_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_44_biasadd_readvariableop_resource:(��)while/lstm_cell_44/BiasAdd/ReadVariableOp�(while/lstm_cell_44/MatMul/ReadVariableOp�*while/lstm_cell_44/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:���������
|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:���������
q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_267800

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	d�@
-lstm_cell_43_matmul_1_readvariableop_resource:	2�;
,lstm_cell_43_biasadd_readvariableop_resource:	�
identity��#lstm_cell_43/BiasAdd/ReadVariableOp�"lstm_cell_43/MatMul/ReadVariableOp�$lstm_cell_43/MatMul_1/ReadVariableOp�while;
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitn
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:���������2w
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2h
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:���������2{
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:���������2p
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:���������2e
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
bodyR
while_body_267716*
condR
while_cond_267715*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
lstm_162_input;
 serving_default_lstm_162_input:0���������<
dense_540
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
2dense_54/kernel
:2dense_54/bias
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
0:.	�2lstm_162/lstm_cell_162/kernel
::8	d�2'lstm_162/lstm_cell_162/recurrent_kernel
*:(�2lstm_162/lstm_cell_162/bias
0:.	d�2lstm_163/lstm_cell_163/kernel
::8	2�2'lstm_163/lstm_cell_163/recurrent_kernel
*:(�2lstm_163/lstm_cell_163/bias
/:-2(2lstm_164/lstm_cell_164/kernel
9:7
(2'lstm_164/lstm_cell_164/recurrent_kernel
):'(2lstm_164/lstm_cell_164/bias
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
2Adam/dense_54/kernel/m
 :2Adam/dense_54/bias/m
5:3	�2$Adam/lstm_162/lstm_cell_162/kernel/m
?:=	d�2.Adam/lstm_162/lstm_cell_162/recurrent_kernel/m
/:-�2"Adam/lstm_162/lstm_cell_162/bias/m
5:3	d�2$Adam/lstm_163/lstm_cell_163/kernel/m
?:=	2�2.Adam/lstm_163/lstm_cell_163/recurrent_kernel/m
/:-�2"Adam/lstm_163/lstm_cell_163/bias/m
4:22(2$Adam/lstm_164/lstm_cell_164/kernel/m
>:<
(2.Adam/lstm_164/lstm_cell_164/recurrent_kernel/m
.:,(2"Adam/lstm_164/lstm_cell_164/bias/m
&:$
2Adam/dense_54/kernel/v
 :2Adam/dense_54/bias/v
5:3	�2$Adam/lstm_162/lstm_cell_162/kernel/v
?:=	d�2.Adam/lstm_162/lstm_cell_162/recurrent_kernel/v
/:-�2"Adam/lstm_162/lstm_cell_162/bias/v
5:3	d�2$Adam/lstm_163/lstm_cell_163/kernel/v
?:=	2�2.Adam/lstm_163/lstm_cell_163/recurrent_kernel/v
/:-�2"Adam/lstm_163/lstm_cell_163/bias/v
4:22(2$Adam/lstm_164/lstm_cell_164/kernel/v
>:<
(2.Adam/lstm_164/lstm_cell_164/recurrent_kernel/v
.:,(2"Adam/lstm_164/lstm_cell_164/bias/v
�2�
.__inference_sequential_54_layer_call_fn_268000
.__inference_sequential_54_layer_call_fn_268738
.__inference_sequential_54_layer_call_fn_268765
.__inference_sequential_54_layer_call_fn_268616�
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
I__inference_sequential_54_layer_call_and_return_conditional_losses_269192
I__inference_sequential_54_layer_call_and_return_conditional_losses_269619
I__inference_sequential_54_layer_call_and_return_conditional_losses_268646
I__inference_sequential_54_layer_call_and_return_conditional_losses_268676�
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
!__inference__wrapped_model_266451lstm_162_input"�
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
)__inference_lstm_162_layer_call_fn_269630
)__inference_lstm_162_layer_call_fn_269641
)__inference_lstm_162_layer_call_fn_269652
)__inference_lstm_162_layer_call_fn_269663�
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_269806
D__inference_lstm_162_layer_call_and_return_conditional_losses_269949
D__inference_lstm_162_layer_call_and_return_conditional_losses_270092
D__inference_lstm_162_layer_call_and_return_conditional_losses_270235�
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
)__inference_lstm_163_layer_call_fn_270246
)__inference_lstm_163_layer_call_fn_270257
)__inference_lstm_163_layer_call_fn_270268
)__inference_lstm_163_layer_call_fn_270279�
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_270422
D__inference_lstm_163_layer_call_and_return_conditional_losses_270565
D__inference_lstm_163_layer_call_and_return_conditional_losses_270708
D__inference_lstm_163_layer_call_and_return_conditional_losses_270851�
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
)__inference_lstm_164_layer_call_fn_270862
)__inference_lstm_164_layer_call_fn_270873
)__inference_lstm_164_layer_call_fn_270884
)__inference_lstm_164_layer_call_fn_270895�
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_271038
D__inference_lstm_164_layer_call_and_return_conditional_losses_271181
D__inference_lstm_164_layer_call_and_return_conditional_losses_271324
D__inference_lstm_164_layer_call_and_return_conditional_losses_271467�
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
)__inference_dense_54_layer_call_fn_271476�
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
D__inference_dense_54_layer_call_and_return_conditional_losses_271486�
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
$__inference_signature_wrapper_268711lstm_162_input"�
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
-__inference_lstm_cell_42_layer_call_fn_271503
-__inference_lstm_cell_42_layer_call_fn_271520�
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_271552
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_271584�
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
-__inference_lstm_cell_43_layer_call_fn_271601
-__inference_lstm_cell_43_layer_call_fn_271618�
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_271650
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_271682�
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
-__inference_lstm_cell_44_layer_call_fn_271699
-__inference_lstm_cell_44_layer_call_fn_271716�
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
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_271748
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_271780�
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
!__inference__wrapped_model_266451-./012345!";�8
1�.
,�)
lstm_162_input���������
� "3�0
.
dense_54"�
dense_54����������
D__inference_dense_54_layer_call_and_return_conditional_losses_271486\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� |
)__inference_dense_54_layer_call_fn_271476O!"/�,
%�"
 �
inputs���������

� "�����������
D__inference_lstm_162_layer_call_and_return_conditional_losses_269806�-./O�L
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_269949�-./O�L
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_270092q-./?�<
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
D__inference_lstm_162_layer_call_and_return_conditional_losses_270235q-./?�<
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
)__inference_lstm_162_layer_call_fn_269630}-./O�L
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
)__inference_lstm_162_layer_call_fn_269641}-./O�L
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
)__inference_lstm_162_layer_call_fn_269652d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
)__inference_lstm_162_layer_call_fn_269663d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
D__inference_lstm_163_layer_call_and_return_conditional_losses_270422�012O�L
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_270565�012O�L
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_270708q012?�<
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
D__inference_lstm_163_layer_call_and_return_conditional_losses_270851q012?�<
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
)__inference_lstm_163_layer_call_fn_270246}012O�L
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
)__inference_lstm_163_layer_call_fn_270257}012O�L
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
)__inference_lstm_163_layer_call_fn_270268d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
)__inference_lstm_163_layer_call_fn_270279d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
D__inference_lstm_164_layer_call_and_return_conditional_losses_271038}345O�L
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_271181}345O�L
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_271324m345?�<
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
D__inference_lstm_164_layer_call_and_return_conditional_losses_271467m345?�<
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
)__inference_lstm_164_layer_call_fn_270862p345O�L
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
)__inference_lstm_164_layer_call_fn_270873p345O�L
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
)__inference_lstm_164_layer_call_fn_270884`345?�<
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
)__inference_lstm_164_layer_call_fn_270895`345?�<
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_271552�-./��}
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_271584�-./��}
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
-__inference_lstm_cell_42_layer_call_fn_271503�-./��}
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
-__inference_lstm_cell_42_layer_call_fn_271520�-./��}
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_271650�012��}
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_271682�012��}
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
-__inference_lstm_cell_43_layer_call_fn_271601�012��}
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
-__inference_lstm_cell_43_layer_call_fn_271618�012��}
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
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_271748�345��}
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
H__inference_lstm_cell_44_layer_call_and_return_conditional_losses_271780�345��}
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
-__inference_lstm_cell_44_layer_call_fn_271699�345��}
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
-__inference_lstm_cell_44_layer_call_fn_271716�345��}
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
I__inference_sequential_54_layer_call_and_return_conditional_losses_268646y-./012345!"C�@
9�6
,�)
lstm_162_input���������
p 

 
� "%�"
�
0���������
� �
I__inference_sequential_54_layer_call_and_return_conditional_losses_268676y-./012345!"C�@
9�6
,�)
lstm_162_input���������
p

 
� "%�"
�
0���������
� �
I__inference_sequential_54_layer_call_and_return_conditional_losses_269192q-./012345!";�8
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
I__inference_sequential_54_layer_call_and_return_conditional_losses_269619q-./012345!";�8
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
.__inference_sequential_54_layer_call_fn_268000l-./012345!"C�@
9�6
,�)
lstm_162_input���������
p 

 
� "�����������
.__inference_sequential_54_layer_call_fn_268616l-./012345!"C�@
9�6
,�)
lstm_162_input���������
p

 
� "�����������
.__inference_sequential_54_layer_call_fn_268738d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
.__inference_sequential_54_layer_call_fn_268765d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_268711�-./012345!"M�J
� 
C�@
>
lstm_162_input,�)
lstm_162_input���������"3�0
.
dense_54"�
dense_54���������
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
dense_201/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_201/kernel
u
$dense_201/kernel/Read/ReadVariableOpReadVariableOpdense_201/kernel*
_output_shapes

:
*
dtype0
t
dense_201/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_201/bias
m
"dense_201/bias/Read/ReadVariableOpReadVariableOpdense_201/bias*
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
lstm_603/lstm_cell_603/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_603/lstm_cell_603/kernel
�
1lstm_603/lstm_cell_603/kernel/Read/ReadVariableOpReadVariableOplstm_603/lstm_cell_603/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_603/lstm_cell_603/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_603/lstm_cell_603/recurrent_kernel
�
;lstm_603/lstm_cell_603/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_603/lstm_cell_603/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_603/lstm_cell_603/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_603/lstm_cell_603/bias
�
/lstm_603/lstm_cell_603/bias/Read/ReadVariableOpReadVariableOplstm_603/lstm_cell_603/bias*
_output_shapes	
:�*
dtype0
�
lstm_604/lstm_cell_604/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_604/lstm_cell_604/kernel
�
1lstm_604/lstm_cell_604/kernel/Read/ReadVariableOpReadVariableOplstm_604/lstm_cell_604/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_604/lstm_cell_604/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_604/lstm_cell_604/recurrent_kernel
�
;lstm_604/lstm_cell_604/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_604/lstm_cell_604/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_604/lstm_cell_604/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_604/lstm_cell_604/bias
�
/lstm_604/lstm_cell_604/bias/Read/ReadVariableOpReadVariableOplstm_604/lstm_cell_604/bias*
_output_shapes	
:�*
dtype0
�
lstm_605/lstm_cell_605/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_605/lstm_cell_605/kernel
�
1lstm_605/lstm_cell_605/kernel/Read/ReadVariableOpReadVariableOplstm_605/lstm_cell_605/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_605/lstm_cell_605/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_605/lstm_cell_605/recurrent_kernel
�
;lstm_605/lstm_cell_605/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_605/lstm_cell_605/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_605/lstm_cell_605/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_605/lstm_cell_605/bias
�
/lstm_605/lstm_cell_605/bias/Read/ReadVariableOpReadVariableOplstm_605/lstm_cell_605/bias*
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
Adam/dense_201/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_201/kernel/m
�
+Adam/dense_201/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_201/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_201/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_201/bias/m
{
)Adam/dense_201/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_201/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_603/lstm_cell_603/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_603/lstm_cell_603/kernel/m
�
8Adam/lstm_603/lstm_cell_603/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_603/lstm_cell_603/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_603/lstm_cell_603/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_603/lstm_cell_603/recurrent_kernel/m
�
BAdam/lstm_603/lstm_cell_603/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_603/lstm_cell_603/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_603/lstm_cell_603/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_603/lstm_cell_603/bias/m
�
6Adam/lstm_603/lstm_cell_603/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_603/lstm_cell_603/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_604/lstm_cell_604/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_604/lstm_cell_604/kernel/m
�
8Adam/lstm_604/lstm_cell_604/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_604/lstm_cell_604/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_604/lstm_cell_604/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_604/lstm_cell_604/recurrent_kernel/m
�
BAdam/lstm_604/lstm_cell_604/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_604/lstm_cell_604/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_604/lstm_cell_604/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_604/lstm_cell_604/bias/m
�
6Adam/lstm_604/lstm_cell_604/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_604/lstm_cell_604/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_605/lstm_cell_605/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_605/lstm_cell_605/kernel/m
�
8Adam/lstm_605/lstm_cell_605/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_605/lstm_cell_605/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_605/lstm_cell_605/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_605/lstm_cell_605/recurrent_kernel/m
�
BAdam/lstm_605/lstm_cell_605/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_605/lstm_cell_605/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_605/lstm_cell_605/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_605/lstm_cell_605/bias/m
�
6Adam/lstm_605/lstm_cell_605/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_605/lstm_cell_605/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_201/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_201/kernel/v
�
+Adam/dense_201/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_201/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_201/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_201/bias/v
{
)Adam/dense_201/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_201/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_603/lstm_cell_603/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_603/lstm_cell_603/kernel/v
�
8Adam/lstm_603/lstm_cell_603/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_603/lstm_cell_603/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_603/lstm_cell_603/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_603/lstm_cell_603/recurrent_kernel/v
�
BAdam/lstm_603/lstm_cell_603/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_603/lstm_cell_603/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_603/lstm_cell_603/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_603/lstm_cell_603/bias/v
�
6Adam/lstm_603/lstm_cell_603/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_603/lstm_cell_603/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_604/lstm_cell_604/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_604/lstm_cell_604/kernel/v
�
8Adam/lstm_604/lstm_cell_604/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_604/lstm_cell_604/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_604/lstm_cell_604/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_604/lstm_cell_604/recurrent_kernel/v
�
BAdam/lstm_604/lstm_cell_604/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_604/lstm_cell_604/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_604/lstm_cell_604/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_604/lstm_cell_604/bias/v
�
6Adam/lstm_604/lstm_cell_604/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_604/lstm_cell_604/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_605/lstm_cell_605/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_605/lstm_cell_605/kernel/v
�
8Adam/lstm_605/lstm_cell_605/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_605/lstm_cell_605/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_605/lstm_cell_605/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_605/lstm_cell_605/recurrent_kernel/v
�
BAdam/lstm_605/lstm_cell_605/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_605/lstm_cell_605/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_605/lstm_cell_605/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_605/lstm_cell_605/bias/v
�
6Adam/lstm_605/lstm_cell_605/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_605/lstm_cell_605/bias/v*
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
VARIABLE_VALUEdense_201/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_201/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_603/lstm_cell_603/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_603/lstm_cell_603/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_603/lstm_cell_603/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_604/lstm_cell_604/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_604/lstm_cell_604/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_604/lstm_cell_604/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_605/lstm_cell_605/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_605/lstm_cell_605/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_605/lstm_cell_605/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_201/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_201/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_603/lstm_cell_603/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_603/lstm_cell_603/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_603/lstm_cell_603/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_604/lstm_cell_604/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_604/lstm_cell_604/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_604/lstm_cell_604/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_605/lstm_cell_605/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_605/lstm_cell_605/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_605/lstm_cell_605/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_201/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_201/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_603/lstm_cell_603/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_603/lstm_cell_603/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_603/lstm_cell_603/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_604/lstm_cell_604/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_604/lstm_cell_604/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_604/lstm_cell_604/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_605/lstm_cell_605/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_605/lstm_cell_605/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_605/lstm_cell_605/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_603_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_603_inputlstm_603/lstm_cell_603/kernel'lstm_603/lstm_cell_603/recurrent_kernellstm_603/lstm_cell_603/biaslstm_604/lstm_cell_604/kernel'lstm_604/lstm_cell_604/recurrent_kernellstm_604/lstm_cell_604/biaslstm_605/lstm_cell_605/kernel'lstm_605/lstm_cell_605/recurrent_kernellstm_605/lstm_cell_605/biasdense_201/kerneldense_201/bias*
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
%__inference_signature_wrapper_4749518
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_201/kernel/Read/ReadVariableOp"dense_201/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_603/lstm_cell_603/kernel/Read/ReadVariableOp;lstm_603/lstm_cell_603/recurrent_kernel/Read/ReadVariableOp/lstm_603/lstm_cell_603/bias/Read/ReadVariableOp1lstm_604/lstm_cell_604/kernel/Read/ReadVariableOp;lstm_604/lstm_cell_604/recurrent_kernel/Read/ReadVariableOp/lstm_604/lstm_cell_604/bias/Read/ReadVariableOp1lstm_605/lstm_cell_605/kernel/Read/ReadVariableOp;lstm_605/lstm_cell_605/recurrent_kernel/Read/ReadVariableOp/lstm_605/lstm_cell_605/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_201/kernel/m/Read/ReadVariableOp)Adam/dense_201/bias/m/Read/ReadVariableOp8Adam/lstm_603/lstm_cell_603/kernel/m/Read/ReadVariableOpBAdam/lstm_603/lstm_cell_603/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_603/lstm_cell_603/bias/m/Read/ReadVariableOp8Adam/lstm_604/lstm_cell_604/kernel/m/Read/ReadVariableOpBAdam/lstm_604/lstm_cell_604/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_604/lstm_cell_604/bias/m/Read/ReadVariableOp8Adam/lstm_605/lstm_cell_605/kernel/m/Read/ReadVariableOpBAdam/lstm_605/lstm_cell_605/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_605/lstm_cell_605/bias/m/Read/ReadVariableOp+Adam/dense_201/kernel/v/Read/ReadVariableOp)Adam/dense_201/bias/v/Read/ReadVariableOp8Adam/lstm_603/lstm_cell_603/kernel/v/Read/ReadVariableOpBAdam/lstm_603/lstm_cell_603/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_603/lstm_cell_603/bias/v/Read/ReadVariableOp8Adam/lstm_604/lstm_cell_604/kernel/v/Read/ReadVariableOpBAdam/lstm_604/lstm_cell_604/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_604/lstm_cell_604/bias/v/Read/ReadVariableOp8Adam/lstm_605/lstm_cell_605/kernel/v/Read/ReadVariableOpBAdam/lstm_605/lstm_cell_605/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_605/lstm_cell_605/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4752730
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_201/kerneldense_201/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_603/lstm_cell_603/kernel'lstm_603/lstm_cell_603/recurrent_kernellstm_603/lstm_cell_603/biaslstm_604/lstm_cell_604/kernel'lstm_604/lstm_cell_604/recurrent_kernellstm_604/lstm_cell_604/biaslstm_605/lstm_cell_605/kernel'lstm_605/lstm_cell_605/recurrent_kernellstm_605/lstm_cell_605/biastotalcountAdam/dense_201/kernel/mAdam/dense_201/bias/m$Adam/lstm_603/lstm_cell_603/kernel/m.Adam/lstm_603/lstm_cell_603/recurrent_kernel/m"Adam/lstm_603/lstm_cell_603/bias/m$Adam/lstm_604/lstm_cell_604/kernel/m.Adam/lstm_604/lstm_cell_604/recurrent_kernel/m"Adam/lstm_604/lstm_cell_604/bias/m$Adam/lstm_605/lstm_cell_605/kernel/m.Adam/lstm_605/lstm_cell_605/recurrent_kernel/m"Adam/lstm_605/lstm_cell_605/bias/mAdam/dense_201/kernel/vAdam/dense_201/bias/v$Adam/lstm_603/lstm_cell_603/kernel/v.Adam/lstm_603/lstm_cell_603/recurrent_kernel/v"Adam/lstm_603/lstm_cell_603/bias/v$Adam/lstm_604/lstm_cell_604/kernel/v.Adam/lstm_604/lstm_cell_604/recurrent_kernel/v"Adam/lstm_604/lstm_cell_604/bias/v$Adam/lstm_605/lstm_cell_605/kernel/v.Adam/lstm_605/lstm_cell_605/recurrent_kernel/v"Adam/lstm_605/lstm_cell_605/bias/v*4
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
#__inference__traced_restore_4752860��+
�8
�
E__inference_lstm_603_layer_call_and_return_conditional_losses_4747408

inputs(
lstm_cell_783_4747326:	�(
lstm_cell_783_4747328:	d�$
lstm_cell_783_4747330:	�
identity��%lstm_cell_783/StatefulPartitionedCall�while;
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
%lstm_cell_783/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_783_4747326lstm_cell_783_4747328lstm_cell_783_4747330*
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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4747325n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_783_4747326lstm_cell_783_4747328lstm_cell_783_4747330*
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
while_body_4747339*
condR
while_cond_4747338*K
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
NoOpNoOp&^lstm_cell_783/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_783/StatefulPartitionedCall%lstm_cell_783/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�J
�
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751658

inputs?
,lstm_cell_784_matmul_readvariableop_resource:	d�A
.lstm_cell_784_matmul_1_readvariableop_resource:	2�<
-lstm_cell_784_biasadd_readvariableop_resource:	�
identity��$lstm_cell_784/BiasAdd/ReadVariableOp�#lstm_cell_784/MatMul/ReadVariableOp�%lstm_cell_784/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_784/MatMul/ReadVariableOpReadVariableOp,lstm_cell_784_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_784/MatMulMatMulstrided_slice_2:output:0+lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_784_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_784/MatMul_1MatMulzeros:output:0-lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_784/addAddV2lstm_cell_784/MatMul:product:0 lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_784_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_784/BiasAddBiasAddlstm_cell_784/add:z:0,lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_784/splitSplit&lstm_cell_784/split/split_dim:output:0lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_784/SigmoidSigmoidlstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_1Sigmoidlstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_784/mulMullstm_cell_784/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_784/ReluRelulstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_1Mullstm_cell_784/Sigmoid:y:0 lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_784/add_1AddV2lstm_cell_784/mul:z:0lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_2Sigmoidlstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_784/Relu_1Relulstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_2Mullstm_cell_784/Sigmoid_2:y:0"lstm_cell_784/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_784_matmul_readvariableop_resource.lstm_cell_784_matmul_1_readvariableop_resource-lstm_cell_784_biasadd_readvariableop_resource*
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
while_body_4751574*
condR
while_cond_4751573*K
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
NoOpNoOp%^lstm_cell_784/BiasAdd/ReadVariableOp$^lstm_cell_784/MatMul/ReadVariableOp&^lstm_cell_784/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_784/BiasAdd/ReadVariableOp$lstm_cell_784/BiasAdd/ReadVariableOp2J
#lstm_cell_784/MatMul/ReadVariableOp#lstm_cell_784/MatMul/ReadVariableOp2N
%lstm_cell_784/MatMul_1/ReadVariableOp%lstm_cell_784/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_4751573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4751573___redundant_placeholder05
1while_while_cond_4751573___redundant_placeholder15
1while_while_cond_4751573___redundant_placeholder25
1while_while_cond_4751573___redundant_placeholder3
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
lstm_605_while_cond_4750335.
*lstm_605_while_lstm_605_while_loop_counter4
0lstm_605_while_lstm_605_while_maximum_iterations
lstm_605_while_placeholder 
lstm_605_while_placeholder_1 
lstm_605_while_placeholder_2 
lstm_605_while_placeholder_30
,lstm_605_while_less_lstm_605_strided_slice_1G
Clstm_605_while_lstm_605_while_cond_4750335___redundant_placeholder0G
Clstm_605_while_lstm_605_while_cond_4750335___redundant_placeholder1G
Clstm_605_while_lstm_605_while_cond_4750335___redundant_placeholder2G
Clstm_605_while_lstm_605_while_cond_4750335___redundant_placeholder3
lstm_605_while_identity
�
lstm_605/while/LessLesslstm_605_while_placeholder,lstm_605_while_less_lstm_605_strided_slice_1*
T0*
_output_shapes
: ]
lstm_605/while/IdentityIdentitylstm_605/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_605_while_identity lstm_605/while/Identity:output:0*(
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
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749999

inputsH
5lstm_603_lstm_cell_783_matmul_readvariableop_resource:	�J
7lstm_603_lstm_cell_783_matmul_1_readvariableop_resource:	d�E
6lstm_603_lstm_cell_783_biasadd_readvariableop_resource:	�H
5lstm_604_lstm_cell_784_matmul_readvariableop_resource:	d�J
7lstm_604_lstm_cell_784_matmul_1_readvariableop_resource:	2�E
6lstm_604_lstm_cell_784_biasadd_readvariableop_resource:	�G
5lstm_605_lstm_cell_785_matmul_readvariableop_resource:2(I
7lstm_605_lstm_cell_785_matmul_1_readvariableop_resource:
(D
6lstm_605_lstm_cell_785_biasadd_readvariableop_resource:(:
(dense_201_matmul_readvariableop_resource:
7
)dense_201_biasadd_readvariableop_resource:
identity�� dense_201/BiasAdd/ReadVariableOp�dense_201/MatMul/ReadVariableOp�-lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp�,lstm_603/lstm_cell_783/MatMul/ReadVariableOp�.lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp�lstm_603/while�-lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp�,lstm_604/lstm_cell_784/MatMul/ReadVariableOp�.lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp�lstm_604/while�-lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp�,lstm_605/lstm_cell_785/MatMul/ReadVariableOp�.lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp�lstm_605/whileD
lstm_603/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_603/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_603/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_603/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_603/strided_sliceStridedSlicelstm_603/Shape:output:0%lstm_603/strided_slice/stack:output:0'lstm_603/strided_slice/stack_1:output:0'lstm_603/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_603/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_603/zeros/packedPacklstm_603/strided_slice:output:0 lstm_603/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_603/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_603/zerosFilllstm_603/zeros/packed:output:0lstm_603/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_603/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_603/zeros_1/packedPacklstm_603/strided_slice:output:0"lstm_603/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_603/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_603/zeros_1Fill lstm_603/zeros_1/packed:output:0lstm_603/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_603/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_603/transpose	Transposeinputs lstm_603/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_603/Shape_1Shapelstm_603/transpose:y:0*
T0*
_output_shapes
:h
lstm_603/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_603/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_603/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_603/strided_slice_1StridedSlicelstm_603/Shape_1:output:0'lstm_603/strided_slice_1/stack:output:0)lstm_603/strided_slice_1/stack_1:output:0)lstm_603/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_603/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_603/TensorArrayV2TensorListReserve-lstm_603/TensorArrayV2/element_shape:output:0!lstm_603/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_603/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_603/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_603/transpose:y:0Glstm_603/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_603/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_603/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_603/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_603/strided_slice_2StridedSlicelstm_603/transpose:y:0'lstm_603/strided_slice_2/stack:output:0)lstm_603/strided_slice_2/stack_1:output:0)lstm_603/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_603/lstm_cell_783/MatMul/ReadVariableOpReadVariableOp5lstm_603_lstm_cell_783_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_603/lstm_cell_783/MatMulMatMul!lstm_603/strided_slice_2:output:04lstm_603/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_603/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp7lstm_603_lstm_cell_783_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_603/lstm_cell_783/MatMul_1MatMullstm_603/zeros:output:06lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_603/lstm_cell_783/addAddV2'lstm_603/lstm_cell_783/MatMul:product:0)lstm_603/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_603/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp6lstm_603_lstm_cell_783_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_603/lstm_cell_783/BiasAddBiasAddlstm_603/lstm_cell_783/add:z:05lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_603/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_603/lstm_cell_783/splitSplit/lstm_603/lstm_cell_783/split/split_dim:output:0'lstm_603/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_603/lstm_cell_783/SigmoidSigmoid%lstm_603/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_603/lstm_cell_783/Sigmoid_1Sigmoid%lstm_603/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_603/lstm_cell_783/mulMul$lstm_603/lstm_cell_783/Sigmoid_1:y:0lstm_603/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_603/lstm_cell_783/ReluRelu%lstm_603/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_603/lstm_cell_783/mul_1Mul"lstm_603/lstm_cell_783/Sigmoid:y:0)lstm_603/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_603/lstm_cell_783/add_1AddV2lstm_603/lstm_cell_783/mul:z:0 lstm_603/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_603/lstm_cell_783/Sigmoid_2Sigmoid%lstm_603/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_603/lstm_cell_783/Relu_1Relu lstm_603/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_603/lstm_cell_783/mul_2Mul$lstm_603/lstm_cell_783/Sigmoid_2:y:0+lstm_603/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_603/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_603/TensorArrayV2_1TensorListReserve/lstm_603/TensorArrayV2_1/element_shape:output:0!lstm_603/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_603/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_603/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_603/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_603/whileWhile$lstm_603/while/loop_counter:output:0*lstm_603/while/maximum_iterations:output:0lstm_603/time:output:0!lstm_603/TensorArrayV2_1:handle:0lstm_603/zeros:output:0lstm_603/zeros_1:output:0!lstm_603/strided_slice_1:output:0@lstm_603/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_603_lstm_cell_783_matmul_readvariableop_resource7lstm_603_lstm_cell_783_matmul_1_readvariableop_resource6lstm_603_lstm_cell_783_biasadd_readvariableop_resource*
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
lstm_603_while_body_4749631*'
condR
lstm_603_while_cond_4749630*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_603/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_603/TensorArrayV2Stack/TensorListStackTensorListStacklstm_603/while:output:3Blstm_603/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_603/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_603/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_603/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_603/strided_slice_3StridedSlice4lstm_603/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_603/strided_slice_3/stack:output:0)lstm_603/strided_slice_3/stack_1:output:0)lstm_603/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_603/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_603/transpose_1	Transpose4lstm_603/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_603/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_603/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_604/ShapeShapelstm_603/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_604/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_604/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_604/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_604/strided_sliceStridedSlicelstm_604/Shape:output:0%lstm_604/strided_slice/stack:output:0'lstm_604/strided_slice/stack_1:output:0'lstm_604/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_604/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_604/zeros/packedPacklstm_604/strided_slice:output:0 lstm_604/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_604/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_604/zerosFilllstm_604/zeros/packed:output:0lstm_604/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_604/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_604/zeros_1/packedPacklstm_604/strided_slice:output:0"lstm_604/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_604/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_604/zeros_1Fill lstm_604/zeros_1/packed:output:0lstm_604/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_604/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_604/transpose	Transposelstm_603/transpose_1:y:0 lstm_604/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_604/Shape_1Shapelstm_604/transpose:y:0*
T0*
_output_shapes
:h
lstm_604/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_604/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_604/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_604/strided_slice_1StridedSlicelstm_604/Shape_1:output:0'lstm_604/strided_slice_1/stack:output:0)lstm_604/strided_slice_1/stack_1:output:0)lstm_604/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_604/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_604/TensorArrayV2TensorListReserve-lstm_604/TensorArrayV2/element_shape:output:0!lstm_604/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_604/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_604/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_604/transpose:y:0Glstm_604/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_604/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_604/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_604/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_604/strided_slice_2StridedSlicelstm_604/transpose:y:0'lstm_604/strided_slice_2/stack:output:0)lstm_604/strided_slice_2/stack_1:output:0)lstm_604/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_604/lstm_cell_784/MatMul/ReadVariableOpReadVariableOp5lstm_604_lstm_cell_784_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_604/lstm_cell_784/MatMulMatMul!lstm_604/strided_slice_2:output:04lstm_604/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_604/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp7lstm_604_lstm_cell_784_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_604/lstm_cell_784/MatMul_1MatMullstm_604/zeros:output:06lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_604/lstm_cell_784/addAddV2'lstm_604/lstm_cell_784/MatMul:product:0)lstm_604/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_604/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp6lstm_604_lstm_cell_784_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_604/lstm_cell_784/BiasAddBiasAddlstm_604/lstm_cell_784/add:z:05lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_604/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_604/lstm_cell_784/splitSplit/lstm_604/lstm_cell_784/split/split_dim:output:0'lstm_604/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_604/lstm_cell_784/SigmoidSigmoid%lstm_604/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_604/lstm_cell_784/Sigmoid_1Sigmoid%lstm_604/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_604/lstm_cell_784/mulMul$lstm_604/lstm_cell_784/Sigmoid_1:y:0lstm_604/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_604/lstm_cell_784/ReluRelu%lstm_604/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_604/lstm_cell_784/mul_1Mul"lstm_604/lstm_cell_784/Sigmoid:y:0)lstm_604/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_604/lstm_cell_784/add_1AddV2lstm_604/lstm_cell_784/mul:z:0 lstm_604/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_604/lstm_cell_784/Sigmoid_2Sigmoid%lstm_604/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_604/lstm_cell_784/Relu_1Relu lstm_604/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_604/lstm_cell_784/mul_2Mul$lstm_604/lstm_cell_784/Sigmoid_2:y:0+lstm_604/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_604/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_604/TensorArrayV2_1TensorListReserve/lstm_604/TensorArrayV2_1/element_shape:output:0!lstm_604/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_604/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_604/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_604/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_604/whileWhile$lstm_604/while/loop_counter:output:0*lstm_604/while/maximum_iterations:output:0lstm_604/time:output:0!lstm_604/TensorArrayV2_1:handle:0lstm_604/zeros:output:0lstm_604/zeros_1:output:0!lstm_604/strided_slice_1:output:0@lstm_604/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_604_lstm_cell_784_matmul_readvariableop_resource7lstm_604_lstm_cell_784_matmul_1_readvariableop_resource6lstm_604_lstm_cell_784_biasadd_readvariableop_resource*
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
lstm_604_while_body_4749770*'
condR
lstm_604_while_cond_4749769*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_604/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_604/TensorArrayV2Stack/TensorListStackTensorListStacklstm_604/while:output:3Blstm_604/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_604/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_604/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_604/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_604/strided_slice_3StridedSlice4lstm_604/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_604/strided_slice_3/stack:output:0)lstm_604/strided_slice_3/stack_1:output:0)lstm_604/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_604/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_604/transpose_1	Transpose4lstm_604/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_604/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_604/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_605/ShapeShapelstm_604/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_605/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_605/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_605/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_605/strided_sliceStridedSlicelstm_605/Shape:output:0%lstm_605/strided_slice/stack:output:0'lstm_605/strided_slice/stack_1:output:0'lstm_605/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_605/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_605/zeros/packedPacklstm_605/strided_slice:output:0 lstm_605/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_605/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_605/zerosFilllstm_605/zeros/packed:output:0lstm_605/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_605/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_605/zeros_1/packedPacklstm_605/strided_slice:output:0"lstm_605/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_605/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_605/zeros_1Fill lstm_605/zeros_1/packed:output:0lstm_605/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_605/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_605/transpose	Transposelstm_604/transpose_1:y:0 lstm_605/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_605/Shape_1Shapelstm_605/transpose:y:0*
T0*
_output_shapes
:h
lstm_605/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_605/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_605/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_605/strided_slice_1StridedSlicelstm_605/Shape_1:output:0'lstm_605/strided_slice_1/stack:output:0)lstm_605/strided_slice_1/stack_1:output:0)lstm_605/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_605/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_605/TensorArrayV2TensorListReserve-lstm_605/TensorArrayV2/element_shape:output:0!lstm_605/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_605/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_605/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_605/transpose:y:0Glstm_605/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_605/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_605/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_605/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_605/strided_slice_2StridedSlicelstm_605/transpose:y:0'lstm_605/strided_slice_2/stack:output:0)lstm_605/strided_slice_2/stack_1:output:0)lstm_605/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_605/lstm_cell_785/MatMul/ReadVariableOpReadVariableOp5lstm_605_lstm_cell_785_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_605/lstm_cell_785/MatMulMatMul!lstm_605/strided_slice_2:output:04lstm_605/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_605/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp7lstm_605_lstm_cell_785_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_605/lstm_cell_785/MatMul_1MatMullstm_605/zeros:output:06lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_605/lstm_cell_785/addAddV2'lstm_605/lstm_cell_785/MatMul:product:0)lstm_605/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_605/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp6lstm_605_lstm_cell_785_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_605/lstm_cell_785/BiasAddBiasAddlstm_605/lstm_cell_785/add:z:05lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_605/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_605/lstm_cell_785/splitSplit/lstm_605/lstm_cell_785/split/split_dim:output:0'lstm_605/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_605/lstm_cell_785/SigmoidSigmoid%lstm_605/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_605/lstm_cell_785/Sigmoid_1Sigmoid%lstm_605/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_605/lstm_cell_785/mulMul$lstm_605/lstm_cell_785/Sigmoid_1:y:0lstm_605/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_605/lstm_cell_785/ReluRelu%lstm_605/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_605/lstm_cell_785/mul_1Mul"lstm_605/lstm_cell_785/Sigmoid:y:0)lstm_605/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_605/lstm_cell_785/add_1AddV2lstm_605/lstm_cell_785/mul:z:0 lstm_605/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_605/lstm_cell_785/Sigmoid_2Sigmoid%lstm_605/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_605/lstm_cell_785/Relu_1Relu lstm_605/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_605/lstm_cell_785/mul_2Mul$lstm_605/lstm_cell_785/Sigmoid_2:y:0+lstm_605/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_605/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_605/TensorArrayV2_1TensorListReserve/lstm_605/TensorArrayV2_1/element_shape:output:0!lstm_605/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_605/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_605/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_605/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_605/whileWhile$lstm_605/while/loop_counter:output:0*lstm_605/while/maximum_iterations:output:0lstm_605/time:output:0!lstm_605/TensorArrayV2_1:handle:0lstm_605/zeros:output:0lstm_605/zeros_1:output:0!lstm_605/strided_slice_1:output:0@lstm_605/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_605_lstm_cell_785_matmul_readvariableop_resource7lstm_605_lstm_cell_785_matmul_1_readvariableop_resource6lstm_605_lstm_cell_785_biasadd_readvariableop_resource*
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
lstm_605_while_body_4749909*'
condR
lstm_605_while_cond_4749908*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_605/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_605/TensorArrayV2Stack/TensorListStackTensorListStacklstm_605/while:output:3Blstm_605/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_605/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_605/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_605/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_605/strided_slice_3StridedSlice4lstm_605/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_605/strided_slice_3/stack:output:0)lstm_605/strided_slice_3/stack_1:output:0)lstm_605/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_605/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_605/transpose_1	Transpose4lstm_605/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_605/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_605/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_201/MatMul/ReadVariableOpReadVariableOp(dense_201_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_201/MatMulMatMul!lstm_605/strided_slice_3:output:0'dense_201/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_201/BiasAdd/ReadVariableOpReadVariableOp)dense_201_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_201/BiasAddBiasAdddense_201/MatMul:product:0(dense_201/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_201/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_201/BiasAdd/ReadVariableOp ^dense_201/MatMul/ReadVariableOp.^lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp-^lstm_603/lstm_cell_783/MatMul/ReadVariableOp/^lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp^lstm_603/while.^lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp-^lstm_604/lstm_cell_784/MatMul/ReadVariableOp/^lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp^lstm_604/while.^lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp-^lstm_605/lstm_cell_785/MatMul/ReadVariableOp/^lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp^lstm_605/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_201/BiasAdd/ReadVariableOp dense_201/BiasAdd/ReadVariableOp2B
dense_201/MatMul/ReadVariableOpdense_201/MatMul/ReadVariableOp2^
-lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp-lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp2\
,lstm_603/lstm_cell_783/MatMul/ReadVariableOp,lstm_603/lstm_cell_783/MatMul/ReadVariableOp2`
.lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp.lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp2 
lstm_603/whilelstm_603/while2^
-lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp-lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp2\
,lstm_604/lstm_cell_784/MatMul/ReadVariableOp,lstm_604/lstm_cell_784/MatMul/ReadVariableOp2`
.lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp.lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp2 
lstm_604/whilelstm_604/while2^
-lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp-lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp2\
,lstm_605/lstm_cell_785/MatMul/ReadVariableOp,lstm_605/lstm_cell_785/MatMul/ReadVariableOp2`
.lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp.lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp2 
lstm_605/whilelstm_605/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_4748038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4748038___redundant_placeholder05
1while_while_cond_4748038___redundant_placeholder15
1while_while_cond_4748038___redundant_placeholder25
1while_while_cond_4748038___redundant_placeholder3
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
while_cond_4748888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4748888___redundant_placeholder05
1while_while_cond_4748888___redundant_placeholder15
1while_while_cond_4748888___redundant_placeholder25
1while_while_cond_4748888___redundant_placeholder3
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
*__inference_lstm_603_layer_call_fn_4750448
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4747599|
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
��
�
"__inference__wrapped_model_4747258
lstm_603_inputW
Dsequential_201_lstm_603_lstm_cell_783_matmul_readvariableop_resource:	�Y
Fsequential_201_lstm_603_lstm_cell_783_matmul_1_readvariableop_resource:	d�T
Esequential_201_lstm_603_lstm_cell_783_biasadd_readvariableop_resource:	�W
Dsequential_201_lstm_604_lstm_cell_784_matmul_readvariableop_resource:	d�Y
Fsequential_201_lstm_604_lstm_cell_784_matmul_1_readvariableop_resource:	2�T
Esequential_201_lstm_604_lstm_cell_784_biasadd_readvariableop_resource:	�V
Dsequential_201_lstm_605_lstm_cell_785_matmul_readvariableop_resource:2(X
Fsequential_201_lstm_605_lstm_cell_785_matmul_1_readvariableop_resource:
(S
Esequential_201_lstm_605_lstm_cell_785_biasadd_readvariableop_resource:(I
7sequential_201_dense_201_matmul_readvariableop_resource:
F
8sequential_201_dense_201_biasadd_readvariableop_resource:
identity��/sequential_201/dense_201/BiasAdd/ReadVariableOp�.sequential_201/dense_201/MatMul/ReadVariableOp�<sequential_201/lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp�;sequential_201/lstm_603/lstm_cell_783/MatMul/ReadVariableOp�=sequential_201/lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp�sequential_201/lstm_603/while�<sequential_201/lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp�;sequential_201/lstm_604/lstm_cell_784/MatMul/ReadVariableOp�=sequential_201/lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp�sequential_201/lstm_604/while�<sequential_201/lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp�;sequential_201/lstm_605/lstm_cell_785/MatMul/ReadVariableOp�=sequential_201/lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp�sequential_201/lstm_605/while[
sequential_201/lstm_603/ShapeShapelstm_603_input*
T0*
_output_shapes
:u
+sequential_201/lstm_603/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_201/lstm_603/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_201/lstm_603/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_201/lstm_603/strided_sliceStridedSlice&sequential_201/lstm_603/Shape:output:04sequential_201/lstm_603/strided_slice/stack:output:06sequential_201/lstm_603/strided_slice/stack_1:output:06sequential_201/lstm_603/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_201/lstm_603/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_201/lstm_603/zeros/packedPack.sequential_201/lstm_603/strided_slice:output:0/sequential_201/lstm_603/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_201/lstm_603/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_201/lstm_603/zerosFill-sequential_201/lstm_603/zeros/packed:output:0,sequential_201/lstm_603/zeros/Const:output:0*
T0*'
_output_shapes
:���������dj
(sequential_201/lstm_603/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
&sequential_201/lstm_603/zeros_1/packedPack.sequential_201/lstm_603/strided_slice:output:01sequential_201/lstm_603/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_201/lstm_603/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_201/lstm_603/zeros_1Fill/sequential_201/lstm_603/zeros_1/packed:output:0.sequential_201/lstm_603/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d{
&sequential_201/lstm_603/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_201/lstm_603/transpose	Transposelstm_603_input/sequential_201/lstm_603/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
sequential_201/lstm_603/Shape_1Shape%sequential_201/lstm_603/transpose:y:0*
T0*
_output_shapes
:w
-sequential_201/lstm_603/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_201/lstm_603/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_201/lstm_603/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_201/lstm_603/strided_slice_1StridedSlice(sequential_201/lstm_603/Shape_1:output:06sequential_201/lstm_603/strided_slice_1/stack:output:08sequential_201/lstm_603/strided_slice_1/stack_1:output:08sequential_201/lstm_603/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_201/lstm_603/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_201/lstm_603/TensorArrayV2TensorListReserve<sequential_201/lstm_603/TensorArrayV2/element_shape:output:00sequential_201/lstm_603/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_201/lstm_603/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_201/lstm_603/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_201/lstm_603/transpose:y:0Vsequential_201/lstm_603/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_201/lstm_603/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_201/lstm_603/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_201/lstm_603/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_201/lstm_603/strided_slice_2StridedSlice%sequential_201/lstm_603/transpose:y:06sequential_201/lstm_603/strided_slice_2/stack:output:08sequential_201/lstm_603/strided_slice_2/stack_1:output:08sequential_201/lstm_603/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
;sequential_201/lstm_603/lstm_cell_783/MatMul/ReadVariableOpReadVariableOpDsequential_201_lstm_603_lstm_cell_783_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,sequential_201/lstm_603/lstm_cell_783/MatMulMatMul0sequential_201/lstm_603/strided_slice_2:output:0Csequential_201/lstm_603/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_201/lstm_603/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOpFsequential_201_lstm_603_lstm_cell_783_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
.sequential_201/lstm_603/lstm_cell_783/MatMul_1MatMul&sequential_201/lstm_603/zeros:output:0Esequential_201/lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_201/lstm_603/lstm_cell_783/addAddV26sequential_201/lstm_603/lstm_cell_783/MatMul:product:08sequential_201/lstm_603/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_201/lstm_603/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOpEsequential_201_lstm_603_lstm_cell_783_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_201/lstm_603/lstm_cell_783/BiasAddBiasAdd-sequential_201/lstm_603/lstm_cell_783/add:z:0Dsequential_201/lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_201/lstm_603/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_201/lstm_603/lstm_cell_783/splitSplit>sequential_201/lstm_603/lstm_cell_783/split/split_dim:output:06sequential_201/lstm_603/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_201/lstm_603/lstm_cell_783/SigmoidSigmoid4sequential_201/lstm_603/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_201/lstm_603/lstm_cell_783/Sigmoid_1Sigmoid4sequential_201/lstm_603/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_201/lstm_603/lstm_cell_783/mulMul3sequential_201/lstm_603/lstm_cell_783/Sigmoid_1:y:0(sequential_201/lstm_603/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential_201/lstm_603/lstm_cell_783/ReluRelu4sequential_201/lstm_603/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_201/lstm_603/lstm_cell_783/mul_1Mul1sequential_201/lstm_603/lstm_cell_783/Sigmoid:y:08sequential_201/lstm_603/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_201/lstm_603/lstm_cell_783/add_1AddV2-sequential_201/lstm_603/lstm_cell_783/mul:z:0/sequential_201/lstm_603/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_201/lstm_603/lstm_cell_783/Sigmoid_2Sigmoid4sequential_201/lstm_603/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_201/lstm_603/lstm_cell_783/Relu_1Relu/sequential_201/lstm_603/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_201/lstm_603/lstm_cell_783/mul_2Mul3sequential_201/lstm_603/lstm_cell_783/Sigmoid_2:y:0:sequential_201/lstm_603/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
5sequential_201/lstm_603/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'sequential_201/lstm_603/TensorArrayV2_1TensorListReserve>sequential_201/lstm_603/TensorArrayV2_1/element_shape:output:00sequential_201/lstm_603/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_201/lstm_603/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_201/lstm_603/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_201/lstm_603/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_201/lstm_603/whileWhile3sequential_201/lstm_603/while/loop_counter:output:09sequential_201/lstm_603/while/maximum_iterations:output:0%sequential_201/lstm_603/time:output:00sequential_201/lstm_603/TensorArrayV2_1:handle:0&sequential_201/lstm_603/zeros:output:0(sequential_201/lstm_603/zeros_1:output:00sequential_201/lstm_603/strided_slice_1:output:0Osequential_201/lstm_603/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_201_lstm_603_lstm_cell_783_matmul_readvariableop_resourceFsequential_201_lstm_603_lstm_cell_783_matmul_1_readvariableop_resourceEsequential_201_lstm_603_lstm_cell_783_biasadd_readvariableop_resource*
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
*sequential_201_lstm_603_while_body_4746890*6
cond.R,
*sequential_201_lstm_603_while_cond_4746889*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Hsequential_201/lstm_603/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
:sequential_201/lstm_603/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_201/lstm_603/while:output:3Qsequential_201/lstm_603/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0�
-sequential_201/lstm_603/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_201/lstm_603/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_201/lstm_603/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_201/lstm_603/strided_slice_3StridedSliceCsequential_201/lstm_603/TensorArrayV2Stack/TensorListStack:tensor:06sequential_201/lstm_603/strided_slice_3/stack:output:08sequential_201/lstm_603/strided_slice_3/stack_1:output:08sequential_201/lstm_603/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask}
(sequential_201/lstm_603/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_201/lstm_603/transpose_1	TransposeCsequential_201/lstm_603/TensorArrayV2Stack/TensorListStack:tensor:01sequential_201/lstm_603/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ds
sequential_201/lstm_603/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_201/lstm_604/ShapeShape'sequential_201/lstm_603/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_201/lstm_604/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_201/lstm_604/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_201/lstm_604/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_201/lstm_604/strided_sliceStridedSlice&sequential_201/lstm_604/Shape:output:04sequential_201/lstm_604/strided_slice/stack:output:06sequential_201/lstm_604/strided_slice/stack_1:output:06sequential_201/lstm_604/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_201/lstm_604/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_201/lstm_604/zeros/packedPack.sequential_201/lstm_604/strided_slice:output:0/sequential_201/lstm_604/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_201/lstm_604/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_201/lstm_604/zerosFill-sequential_201/lstm_604/zeros/packed:output:0,sequential_201/lstm_604/zeros/Const:output:0*
T0*'
_output_shapes
:���������2j
(sequential_201/lstm_604/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
&sequential_201/lstm_604/zeros_1/packedPack.sequential_201/lstm_604/strided_slice:output:01sequential_201/lstm_604/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_201/lstm_604/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_201/lstm_604/zeros_1Fill/sequential_201/lstm_604/zeros_1/packed:output:0.sequential_201/lstm_604/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2{
&sequential_201/lstm_604/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_201/lstm_604/transpose	Transpose'sequential_201/lstm_603/transpose_1:y:0/sequential_201/lstm_604/transpose/perm:output:0*
T0*+
_output_shapes
:���������dt
sequential_201/lstm_604/Shape_1Shape%sequential_201/lstm_604/transpose:y:0*
T0*
_output_shapes
:w
-sequential_201/lstm_604/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_201/lstm_604/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_201/lstm_604/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_201/lstm_604/strided_slice_1StridedSlice(sequential_201/lstm_604/Shape_1:output:06sequential_201/lstm_604/strided_slice_1/stack:output:08sequential_201/lstm_604/strided_slice_1/stack_1:output:08sequential_201/lstm_604/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_201/lstm_604/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_201/lstm_604/TensorArrayV2TensorListReserve<sequential_201/lstm_604/TensorArrayV2/element_shape:output:00sequential_201/lstm_604/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_201/lstm_604/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_201/lstm_604/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_201/lstm_604/transpose:y:0Vsequential_201/lstm_604/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_201/lstm_604/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_201/lstm_604/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_201/lstm_604/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_201/lstm_604/strided_slice_2StridedSlice%sequential_201/lstm_604/transpose:y:06sequential_201/lstm_604/strided_slice_2/stack:output:08sequential_201/lstm_604/strided_slice_2/stack_1:output:08sequential_201/lstm_604/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
;sequential_201/lstm_604/lstm_cell_784/MatMul/ReadVariableOpReadVariableOpDsequential_201_lstm_604_lstm_cell_784_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_201/lstm_604/lstm_cell_784/MatMulMatMul0sequential_201/lstm_604/strided_slice_2:output:0Csequential_201/lstm_604/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_201/lstm_604/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOpFsequential_201_lstm_604_lstm_cell_784_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
.sequential_201/lstm_604/lstm_cell_784/MatMul_1MatMul&sequential_201/lstm_604/zeros:output:0Esequential_201/lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_201/lstm_604/lstm_cell_784/addAddV26sequential_201/lstm_604/lstm_cell_784/MatMul:product:08sequential_201/lstm_604/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_201/lstm_604/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOpEsequential_201_lstm_604_lstm_cell_784_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_201/lstm_604/lstm_cell_784/BiasAddBiasAdd-sequential_201/lstm_604/lstm_cell_784/add:z:0Dsequential_201/lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_201/lstm_604/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_201/lstm_604/lstm_cell_784/splitSplit>sequential_201/lstm_604/lstm_cell_784/split/split_dim:output:06sequential_201/lstm_604/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
-sequential_201/lstm_604/lstm_cell_784/SigmoidSigmoid4sequential_201/lstm_604/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2�
/sequential_201/lstm_604/lstm_cell_784/Sigmoid_1Sigmoid4sequential_201/lstm_604/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
)sequential_201/lstm_604/lstm_cell_784/mulMul3sequential_201/lstm_604/lstm_cell_784/Sigmoid_1:y:0(sequential_201/lstm_604/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential_201/lstm_604/lstm_cell_784/ReluRelu4sequential_201/lstm_604/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
+sequential_201/lstm_604/lstm_cell_784/mul_1Mul1sequential_201/lstm_604/lstm_cell_784/Sigmoid:y:08sequential_201/lstm_604/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
+sequential_201/lstm_604/lstm_cell_784/add_1AddV2-sequential_201/lstm_604/lstm_cell_784/mul:z:0/sequential_201/lstm_604/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_201/lstm_604/lstm_cell_784/Sigmoid_2Sigmoid4sequential_201/lstm_604/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2�
,sequential_201/lstm_604/lstm_cell_784/Relu_1Relu/sequential_201/lstm_604/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_201/lstm_604/lstm_cell_784/mul_2Mul3sequential_201/lstm_604/lstm_cell_784/Sigmoid_2:y:0:sequential_201/lstm_604/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
5sequential_201/lstm_604/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'sequential_201/lstm_604/TensorArrayV2_1TensorListReserve>sequential_201/lstm_604/TensorArrayV2_1/element_shape:output:00sequential_201/lstm_604/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_201/lstm_604/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_201/lstm_604/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_201/lstm_604/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_201/lstm_604/whileWhile3sequential_201/lstm_604/while/loop_counter:output:09sequential_201/lstm_604/while/maximum_iterations:output:0%sequential_201/lstm_604/time:output:00sequential_201/lstm_604/TensorArrayV2_1:handle:0&sequential_201/lstm_604/zeros:output:0(sequential_201/lstm_604/zeros_1:output:00sequential_201/lstm_604/strided_slice_1:output:0Osequential_201/lstm_604/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_201_lstm_604_lstm_cell_784_matmul_readvariableop_resourceFsequential_201_lstm_604_lstm_cell_784_matmul_1_readvariableop_resourceEsequential_201_lstm_604_lstm_cell_784_biasadd_readvariableop_resource*
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
*sequential_201_lstm_604_while_body_4747029*6
cond.R,
*sequential_201_lstm_604_while_cond_4747028*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Hsequential_201/lstm_604/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
:sequential_201/lstm_604/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_201/lstm_604/while:output:3Qsequential_201/lstm_604/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0�
-sequential_201/lstm_604/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_201/lstm_604/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_201/lstm_604/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_201/lstm_604/strided_slice_3StridedSliceCsequential_201/lstm_604/TensorArrayV2Stack/TensorListStack:tensor:06sequential_201/lstm_604/strided_slice_3/stack:output:08sequential_201/lstm_604/strided_slice_3/stack_1:output:08sequential_201/lstm_604/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask}
(sequential_201/lstm_604/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_201/lstm_604/transpose_1	TransposeCsequential_201/lstm_604/TensorArrayV2Stack/TensorListStack:tensor:01sequential_201/lstm_604/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2s
sequential_201/lstm_604/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_201/lstm_605/ShapeShape'sequential_201/lstm_604/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_201/lstm_605/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_201/lstm_605/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_201/lstm_605/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_201/lstm_605/strided_sliceStridedSlice&sequential_201/lstm_605/Shape:output:04sequential_201/lstm_605/strided_slice/stack:output:06sequential_201/lstm_605/strided_slice/stack_1:output:06sequential_201/lstm_605/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_201/lstm_605/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_201/lstm_605/zeros/packedPack.sequential_201/lstm_605/strided_slice:output:0/sequential_201/lstm_605/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_201/lstm_605/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_201/lstm_605/zerosFill-sequential_201/lstm_605/zeros/packed:output:0,sequential_201/lstm_605/zeros/Const:output:0*
T0*'
_output_shapes
:���������
j
(sequential_201/lstm_605/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&sequential_201/lstm_605/zeros_1/packedPack.sequential_201/lstm_605/strided_slice:output:01sequential_201/lstm_605/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_201/lstm_605/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_201/lstm_605/zeros_1Fill/sequential_201/lstm_605/zeros_1/packed:output:0.sequential_201/lstm_605/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
{
&sequential_201/lstm_605/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_201/lstm_605/transpose	Transpose'sequential_201/lstm_604/transpose_1:y:0/sequential_201/lstm_605/transpose/perm:output:0*
T0*+
_output_shapes
:���������2t
sequential_201/lstm_605/Shape_1Shape%sequential_201/lstm_605/transpose:y:0*
T0*
_output_shapes
:w
-sequential_201/lstm_605/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_201/lstm_605/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_201/lstm_605/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_201/lstm_605/strided_slice_1StridedSlice(sequential_201/lstm_605/Shape_1:output:06sequential_201/lstm_605/strided_slice_1/stack:output:08sequential_201/lstm_605/strided_slice_1/stack_1:output:08sequential_201/lstm_605/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_201/lstm_605/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_201/lstm_605/TensorArrayV2TensorListReserve<sequential_201/lstm_605/TensorArrayV2/element_shape:output:00sequential_201/lstm_605/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_201/lstm_605/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_201/lstm_605/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_201/lstm_605/transpose:y:0Vsequential_201/lstm_605/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_201/lstm_605/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_201/lstm_605/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_201/lstm_605/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_201/lstm_605/strided_slice_2StridedSlice%sequential_201/lstm_605/transpose:y:06sequential_201/lstm_605/strided_slice_2/stack:output:08sequential_201/lstm_605/strided_slice_2/stack_1:output:08sequential_201/lstm_605/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
;sequential_201/lstm_605/lstm_cell_785/MatMul/ReadVariableOpReadVariableOpDsequential_201_lstm_605_lstm_cell_785_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
,sequential_201/lstm_605/lstm_cell_785/MatMulMatMul0sequential_201/lstm_605/strided_slice_2:output:0Csequential_201/lstm_605/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
=sequential_201/lstm_605/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOpFsequential_201_lstm_605_lstm_cell_785_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
.sequential_201/lstm_605/lstm_cell_785/MatMul_1MatMul&sequential_201/lstm_605/zeros:output:0Esequential_201/lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)sequential_201/lstm_605/lstm_cell_785/addAddV26sequential_201/lstm_605/lstm_cell_785/MatMul:product:08sequential_201/lstm_605/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
<sequential_201/lstm_605/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOpEsequential_201_lstm_605_lstm_cell_785_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
-sequential_201/lstm_605/lstm_cell_785/BiasAddBiasAdd-sequential_201/lstm_605/lstm_cell_785/add:z:0Dsequential_201/lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(w
5sequential_201/lstm_605/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_201/lstm_605/lstm_cell_785/splitSplit>sequential_201/lstm_605/lstm_cell_785/split/split_dim:output:06sequential_201/lstm_605/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
-sequential_201/lstm_605/lstm_cell_785/SigmoidSigmoid4sequential_201/lstm_605/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
�
/sequential_201/lstm_605/lstm_cell_785/Sigmoid_1Sigmoid4sequential_201/lstm_605/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
)sequential_201/lstm_605/lstm_cell_785/mulMul3sequential_201/lstm_605/lstm_cell_785/Sigmoid_1:y:0(sequential_201/lstm_605/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
*sequential_201/lstm_605/lstm_cell_785/ReluRelu4sequential_201/lstm_605/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
+sequential_201/lstm_605/lstm_cell_785/mul_1Mul1sequential_201/lstm_605/lstm_cell_785/Sigmoid:y:08sequential_201/lstm_605/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
+sequential_201/lstm_605/lstm_cell_785/add_1AddV2-sequential_201/lstm_605/lstm_cell_785/mul:z:0/sequential_201/lstm_605/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_201/lstm_605/lstm_cell_785/Sigmoid_2Sigmoid4sequential_201/lstm_605/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
�
,sequential_201/lstm_605/lstm_cell_785/Relu_1Relu/sequential_201/lstm_605/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_201/lstm_605/lstm_cell_785/mul_2Mul3sequential_201/lstm_605/lstm_cell_785/Sigmoid_2:y:0:sequential_201/lstm_605/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
5sequential_201/lstm_605/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
'sequential_201/lstm_605/TensorArrayV2_1TensorListReserve>sequential_201/lstm_605/TensorArrayV2_1/element_shape:output:00sequential_201/lstm_605/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_201/lstm_605/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_201/lstm_605/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_201/lstm_605/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_201/lstm_605/whileWhile3sequential_201/lstm_605/while/loop_counter:output:09sequential_201/lstm_605/while/maximum_iterations:output:0%sequential_201/lstm_605/time:output:00sequential_201/lstm_605/TensorArrayV2_1:handle:0&sequential_201/lstm_605/zeros:output:0(sequential_201/lstm_605/zeros_1:output:00sequential_201/lstm_605/strided_slice_1:output:0Osequential_201/lstm_605/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_201_lstm_605_lstm_cell_785_matmul_readvariableop_resourceFsequential_201_lstm_605_lstm_cell_785_matmul_1_readvariableop_resourceEsequential_201_lstm_605_lstm_cell_785_biasadd_readvariableop_resource*
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
*sequential_201_lstm_605_while_body_4747168*6
cond.R,
*sequential_201_lstm_605_while_cond_4747167*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Hsequential_201/lstm_605/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
:sequential_201/lstm_605/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_201/lstm_605/while:output:3Qsequential_201/lstm_605/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0�
-sequential_201/lstm_605/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_201/lstm_605/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_201/lstm_605/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_201/lstm_605/strided_slice_3StridedSliceCsequential_201/lstm_605/TensorArrayV2Stack/TensorListStack:tensor:06sequential_201/lstm_605/strided_slice_3/stack:output:08sequential_201/lstm_605/strided_slice_3/stack_1:output:08sequential_201/lstm_605/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask}
(sequential_201/lstm_605/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_201/lstm_605/transpose_1	TransposeCsequential_201/lstm_605/TensorArrayV2Stack/TensorListStack:tensor:01sequential_201/lstm_605/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
s
sequential_201/lstm_605/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_201/dense_201/MatMul/ReadVariableOpReadVariableOp7sequential_201_dense_201_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_201/dense_201/MatMulMatMul0sequential_201/lstm_605/strided_slice_3:output:06sequential_201/dense_201/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_201/dense_201/BiasAdd/ReadVariableOpReadVariableOp8sequential_201_dense_201_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_201/dense_201/BiasAddBiasAdd)sequential_201/dense_201/MatMul:product:07sequential_201/dense_201/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_201/dense_201/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_201/dense_201/BiasAdd/ReadVariableOp/^sequential_201/dense_201/MatMul/ReadVariableOp=^sequential_201/lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp<^sequential_201/lstm_603/lstm_cell_783/MatMul/ReadVariableOp>^sequential_201/lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp^sequential_201/lstm_603/while=^sequential_201/lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp<^sequential_201/lstm_604/lstm_cell_784/MatMul/ReadVariableOp>^sequential_201/lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp^sequential_201/lstm_604/while=^sequential_201/lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp<^sequential_201/lstm_605/lstm_cell_785/MatMul/ReadVariableOp>^sequential_201/lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp^sequential_201/lstm_605/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_201/dense_201/BiasAdd/ReadVariableOp/sequential_201/dense_201/BiasAdd/ReadVariableOp2`
.sequential_201/dense_201/MatMul/ReadVariableOp.sequential_201/dense_201/MatMul/ReadVariableOp2|
<sequential_201/lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp<sequential_201/lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp2z
;sequential_201/lstm_603/lstm_cell_783/MatMul/ReadVariableOp;sequential_201/lstm_603/lstm_cell_783/MatMul/ReadVariableOp2~
=sequential_201/lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp=sequential_201/lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp2>
sequential_201/lstm_603/whilesequential_201/lstm_603/while2|
<sequential_201/lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp<sequential_201/lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp2z
;sequential_201/lstm_604/lstm_cell_784/MatMul/ReadVariableOp;sequential_201/lstm_604/lstm_cell_784/MatMul/ReadVariableOp2~
=sequential_201/lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp=sequential_201/lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp2>
sequential_201/lstm_604/whilesequential_201/lstm_604/while2|
<sequential_201/lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp<sequential_201/lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp2z
;sequential_201/lstm_605/lstm_cell_785/MatMul/ReadVariableOp;sequential_201/lstm_605/lstm_cell_785/MatMul/ReadVariableOp2~
=sequential_201/lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp=sequential_201/lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp2>
sequential_201/lstm_605/whilesequential_201/lstm_605/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_603_input
�8
�
while_body_4748523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_784_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_784_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_784_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_784_matmul_readvariableop_resource:	d�G
4while_lstm_cell_784_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_784_biasadd_readvariableop_resource:	���*while/lstm_cell_784/BiasAdd/ReadVariableOp�)while/lstm_cell_784/MatMul/ReadVariableOp�+while/lstm_cell_784/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_784/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_784_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_784/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_784_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_784/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_784/addAddV2$while/lstm_cell_784/MatMul:product:0&while/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_784_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_784/BiasAddBiasAddwhile/lstm_cell_784/add:z:02while/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_784/splitSplit,while/lstm_cell_784/split/split_dim:output:0$while/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_784/SigmoidSigmoid"while/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_1Sigmoid"while/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mulMul!while/lstm_cell_784/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_784/ReluRelu"while/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_1Mulwhile/lstm_cell_784/Sigmoid:y:0&while/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/add_1AddV2while/lstm_cell_784/mul:z:0while/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_2Sigmoid"while/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_784/Relu_1Reluwhile/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_2Mul!while/lstm_cell_784/Sigmoid_2:y:0(while/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_784/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_784/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_784/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_784/BiasAdd/ReadVariableOp*^while/lstm_cell_784/MatMul/ReadVariableOp,^while/lstm_cell_784/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_784_biasadd_readvariableop_resource5while_lstm_cell_784_biasadd_readvariableop_resource_0"n
4while_lstm_cell_784_matmul_1_readvariableop_resource6while_lstm_cell_784_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_784_matmul_readvariableop_resource4while_lstm_cell_784_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_784/BiasAdd/ReadVariableOp*while/lstm_cell_784/BiasAdd/ReadVariableOp2V
)while/lstm_cell_784/MatMul/ReadVariableOp)while/lstm_cell_784/MatMul/ReadVariableOp2Z
+while/lstm_cell_784/MatMul_1/ReadVariableOp+while/lstm_cell_784/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4749054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_784_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_784_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_784_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_784_matmul_readvariableop_resource:	d�G
4while_lstm_cell_784_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_784_biasadd_readvariableop_resource:	���*while/lstm_cell_784/BiasAdd/ReadVariableOp�)while/lstm_cell_784/MatMul/ReadVariableOp�+while/lstm_cell_784/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_784/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_784_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_784/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_784_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_784/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_784/addAddV2$while/lstm_cell_784/MatMul:product:0&while/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_784_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_784/BiasAddBiasAddwhile/lstm_cell_784/add:z:02while/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_784/splitSplit,while/lstm_cell_784/split/split_dim:output:0$while/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_784/SigmoidSigmoid"while/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_1Sigmoid"while/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mulMul!while/lstm_cell_784/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_784/ReluRelu"while/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_1Mulwhile/lstm_cell_784/Sigmoid:y:0&while/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/add_1AddV2while/lstm_cell_784/mul:z:0while/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_2Sigmoid"while/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_784/Relu_1Reluwhile/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_2Mul!while/lstm_cell_784/Sigmoid_2:y:0(while/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_784/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_784/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_784/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_784/BiasAdd/ReadVariableOp*^while/lstm_cell_784/MatMul/ReadVariableOp,^while/lstm_cell_784/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_784_biasadd_readvariableop_resource5while_lstm_cell_784_biasadd_readvariableop_resource_0"n
4while_lstm_cell_784_matmul_1_readvariableop_resource6while_lstm_cell_784_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_784_matmul_readvariableop_resource4while_lstm_cell_784_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_784/BiasAdd/ReadVariableOp*while/lstm_cell_784/BiasAdd/ReadVariableOp2V
)while/lstm_cell_784/MatMul/ReadVariableOp)while/lstm_cell_784/MatMul/ReadVariableOp2Z
+while/lstm_cell_784/MatMul_1/ReadVariableOp+while/lstm_cell_784/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_784_layer_call_fn_4752425

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
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4747821o
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
�#
�
while_body_4747339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_783_4747363_0:	�0
while_lstm_cell_783_4747365_0:	d�,
while_lstm_cell_783_4747367_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_783_4747363:	�.
while_lstm_cell_783_4747365:	d�*
while_lstm_cell_783_4747367:	���+while/lstm_cell_783/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_783/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_783_4747363_0while_lstm_cell_783_4747365_0while_lstm_cell_783_4747367_0*
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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4747325�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_783/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_783/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_783/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_783/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_783_4747363while_lstm_cell_783_4747363_0"<
while_lstm_cell_783_4747365while_lstm_cell_783_4747365_0"<
while_lstm_cell_783_4747367while_lstm_cell_783_4747367_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_783/StatefulPartitionedCall+while/lstm_cell_783/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4749303

inputs?
,lstm_cell_783_matmul_readvariableop_resource:	�A
.lstm_cell_783_matmul_1_readvariableop_resource:	d�<
-lstm_cell_783_biasadd_readvariableop_resource:	�
identity��$lstm_cell_783/BiasAdd/ReadVariableOp�#lstm_cell_783/MatMul/ReadVariableOp�%lstm_cell_783/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_783/MatMul/ReadVariableOpReadVariableOp,lstm_cell_783_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_783/MatMulMatMulstrided_slice_2:output:0+lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_783_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_783/MatMul_1MatMulzeros:output:0-lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_783/addAddV2lstm_cell_783/MatMul:product:0 lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_783_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_783/BiasAddBiasAddlstm_cell_783/add:z:0,lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_783/splitSplit&lstm_cell_783/split/split_dim:output:0lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_783/SigmoidSigmoidlstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_1Sigmoidlstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_783/mulMullstm_cell_783/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_783/ReluRelulstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_1Mullstm_cell_783/Sigmoid:y:0 lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_783/add_1AddV2lstm_cell_783/mul:z:0lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_2Sigmoidlstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_783/Relu_1Relulstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_2Mullstm_cell_783/Sigmoid_2:y:0"lstm_cell_783/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_783_matmul_readvariableop_resource.lstm_cell_783_matmul_1_readvariableop_resource-lstm_cell_783_biasadd_readvariableop_resource*
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
while_body_4749219*
condR
while_cond_4749218*K
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
NoOpNoOp%^lstm_cell_783/BiasAdd/ReadVariableOp$^lstm_cell_783/MatMul/ReadVariableOp&^lstm_cell_783/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_783/BiasAdd/ReadVariableOp$lstm_cell_783/BiasAdd/ReadVariableOp2J
#lstm_cell_783/MatMul/ReadVariableOp#lstm_cell_783/MatMul/ReadVariableOp2N
%lstm_cell_783/MatMul_1/ReadVariableOp%lstm_cell_783/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_603_layer_call_fn_4750459

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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4748457s
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
while_body_4747530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_783_4747554_0:	�0
while_lstm_cell_783_4747556_0:	d�,
while_lstm_cell_783_4747558_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_783_4747554:	�.
while_lstm_cell_783_4747556:	d�*
while_lstm_cell_783_4747558:	���+while/lstm_cell_783/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_783/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_783_4747554_0while_lstm_cell_783_4747556_0while_lstm_cell_783_4747558_0*
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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4747471�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_783/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_783/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_783/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_783/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_783_4747554while_lstm_cell_783_4747554_0"<
while_lstm_cell_783_4747556while_lstm_cell_783_4747556_0"<
while_lstm_cell_783_4747558while_lstm_cell_783_4747558_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_783/StatefulPartitionedCall+while/lstm_cell_783/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4750815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_783_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_783_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_783_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_783_matmul_readvariableop_resource:	�G
4while_lstm_cell_783_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_783_biasadd_readvariableop_resource:	���*while/lstm_cell_783/BiasAdd/ReadVariableOp�)while/lstm_cell_783/MatMul/ReadVariableOp�+while/lstm_cell_783/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_783/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_783_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_783/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_783_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_783/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_783/addAddV2$while/lstm_cell_783/MatMul:product:0&while/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_783_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_783/BiasAddBiasAddwhile/lstm_cell_783/add:z:02while/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_783/splitSplit,while/lstm_cell_783/split/split_dim:output:0$while/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_783/SigmoidSigmoid"while/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_1Sigmoid"while/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mulMul!while/lstm_cell_783/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_783/ReluRelu"while/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_1Mulwhile/lstm_cell_783/Sigmoid:y:0&while/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/add_1AddV2while/lstm_cell_783/mul:z:0while/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_2Sigmoid"while/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_783/Relu_1Reluwhile/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_2Mul!while/lstm_cell_783/Sigmoid_2:y:0(while/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_783/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_783/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_783/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_783/BiasAdd/ReadVariableOp*^while/lstm_cell_783/MatMul/ReadVariableOp,^while/lstm_cell_783/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_783_biasadd_readvariableop_resource5while_lstm_cell_783_biasadd_readvariableop_resource_0"n
4while_lstm_cell_783_matmul_1_readvariableop_resource6while_lstm_cell_783_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_783_matmul_readvariableop_resource4while_lstm_cell_783_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_783/BiasAdd/ReadVariableOp*while/lstm_cell_783/BiasAdd/ReadVariableOp2V
)while/lstm_cell_783/MatMul/ReadVariableOp)while/lstm_cell_783/MatMul/ReadVariableOp2Z
+while/lstm_cell_783/MatMul_1/ReadVariableOp+while/lstm_cell_783/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_604_layer_call_fn_4751053
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4747758|
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
while_cond_4750671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4750671___redundant_placeholder05
1while_while_cond_4750671___redundant_placeholder15
1while_while_cond_4750671___redundant_placeholder25
1while_while_cond_4750671___redundant_placeholder3
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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4748025

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
�
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748299

inputs'
lstm_cell_785_4748217:2('
lstm_cell_785_4748219:
(#
lstm_cell_785_4748221:(
identity��%lstm_cell_785/StatefulPartitionedCall�while;
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
%lstm_cell_785/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_785_4748217lstm_cell_785_4748219lstm_cell_785_4748221*
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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4748171n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_785_4748217lstm_cell_785_4748219lstm_cell_785_4748221*
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
while_body_4748230*
condR
while_cond_4748229*K
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
NoOpNoOp&^lstm_cell_785/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_785/StatefulPartitionedCall%lstm_cell_785/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
*__inference_lstm_605_layer_call_fn_4751702

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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748973o
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
while_cond_4752189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4752189___redundant_placeholder05
1while_while_cond_4752189___redundant_placeholder15
1while_while_cond_4752189___redundant_placeholder25
1while_while_cond_4752189___redundant_placeholder3
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
/__inference_lstm_cell_783_layer_call_fn_4752310

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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4747325o
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
�K
�
E__inference_lstm_605_layer_call_and_return_conditional_losses_4751845
inputs_0>
,lstm_cell_785_matmul_readvariableop_resource:2(@
.lstm_cell_785_matmul_1_readvariableop_resource:
(;
-lstm_cell_785_biasadd_readvariableop_resource:(
identity��$lstm_cell_785/BiasAdd/ReadVariableOp�#lstm_cell_785/MatMul/ReadVariableOp�%lstm_cell_785/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_785/MatMul/ReadVariableOpReadVariableOp,lstm_cell_785_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_785/MatMulMatMulstrided_slice_2:output:0+lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_785_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_785/MatMul_1MatMulzeros:output:0-lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_785/addAddV2lstm_cell_785/MatMul:product:0 lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_785_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_785/BiasAddBiasAddlstm_cell_785/add:z:0,lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_785/splitSplit&lstm_cell_785/split/split_dim:output:0lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_785/SigmoidSigmoidlstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_1Sigmoidlstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_785/mulMullstm_cell_785/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_785/ReluRelulstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_1Mullstm_cell_785/Sigmoid:y:0 lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_785/add_1AddV2lstm_cell_785/mul:z:0lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_2Sigmoidlstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_785/Relu_1Relulstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_2Mullstm_cell_785/Sigmoid_2:y:0"lstm_cell_785/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_785_matmul_readvariableop_resource.lstm_cell_785_matmul_1_readvariableop_resource-lstm_cell_785_biasadd_readvariableop_resource*
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
while_body_4751761*
condR
while_cond_4751760*K
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
NoOpNoOp%^lstm_cell_785/BiasAdd/ReadVariableOp$^lstm_cell_785/MatMul/ReadVariableOp&^lstm_cell_785/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_785/BiasAdd/ReadVariableOp$lstm_cell_785/BiasAdd/ReadVariableOp2J
#lstm_cell_785/MatMul/ReadVariableOp#lstm_cell_785/MatMul/ReadVariableOp2N
%lstm_cell_785/MatMul_1/ReadVariableOp%lstm_cell_785/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
/__inference_lstm_cell_785_layer_call_fn_4752506

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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4748025o
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
while_body_4750672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_783_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_783_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_783_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_783_matmul_readvariableop_resource:	�G
4while_lstm_cell_783_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_783_biasadd_readvariableop_resource:	���*while/lstm_cell_783/BiasAdd/ReadVariableOp�)while/lstm_cell_783/MatMul/ReadVariableOp�+while/lstm_cell_783/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_783/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_783_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_783/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_783_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_783/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_783/addAddV2$while/lstm_cell_783/MatMul:product:0&while/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_783_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_783/BiasAddBiasAddwhile/lstm_cell_783/add:z:02while/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_783/splitSplit,while/lstm_cell_783/split/split_dim:output:0$while/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_783/SigmoidSigmoid"while/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_1Sigmoid"while/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mulMul!while/lstm_cell_783/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_783/ReluRelu"while/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_1Mulwhile/lstm_cell_783/Sigmoid:y:0&while/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/add_1AddV2while/lstm_cell_783/mul:z:0while/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_2Sigmoid"while/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_783/Relu_1Reluwhile/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_2Mul!while/lstm_cell_783/Sigmoid_2:y:0(while/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_783/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_783/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_783/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_783/BiasAdd/ReadVariableOp*^while/lstm_cell_783/MatMul/ReadVariableOp,^while/lstm_cell_783/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_783_biasadd_readvariableop_resource5while_lstm_cell_783_biasadd_readvariableop_resource_0"n
4while_lstm_cell_783_matmul_1_readvariableop_resource6while_lstm_cell_783_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_783_matmul_readvariableop_resource4while_lstm_cell_783_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_783/BiasAdd/ReadVariableOp*while/lstm_cell_783/BiasAdd/ReadVariableOp2V
)while/lstm_cell_783/MatMul/ReadVariableOp)while/lstm_cell_783/MatMul/ReadVariableOp2Z
+while/lstm_cell_783/MatMul_1/ReadVariableOp+while/lstm_cell_783/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4752047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_785_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_785_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_785_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_785_matmul_readvariableop_resource:2(F
4while_lstm_cell_785_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_785_biasadd_readvariableop_resource:(��*while/lstm_cell_785/BiasAdd/ReadVariableOp�)while/lstm_cell_785/MatMul/ReadVariableOp�+while/lstm_cell_785/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_785/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_785_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_785/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_785_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_785/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_785/addAddV2$while/lstm_cell_785/MatMul:product:0&while/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_785_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_785/BiasAddBiasAddwhile/lstm_cell_785/add:z:02while/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_785/splitSplit,while/lstm_cell_785/split/split_dim:output:0$while/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_785/SigmoidSigmoid"while/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_1Sigmoid"while/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mulMul!while/lstm_cell_785/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_785/ReluRelu"while/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_1Mulwhile/lstm_cell_785/Sigmoid:y:0&while/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/add_1AddV2while/lstm_cell_785/mul:z:0while/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_2Sigmoid"while/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_785/Relu_1Reluwhile/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_2Mul!while/lstm_cell_785/Sigmoid_2:y:0(while/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_785/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_785/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_785/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_785/BiasAdd/ReadVariableOp*^while/lstm_cell_785/MatMul/ReadVariableOp,^while/lstm_cell_785/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_785_biasadd_readvariableop_resource5while_lstm_cell_785_biasadd_readvariableop_resource_0"n
4while_lstm_cell_785_matmul_1_readvariableop_resource6while_lstm_cell_785_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_785_matmul_readvariableop_resource4while_lstm_cell_785_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_785/BiasAdd/ReadVariableOp*while/lstm_cell_785/BiasAdd/ReadVariableOp2V
)while/lstm_cell_785/MatMul/ReadVariableOp)while/lstm_cell_785/MatMul/ReadVariableOp2Z
+while/lstm_cell_785/MatMul_1/ReadVariableOp+while/lstm_cell_785/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4751145
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_784_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_784_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_784_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_784_matmul_readvariableop_resource:	d�G
4while_lstm_cell_784_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_784_biasadd_readvariableop_resource:	���*while/lstm_cell_784/BiasAdd/ReadVariableOp�)while/lstm_cell_784/MatMul/ReadVariableOp�+while/lstm_cell_784/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_784/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_784_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_784/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_784_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_784/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_784/addAddV2$while/lstm_cell_784/MatMul:product:0&while/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_784_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_784/BiasAddBiasAddwhile/lstm_cell_784/add:z:02while/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_784/splitSplit,while/lstm_cell_784/split/split_dim:output:0$while/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_784/SigmoidSigmoid"while/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_1Sigmoid"while/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mulMul!while/lstm_cell_784/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_784/ReluRelu"while/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_1Mulwhile/lstm_cell_784/Sigmoid:y:0&while/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/add_1AddV2while/lstm_cell_784/mul:z:0while/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_2Sigmoid"while/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_784/Relu_1Reluwhile/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_2Mul!while/lstm_cell_784/Sigmoid_2:y:0(while/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_784/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_784/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_784/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_784/BiasAdd/ReadVariableOp*^while/lstm_cell_784/MatMul/ReadVariableOp,^while/lstm_cell_784/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_784_biasadd_readvariableop_resource5while_lstm_cell_784_biasadd_readvariableop_resource_0"n
4while_lstm_cell_784_matmul_1_readvariableop_resource6while_lstm_cell_784_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_784_matmul_readvariableop_resource4while_lstm_cell_784_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_784/BiasAdd/ReadVariableOp*while/lstm_cell_784/BiasAdd/ReadVariableOp2V
)while/lstm_cell_784/MatMul/ReadVariableOp)while/lstm_cell_784/MatMul/ReadVariableOp2Z
+while/lstm_cell_784/MatMul_1/ReadVariableOp+while/lstm_cell_784/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4748673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_785_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_785_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_785_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_785_matmul_readvariableop_resource:2(F
4while_lstm_cell_785_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_785_biasadd_readvariableop_resource:(��*while/lstm_cell_785/BiasAdd/ReadVariableOp�)while/lstm_cell_785/MatMul/ReadVariableOp�+while/lstm_cell_785/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_785/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_785_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_785/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_785_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_785/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_785/addAddV2$while/lstm_cell_785/MatMul:product:0&while/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_785_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_785/BiasAddBiasAddwhile/lstm_cell_785/add:z:02while/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_785/splitSplit,while/lstm_cell_785/split/split_dim:output:0$while/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_785/SigmoidSigmoid"while/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_1Sigmoid"while/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mulMul!while/lstm_cell_785/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_785/ReluRelu"while/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_1Mulwhile/lstm_cell_785/Sigmoid:y:0&while/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/add_1AddV2while/lstm_cell_785/mul:z:0while/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_2Sigmoid"while/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_785/Relu_1Reluwhile/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_2Mul!while/lstm_cell_785/Sigmoid_2:y:0(while/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_785/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_785/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_785/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_785/BiasAdd/ReadVariableOp*^while/lstm_cell_785/MatMul/ReadVariableOp,^while/lstm_cell_785/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_785_biasadd_readvariableop_resource5while_lstm_cell_785_biasadd_readvariableop_resource_0"n
4while_lstm_cell_785_matmul_1_readvariableop_resource6while_lstm_cell_785_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_785_matmul_readvariableop_resource4while_lstm_cell_785_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_785/BiasAdd/ReadVariableOp*while/lstm_cell_785/BiasAdd/ReadVariableOp2V
)while/lstm_cell_785/MatMul/ReadVariableOp)while/lstm_cell_785/MatMul/ReadVariableOp2Z
+while/lstm_cell_785/MatMul_1/ReadVariableOp+while/lstm_cell_785/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4749219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_783_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_783_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_783_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_783_matmul_readvariableop_resource:	�G
4while_lstm_cell_783_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_783_biasadd_readvariableop_resource:	���*while/lstm_cell_783/BiasAdd/ReadVariableOp�)while/lstm_cell_783/MatMul/ReadVariableOp�+while/lstm_cell_783/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_783/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_783_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_783/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_783_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_783/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_783/addAddV2$while/lstm_cell_783/MatMul:product:0&while/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_783_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_783/BiasAddBiasAddwhile/lstm_cell_783/add:z:02while/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_783/splitSplit,while/lstm_cell_783/split/split_dim:output:0$while/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_783/SigmoidSigmoid"while/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_1Sigmoid"while/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mulMul!while/lstm_cell_783/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_783/ReluRelu"while/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_1Mulwhile/lstm_cell_783/Sigmoid:y:0&while/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/add_1AddV2while/lstm_cell_783/mul:z:0while/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_2Sigmoid"while/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_783/Relu_1Reluwhile/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_2Mul!while/lstm_cell_783/Sigmoid_2:y:0(while/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_783/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_783/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_783/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_783/BiasAdd/ReadVariableOp*^while/lstm_cell_783/MatMul/ReadVariableOp,^while/lstm_cell_783/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_783_biasadd_readvariableop_resource5while_lstm_cell_783_biasadd_readvariableop_resource_0"n
4while_lstm_cell_783_matmul_1_readvariableop_resource6while_lstm_cell_783_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_783_matmul_readvariableop_resource4while_lstm_cell_783_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_783/BiasAdd/ReadVariableOp*while/lstm_cell_783/BiasAdd/ReadVariableOp2V
)while/lstm_cell_783/MatMul/ReadVariableOp)while/lstm_cell_783/MatMul/ReadVariableOp2Z
+while/lstm_cell_783/MatMul_1/ReadVariableOp+while/lstm_cell_783/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�#
�
while_body_4747689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_784_4747713_0:	d�0
while_lstm_cell_784_4747715_0:	2�,
while_lstm_cell_784_4747717_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_784_4747713:	d�.
while_lstm_cell_784_4747715:	2�*
while_lstm_cell_784_4747717:	���+while/lstm_cell_784/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_784/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_784_4747713_0while_lstm_cell_784_4747715_0while_lstm_cell_784_4747717_0*
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
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4747675�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_784/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_784/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_784/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_784/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_784_4747713while_lstm_cell_784_4747713_0"<
while_lstm_cell_784_4747715while_lstm_cell_784_4747715_0"<
while_lstm_cell_784_4747717while_lstm_cell_784_4747717_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_784/StatefulPartitionedCall+while/lstm_cell_784/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_201_lstm_603_while_cond_4746889L
Hsequential_201_lstm_603_while_sequential_201_lstm_603_while_loop_counterR
Nsequential_201_lstm_603_while_sequential_201_lstm_603_while_maximum_iterations-
)sequential_201_lstm_603_while_placeholder/
+sequential_201_lstm_603_while_placeholder_1/
+sequential_201_lstm_603_while_placeholder_2/
+sequential_201_lstm_603_while_placeholder_3N
Jsequential_201_lstm_603_while_less_sequential_201_lstm_603_strided_slice_1e
asequential_201_lstm_603_while_sequential_201_lstm_603_while_cond_4746889___redundant_placeholder0e
asequential_201_lstm_603_while_sequential_201_lstm_603_while_cond_4746889___redundant_placeholder1e
asequential_201_lstm_603_while_sequential_201_lstm_603_while_cond_4746889___redundant_placeholder2e
asequential_201_lstm_603_while_sequential_201_lstm_603_while_cond_4746889___redundant_placeholder3*
&sequential_201_lstm_603_while_identity
�
"sequential_201/lstm_603/while/LessLess)sequential_201_lstm_603_while_placeholderJsequential_201_lstm_603_while_less_sequential_201_lstm_603_strided_slice_1*
T0*
_output_shapes
: {
&sequential_201/lstm_603/while/IdentityIdentity&sequential_201/lstm_603/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_201_lstm_603_while_identity/sequential_201/lstm_603/while/Identity:output:0*(
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
�
�
K__inference_sequential_201_layer_call_and_return_conditional_losses_4748782

inputs#
lstm_603_4748458:	�#
lstm_603_4748460:	d�
lstm_603_4748462:	�#
lstm_604_4748608:	d�#
lstm_604_4748610:	2�
lstm_604_4748612:	�"
lstm_605_4748758:2("
lstm_605_4748760:
(
lstm_605_4748762:(#
dense_201_4748776:

dense_201_4748778:
identity��!dense_201/StatefulPartitionedCall� lstm_603/StatefulPartitionedCall� lstm_604/StatefulPartitionedCall� lstm_605/StatefulPartitionedCall�
 lstm_603/StatefulPartitionedCallStatefulPartitionedCallinputslstm_603_4748458lstm_603_4748460lstm_603_4748462*
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4748457�
 lstm_604/StatefulPartitionedCallStatefulPartitionedCall)lstm_603/StatefulPartitionedCall:output:0lstm_604_4748608lstm_604_4748610lstm_604_4748612*
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4748607�
 lstm_605/StatefulPartitionedCallStatefulPartitionedCall)lstm_604/StatefulPartitionedCall:output:0lstm_605_4748758lstm_605_4748760lstm_605_4748762*
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748757�
!dense_201/StatefulPartitionedCallStatefulPartitionedCall)lstm_605/StatefulPartitionedCall:output:0dense_201_4748776dense_201_4748778*
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
F__inference_dense_201_layer_call_and_return_conditional_losses_4748775y
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_201/StatefulPartitionedCall!^lstm_603/StatefulPartitionedCall!^lstm_604/StatefulPartitionedCall!^lstm_605/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2D
 lstm_603/StatefulPartitionedCall lstm_603/StatefulPartitionedCall2D
 lstm_604/StatefulPartitionedCall lstm_604/StatefulPartitionedCall2D
 lstm_605/StatefulPartitionedCall lstm_605/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_784_layer_call_fn_4752408

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
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4747675o
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
�J
�
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748973

inputs>
,lstm_cell_785_matmul_readvariableop_resource:2(@
.lstm_cell_785_matmul_1_readvariableop_resource:
(;
-lstm_cell_785_biasadd_readvariableop_resource:(
identity��$lstm_cell_785/BiasAdd/ReadVariableOp�#lstm_cell_785/MatMul/ReadVariableOp�%lstm_cell_785/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_785/MatMul/ReadVariableOpReadVariableOp,lstm_cell_785_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_785/MatMulMatMulstrided_slice_2:output:0+lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_785_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_785/MatMul_1MatMulzeros:output:0-lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_785/addAddV2lstm_cell_785/MatMul:product:0 lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_785_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_785/BiasAddBiasAddlstm_cell_785/add:z:0,lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_785/splitSplit&lstm_cell_785/split/split_dim:output:0lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_785/SigmoidSigmoidlstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_1Sigmoidlstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_785/mulMullstm_cell_785/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_785/ReluRelulstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_1Mullstm_cell_785/Sigmoid:y:0 lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_785/add_1AddV2lstm_cell_785/mul:z:0lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_2Sigmoidlstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_785/Relu_1Relulstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_2Mullstm_cell_785/Sigmoid_2:y:0"lstm_cell_785/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_785_matmul_readvariableop_resource.lstm_cell_785_matmul_1_readvariableop_resource-lstm_cell_785_biasadd_readvariableop_resource*
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
while_body_4748889*
condR
while_cond_4748888*K
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
NoOpNoOp%^lstm_cell_785/BiasAdd/ReadVariableOp$^lstm_cell_785/MatMul/ReadVariableOp&^lstm_cell_785/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_785/BiasAdd/ReadVariableOp$lstm_cell_785/BiasAdd/ReadVariableOp2J
#lstm_cell_785/MatMul/ReadVariableOp#lstm_cell_785/MatMul/ReadVariableOp2N
%lstm_cell_785/MatMul_1/ReadVariableOp%lstm_cell_785/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_4747338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4747338___redundant_placeholder05
1while_while_cond_4747338___redundant_placeholder15
1while_while_cond_4747338___redundant_placeholder25
1while_while_cond_4747338___redundant_placeholder3
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
while_body_4748373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_783_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_783_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_783_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_783_matmul_readvariableop_resource:	�G
4while_lstm_cell_783_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_783_biasadd_readvariableop_resource:	���*while/lstm_cell_783/BiasAdd/ReadVariableOp�)while/lstm_cell_783/MatMul/ReadVariableOp�+while/lstm_cell_783/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_783/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_783_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_783/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_783_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_783/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_783/addAddV2$while/lstm_cell_783/MatMul:product:0&while/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_783_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_783/BiasAddBiasAddwhile/lstm_cell_783/add:z:02while/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_783/splitSplit,while/lstm_cell_783/split/split_dim:output:0$while/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_783/SigmoidSigmoid"while/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_1Sigmoid"while/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mulMul!while/lstm_cell_783/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_783/ReluRelu"while/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_1Mulwhile/lstm_cell_783/Sigmoid:y:0&while/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/add_1AddV2while/lstm_cell_783/mul:z:0while/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_2Sigmoid"while/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_783/Relu_1Reluwhile/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_2Mul!while/lstm_cell_783/Sigmoid_2:y:0(while/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_783/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_783/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_783/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_783/BiasAdd/ReadVariableOp*^while/lstm_cell_783/MatMul/ReadVariableOp,^while/lstm_cell_783/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_783_biasadd_readvariableop_resource5while_lstm_cell_783_biasadd_readvariableop_resource_0"n
4while_lstm_cell_783_matmul_1_readvariableop_resource6while_lstm_cell_783_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_783_matmul_readvariableop_resource4while_lstm_cell_783_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_783/BiasAdd/ReadVariableOp*while/lstm_cell_783/BiasAdd/ReadVariableOp2V
)while/lstm_cell_783/MatMul/ReadVariableOp)while/lstm_cell_783/MatMul/ReadVariableOp2Z
+while/lstm_cell_783/MatMul_1/ReadVariableOp+while/lstm_cell_783/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4747471

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
��
�
#__inference__traced_restore_4752860
file_prefix3
!assignvariableop_dense_201_kernel:
/
!assignvariableop_1_dense_201_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_603_lstm_cell_603_kernel:	�M
:assignvariableop_8_lstm_603_lstm_cell_603_recurrent_kernel:	d�=
.assignvariableop_9_lstm_603_lstm_cell_603_bias:	�D
1assignvariableop_10_lstm_604_lstm_cell_604_kernel:	d�N
;assignvariableop_11_lstm_604_lstm_cell_604_recurrent_kernel:	2�>
/assignvariableop_12_lstm_604_lstm_cell_604_bias:	�C
1assignvariableop_13_lstm_605_lstm_cell_605_kernel:2(M
;assignvariableop_14_lstm_605_lstm_cell_605_recurrent_kernel:
(=
/assignvariableop_15_lstm_605_lstm_cell_605_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_201_kernel_m:
7
)assignvariableop_19_adam_dense_201_bias_m:K
8assignvariableop_20_adam_lstm_603_lstm_cell_603_kernel_m:	�U
Bassignvariableop_21_adam_lstm_603_lstm_cell_603_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_603_lstm_cell_603_bias_m:	�K
8assignvariableop_23_adam_lstm_604_lstm_cell_604_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_604_lstm_cell_604_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_604_lstm_cell_604_bias_m:	�J
8assignvariableop_26_adam_lstm_605_lstm_cell_605_kernel_m:2(T
Bassignvariableop_27_adam_lstm_605_lstm_cell_605_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_605_lstm_cell_605_bias_m:(=
+assignvariableop_29_adam_dense_201_kernel_v:
7
)assignvariableop_30_adam_dense_201_bias_v:K
8assignvariableop_31_adam_lstm_603_lstm_cell_603_kernel_v:	�U
Bassignvariableop_32_adam_lstm_603_lstm_cell_603_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_603_lstm_cell_603_bias_v:	�K
8assignvariableop_34_adam_lstm_604_lstm_cell_604_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_604_lstm_cell_604_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_604_lstm_cell_604_bias_v:	�J
8assignvariableop_37_adam_lstm_605_lstm_cell_605_kernel_v:2(T
Bassignvariableop_38_adam_lstm_605_lstm_cell_605_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_605_lstm_cell_605_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_201_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_201_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_603_lstm_cell_603_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_603_lstm_cell_603_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_603_lstm_cell_603_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_604_lstm_cell_604_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_604_lstm_cell_604_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_604_lstm_cell_604_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_605_lstm_cell_605_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_605_lstm_cell_605_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_605_lstm_cell_605_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_201_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_201_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_603_lstm_cell_603_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_603_lstm_cell_603_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_603_lstm_cell_603_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_604_lstm_cell_604_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_604_lstm_cell_604_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_604_lstm_cell_604_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_605_lstm_cell_605_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_605_lstm_cell_605_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_605_lstm_cell_605_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_201_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_201_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_603_lstm_cell_603_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_603_lstm_cell_603_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_603_lstm_cell_603_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_604_lstm_cell_604_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_604_lstm_cell_604_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_604_lstm_cell_604_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_605_lstm_cell_605_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_605_lstm_cell_605_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_605_lstm_cell_605_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_4748889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_785_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_785_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_785_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_785_matmul_readvariableop_resource:2(F
4while_lstm_cell_785_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_785_biasadd_readvariableop_resource:(��*while/lstm_cell_785/BiasAdd/ReadVariableOp�)while/lstm_cell_785/MatMul/ReadVariableOp�+while/lstm_cell_785/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_785/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_785_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_785/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_785_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_785/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_785/addAddV2$while/lstm_cell_785/MatMul:product:0&while/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_785_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_785/BiasAddBiasAddwhile/lstm_cell_785/add:z:02while/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_785/splitSplit,while/lstm_cell_785/split/split_dim:output:0$while/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_785/SigmoidSigmoid"while/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_1Sigmoid"while/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mulMul!while/lstm_cell_785/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_785/ReluRelu"while/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_1Mulwhile/lstm_cell_785/Sigmoid:y:0&while/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/add_1AddV2while/lstm_cell_785/mul:z:0while/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_2Sigmoid"while/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_785/Relu_1Reluwhile/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_2Mul!while/lstm_cell_785/Sigmoid_2:y:0(while/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_785/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_785/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_785/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_785/BiasAdd/ReadVariableOp*^while/lstm_cell_785/MatMul/ReadVariableOp,^while/lstm_cell_785/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_785_biasadd_readvariableop_resource5while_lstm_cell_785_biasadd_readvariableop_resource_0"n
4while_lstm_cell_785_matmul_1_readvariableop_resource6while_lstm_cell_785_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_785_matmul_readvariableop_resource4while_lstm_cell_785_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_785/BiasAdd/ReadVariableOp*while/lstm_cell_785/BiasAdd/ReadVariableOp2V
)while/lstm_cell_785/MatMul/ReadVariableOp)while/lstm_cell_785/MatMul/ReadVariableOp2Z
+while/lstm_cell_785/MatMul_1/ReadVariableOp+while/lstm_cell_785/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4752274

inputs>
,lstm_cell_785_matmul_readvariableop_resource:2(@
.lstm_cell_785_matmul_1_readvariableop_resource:
(;
-lstm_cell_785_biasadd_readvariableop_resource:(
identity��$lstm_cell_785/BiasAdd/ReadVariableOp�#lstm_cell_785/MatMul/ReadVariableOp�%lstm_cell_785/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_785/MatMul/ReadVariableOpReadVariableOp,lstm_cell_785_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_785/MatMulMatMulstrided_slice_2:output:0+lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_785_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_785/MatMul_1MatMulzeros:output:0-lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_785/addAddV2lstm_cell_785/MatMul:product:0 lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_785_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_785/BiasAddBiasAddlstm_cell_785/add:z:0,lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_785/splitSplit&lstm_cell_785/split/split_dim:output:0lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_785/SigmoidSigmoidlstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_1Sigmoidlstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_785/mulMullstm_cell_785/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_785/ReluRelulstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_1Mullstm_cell_785/Sigmoid:y:0 lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_785/add_1AddV2lstm_cell_785/mul:z:0lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_2Sigmoidlstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_785/Relu_1Relulstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_2Mullstm_cell_785/Sigmoid_2:y:0"lstm_cell_785/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_785_matmul_readvariableop_resource.lstm_cell_785_matmul_1_readvariableop_resource-lstm_cell_785_biasadd_readvariableop_resource*
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
while_body_4752190*
condR
while_cond_4752189*K
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
NoOpNoOp%^lstm_cell_785/BiasAdd/ReadVariableOp$^lstm_cell_785/MatMul/ReadVariableOp&^lstm_cell_785/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_785/BiasAdd/ReadVariableOp$lstm_cell_785/BiasAdd/ReadVariableOp2J
#lstm_cell_785/MatMul/ReadVariableOp#lstm_cell_785/MatMul/ReadVariableOp2N
%lstm_cell_785/MatMul_1/ReadVariableOp%lstm_cell_785/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4747675

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
�
*__inference_lstm_605_layer_call_fn_4751669
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748108o
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4752131

inputs>
,lstm_cell_785_matmul_readvariableop_resource:2(@
.lstm_cell_785_matmul_1_readvariableop_resource:
(;
-lstm_cell_785_biasadd_readvariableop_resource:(
identity��$lstm_cell_785/BiasAdd/ReadVariableOp�#lstm_cell_785/MatMul/ReadVariableOp�%lstm_cell_785/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_785/MatMul/ReadVariableOpReadVariableOp,lstm_cell_785_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_785/MatMulMatMulstrided_slice_2:output:0+lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_785_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_785/MatMul_1MatMulzeros:output:0-lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_785/addAddV2lstm_cell_785/MatMul:product:0 lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_785_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_785/BiasAddBiasAddlstm_cell_785/add:z:0,lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_785/splitSplit&lstm_cell_785/split/split_dim:output:0lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_785/SigmoidSigmoidlstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_1Sigmoidlstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_785/mulMullstm_cell_785/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_785/ReluRelulstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_1Mullstm_cell_785/Sigmoid:y:0 lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_785/add_1AddV2lstm_cell_785/mul:z:0lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_2Sigmoidlstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_785/Relu_1Relulstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_2Mullstm_cell_785/Sigmoid_2:y:0"lstm_cell_785/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_785_matmul_readvariableop_resource.lstm_cell_785_matmul_1_readvariableop_resource-lstm_cell_785_biasadd_readvariableop_resource*
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
while_body_4752047*
condR
while_cond_4752046*K
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
NoOpNoOp%^lstm_cell_785/BiasAdd/ReadVariableOp$^lstm_cell_785/MatMul/ReadVariableOp&^lstm_cell_785/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_785/BiasAdd/ReadVariableOp$lstm_cell_785/BiasAdd/ReadVariableOp2J
#lstm_cell_785/MatMul/ReadVariableOp#lstm_cell_785/MatMul/ReadVariableOp2N
%lstm_cell_785/MatMul_1/ReadVariableOp%lstm_cell_785/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�J
�
E__inference_lstm_603_layer_call_and_return_conditional_losses_4751042

inputs?
,lstm_cell_783_matmul_readvariableop_resource:	�A
.lstm_cell_783_matmul_1_readvariableop_resource:	d�<
-lstm_cell_783_biasadd_readvariableop_resource:	�
identity��$lstm_cell_783/BiasAdd/ReadVariableOp�#lstm_cell_783/MatMul/ReadVariableOp�%lstm_cell_783/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_783/MatMul/ReadVariableOpReadVariableOp,lstm_cell_783_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_783/MatMulMatMulstrided_slice_2:output:0+lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_783_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_783/MatMul_1MatMulzeros:output:0-lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_783/addAddV2lstm_cell_783/MatMul:product:0 lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_783_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_783/BiasAddBiasAddlstm_cell_783/add:z:0,lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_783/splitSplit&lstm_cell_783/split/split_dim:output:0lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_783/SigmoidSigmoidlstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_1Sigmoidlstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_783/mulMullstm_cell_783/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_783/ReluRelulstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_1Mullstm_cell_783/Sigmoid:y:0 lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_783/add_1AddV2lstm_cell_783/mul:z:0lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_2Sigmoidlstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_783/Relu_1Relulstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_2Mullstm_cell_783/Sigmoid_2:y:0"lstm_cell_783/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_783_matmul_readvariableop_resource.lstm_cell_783_matmul_1_readvariableop_resource-lstm_cell_783_biasadd_readvariableop_resource*
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
while_body_4750958*
condR
while_cond_4750957*K
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
NoOpNoOp%^lstm_cell_783/BiasAdd/ReadVariableOp$^lstm_cell_783/MatMul/ReadVariableOp&^lstm_cell_783/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_783/BiasAdd/ReadVariableOp$lstm_cell_783/BiasAdd/ReadVariableOp2J
#lstm_cell_783/MatMul/ReadVariableOp#lstm_cell_783/MatMul/ReadVariableOp2N
%lstm_cell_783/MatMul_1/ReadVariableOp%lstm_cell_783/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_4750814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4750814___redundant_placeholder05
1while_while_cond_4750814___redundant_placeholder15
1while_while_cond_4750814___redundant_placeholder25
1while_while_cond_4750814___redundant_placeholder3
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
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4752457

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
�
�
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4747821

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
�#
�
while_body_4748039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_785_4748063_0:2(/
while_lstm_cell_785_4748065_0:
(+
while_lstm_cell_785_4748067_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_785_4748063:2(-
while_lstm_cell_785_4748065:
()
while_lstm_cell_785_4748067:(��+while/lstm_cell_785/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_785/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_785_4748063_0while_lstm_cell_785_4748065_0while_lstm_cell_785_4748067_0*
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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4748025�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_785/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_785/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_785/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_785/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_785_4748063while_lstm_cell_785_4748063_0"<
while_lstm_cell_785_4748065while_lstm_cell_785_4748065_0"<
while_lstm_cell_785_4748067while_lstm_cell_785_4748067_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_785/StatefulPartitionedCall+while/lstm_cell_785/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_603_layer_call_fn_4750470

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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4749303s
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
�T
�
*sequential_201_lstm_603_while_body_4746890L
Hsequential_201_lstm_603_while_sequential_201_lstm_603_while_loop_counterR
Nsequential_201_lstm_603_while_sequential_201_lstm_603_while_maximum_iterations-
)sequential_201_lstm_603_while_placeholder/
+sequential_201_lstm_603_while_placeholder_1/
+sequential_201_lstm_603_while_placeholder_2/
+sequential_201_lstm_603_while_placeholder_3K
Gsequential_201_lstm_603_while_sequential_201_lstm_603_strided_slice_1_0�
�sequential_201_lstm_603_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_603_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_201_lstm_603_while_lstm_cell_783_matmul_readvariableop_resource_0:	�a
Nsequential_201_lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource_0:	d�\
Msequential_201_lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource_0:	�*
&sequential_201_lstm_603_while_identity,
(sequential_201_lstm_603_while_identity_1,
(sequential_201_lstm_603_while_identity_2,
(sequential_201_lstm_603_while_identity_3,
(sequential_201_lstm_603_while_identity_4,
(sequential_201_lstm_603_while_identity_5I
Esequential_201_lstm_603_while_sequential_201_lstm_603_strided_slice_1�
�sequential_201_lstm_603_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_603_tensorarrayunstack_tensorlistfromtensor]
Jsequential_201_lstm_603_while_lstm_cell_783_matmul_readvariableop_resource:	�_
Lsequential_201_lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource:	d�Z
Ksequential_201_lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource:	���Bsequential_201/lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp�Asequential_201/lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp�Csequential_201/lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp�
Osequential_201/lstm_603/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_201/lstm_603/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_201_lstm_603_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_603_tensorarrayunstack_tensorlistfromtensor_0)sequential_201_lstm_603_while_placeholderXsequential_201/lstm_603/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Asequential_201/lstm_603/while/lstm_cell_783/MatMul/ReadVariableOpReadVariableOpLsequential_201_lstm_603_while_lstm_cell_783_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
2sequential_201/lstm_603/while/lstm_cell_783/MatMulMatMulHsequential_201/lstm_603/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_201/lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_201/lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOpNsequential_201_lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
4sequential_201/lstm_603/while/lstm_cell_783/MatMul_1MatMul+sequential_201_lstm_603_while_placeholder_2Ksequential_201/lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_201/lstm_603/while/lstm_cell_783/addAddV2<sequential_201/lstm_603/while/lstm_cell_783/MatMul:product:0>sequential_201/lstm_603/while/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_201/lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOpMsequential_201_lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_201/lstm_603/while/lstm_cell_783/BiasAddBiasAdd3sequential_201/lstm_603/while/lstm_cell_783/add:z:0Jsequential_201/lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_201/lstm_603/while/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_201/lstm_603/while/lstm_cell_783/splitSplitDsequential_201/lstm_603/while/lstm_cell_783/split/split_dim:output:0<sequential_201/lstm_603/while/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
3sequential_201/lstm_603/while/lstm_cell_783/SigmoidSigmoid:sequential_201/lstm_603/while/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d�
5sequential_201/lstm_603/while/lstm_cell_783/Sigmoid_1Sigmoid:sequential_201/lstm_603/while/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
/sequential_201/lstm_603/while/lstm_cell_783/mulMul9sequential_201/lstm_603/while/lstm_cell_783/Sigmoid_1:y:0+sequential_201_lstm_603_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential_201/lstm_603/while/lstm_cell_783/ReluRelu:sequential_201/lstm_603/while/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
1sequential_201/lstm_603/while/lstm_cell_783/mul_1Mul7sequential_201/lstm_603/while/lstm_cell_783/Sigmoid:y:0>sequential_201/lstm_603/while/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
1sequential_201/lstm_603/while/lstm_cell_783/add_1AddV23sequential_201/lstm_603/while/lstm_cell_783/mul:z:05sequential_201/lstm_603/while/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d�
5sequential_201/lstm_603/while/lstm_cell_783/Sigmoid_2Sigmoid:sequential_201/lstm_603/while/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������d�
2sequential_201/lstm_603/while/lstm_cell_783/Relu_1Relu5sequential_201/lstm_603/while/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
1sequential_201/lstm_603/while/lstm_cell_783/mul_2Mul9sequential_201/lstm_603/while/lstm_cell_783/Sigmoid_2:y:0@sequential_201/lstm_603/while/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Bsequential_201/lstm_603/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_201_lstm_603_while_placeholder_1)sequential_201_lstm_603_while_placeholder5sequential_201/lstm_603/while/lstm_cell_783/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_201/lstm_603/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_201/lstm_603/while/addAddV2)sequential_201_lstm_603_while_placeholder,sequential_201/lstm_603/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_201/lstm_603/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_201/lstm_603/while/add_1AddV2Hsequential_201_lstm_603_while_sequential_201_lstm_603_while_loop_counter.sequential_201/lstm_603/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_201/lstm_603/while/IdentityIdentity'sequential_201/lstm_603/while/add_1:z:0#^sequential_201/lstm_603/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_603/while/Identity_1IdentityNsequential_201_lstm_603_while_sequential_201_lstm_603_while_maximum_iterations#^sequential_201/lstm_603/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_603/while/Identity_2Identity%sequential_201/lstm_603/while/add:z:0#^sequential_201/lstm_603/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_603/while/Identity_3IdentityRsequential_201/lstm_603/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_201/lstm_603/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_603/while/Identity_4Identity5sequential_201/lstm_603/while/lstm_cell_783/mul_2:z:0#^sequential_201/lstm_603/while/NoOp*
T0*'
_output_shapes
:���������d�
(sequential_201/lstm_603/while/Identity_5Identity5sequential_201/lstm_603/while/lstm_cell_783/add_1:z:0#^sequential_201/lstm_603/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential_201/lstm_603/while/NoOpNoOpC^sequential_201/lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOpB^sequential_201/lstm_603/while/lstm_cell_783/MatMul/ReadVariableOpD^sequential_201/lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_201_lstm_603_while_identity/sequential_201/lstm_603/while/Identity:output:0"]
(sequential_201_lstm_603_while_identity_11sequential_201/lstm_603/while/Identity_1:output:0"]
(sequential_201_lstm_603_while_identity_21sequential_201/lstm_603/while/Identity_2:output:0"]
(sequential_201_lstm_603_while_identity_31sequential_201/lstm_603/while/Identity_3:output:0"]
(sequential_201_lstm_603_while_identity_41sequential_201/lstm_603/while/Identity_4:output:0"]
(sequential_201_lstm_603_while_identity_51sequential_201/lstm_603/while/Identity_5:output:0"�
Ksequential_201_lstm_603_while_lstm_cell_783_biasadd_readvariableop_resourceMsequential_201_lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource_0"�
Lsequential_201_lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resourceNsequential_201_lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource_0"�
Jsequential_201_lstm_603_while_lstm_cell_783_matmul_readvariableop_resourceLsequential_201_lstm_603_while_lstm_cell_783_matmul_readvariableop_resource_0"�
Esequential_201_lstm_603_while_sequential_201_lstm_603_strided_slice_1Gsequential_201_lstm_603_while_sequential_201_lstm_603_strided_slice_1_0"�
�sequential_201_lstm_603_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_603_tensorarrayunstack_tensorlistfromtensor�sequential_201_lstm_603_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_603_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
Bsequential_201/lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOpBsequential_201/lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp2�
Asequential_201/lstm_603/while/lstm_cell_783/MatMul/ReadVariableOpAsequential_201/lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp2�
Csequential_201/lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOpCsequential_201/lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4750613
inputs_0?
,lstm_cell_783_matmul_readvariableop_resource:	�A
.lstm_cell_783_matmul_1_readvariableop_resource:	d�<
-lstm_cell_783_biasadd_readvariableop_resource:	�
identity��$lstm_cell_783/BiasAdd/ReadVariableOp�#lstm_cell_783/MatMul/ReadVariableOp�%lstm_cell_783/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_783/MatMul/ReadVariableOpReadVariableOp,lstm_cell_783_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_783/MatMulMatMulstrided_slice_2:output:0+lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_783_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_783/MatMul_1MatMulzeros:output:0-lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_783/addAddV2lstm_cell_783/MatMul:product:0 lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_783_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_783/BiasAddBiasAddlstm_cell_783/add:z:0,lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_783/splitSplit&lstm_cell_783/split/split_dim:output:0lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_783/SigmoidSigmoidlstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_1Sigmoidlstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_783/mulMullstm_cell_783/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_783/ReluRelulstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_1Mullstm_cell_783/Sigmoid:y:0 lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_783/add_1AddV2lstm_cell_783/mul:z:0lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_2Sigmoidlstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_783/Relu_1Relulstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_2Mullstm_cell_783/Sigmoid_2:y:0"lstm_cell_783/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_783_matmul_readvariableop_resource.lstm_cell_783_matmul_1_readvariableop_resource-lstm_cell_783_biasadd_readvariableop_resource*
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
while_body_4750529*
condR
while_cond_4750528*K
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
NoOpNoOp%^lstm_cell_783/BiasAdd/ReadVariableOp$^lstm_cell_783/MatMul/ReadVariableOp&^lstm_cell_783/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_783/BiasAdd/ReadVariableOp$lstm_cell_783/BiasAdd/ReadVariableOp2J
#lstm_cell_783/MatMul/ReadVariableOp#lstm_cell_783/MatMul/ReadVariableOp2N
%lstm_cell_783/MatMul_1/ReadVariableOp%lstm_cell_783/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�C
�

lstm_604_while_body_4750197.
*lstm_604_while_lstm_604_while_loop_counter4
0lstm_604_while_lstm_604_while_maximum_iterations
lstm_604_while_placeholder 
lstm_604_while_placeholder_1 
lstm_604_while_placeholder_2 
lstm_604_while_placeholder_3-
)lstm_604_while_lstm_604_strided_slice_1_0i
elstm_604_while_tensorarrayv2read_tensorlistgetitem_lstm_604_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_604_while_lstm_cell_784_matmul_readvariableop_resource_0:	d�R
?lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource_0:	2�M
>lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource_0:	�
lstm_604_while_identity
lstm_604_while_identity_1
lstm_604_while_identity_2
lstm_604_while_identity_3
lstm_604_while_identity_4
lstm_604_while_identity_5+
'lstm_604_while_lstm_604_strided_slice_1g
clstm_604_while_tensorarrayv2read_tensorlistgetitem_lstm_604_tensorarrayunstack_tensorlistfromtensorN
;lstm_604_while_lstm_cell_784_matmul_readvariableop_resource:	d�P
=lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource:	2�K
<lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource:	���3lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp�2lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp�4lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp�
@lstm_604/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_604/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_604_while_tensorarrayv2read_tensorlistgetitem_lstm_604_tensorarrayunstack_tensorlistfromtensor_0lstm_604_while_placeholderIlstm_604/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_604/while/lstm_cell_784/MatMul/ReadVariableOpReadVariableOp=lstm_604_while_lstm_cell_784_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_604/while/lstm_cell_784/MatMulMatMul9lstm_604/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp?lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_604/while/lstm_cell_784/MatMul_1MatMullstm_604_while_placeholder_2<lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_604/while/lstm_cell_784/addAddV2-lstm_604/while/lstm_cell_784/MatMul:product:0/lstm_604/while/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp>lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_604/while/lstm_cell_784/BiasAddBiasAdd$lstm_604/while/lstm_cell_784/add:z:0;lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_604/while/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_604/while/lstm_cell_784/splitSplit5lstm_604/while/lstm_cell_784/split/split_dim:output:0-lstm_604/while/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_604/while/lstm_cell_784/SigmoidSigmoid+lstm_604/while/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_604/while/lstm_cell_784/Sigmoid_1Sigmoid+lstm_604/while/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_604/while/lstm_cell_784/mulMul*lstm_604/while/lstm_cell_784/Sigmoid_1:y:0lstm_604_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_604/while/lstm_cell_784/ReluRelu+lstm_604/while/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_604/while/lstm_cell_784/mul_1Mul(lstm_604/while/lstm_cell_784/Sigmoid:y:0/lstm_604/while/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_604/while/lstm_cell_784/add_1AddV2$lstm_604/while/lstm_cell_784/mul:z:0&lstm_604/while/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_604/while/lstm_cell_784/Sigmoid_2Sigmoid+lstm_604/while/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_604/while/lstm_cell_784/Relu_1Relu&lstm_604/while/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_604/while/lstm_cell_784/mul_2Mul*lstm_604/while/lstm_cell_784/Sigmoid_2:y:01lstm_604/while/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_604/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_604_while_placeholder_1lstm_604_while_placeholder&lstm_604/while/lstm_cell_784/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_604/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_604/while/addAddV2lstm_604_while_placeholderlstm_604/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_604/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_604/while/add_1AddV2*lstm_604_while_lstm_604_while_loop_counterlstm_604/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_604/while/IdentityIdentitylstm_604/while/add_1:z:0^lstm_604/while/NoOp*
T0*
_output_shapes
: �
lstm_604/while/Identity_1Identity0lstm_604_while_lstm_604_while_maximum_iterations^lstm_604/while/NoOp*
T0*
_output_shapes
: t
lstm_604/while/Identity_2Identitylstm_604/while/add:z:0^lstm_604/while/NoOp*
T0*
_output_shapes
: �
lstm_604/while/Identity_3IdentityClstm_604/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_604/while/NoOp*
T0*
_output_shapes
: �
lstm_604/while/Identity_4Identity&lstm_604/while/lstm_cell_784/mul_2:z:0^lstm_604/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_604/while/Identity_5Identity&lstm_604/while/lstm_cell_784/add_1:z:0^lstm_604/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_604/while/NoOpNoOp4^lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp3^lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp5^lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_604_while_identity lstm_604/while/Identity:output:0"?
lstm_604_while_identity_1"lstm_604/while/Identity_1:output:0"?
lstm_604_while_identity_2"lstm_604/while/Identity_2:output:0"?
lstm_604_while_identity_3"lstm_604/while/Identity_3:output:0"?
lstm_604_while_identity_4"lstm_604/while/Identity_4:output:0"?
lstm_604_while_identity_5"lstm_604/while/Identity_5:output:0"T
'lstm_604_while_lstm_604_strided_slice_1)lstm_604_while_lstm_604_strided_slice_1_0"~
<lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource>lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource_0"�
=lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource?lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource_0"|
;lstm_604_while_lstm_cell_784_matmul_readvariableop_resource=lstm_604_while_lstm_cell_784_matmul_readvariableop_resource_0"�
clstm_604_while_tensorarrayv2read_tensorlistgetitem_lstm_604_tensorarrayunstack_tensorlistfromtensorelstm_604_while_tensorarrayv2read_tensorlistgetitem_lstm_604_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp3lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp2h
2lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp2lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp2l
4lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp4lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4751988
inputs_0>
,lstm_cell_785_matmul_readvariableop_resource:2(@
.lstm_cell_785_matmul_1_readvariableop_resource:
(;
-lstm_cell_785_biasadd_readvariableop_resource:(
identity��$lstm_cell_785/BiasAdd/ReadVariableOp�#lstm_cell_785/MatMul/ReadVariableOp�%lstm_cell_785/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_785/MatMul/ReadVariableOpReadVariableOp,lstm_cell_785_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_785/MatMulMatMulstrided_slice_2:output:0+lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_785_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_785/MatMul_1MatMulzeros:output:0-lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_785/addAddV2lstm_cell_785/MatMul:product:0 lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_785_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_785/BiasAddBiasAddlstm_cell_785/add:z:0,lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_785/splitSplit&lstm_cell_785/split/split_dim:output:0lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_785/SigmoidSigmoidlstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_1Sigmoidlstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_785/mulMullstm_cell_785/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_785/ReluRelulstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_1Mullstm_cell_785/Sigmoid:y:0 lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_785/add_1AddV2lstm_cell_785/mul:z:0lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_2Sigmoidlstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_785/Relu_1Relulstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_2Mullstm_cell_785/Sigmoid_2:y:0"lstm_cell_785/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_785_matmul_readvariableop_resource.lstm_cell_785_matmul_1_readvariableop_resource-lstm_cell_785_biasadd_readvariableop_resource*
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
while_body_4751904*
condR
while_cond_4751903*K
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
NoOpNoOp%^lstm_cell_785/BiasAdd/ReadVariableOp$^lstm_cell_785/MatMul/ReadVariableOp&^lstm_cell_785/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_785/BiasAdd/ReadVariableOp$lstm_cell_785/BiasAdd/ReadVariableOp2J
#lstm_cell_785/MatMul/ReadVariableOp#lstm_cell_785/MatMul/ReadVariableOp2N
%lstm_cell_785/MatMul_1/ReadVariableOp%lstm_cell_785/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
*__inference_lstm_604_layer_call_fn_4751086

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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4749138s
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
�

�
0__inference_sequential_201_layer_call_fn_4748807
lstm_603_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_603_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_201_layer_call_and_return_conditional_losses_4748782o
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
_user_specified_namelstm_603_input
�
�
*sequential_201_lstm_604_while_cond_4747028L
Hsequential_201_lstm_604_while_sequential_201_lstm_604_while_loop_counterR
Nsequential_201_lstm_604_while_sequential_201_lstm_604_while_maximum_iterations-
)sequential_201_lstm_604_while_placeholder/
+sequential_201_lstm_604_while_placeholder_1/
+sequential_201_lstm_604_while_placeholder_2/
+sequential_201_lstm_604_while_placeholder_3N
Jsequential_201_lstm_604_while_less_sequential_201_lstm_604_strided_slice_1e
asequential_201_lstm_604_while_sequential_201_lstm_604_while_cond_4747028___redundant_placeholder0e
asequential_201_lstm_604_while_sequential_201_lstm_604_while_cond_4747028___redundant_placeholder1e
asequential_201_lstm_604_while_sequential_201_lstm_604_while_cond_4747028___redundant_placeholder2e
asequential_201_lstm_604_while_sequential_201_lstm_604_while_cond_4747028___redundant_placeholder3*
&sequential_201_lstm_604_while_identity
�
"sequential_201/lstm_604/while/LessLess)sequential_201_lstm_604_while_placeholderJsequential_201_lstm_604_while_less_sequential_201_lstm_604_strided_slice_1*
T0*
_output_shapes
: {
&sequential_201/lstm_604/while/IdentityIdentity&sequential_201/lstm_604/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_201_lstm_604_while_identity/sequential_201/lstm_604/while/Identity:output:0*(
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
while_body_4750529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_783_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_783_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_783_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_783_matmul_readvariableop_resource:	�G
4while_lstm_cell_783_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_783_biasadd_readvariableop_resource:	���*while/lstm_cell_783/BiasAdd/ReadVariableOp�)while/lstm_cell_783/MatMul/ReadVariableOp�+while/lstm_cell_783/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_783/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_783_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_783/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_783_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_783/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_783/addAddV2$while/lstm_cell_783/MatMul:product:0&while/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_783_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_783/BiasAddBiasAddwhile/lstm_cell_783/add:z:02while/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_783/splitSplit,while/lstm_cell_783/split/split_dim:output:0$while/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_783/SigmoidSigmoid"while/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_1Sigmoid"while/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mulMul!while/lstm_cell_783/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_783/ReluRelu"while/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_1Mulwhile/lstm_cell_783/Sigmoid:y:0&while/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/add_1AddV2while/lstm_cell_783/mul:z:0while/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_2Sigmoid"while/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_783/Relu_1Reluwhile/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_2Mul!while/lstm_cell_783/Sigmoid_2:y:0(while/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_783/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_783/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_783/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_783/BiasAdd/ReadVariableOp*^while/lstm_cell_783/MatMul/ReadVariableOp,^while/lstm_cell_783/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_783_biasadd_readvariableop_resource5while_lstm_cell_783_biasadd_readvariableop_resource_0"n
4while_lstm_cell_783_matmul_1_readvariableop_resource6while_lstm_cell_783_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_783_matmul_readvariableop_resource4while_lstm_cell_783_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_783/BiasAdd/ReadVariableOp*while/lstm_cell_783/BiasAdd/ReadVariableOp2V
)while/lstm_cell_783/MatMul/ReadVariableOp)while/lstm_cell_783/MatMul/ReadVariableOp2Z
+while/lstm_cell_783/MatMul_1/ReadVariableOp+while/lstm_cell_783/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4751287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4751287___redundant_placeholder05
1while_while_cond_4751287___redundant_placeholder15
1while_while_cond_4751287___redundant_placeholder25
1while_while_cond_4751287___redundant_placeholder3
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
�C
�

lstm_604_while_body_4749770.
*lstm_604_while_lstm_604_while_loop_counter4
0lstm_604_while_lstm_604_while_maximum_iterations
lstm_604_while_placeholder 
lstm_604_while_placeholder_1 
lstm_604_while_placeholder_2 
lstm_604_while_placeholder_3-
)lstm_604_while_lstm_604_strided_slice_1_0i
elstm_604_while_tensorarrayv2read_tensorlistgetitem_lstm_604_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_604_while_lstm_cell_784_matmul_readvariableop_resource_0:	d�R
?lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource_0:	2�M
>lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource_0:	�
lstm_604_while_identity
lstm_604_while_identity_1
lstm_604_while_identity_2
lstm_604_while_identity_3
lstm_604_while_identity_4
lstm_604_while_identity_5+
'lstm_604_while_lstm_604_strided_slice_1g
clstm_604_while_tensorarrayv2read_tensorlistgetitem_lstm_604_tensorarrayunstack_tensorlistfromtensorN
;lstm_604_while_lstm_cell_784_matmul_readvariableop_resource:	d�P
=lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource:	2�K
<lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource:	���3lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp�2lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp�4lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp�
@lstm_604/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_604/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_604_while_tensorarrayv2read_tensorlistgetitem_lstm_604_tensorarrayunstack_tensorlistfromtensor_0lstm_604_while_placeholderIlstm_604/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_604/while/lstm_cell_784/MatMul/ReadVariableOpReadVariableOp=lstm_604_while_lstm_cell_784_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_604/while/lstm_cell_784/MatMulMatMul9lstm_604/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp?lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_604/while/lstm_cell_784/MatMul_1MatMullstm_604_while_placeholder_2<lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_604/while/lstm_cell_784/addAddV2-lstm_604/while/lstm_cell_784/MatMul:product:0/lstm_604/while/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp>lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_604/while/lstm_cell_784/BiasAddBiasAdd$lstm_604/while/lstm_cell_784/add:z:0;lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_604/while/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_604/while/lstm_cell_784/splitSplit5lstm_604/while/lstm_cell_784/split/split_dim:output:0-lstm_604/while/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_604/while/lstm_cell_784/SigmoidSigmoid+lstm_604/while/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_604/while/lstm_cell_784/Sigmoid_1Sigmoid+lstm_604/while/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_604/while/lstm_cell_784/mulMul*lstm_604/while/lstm_cell_784/Sigmoid_1:y:0lstm_604_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_604/while/lstm_cell_784/ReluRelu+lstm_604/while/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_604/while/lstm_cell_784/mul_1Mul(lstm_604/while/lstm_cell_784/Sigmoid:y:0/lstm_604/while/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_604/while/lstm_cell_784/add_1AddV2$lstm_604/while/lstm_cell_784/mul:z:0&lstm_604/while/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_604/while/lstm_cell_784/Sigmoid_2Sigmoid+lstm_604/while/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_604/while/lstm_cell_784/Relu_1Relu&lstm_604/while/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_604/while/lstm_cell_784/mul_2Mul*lstm_604/while/lstm_cell_784/Sigmoid_2:y:01lstm_604/while/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_604/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_604_while_placeholder_1lstm_604_while_placeholder&lstm_604/while/lstm_cell_784/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_604/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_604/while/addAddV2lstm_604_while_placeholderlstm_604/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_604/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_604/while/add_1AddV2*lstm_604_while_lstm_604_while_loop_counterlstm_604/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_604/while/IdentityIdentitylstm_604/while/add_1:z:0^lstm_604/while/NoOp*
T0*
_output_shapes
: �
lstm_604/while/Identity_1Identity0lstm_604_while_lstm_604_while_maximum_iterations^lstm_604/while/NoOp*
T0*
_output_shapes
: t
lstm_604/while/Identity_2Identitylstm_604/while/add:z:0^lstm_604/while/NoOp*
T0*
_output_shapes
: �
lstm_604/while/Identity_3IdentityClstm_604/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_604/while/NoOp*
T0*
_output_shapes
: �
lstm_604/while/Identity_4Identity&lstm_604/while/lstm_cell_784/mul_2:z:0^lstm_604/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_604/while/Identity_5Identity&lstm_604/while/lstm_cell_784/add_1:z:0^lstm_604/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_604/while/NoOpNoOp4^lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp3^lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp5^lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_604_while_identity lstm_604/while/Identity:output:0"?
lstm_604_while_identity_1"lstm_604/while/Identity_1:output:0"?
lstm_604_while_identity_2"lstm_604/while/Identity_2:output:0"?
lstm_604_while_identity_3"lstm_604/while/Identity_3:output:0"?
lstm_604_while_identity_4"lstm_604/while/Identity_4:output:0"?
lstm_604_while_identity_5"lstm_604/while/Identity_5:output:0"T
'lstm_604_while_lstm_604_strided_slice_1)lstm_604_while_lstm_604_strided_slice_1_0"~
<lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource>lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource_0"�
=lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource?lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource_0"|
;lstm_604_while_lstm_cell_784_matmul_readvariableop_resource=lstm_604_while_lstm_cell_784_matmul_readvariableop_resource_0"�
clstm_604_while_tensorarrayv2read_tensorlistgetitem_lstm_604_tensorarrayunstack_tensorlistfromtensorelstm_604_while_tensorarrayv2read_tensorlistgetitem_lstm_604_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp3lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp2h
2lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp2lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp2l
4lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp4lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�T
�
*sequential_201_lstm_605_while_body_4747168L
Hsequential_201_lstm_605_while_sequential_201_lstm_605_while_loop_counterR
Nsequential_201_lstm_605_while_sequential_201_lstm_605_while_maximum_iterations-
)sequential_201_lstm_605_while_placeholder/
+sequential_201_lstm_605_while_placeholder_1/
+sequential_201_lstm_605_while_placeholder_2/
+sequential_201_lstm_605_while_placeholder_3K
Gsequential_201_lstm_605_while_sequential_201_lstm_605_strided_slice_1_0�
�sequential_201_lstm_605_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_605_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_201_lstm_605_while_lstm_cell_785_matmul_readvariableop_resource_0:2(`
Nsequential_201_lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource_0:
([
Msequential_201_lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource_0:(*
&sequential_201_lstm_605_while_identity,
(sequential_201_lstm_605_while_identity_1,
(sequential_201_lstm_605_while_identity_2,
(sequential_201_lstm_605_while_identity_3,
(sequential_201_lstm_605_while_identity_4,
(sequential_201_lstm_605_while_identity_5I
Esequential_201_lstm_605_while_sequential_201_lstm_605_strided_slice_1�
�sequential_201_lstm_605_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_605_tensorarrayunstack_tensorlistfromtensor\
Jsequential_201_lstm_605_while_lstm_cell_785_matmul_readvariableop_resource:2(^
Lsequential_201_lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource:
(Y
Ksequential_201_lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource:(��Bsequential_201/lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp�Asequential_201/lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp�Csequential_201/lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp�
Osequential_201/lstm_605/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Asequential_201/lstm_605/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_201_lstm_605_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_605_tensorarrayunstack_tensorlistfromtensor_0)sequential_201_lstm_605_while_placeholderXsequential_201/lstm_605/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Asequential_201/lstm_605/while/lstm_cell_785/MatMul/ReadVariableOpReadVariableOpLsequential_201_lstm_605_while_lstm_cell_785_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
2sequential_201/lstm_605/while/lstm_cell_785/MatMulMatMulHsequential_201/lstm_605/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_201/lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_201/lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOpNsequential_201_lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
4sequential_201/lstm_605/while/lstm_cell_785/MatMul_1MatMul+sequential_201_lstm_605_while_placeholder_2Ksequential_201/lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_201/lstm_605/while/lstm_cell_785/addAddV2<sequential_201/lstm_605/while/lstm_cell_785/MatMul:product:0>sequential_201/lstm_605/while/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
Bsequential_201/lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOpMsequential_201_lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
3sequential_201/lstm_605/while/lstm_cell_785/BiasAddBiasAdd3sequential_201/lstm_605/while/lstm_cell_785/add:z:0Jsequential_201/lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(}
;sequential_201/lstm_605/while/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_201/lstm_605/while/lstm_cell_785/splitSplitDsequential_201/lstm_605/while/lstm_cell_785/split/split_dim:output:0<sequential_201/lstm_605/while/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
3sequential_201/lstm_605/while/lstm_cell_785/SigmoidSigmoid:sequential_201/lstm_605/while/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
�
5sequential_201/lstm_605/while/lstm_cell_785/Sigmoid_1Sigmoid:sequential_201/lstm_605/while/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
/sequential_201/lstm_605/while/lstm_cell_785/mulMul9sequential_201/lstm_605/while/lstm_cell_785/Sigmoid_1:y:0+sequential_201_lstm_605_while_placeholder_3*
T0*'
_output_shapes
:���������
�
0sequential_201/lstm_605/while/lstm_cell_785/ReluRelu:sequential_201/lstm_605/while/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
1sequential_201/lstm_605/while/lstm_cell_785/mul_1Mul7sequential_201/lstm_605/while/lstm_cell_785/Sigmoid:y:0>sequential_201/lstm_605/while/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
1sequential_201/lstm_605/while/lstm_cell_785/add_1AddV23sequential_201/lstm_605/while/lstm_cell_785/mul:z:05sequential_201/lstm_605/while/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
�
5sequential_201/lstm_605/while/lstm_cell_785/Sigmoid_2Sigmoid:sequential_201/lstm_605/while/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
�
2sequential_201/lstm_605/while/lstm_cell_785/Relu_1Relu5sequential_201/lstm_605/while/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_201/lstm_605/while/lstm_cell_785/mul_2Mul9sequential_201/lstm_605/while/lstm_cell_785/Sigmoid_2:y:0@sequential_201/lstm_605/while/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Bsequential_201/lstm_605/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_201_lstm_605_while_placeholder_1)sequential_201_lstm_605_while_placeholder5sequential_201/lstm_605/while/lstm_cell_785/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_201/lstm_605/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_201/lstm_605/while/addAddV2)sequential_201_lstm_605_while_placeholder,sequential_201/lstm_605/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_201/lstm_605/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_201/lstm_605/while/add_1AddV2Hsequential_201_lstm_605_while_sequential_201_lstm_605_while_loop_counter.sequential_201/lstm_605/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_201/lstm_605/while/IdentityIdentity'sequential_201/lstm_605/while/add_1:z:0#^sequential_201/lstm_605/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_605/while/Identity_1IdentityNsequential_201_lstm_605_while_sequential_201_lstm_605_while_maximum_iterations#^sequential_201/lstm_605/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_605/while/Identity_2Identity%sequential_201/lstm_605/while/add:z:0#^sequential_201/lstm_605/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_605/while/Identity_3IdentityRsequential_201/lstm_605/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_201/lstm_605/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_605/while/Identity_4Identity5sequential_201/lstm_605/while/lstm_cell_785/mul_2:z:0#^sequential_201/lstm_605/while/NoOp*
T0*'
_output_shapes
:���������
�
(sequential_201/lstm_605/while/Identity_5Identity5sequential_201/lstm_605/while/lstm_cell_785/add_1:z:0#^sequential_201/lstm_605/while/NoOp*
T0*'
_output_shapes
:���������
�
"sequential_201/lstm_605/while/NoOpNoOpC^sequential_201/lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOpB^sequential_201/lstm_605/while/lstm_cell_785/MatMul/ReadVariableOpD^sequential_201/lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_201_lstm_605_while_identity/sequential_201/lstm_605/while/Identity:output:0"]
(sequential_201_lstm_605_while_identity_11sequential_201/lstm_605/while/Identity_1:output:0"]
(sequential_201_lstm_605_while_identity_21sequential_201/lstm_605/while/Identity_2:output:0"]
(sequential_201_lstm_605_while_identity_31sequential_201/lstm_605/while/Identity_3:output:0"]
(sequential_201_lstm_605_while_identity_41sequential_201/lstm_605/while/Identity_4:output:0"]
(sequential_201_lstm_605_while_identity_51sequential_201/lstm_605/while/Identity_5:output:0"�
Ksequential_201_lstm_605_while_lstm_cell_785_biasadd_readvariableop_resourceMsequential_201_lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource_0"�
Lsequential_201_lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resourceNsequential_201_lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource_0"�
Jsequential_201_lstm_605_while_lstm_cell_785_matmul_readvariableop_resourceLsequential_201_lstm_605_while_lstm_cell_785_matmul_readvariableop_resource_0"�
Esequential_201_lstm_605_while_sequential_201_lstm_605_strided_slice_1Gsequential_201_lstm_605_while_sequential_201_lstm_605_strided_slice_1_0"�
�sequential_201_lstm_605_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_605_tensorarrayunstack_tensorlistfromtensor�sequential_201_lstm_605_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_605_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
Bsequential_201/lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOpBsequential_201/lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp2�
Asequential_201/lstm_605/while/lstm_cell_785/MatMul/ReadVariableOpAsequential_201/lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp2�
Csequential_201/lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOpCsequential_201/lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4747529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4747529___redundant_placeholder05
1while_while_cond_4747529___redundant_placeholder15
1while_while_cond_4747529___redundant_placeholder25
1while_while_cond_4747529___redundant_placeholder3
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
�C
�

lstm_605_while_body_4749909.
*lstm_605_while_lstm_605_while_loop_counter4
0lstm_605_while_lstm_605_while_maximum_iterations
lstm_605_while_placeholder 
lstm_605_while_placeholder_1 
lstm_605_while_placeholder_2 
lstm_605_while_placeholder_3-
)lstm_605_while_lstm_605_strided_slice_1_0i
elstm_605_while_tensorarrayv2read_tensorlistgetitem_lstm_605_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_605_while_lstm_cell_785_matmul_readvariableop_resource_0:2(Q
?lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource_0:
(L
>lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource_0:(
lstm_605_while_identity
lstm_605_while_identity_1
lstm_605_while_identity_2
lstm_605_while_identity_3
lstm_605_while_identity_4
lstm_605_while_identity_5+
'lstm_605_while_lstm_605_strided_slice_1g
clstm_605_while_tensorarrayv2read_tensorlistgetitem_lstm_605_tensorarrayunstack_tensorlistfromtensorM
;lstm_605_while_lstm_cell_785_matmul_readvariableop_resource:2(O
=lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource:
(J
<lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource:(��3lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp�2lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp�4lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp�
@lstm_605/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_605/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_605_while_tensorarrayv2read_tensorlistgetitem_lstm_605_tensorarrayunstack_tensorlistfromtensor_0lstm_605_while_placeholderIlstm_605/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_605/while/lstm_cell_785/MatMul/ReadVariableOpReadVariableOp=lstm_605_while_lstm_cell_785_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_605/while/lstm_cell_785/MatMulMatMul9lstm_605/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp?lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_605/while/lstm_cell_785/MatMul_1MatMullstm_605_while_placeholder_2<lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_605/while/lstm_cell_785/addAddV2-lstm_605/while/lstm_cell_785/MatMul:product:0/lstm_605/while/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp>lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_605/while/lstm_cell_785/BiasAddBiasAdd$lstm_605/while/lstm_cell_785/add:z:0;lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_605/while/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_605/while/lstm_cell_785/splitSplit5lstm_605/while/lstm_cell_785/split/split_dim:output:0-lstm_605/while/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_605/while/lstm_cell_785/SigmoidSigmoid+lstm_605/while/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_605/while/lstm_cell_785/Sigmoid_1Sigmoid+lstm_605/while/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_605/while/lstm_cell_785/mulMul*lstm_605/while/lstm_cell_785/Sigmoid_1:y:0lstm_605_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_605/while/lstm_cell_785/ReluRelu+lstm_605/while/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_605/while/lstm_cell_785/mul_1Mul(lstm_605/while/lstm_cell_785/Sigmoid:y:0/lstm_605/while/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_605/while/lstm_cell_785/add_1AddV2$lstm_605/while/lstm_cell_785/mul:z:0&lstm_605/while/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_605/while/lstm_cell_785/Sigmoid_2Sigmoid+lstm_605/while/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_605/while/lstm_cell_785/Relu_1Relu&lstm_605/while/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_605/while/lstm_cell_785/mul_2Mul*lstm_605/while/lstm_cell_785/Sigmoid_2:y:01lstm_605/while/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_605/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_605_while_placeholder_1lstm_605_while_placeholder&lstm_605/while/lstm_cell_785/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_605/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_605/while/addAddV2lstm_605_while_placeholderlstm_605/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_605/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_605/while/add_1AddV2*lstm_605_while_lstm_605_while_loop_counterlstm_605/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_605/while/IdentityIdentitylstm_605/while/add_1:z:0^lstm_605/while/NoOp*
T0*
_output_shapes
: �
lstm_605/while/Identity_1Identity0lstm_605_while_lstm_605_while_maximum_iterations^lstm_605/while/NoOp*
T0*
_output_shapes
: t
lstm_605/while/Identity_2Identitylstm_605/while/add:z:0^lstm_605/while/NoOp*
T0*
_output_shapes
: �
lstm_605/while/Identity_3IdentityClstm_605/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_605/while/NoOp*
T0*
_output_shapes
: �
lstm_605/while/Identity_4Identity&lstm_605/while/lstm_cell_785/mul_2:z:0^lstm_605/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_605/while/Identity_5Identity&lstm_605/while/lstm_cell_785/add_1:z:0^lstm_605/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_605/while/NoOpNoOp4^lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp3^lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp5^lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_605_while_identity lstm_605/while/Identity:output:0"?
lstm_605_while_identity_1"lstm_605/while/Identity_1:output:0"?
lstm_605_while_identity_2"lstm_605/while/Identity_2:output:0"?
lstm_605_while_identity_3"lstm_605/while/Identity_3:output:0"?
lstm_605_while_identity_4"lstm_605/while/Identity_4:output:0"?
lstm_605_while_identity_5"lstm_605/while/Identity_5:output:0"T
'lstm_605_while_lstm_605_strided_slice_1)lstm_605_while_lstm_605_strided_slice_1_0"~
<lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource>lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource_0"�
=lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource?lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource_0"|
;lstm_605_while_lstm_cell_785_matmul_readvariableop_resource=lstm_605_while_lstm_cell_785_matmul_readvariableop_resource_0"�
clstm_605_while_tensorarrayv2read_tensorlistgetitem_lstm_605_tensorarrayunstack_tensorlistfromtensorelstm_605_while_tensorarrayv2read_tensorlistgetitem_lstm_605_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp3lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp2h
2lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp2lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp2l
4lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp4lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�T
�
*sequential_201_lstm_604_while_body_4747029L
Hsequential_201_lstm_604_while_sequential_201_lstm_604_while_loop_counterR
Nsequential_201_lstm_604_while_sequential_201_lstm_604_while_maximum_iterations-
)sequential_201_lstm_604_while_placeholder/
+sequential_201_lstm_604_while_placeholder_1/
+sequential_201_lstm_604_while_placeholder_2/
+sequential_201_lstm_604_while_placeholder_3K
Gsequential_201_lstm_604_while_sequential_201_lstm_604_strided_slice_1_0�
�sequential_201_lstm_604_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_604_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_201_lstm_604_while_lstm_cell_784_matmul_readvariableop_resource_0:	d�a
Nsequential_201_lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource_0:	2�\
Msequential_201_lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource_0:	�*
&sequential_201_lstm_604_while_identity,
(sequential_201_lstm_604_while_identity_1,
(sequential_201_lstm_604_while_identity_2,
(sequential_201_lstm_604_while_identity_3,
(sequential_201_lstm_604_while_identity_4,
(sequential_201_lstm_604_while_identity_5I
Esequential_201_lstm_604_while_sequential_201_lstm_604_strided_slice_1�
�sequential_201_lstm_604_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_604_tensorarrayunstack_tensorlistfromtensor]
Jsequential_201_lstm_604_while_lstm_cell_784_matmul_readvariableop_resource:	d�_
Lsequential_201_lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource:	2�Z
Ksequential_201_lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource:	���Bsequential_201/lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp�Asequential_201/lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp�Csequential_201/lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp�
Osequential_201/lstm_604/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
Asequential_201/lstm_604/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_201_lstm_604_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_604_tensorarrayunstack_tensorlistfromtensor_0)sequential_201_lstm_604_while_placeholderXsequential_201/lstm_604/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
Asequential_201/lstm_604/while/lstm_cell_784/MatMul/ReadVariableOpReadVariableOpLsequential_201_lstm_604_while_lstm_cell_784_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_201/lstm_604/while/lstm_cell_784/MatMulMatMulHsequential_201/lstm_604/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_201/lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_201/lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOpNsequential_201_lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
4sequential_201/lstm_604/while/lstm_cell_784/MatMul_1MatMul+sequential_201_lstm_604_while_placeholder_2Ksequential_201/lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_201/lstm_604/while/lstm_cell_784/addAddV2<sequential_201/lstm_604/while/lstm_cell_784/MatMul:product:0>sequential_201/lstm_604/while/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_201/lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOpMsequential_201_lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_201/lstm_604/while/lstm_cell_784/BiasAddBiasAdd3sequential_201/lstm_604/while/lstm_cell_784/add:z:0Jsequential_201/lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_201/lstm_604/while/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_201/lstm_604/while/lstm_cell_784/splitSplitDsequential_201/lstm_604/while/lstm_cell_784/split/split_dim:output:0<sequential_201/lstm_604/while/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
3sequential_201/lstm_604/while/lstm_cell_784/SigmoidSigmoid:sequential_201/lstm_604/while/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2�
5sequential_201/lstm_604/while/lstm_cell_784/Sigmoid_1Sigmoid:sequential_201/lstm_604/while/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
/sequential_201/lstm_604/while/lstm_cell_784/mulMul9sequential_201/lstm_604/while/lstm_cell_784/Sigmoid_1:y:0+sequential_201_lstm_604_while_placeholder_3*
T0*'
_output_shapes
:���������2�
0sequential_201/lstm_604/while/lstm_cell_784/ReluRelu:sequential_201/lstm_604/while/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
1sequential_201/lstm_604/while/lstm_cell_784/mul_1Mul7sequential_201/lstm_604/while/lstm_cell_784/Sigmoid:y:0>sequential_201/lstm_604/while/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
1sequential_201/lstm_604/while/lstm_cell_784/add_1AddV23sequential_201/lstm_604/while/lstm_cell_784/mul:z:05sequential_201/lstm_604/while/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2�
5sequential_201/lstm_604/while/lstm_cell_784/Sigmoid_2Sigmoid:sequential_201/lstm_604/while/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2�
2sequential_201/lstm_604/while/lstm_cell_784/Relu_1Relu5sequential_201/lstm_604/while/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_201/lstm_604/while/lstm_cell_784/mul_2Mul9sequential_201/lstm_604/while/lstm_cell_784/Sigmoid_2:y:0@sequential_201/lstm_604/while/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Bsequential_201/lstm_604/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_201_lstm_604_while_placeholder_1)sequential_201_lstm_604_while_placeholder5sequential_201/lstm_604/while/lstm_cell_784/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_201/lstm_604/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_201/lstm_604/while/addAddV2)sequential_201_lstm_604_while_placeholder,sequential_201/lstm_604/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_201/lstm_604/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_201/lstm_604/while/add_1AddV2Hsequential_201_lstm_604_while_sequential_201_lstm_604_while_loop_counter.sequential_201/lstm_604/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_201/lstm_604/while/IdentityIdentity'sequential_201/lstm_604/while/add_1:z:0#^sequential_201/lstm_604/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_604/while/Identity_1IdentityNsequential_201_lstm_604_while_sequential_201_lstm_604_while_maximum_iterations#^sequential_201/lstm_604/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_604/while/Identity_2Identity%sequential_201/lstm_604/while/add:z:0#^sequential_201/lstm_604/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_604/while/Identity_3IdentityRsequential_201/lstm_604/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_201/lstm_604/while/NoOp*
T0*
_output_shapes
: �
(sequential_201/lstm_604/while/Identity_4Identity5sequential_201/lstm_604/while/lstm_cell_784/mul_2:z:0#^sequential_201/lstm_604/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_201/lstm_604/while/Identity_5Identity5sequential_201/lstm_604/while/lstm_cell_784/add_1:z:0#^sequential_201/lstm_604/while/NoOp*
T0*'
_output_shapes
:���������2�
"sequential_201/lstm_604/while/NoOpNoOpC^sequential_201/lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOpB^sequential_201/lstm_604/while/lstm_cell_784/MatMul/ReadVariableOpD^sequential_201/lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_201_lstm_604_while_identity/sequential_201/lstm_604/while/Identity:output:0"]
(sequential_201_lstm_604_while_identity_11sequential_201/lstm_604/while/Identity_1:output:0"]
(sequential_201_lstm_604_while_identity_21sequential_201/lstm_604/while/Identity_2:output:0"]
(sequential_201_lstm_604_while_identity_31sequential_201/lstm_604/while/Identity_3:output:0"]
(sequential_201_lstm_604_while_identity_41sequential_201/lstm_604/while/Identity_4:output:0"]
(sequential_201_lstm_604_while_identity_51sequential_201/lstm_604/while/Identity_5:output:0"�
Ksequential_201_lstm_604_while_lstm_cell_784_biasadd_readvariableop_resourceMsequential_201_lstm_604_while_lstm_cell_784_biasadd_readvariableop_resource_0"�
Lsequential_201_lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resourceNsequential_201_lstm_604_while_lstm_cell_784_matmul_1_readvariableop_resource_0"�
Jsequential_201_lstm_604_while_lstm_cell_784_matmul_readvariableop_resourceLsequential_201_lstm_604_while_lstm_cell_784_matmul_readvariableop_resource_0"�
Esequential_201_lstm_604_while_sequential_201_lstm_604_strided_slice_1Gsequential_201_lstm_604_while_sequential_201_lstm_604_strided_slice_1_0"�
�sequential_201_lstm_604_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_604_tensorarrayunstack_tensorlistfromtensor�sequential_201_lstm_604_while_tensorarrayv2read_tensorlistgetitem_sequential_201_lstm_604_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
Bsequential_201/lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOpBsequential_201/lstm_604/while/lstm_cell_784/BiasAdd/ReadVariableOp2�
Asequential_201/lstm_604/while/lstm_cell_784/MatMul/ReadVariableOpAsequential_201/lstm_604/while/lstm_cell_784/MatMul/ReadVariableOp2�
Csequential_201/lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOpCsequential_201/lstm_604/while/lstm_cell_784/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_785_layer_call_fn_4752523

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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4748171o
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
�
while_cond_4752046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4752046___redundant_placeholder05
1while_while_cond_4752046___redundant_placeholder15
1while_while_cond_4752046___redundant_placeholder25
1while_while_cond_4752046___redundant_placeholder3
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
while_body_4752190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_785_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_785_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_785_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_785_matmul_readvariableop_resource:2(F
4while_lstm_cell_785_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_785_biasadd_readvariableop_resource:(��*while/lstm_cell_785/BiasAdd/ReadVariableOp�)while/lstm_cell_785/MatMul/ReadVariableOp�+while/lstm_cell_785/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_785/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_785_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_785/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_785_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_785/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_785/addAddV2$while/lstm_cell_785/MatMul:product:0&while/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_785_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_785/BiasAddBiasAddwhile/lstm_cell_785/add:z:02while/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_785/splitSplit,while/lstm_cell_785/split/split_dim:output:0$while/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_785/SigmoidSigmoid"while/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_1Sigmoid"while/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mulMul!while/lstm_cell_785/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_785/ReluRelu"while/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_1Mulwhile/lstm_cell_785/Sigmoid:y:0&while/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/add_1AddV2while/lstm_cell_785/mul:z:0while/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_2Sigmoid"while/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_785/Relu_1Reluwhile/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_2Mul!while/lstm_cell_785/Sigmoid_2:y:0(while/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_785/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_785/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_785/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_785/BiasAdd/ReadVariableOp*^while/lstm_cell_785/MatMul/ReadVariableOp,^while/lstm_cell_785/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_785_biasadd_readvariableop_resource5while_lstm_cell_785_biasadd_readvariableop_resource_0"n
4while_lstm_cell_785_matmul_1_readvariableop_resource6while_lstm_cell_785_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_785_matmul_readvariableop_resource4while_lstm_cell_785_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_785/BiasAdd/ReadVariableOp*while/lstm_cell_785/BiasAdd/ReadVariableOp2V
)while/lstm_cell_785/MatMul/ReadVariableOp)while/lstm_cell_785/MatMul/ReadVariableOp2Z
+while/lstm_cell_785/MatMul_1/ReadVariableOp+while/lstm_cell_785/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748757

inputs>
,lstm_cell_785_matmul_readvariableop_resource:2(@
.lstm_cell_785_matmul_1_readvariableop_resource:
(;
-lstm_cell_785_biasadd_readvariableop_resource:(
identity��$lstm_cell_785/BiasAdd/ReadVariableOp�#lstm_cell_785/MatMul/ReadVariableOp�%lstm_cell_785/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_785/MatMul/ReadVariableOpReadVariableOp,lstm_cell_785_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_785/MatMulMatMulstrided_slice_2:output:0+lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_785_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_785/MatMul_1MatMulzeros:output:0-lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_785/addAddV2lstm_cell_785/MatMul:product:0 lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_785_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_785/BiasAddBiasAddlstm_cell_785/add:z:0,lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_785/splitSplit&lstm_cell_785/split/split_dim:output:0lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_785/SigmoidSigmoidlstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_1Sigmoidlstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_785/mulMullstm_cell_785/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_785/ReluRelulstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_1Mullstm_cell_785/Sigmoid:y:0 lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_785/add_1AddV2lstm_cell_785/mul:z:0lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_785/Sigmoid_2Sigmoidlstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_785/Relu_1Relulstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_785/mul_2Mullstm_cell_785/Sigmoid_2:y:0"lstm_cell_785/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_785_matmul_readvariableop_resource.lstm_cell_785_matmul_1_readvariableop_resource-lstm_cell_785_biasadd_readvariableop_resource*
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
while_body_4748673*
condR
while_cond_4748672*K
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
NoOpNoOp%^lstm_cell_785/BiasAdd/ReadVariableOp$^lstm_cell_785/MatMul/ReadVariableOp&^lstm_cell_785/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_785/BiasAdd/ReadVariableOp$lstm_cell_785/BiasAdd/ReadVariableOp2J
#lstm_cell_785/MatMul/ReadVariableOp#lstm_cell_785/MatMul/ReadVariableOp2N
%lstm_cell_785/MatMul_1/ReadVariableOp%lstm_cell_785/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�8
�
while_body_4750958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_783_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_783_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_783_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_783_matmul_readvariableop_resource:	�G
4while_lstm_cell_783_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_783_biasadd_readvariableop_resource:	���*while/lstm_cell_783/BiasAdd/ReadVariableOp�)while/lstm_cell_783/MatMul/ReadVariableOp�+while/lstm_cell_783/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_783/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_783_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_783/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_783_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_783/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_783/addAddV2$while/lstm_cell_783/MatMul:product:0&while/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_783_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_783/BiasAddBiasAddwhile/lstm_cell_783/add:z:02while/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_783/splitSplit,while/lstm_cell_783/split/split_dim:output:0$while/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_783/SigmoidSigmoid"while/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_1Sigmoid"while/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mulMul!while/lstm_cell_783/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_783/ReluRelu"while/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_1Mulwhile/lstm_cell_783/Sigmoid:y:0&while/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/add_1AddV2while/lstm_cell_783/mul:z:0while/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_783/Sigmoid_2Sigmoid"while/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_783/Relu_1Reluwhile/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_783/mul_2Mul!while/lstm_cell_783/Sigmoid_2:y:0(while/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_783/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_783/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_783/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_783/BiasAdd/ReadVariableOp*^while/lstm_cell_783/MatMul/ReadVariableOp,^while/lstm_cell_783/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_783_biasadd_readvariableop_resource5while_lstm_cell_783_biasadd_readvariableop_resource_0"n
4while_lstm_cell_783_matmul_1_readvariableop_resource6while_lstm_cell_783_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_783_matmul_readvariableop_resource4while_lstm_cell_783_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_783/BiasAdd/ReadVariableOp*while/lstm_cell_783/BiasAdd/ReadVariableOp2V
)while/lstm_cell_783/MatMul/ReadVariableOp)while/lstm_cell_783/MatMul/ReadVariableOp2Z
+while/lstm_cell_783/MatMul_1/ReadVariableOp+while/lstm_cell_783/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4748672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4748672___redundant_placeholder05
1while_while_cond_4748672___redundant_placeholder15
1while_while_cond_4748672___redundant_placeholder25
1while_while_cond_4748672___redundant_placeholder3
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
while_cond_4751430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4751430___redundant_placeholder05
1while_while_cond_4751430___redundant_placeholder15
1while_while_cond_4751430___redundant_placeholder25
1while_while_cond_4751430___redundant_placeholder3
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4748607

inputs?
,lstm_cell_784_matmul_readvariableop_resource:	d�A
.lstm_cell_784_matmul_1_readvariableop_resource:	2�<
-lstm_cell_784_biasadd_readvariableop_resource:	�
identity��$lstm_cell_784/BiasAdd/ReadVariableOp�#lstm_cell_784/MatMul/ReadVariableOp�%lstm_cell_784/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_784/MatMul/ReadVariableOpReadVariableOp,lstm_cell_784_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_784/MatMulMatMulstrided_slice_2:output:0+lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_784_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_784/MatMul_1MatMulzeros:output:0-lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_784/addAddV2lstm_cell_784/MatMul:product:0 lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_784_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_784/BiasAddBiasAddlstm_cell_784/add:z:0,lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_784/splitSplit&lstm_cell_784/split/split_dim:output:0lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_784/SigmoidSigmoidlstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_1Sigmoidlstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_784/mulMullstm_cell_784/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_784/ReluRelulstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_1Mullstm_cell_784/Sigmoid:y:0 lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_784/add_1AddV2lstm_cell_784/mul:z:0lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_2Sigmoidlstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_784/Relu_1Relulstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_2Mullstm_cell_784/Sigmoid_2:y:0"lstm_cell_784/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_784_matmul_readvariableop_resource.lstm_cell_784_matmul_1_readvariableop_resource-lstm_cell_784_biasadd_readvariableop_resource*
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
while_body_4748523*
condR
while_cond_4748522*K
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
NoOpNoOp%^lstm_cell_784/BiasAdd/ReadVariableOp$^lstm_cell_784/MatMul/ReadVariableOp&^lstm_cell_784/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_784/BiasAdd/ReadVariableOp$lstm_cell_784/BiasAdd/ReadVariableOp2J
#lstm_cell_784/MatMul/ReadVariableOp#lstm_cell_784/MatMul/ReadVariableOp2N
%lstm_cell_784/MatMul_1/ReadVariableOp%lstm_cell_784/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749371

inputs#
lstm_603_4749344:	�#
lstm_603_4749346:	d�
lstm_603_4749348:	�#
lstm_604_4749351:	d�#
lstm_604_4749353:	2�
lstm_604_4749355:	�"
lstm_605_4749358:2("
lstm_605_4749360:
(
lstm_605_4749362:(#
dense_201_4749365:

dense_201_4749367:
identity��!dense_201/StatefulPartitionedCall� lstm_603/StatefulPartitionedCall� lstm_604/StatefulPartitionedCall� lstm_605/StatefulPartitionedCall�
 lstm_603/StatefulPartitionedCallStatefulPartitionedCallinputslstm_603_4749344lstm_603_4749346lstm_603_4749348*
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4749303�
 lstm_604/StatefulPartitionedCallStatefulPartitionedCall)lstm_603/StatefulPartitionedCall:output:0lstm_604_4749351lstm_604_4749353lstm_604_4749355*
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4749138�
 lstm_605/StatefulPartitionedCallStatefulPartitionedCall)lstm_604/StatefulPartitionedCall:output:0lstm_605_4749358lstm_605_4749360lstm_605_4749362*
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748973�
!dense_201/StatefulPartitionedCallStatefulPartitionedCall)lstm_605/StatefulPartitionedCall:output:0dense_201_4749365dense_201_4749367*
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
F__inference_dense_201_layer_call_and_return_conditional_losses_4748775y
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_201/StatefulPartitionedCall!^lstm_603/StatefulPartitionedCall!^lstm_604/StatefulPartitionedCall!^lstm_605/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2D
 lstm_603/StatefulPartitionedCall lstm_603/StatefulPartitionedCall2D
 lstm_604/StatefulPartitionedCall lstm_604/StatefulPartitionedCall2D
 lstm_605/StatefulPartitionedCall lstm_605/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_4750528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4750528___redundant_placeholder05
1while_while_cond_4750528___redundant_placeholder15
1while_while_cond_4750528___redundant_placeholder25
1while_while_cond_4750528___redundant_placeholder3
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4750899

inputs?
,lstm_cell_783_matmul_readvariableop_resource:	�A
.lstm_cell_783_matmul_1_readvariableop_resource:	d�<
-lstm_cell_783_biasadd_readvariableop_resource:	�
identity��$lstm_cell_783/BiasAdd/ReadVariableOp�#lstm_cell_783/MatMul/ReadVariableOp�%lstm_cell_783/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_783/MatMul/ReadVariableOpReadVariableOp,lstm_cell_783_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_783/MatMulMatMulstrided_slice_2:output:0+lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_783_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_783/MatMul_1MatMulzeros:output:0-lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_783/addAddV2lstm_cell_783/MatMul:product:0 lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_783_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_783/BiasAddBiasAddlstm_cell_783/add:z:0,lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_783/splitSplit&lstm_cell_783/split/split_dim:output:0lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_783/SigmoidSigmoidlstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_1Sigmoidlstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_783/mulMullstm_cell_783/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_783/ReluRelulstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_1Mullstm_cell_783/Sigmoid:y:0 lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_783/add_1AddV2lstm_cell_783/mul:z:0lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_2Sigmoidlstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_783/Relu_1Relulstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_2Mullstm_cell_783/Sigmoid_2:y:0"lstm_cell_783/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_783_matmul_readvariableop_resource.lstm_cell_783_matmul_1_readvariableop_resource-lstm_cell_783_biasadd_readvariableop_resource*
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
while_body_4750815*
condR
while_cond_4750814*K
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
NoOpNoOp%^lstm_cell_783/BiasAdd/ReadVariableOp$^lstm_cell_783/MatMul/ReadVariableOp&^lstm_cell_783/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_783/BiasAdd/ReadVariableOp$lstm_cell_783/BiasAdd/ReadVariableOp2J
#lstm_cell_783/MatMul/ReadVariableOp#lstm_cell_783/MatMul/ReadVariableOp2N
%lstm_cell_783/MatMul_1/ReadVariableOp%lstm_cell_783/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
E__inference_lstm_604_layer_call_and_return_conditional_losses_4747758

inputs(
lstm_cell_784_4747676:	d�(
lstm_cell_784_4747678:	2�$
lstm_cell_784_4747680:	�
identity��%lstm_cell_784/StatefulPartitionedCall�while;
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
%lstm_cell_784/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_784_4747676lstm_cell_784_4747678lstm_cell_784_4747680*
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
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4747675n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_784_4747676lstm_cell_784_4747678lstm_cell_784_4747680*
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
while_body_4747689*
condR
while_cond_4747688*K
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
NoOpNoOp&^lstm_cell_784/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_784/StatefulPartitionedCall%lstm_cell_784/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�

�
lstm_603_while_cond_4749630.
*lstm_603_while_lstm_603_while_loop_counter4
0lstm_603_while_lstm_603_while_maximum_iterations
lstm_603_while_placeholder 
lstm_603_while_placeholder_1 
lstm_603_while_placeholder_2 
lstm_603_while_placeholder_30
,lstm_603_while_less_lstm_603_strided_slice_1G
Clstm_603_while_lstm_603_while_cond_4749630___redundant_placeholder0G
Clstm_603_while_lstm_603_while_cond_4749630___redundant_placeholder1G
Clstm_603_while_lstm_603_while_cond_4749630___redundant_placeholder2G
Clstm_603_while_lstm_603_while_cond_4749630___redundant_placeholder3
lstm_603_while_identity
�
lstm_603/while/LessLesslstm_603_while_placeholder,lstm_603_while_less_lstm_603_strided_slice_1*
T0*
_output_shapes
: ]
lstm_603/while/IdentityIdentitylstm_603/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_603_while_identity lstm_603/while/Identity:output:0*(
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4748457

inputs?
,lstm_cell_783_matmul_readvariableop_resource:	�A
.lstm_cell_783_matmul_1_readvariableop_resource:	d�<
-lstm_cell_783_biasadd_readvariableop_resource:	�
identity��$lstm_cell_783/BiasAdd/ReadVariableOp�#lstm_cell_783/MatMul/ReadVariableOp�%lstm_cell_783/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_783/MatMul/ReadVariableOpReadVariableOp,lstm_cell_783_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_783/MatMulMatMulstrided_slice_2:output:0+lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_783_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_783/MatMul_1MatMulzeros:output:0-lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_783/addAddV2lstm_cell_783/MatMul:product:0 lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_783_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_783/BiasAddBiasAddlstm_cell_783/add:z:0,lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_783/splitSplit&lstm_cell_783/split/split_dim:output:0lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_783/SigmoidSigmoidlstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_1Sigmoidlstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_783/mulMullstm_cell_783/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_783/ReluRelulstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_1Mullstm_cell_783/Sigmoid:y:0 lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_783/add_1AddV2lstm_cell_783/mul:z:0lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_2Sigmoidlstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_783/Relu_1Relulstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_2Mullstm_cell_783/Sigmoid_2:y:0"lstm_cell_783/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_783_matmul_readvariableop_resource.lstm_cell_783_matmul_1_readvariableop_resource-lstm_cell_783_biasadd_readvariableop_resource*
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
while_body_4748373*
condR
while_cond_4748372*K
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
NoOpNoOp%^lstm_cell_783/BiasAdd/ReadVariableOp$^lstm_cell_783/MatMul/ReadVariableOp&^lstm_cell_783/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_783/BiasAdd/ReadVariableOp$lstm_cell_783/BiasAdd/ReadVariableOp2J
#lstm_cell_783/MatMul/ReadVariableOp#lstm_cell_783/MatMul/ReadVariableOp2N
%lstm_cell_783/MatMul_1/ReadVariableOp%lstm_cell_783/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�C
�

lstm_603_while_body_4750058.
*lstm_603_while_lstm_603_while_loop_counter4
0lstm_603_while_lstm_603_while_maximum_iterations
lstm_603_while_placeholder 
lstm_603_while_placeholder_1 
lstm_603_while_placeholder_2 
lstm_603_while_placeholder_3-
)lstm_603_while_lstm_603_strided_slice_1_0i
elstm_603_while_tensorarrayv2read_tensorlistgetitem_lstm_603_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_603_while_lstm_cell_783_matmul_readvariableop_resource_0:	�R
?lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource_0:	d�M
>lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource_0:	�
lstm_603_while_identity
lstm_603_while_identity_1
lstm_603_while_identity_2
lstm_603_while_identity_3
lstm_603_while_identity_4
lstm_603_while_identity_5+
'lstm_603_while_lstm_603_strided_slice_1g
clstm_603_while_tensorarrayv2read_tensorlistgetitem_lstm_603_tensorarrayunstack_tensorlistfromtensorN
;lstm_603_while_lstm_cell_783_matmul_readvariableop_resource:	�P
=lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource:	d�K
<lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource:	���3lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp�2lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp�4lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp�
@lstm_603/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_603/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_603_while_tensorarrayv2read_tensorlistgetitem_lstm_603_tensorarrayunstack_tensorlistfromtensor_0lstm_603_while_placeholderIlstm_603/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_603/while/lstm_cell_783/MatMul/ReadVariableOpReadVariableOp=lstm_603_while_lstm_cell_783_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_603/while/lstm_cell_783/MatMulMatMul9lstm_603/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp?lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_603/while/lstm_cell_783/MatMul_1MatMullstm_603_while_placeholder_2<lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_603/while/lstm_cell_783/addAddV2-lstm_603/while/lstm_cell_783/MatMul:product:0/lstm_603/while/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp>lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_603/while/lstm_cell_783/BiasAddBiasAdd$lstm_603/while/lstm_cell_783/add:z:0;lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_603/while/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_603/while/lstm_cell_783/splitSplit5lstm_603/while/lstm_cell_783/split/split_dim:output:0-lstm_603/while/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_603/while/lstm_cell_783/SigmoidSigmoid+lstm_603/while/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_603/while/lstm_cell_783/Sigmoid_1Sigmoid+lstm_603/while/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_603/while/lstm_cell_783/mulMul*lstm_603/while/lstm_cell_783/Sigmoid_1:y:0lstm_603_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_603/while/lstm_cell_783/ReluRelu+lstm_603/while/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_603/while/lstm_cell_783/mul_1Mul(lstm_603/while/lstm_cell_783/Sigmoid:y:0/lstm_603/while/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_603/while/lstm_cell_783/add_1AddV2$lstm_603/while/lstm_cell_783/mul:z:0&lstm_603/while/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_603/while/lstm_cell_783/Sigmoid_2Sigmoid+lstm_603/while/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_603/while/lstm_cell_783/Relu_1Relu&lstm_603/while/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_603/while/lstm_cell_783/mul_2Mul*lstm_603/while/lstm_cell_783/Sigmoid_2:y:01lstm_603/while/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_603/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_603_while_placeholder_1lstm_603_while_placeholder&lstm_603/while/lstm_cell_783/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_603/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_603/while/addAddV2lstm_603_while_placeholderlstm_603/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_603/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_603/while/add_1AddV2*lstm_603_while_lstm_603_while_loop_counterlstm_603/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_603/while/IdentityIdentitylstm_603/while/add_1:z:0^lstm_603/while/NoOp*
T0*
_output_shapes
: �
lstm_603/while/Identity_1Identity0lstm_603_while_lstm_603_while_maximum_iterations^lstm_603/while/NoOp*
T0*
_output_shapes
: t
lstm_603/while/Identity_2Identitylstm_603/while/add:z:0^lstm_603/while/NoOp*
T0*
_output_shapes
: �
lstm_603/while/Identity_3IdentityClstm_603/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_603/while/NoOp*
T0*
_output_shapes
: �
lstm_603/while/Identity_4Identity&lstm_603/while/lstm_cell_783/mul_2:z:0^lstm_603/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_603/while/Identity_5Identity&lstm_603/while/lstm_cell_783/add_1:z:0^lstm_603/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_603/while/NoOpNoOp4^lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp3^lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp5^lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_603_while_identity lstm_603/while/Identity:output:0"?
lstm_603_while_identity_1"lstm_603/while/Identity_1:output:0"?
lstm_603_while_identity_2"lstm_603/while/Identity_2:output:0"?
lstm_603_while_identity_3"lstm_603/while/Identity_3:output:0"?
lstm_603_while_identity_4"lstm_603/while/Identity_4:output:0"?
lstm_603_while_identity_5"lstm_603/while/Identity_5:output:0"T
'lstm_603_while_lstm_603_strided_slice_1)lstm_603_while_lstm_603_strided_slice_1_0"~
<lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource>lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource_0"�
=lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource?lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource_0"|
;lstm_603_while_lstm_cell_783_matmul_readvariableop_resource=lstm_603_while_lstm_cell_783_matmul_readvariableop_resource_0"�
clstm_603_while_tensorarrayv2read_tensorlistgetitem_lstm_603_tensorarrayunstack_tensorlistfromtensorelstm_603_while_tensorarrayv2read_tensorlistgetitem_lstm_603_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp3lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp2h
2lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp2lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp2l
4lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp4lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4751903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4751903___redundant_placeholder05
1while_while_cond_4751903___redundant_placeholder15
1while_while_cond_4751903___redundant_placeholder25
1while_while_cond_4751903___redundant_placeholder3
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
/__inference_lstm_cell_783_layer_call_fn_4752327

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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4747471o
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
while_cond_4748372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4748372___redundant_placeholder05
1while_while_cond_4748372___redundant_placeholder15
1while_while_cond_4748372___redundant_placeholder25
1while_while_cond_4748372___redundant_placeholder3
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
��
�
K__inference_sequential_201_layer_call_and_return_conditional_losses_4750426

inputsH
5lstm_603_lstm_cell_783_matmul_readvariableop_resource:	�J
7lstm_603_lstm_cell_783_matmul_1_readvariableop_resource:	d�E
6lstm_603_lstm_cell_783_biasadd_readvariableop_resource:	�H
5lstm_604_lstm_cell_784_matmul_readvariableop_resource:	d�J
7lstm_604_lstm_cell_784_matmul_1_readvariableop_resource:	2�E
6lstm_604_lstm_cell_784_biasadd_readvariableop_resource:	�G
5lstm_605_lstm_cell_785_matmul_readvariableop_resource:2(I
7lstm_605_lstm_cell_785_matmul_1_readvariableop_resource:
(D
6lstm_605_lstm_cell_785_biasadd_readvariableop_resource:(:
(dense_201_matmul_readvariableop_resource:
7
)dense_201_biasadd_readvariableop_resource:
identity�� dense_201/BiasAdd/ReadVariableOp�dense_201/MatMul/ReadVariableOp�-lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp�,lstm_603/lstm_cell_783/MatMul/ReadVariableOp�.lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp�lstm_603/while�-lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp�,lstm_604/lstm_cell_784/MatMul/ReadVariableOp�.lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp�lstm_604/while�-lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp�,lstm_605/lstm_cell_785/MatMul/ReadVariableOp�.lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp�lstm_605/whileD
lstm_603/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_603/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_603/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_603/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_603/strided_sliceStridedSlicelstm_603/Shape:output:0%lstm_603/strided_slice/stack:output:0'lstm_603/strided_slice/stack_1:output:0'lstm_603/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_603/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_603/zeros/packedPacklstm_603/strided_slice:output:0 lstm_603/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_603/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_603/zerosFilllstm_603/zeros/packed:output:0lstm_603/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_603/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_603/zeros_1/packedPacklstm_603/strided_slice:output:0"lstm_603/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_603/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_603/zeros_1Fill lstm_603/zeros_1/packed:output:0lstm_603/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_603/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_603/transpose	Transposeinputs lstm_603/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_603/Shape_1Shapelstm_603/transpose:y:0*
T0*
_output_shapes
:h
lstm_603/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_603/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_603/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_603/strided_slice_1StridedSlicelstm_603/Shape_1:output:0'lstm_603/strided_slice_1/stack:output:0)lstm_603/strided_slice_1/stack_1:output:0)lstm_603/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_603/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_603/TensorArrayV2TensorListReserve-lstm_603/TensorArrayV2/element_shape:output:0!lstm_603/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_603/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_603/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_603/transpose:y:0Glstm_603/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_603/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_603/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_603/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_603/strided_slice_2StridedSlicelstm_603/transpose:y:0'lstm_603/strided_slice_2/stack:output:0)lstm_603/strided_slice_2/stack_1:output:0)lstm_603/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_603/lstm_cell_783/MatMul/ReadVariableOpReadVariableOp5lstm_603_lstm_cell_783_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_603/lstm_cell_783/MatMulMatMul!lstm_603/strided_slice_2:output:04lstm_603/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_603/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp7lstm_603_lstm_cell_783_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_603/lstm_cell_783/MatMul_1MatMullstm_603/zeros:output:06lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_603/lstm_cell_783/addAddV2'lstm_603/lstm_cell_783/MatMul:product:0)lstm_603/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_603/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp6lstm_603_lstm_cell_783_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_603/lstm_cell_783/BiasAddBiasAddlstm_603/lstm_cell_783/add:z:05lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_603/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_603/lstm_cell_783/splitSplit/lstm_603/lstm_cell_783/split/split_dim:output:0'lstm_603/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_603/lstm_cell_783/SigmoidSigmoid%lstm_603/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_603/lstm_cell_783/Sigmoid_1Sigmoid%lstm_603/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_603/lstm_cell_783/mulMul$lstm_603/lstm_cell_783/Sigmoid_1:y:0lstm_603/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_603/lstm_cell_783/ReluRelu%lstm_603/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_603/lstm_cell_783/mul_1Mul"lstm_603/lstm_cell_783/Sigmoid:y:0)lstm_603/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_603/lstm_cell_783/add_1AddV2lstm_603/lstm_cell_783/mul:z:0 lstm_603/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_603/lstm_cell_783/Sigmoid_2Sigmoid%lstm_603/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_603/lstm_cell_783/Relu_1Relu lstm_603/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_603/lstm_cell_783/mul_2Mul$lstm_603/lstm_cell_783/Sigmoid_2:y:0+lstm_603/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_603/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_603/TensorArrayV2_1TensorListReserve/lstm_603/TensorArrayV2_1/element_shape:output:0!lstm_603/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_603/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_603/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_603/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_603/whileWhile$lstm_603/while/loop_counter:output:0*lstm_603/while/maximum_iterations:output:0lstm_603/time:output:0!lstm_603/TensorArrayV2_1:handle:0lstm_603/zeros:output:0lstm_603/zeros_1:output:0!lstm_603/strided_slice_1:output:0@lstm_603/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_603_lstm_cell_783_matmul_readvariableop_resource7lstm_603_lstm_cell_783_matmul_1_readvariableop_resource6lstm_603_lstm_cell_783_biasadd_readvariableop_resource*
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
lstm_603_while_body_4750058*'
condR
lstm_603_while_cond_4750057*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_603/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_603/TensorArrayV2Stack/TensorListStackTensorListStacklstm_603/while:output:3Blstm_603/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_603/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_603/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_603/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_603/strided_slice_3StridedSlice4lstm_603/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_603/strided_slice_3/stack:output:0)lstm_603/strided_slice_3/stack_1:output:0)lstm_603/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_603/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_603/transpose_1	Transpose4lstm_603/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_603/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_603/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_604/ShapeShapelstm_603/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_604/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_604/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_604/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_604/strided_sliceStridedSlicelstm_604/Shape:output:0%lstm_604/strided_slice/stack:output:0'lstm_604/strided_slice/stack_1:output:0'lstm_604/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_604/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_604/zeros/packedPacklstm_604/strided_slice:output:0 lstm_604/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_604/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_604/zerosFilllstm_604/zeros/packed:output:0lstm_604/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_604/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_604/zeros_1/packedPacklstm_604/strided_slice:output:0"lstm_604/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_604/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_604/zeros_1Fill lstm_604/zeros_1/packed:output:0lstm_604/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_604/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_604/transpose	Transposelstm_603/transpose_1:y:0 lstm_604/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_604/Shape_1Shapelstm_604/transpose:y:0*
T0*
_output_shapes
:h
lstm_604/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_604/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_604/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_604/strided_slice_1StridedSlicelstm_604/Shape_1:output:0'lstm_604/strided_slice_1/stack:output:0)lstm_604/strided_slice_1/stack_1:output:0)lstm_604/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_604/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_604/TensorArrayV2TensorListReserve-lstm_604/TensorArrayV2/element_shape:output:0!lstm_604/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_604/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_604/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_604/transpose:y:0Glstm_604/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_604/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_604/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_604/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_604/strided_slice_2StridedSlicelstm_604/transpose:y:0'lstm_604/strided_slice_2/stack:output:0)lstm_604/strided_slice_2/stack_1:output:0)lstm_604/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_604/lstm_cell_784/MatMul/ReadVariableOpReadVariableOp5lstm_604_lstm_cell_784_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_604/lstm_cell_784/MatMulMatMul!lstm_604/strided_slice_2:output:04lstm_604/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_604/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp7lstm_604_lstm_cell_784_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_604/lstm_cell_784/MatMul_1MatMullstm_604/zeros:output:06lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_604/lstm_cell_784/addAddV2'lstm_604/lstm_cell_784/MatMul:product:0)lstm_604/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_604/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp6lstm_604_lstm_cell_784_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_604/lstm_cell_784/BiasAddBiasAddlstm_604/lstm_cell_784/add:z:05lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_604/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_604/lstm_cell_784/splitSplit/lstm_604/lstm_cell_784/split/split_dim:output:0'lstm_604/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_604/lstm_cell_784/SigmoidSigmoid%lstm_604/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_604/lstm_cell_784/Sigmoid_1Sigmoid%lstm_604/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_604/lstm_cell_784/mulMul$lstm_604/lstm_cell_784/Sigmoid_1:y:0lstm_604/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_604/lstm_cell_784/ReluRelu%lstm_604/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_604/lstm_cell_784/mul_1Mul"lstm_604/lstm_cell_784/Sigmoid:y:0)lstm_604/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_604/lstm_cell_784/add_1AddV2lstm_604/lstm_cell_784/mul:z:0 lstm_604/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_604/lstm_cell_784/Sigmoid_2Sigmoid%lstm_604/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_604/lstm_cell_784/Relu_1Relu lstm_604/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_604/lstm_cell_784/mul_2Mul$lstm_604/lstm_cell_784/Sigmoid_2:y:0+lstm_604/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_604/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_604/TensorArrayV2_1TensorListReserve/lstm_604/TensorArrayV2_1/element_shape:output:0!lstm_604/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_604/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_604/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_604/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_604/whileWhile$lstm_604/while/loop_counter:output:0*lstm_604/while/maximum_iterations:output:0lstm_604/time:output:0!lstm_604/TensorArrayV2_1:handle:0lstm_604/zeros:output:0lstm_604/zeros_1:output:0!lstm_604/strided_slice_1:output:0@lstm_604/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_604_lstm_cell_784_matmul_readvariableop_resource7lstm_604_lstm_cell_784_matmul_1_readvariableop_resource6lstm_604_lstm_cell_784_biasadd_readvariableop_resource*
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
lstm_604_while_body_4750197*'
condR
lstm_604_while_cond_4750196*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_604/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_604/TensorArrayV2Stack/TensorListStackTensorListStacklstm_604/while:output:3Blstm_604/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_604/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_604/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_604/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_604/strided_slice_3StridedSlice4lstm_604/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_604/strided_slice_3/stack:output:0)lstm_604/strided_slice_3/stack_1:output:0)lstm_604/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_604/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_604/transpose_1	Transpose4lstm_604/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_604/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_604/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_605/ShapeShapelstm_604/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_605/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_605/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_605/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_605/strided_sliceStridedSlicelstm_605/Shape:output:0%lstm_605/strided_slice/stack:output:0'lstm_605/strided_slice/stack_1:output:0'lstm_605/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_605/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_605/zeros/packedPacklstm_605/strided_slice:output:0 lstm_605/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_605/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_605/zerosFilllstm_605/zeros/packed:output:0lstm_605/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_605/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_605/zeros_1/packedPacklstm_605/strided_slice:output:0"lstm_605/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_605/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_605/zeros_1Fill lstm_605/zeros_1/packed:output:0lstm_605/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_605/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_605/transpose	Transposelstm_604/transpose_1:y:0 lstm_605/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_605/Shape_1Shapelstm_605/transpose:y:0*
T0*
_output_shapes
:h
lstm_605/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_605/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_605/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_605/strided_slice_1StridedSlicelstm_605/Shape_1:output:0'lstm_605/strided_slice_1/stack:output:0)lstm_605/strided_slice_1/stack_1:output:0)lstm_605/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_605/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_605/TensorArrayV2TensorListReserve-lstm_605/TensorArrayV2/element_shape:output:0!lstm_605/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_605/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_605/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_605/transpose:y:0Glstm_605/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_605/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_605/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_605/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_605/strided_slice_2StridedSlicelstm_605/transpose:y:0'lstm_605/strided_slice_2/stack:output:0)lstm_605/strided_slice_2/stack_1:output:0)lstm_605/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_605/lstm_cell_785/MatMul/ReadVariableOpReadVariableOp5lstm_605_lstm_cell_785_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_605/lstm_cell_785/MatMulMatMul!lstm_605/strided_slice_2:output:04lstm_605/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_605/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp7lstm_605_lstm_cell_785_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_605/lstm_cell_785/MatMul_1MatMullstm_605/zeros:output:06lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_605/lstm_cell_785/addAddV2'lstm_605/lstm_cell_785/MatMul:product:0)lstm_605/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_605/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp6lstm_605_lstm_cell_785_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_605/lstm_cell_785/BiasAddBiasAddlstm_605/lstm_cell_785/add:z:05lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_605/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_605/lstm_cell_785/splitSplit/lstm_605/lstm_cell_785/split/split_dim:output:0'lstm_605/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_605/lstm_cell_785/SigmoidSigmoid%lstm_605/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_605/lstm_cell_785/Sigmoid_1Sigmoid%lstm_605/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_605/lstm_cell_785/mulMul$lstm_605/lstm_cell_785/Sigmoid_1:y:0lstm_605/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_605/lstm_cell_785/ReluRelu%lstm_605/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_605/lstm_cell_785/mul_1Mul"lstm_605/lstm_cell_785/Sigmoid:y:0)lstm_605/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_605/lstm_cell_785/add_1AddV2lstm_605/lstm_cell_785/mul:z:0 lstm_605/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_605/lstm_cell_785/Sigmoid_2Sigmoid%lstm_605/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_605/lstm_cell_785/Relu_1Relu lstm_605/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_605/lstm_cell_785/mul_2Mul$lstm_605/lstm_cell_785/Sigmoid_2:y:0+lstm_605/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_605/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_605/TensorArrayV2_1TensorListReserve/lstm_605/TensorArrayV2_1/element_shape:output:0!lstm_605/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_605/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_605/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_605/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_605/whileWhile$lstm_605/while/loop_counter:output:0*lstm_605/while/maximum_iterations:output:0lstm_605/time:output:0!lstm_605/TensorArrayV2_1:handle:0lstm_605/zeros:output:0lstm_605/zeros_1:output:0!lstm_605/strided_slice_1:output:0@lstm_605/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_605_lstm_cell_785_matmul_readvariableop_resource7lstm_605_lstm_cell_785_matmul_1_readvariableop_resource6lstm_605_lstm_cell_785_biasadd_readvariableop_resource*
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
lstm_605_while_body_4750336*'
condR
lstm_605_while_cond_4750335*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_605/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_605/TensorArrayV2Stack/TensorListStackTensorListStacklstm_605/while:output:3Blstm_605/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_605/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_605/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_605/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_605/strided_slice_3StridedSlice4lstm_605/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_605/strided_slice_3/stack:output:0)lstm_605/strided_slice_3/stack_1:output:0)lstm_605/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_605/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_605/transpose_1	Transpose4lstm_605/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_605/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_605/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_201/MatMul/ReadVariableOpReadVariableOp(dense_201_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_201/MatMulMatMul!lstm_605/strided_slice_3:output:0'dense_201/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_201/BiasAdd/ReadVariableOpReadVariableOp)dense_201_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_201/BiasAddBiasAdddense_201/MatMul:product:0(dense_201/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_201/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_201/BiasAdd/ReadVariableOp ^dense_201/MatMul/ReadVariableOp.^lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp-^lstm_603/lstm_cell_783/MatMul/ReadVariableOp/^lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp^lstm_603/while.^lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp-^lstm_604/lstm_cell_784/MatMul/ReadVariableOp/^lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp^lstm_604/while.^lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp-^lstm_605/lstm_cell_785/MatMul/ReadVariableOp/^lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp^lstm_605/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_201/BiasAdd/ReadVariableOp dense_201/BiasAdd/ReadVariableOp2B
dense_201/MatMul/ReadVariableOpdense_201/MatMul/ReadVariableOp2^
-lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp-lstm_603/lstm_cell_783/BiasAdd/ReadVariableOp2\
,lstm_603/lstm_cell_783/MatMul/ReadVariableOp,lstm_603/lstm_cell_783/MatMul/ReadVariableOp2`
.lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp.lstm_603/lstm_cell_783/MatMul_1/ReadVariableOp2 
lstm_603/whilelstm_603/while2^
-lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp-lstm_604/lstm_cell_784/BiasAdd/ReadVariableOp2\
,lstm_604/lstm_cell_784/MatMul/ReadVariableOp,lstm_604/lstm_cell_784/MatMul/ReadVariableOp2`
.lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp.lstm_604/lstm_cell_784/MatMul_1/ReadVariableOp2 
lstm_604/whilelstm_604/while2^
-lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp-lstm_605/lstm_cell_785/BiasAdd/ReadVariableOp2\
,lstm_605/lstm_cell_785/MatMul/ReadVariableOp,lstm_605/lstm_cell_785/MatMul/ReadVariableOp2`
.lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp.lstm_605/lstm_cell_785/MatMul_1/ReadVariableOp2 
lstm_605/whilelstm_605/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4752391

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
lstm_605_while_cond_4749908.
*lstm_605_while_lstm_605_while_loop_counter4
0lstm_605_while_lstm_605_while_maximum_iterations
lstm_605_while_placeholder 
lstm_605_while_placeholder_1 
lstm_605_while_placeholder_2 
lstm_605_while_placeholder_30
,lstm_605_while_less_lstm_605_strided_slice_1G
Clstm_605_while_lstm_605_while_cond_4749908___redundant_placeholder0G
Clstm_605_while_lstm_605_while_cond_4749908___redundant_placeholder1G
Clstm_605_while_lstm_605_while_cond_4749908___redundant_placeholder2G
Clstm_605_while_lstm_605_while_cond_4749908___redundant_placeholder3
lstm_605_while_identity
�
lstm_605/while/LessLesslstm_605_while_placeholder,lstm_605_while_less_lstm_605_strided_slice_1*
T0*
_output_shapes
: ]
lstm_605/while/IdentityIdentitylstm_605/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_605_while_identity lstm_605/while/Identity:output:0*(
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
�
E__inference_lstm_603_layer_call_and_return_conditional_losses_4747599

inputs(
lstm_cell_783_4747517:	�(
lstm_cell_783_4747519:	d�$
lstm_cell_783_4747521:	�
identity��%lstm_cell_783/StatefulPartitionedCall�while;
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
%lstm_cell_783/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_783_4747517lstm_cell_783_4747519lstm_cell_783_4747521*
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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4747471n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_783_4747517lstm_cell_783_4747519lstm_cell_783_4747521*
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
while_body_4747530*
condR
while_cond_4747529*K
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
NoOpNoOp&^lstm_cell_783/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_783/StatefulPartitionedCall%lstm_cell_783/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�8
�
while_body_4751904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_785_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_785_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_785_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_785_matmul_readvariableop_resource:2(F
4while_lstm_cell_785_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_785_biasadd_readvariableop_resource:(��*while/lstm_cell_785/BiasAdd/ReadVariableOp�)while/lstm_cell_785/MatMul/ReadVariableOp�+while/lstm_cell_785/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_785/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_785_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_785/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_785_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_785/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_785/addAddV2$while/lstm_cell_785/MatMul:product:0&while/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_785_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_785/BiasAddBiasAddwhile/lstm_cell_785/add:z:02while/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_785/splitSplit,while/lstm_cell_785/split/split_dim:output:0$while/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_785/SigmoidSigmoid"while/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_1Sigmoid"while/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mulMul!while/lstm_cell_785/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_785/ReluRelu"while/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_1Mulwhile/lstm_cell_785/Sigmoid:y:0&while/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/add_1AddV2while/lstm_cell_785/mul:z:0while/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_2Sigmoid"while/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_785/Relu_1Reluwhile/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_2Mul!while/lstm_cell_785/Sigmoid_2:y:0(while/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_785/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_785/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_785/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_785/BiasAdd/ReadVariableOp*^while/lstm_cell_785/MatMul/ReadVariableOp,^while/lstm_cell_785/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_785_biasadd_readvariableop_resource5while_lstm_cell_785_biasadd_readvariableop_resource_0"n
4while_lstm_cell_785_matmul_1_readvariableop_resource6while_lstm_cell_785_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_785_matmul_readvariableop_resource4while_lstm_cell_785_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_785/BiasAdd/ReadVariableOp*while/lstm_cell_785/BiasAdd/ReadVariableOp2V
)while/lstm_cell_785/MatMul/ReadVariableOp)while/lstm_cell_785/MatMul/ReadVariableOp2Z
+while/lstm_cell_785/MatMul_1/ReadVariableOp+while/lstm_cell_785/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_604_while_cond_4750196.
*lstm_604_while_lstm_604_while_loop_counter4
0lstm_604_while_lstm_604_while_maximum_iterations
lstm_604_while_placeholder 
lstm_604_while_placeholder_1 
lstm_604_while_placeholder_2 
lstm_604_while_placeholder_30
,lstm_604_while_less_lstm_604_strided_slice_1G
Clstm_604_while_lstm_604_while_cond_4750196___redundant_placeholder0G
Clstm_604_while_lstm_604_while_cond_4750196___redundant_placeholder1G
Clstm_604_while_lstm_604_while_cond_4750196___redundant_placeholder2G
Clstm_604_while_lstm_604_while_cond_4750196___redundant_placeholder3
lstm_604_while_identity
�
lstm_604/while/LessLesslstm_604_while_placeholder,lstm_604_while_less_lstm_604_strided_slice_1*
T0*
_output_shapes
: ]
lstm_604/while/IdentityIdentitylstm_604/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_604_while_identity lstm_604/while/Identity:output:0*(
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
�
*__inference_lstm_605_layer_call_fn_4751680
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748299o
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

�
0__inference_sequential_201_layer_call_fn_4749545

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
K__inference_sequential_201_layer_call_and_return_conditional_losses_4748782o
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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4752555

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
�K
�
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751372
inputs_0?
,lstm_cell_784_matmul_readvariableop_resource:	d�A
.lstm_cell_784_matmul_1_readvariableop_resource:	2�<
-lstm_cell_784_biasadd_readvariableop_resource:	�
identity��$lstm_cell_784/BiasAdd/ReadVariableOp�#lstm_cell_784/MatMul/ReadVariableOp�%lstm_cell_784/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_784/MatMul/ReadVariableOpReadVariableOp,lstm_cell_784_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_784/MatMulMatMulstrided_slice_2:output:0+lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_784_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_784/MatMul_1MatMulzeros:output:0-lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_784/addAddV2lstm_cell_784/MatMul:product:0 lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_784_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_784/BiasAddBiasAddlstm_cell_784/add:z:0,lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_784/splitSplit&lstm_cell_784/split/split_dim:output:0lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_784/SigmoidSigmoidlstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_1Sigmoidlstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_784/mulMullstm_cell_784/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_784/ReluRelulstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_1Mullstm_cell_784/Sigmoid:y:0 lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_784/add_1AddV2lstm_cell_784/mul:z:0lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_2Sigmoidlstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_784/Relu_1Relulstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_2Mullstm_cell_784/Sigmoid_2:y:0"lstm_cell_784/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_784_matmul_readvariableop_resource.lstm_cell_784_matmul_1_readvariableop_resource-lstm_cell_784_biasadd_readvariableop_resource*
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
while_body_4751288*
condR
while_cond_4751287*K
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
NoOpNoOp%^lstm_cell_784/BiasAdd/ReadVariableOp$^lstm_cell_784/MatMul/ReadVariableOp&^lstm_cell_784/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_784/BiasAdd/ReadVariableOp$lstm_cell_784/BiasAdd/ReadVariableOp2J
#lstm_cell_784/MatMul/ReadVariableOp#lstm_cell_784/MatMul/ReadVariableOp2N
%lstm_cell_784/MatMul_1/ReadVariableOp%lstm_cell_784/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�#
�
while_body_4747880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_784_4747904_0:	d�0
while_lstm_cell_784_4747906_0:	2�,
while_lstm_cell_784_4747908_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_784_4747904:	d�.
while_lstm_cell_784_4747906:	2�*
while_lstm_cell_784_4747908:	���+while/lstm_cell_784/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_784/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_784_4747904_0while_lstm_cell_784_4747906_0while_lstm_cell_784_4747908_0*
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
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4747821�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_784/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_784/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_784/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_784/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_784_4747904while_lstm_cell_784_4747904_0"<
while_lstm_cell_784_4747906while_lstm_cell_784_4747906_0"<
while_lstm_cell_784_4747908while_lstm_cell_784_4747908_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_784/StatefulPartitionedCall+while/lstm_cell_784/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_603_layer_call_fn_4750437
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4747408|
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751515

inputs?
,lstm_cell_784_matmul_readvariableop_resource:	d�A
.lstm_cell_784_matmul_1_readvariableop_resource:	2�<
-lstm_cell_784_biasadd_readvariableop_resource:	�
identity��$lstm_cell_784/BiasAdd/ReadVariableOp�#lstm_cell_784/MatMul/ReadVariableOp�%lstm_cell_784/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_784/MatMul/ReadVariableOpReadVariableOp,lstm_cell_784_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_784/MatMulMatMulstrided_slice_2:output:0+lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_784_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_784/MatMul_1MatMulzeros:output:0-lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_784/addAddV2lstm_cell_784/MatMul:product:0 lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_784_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_784/BiasAddBiasAddlstm_cell_784/add:z:0,lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_784/splitSplit&lstm_cell_784/split/split_dim:output:0lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_784/SigmoidSigmoidlstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_1Sigmoidlstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_784/mulMullstm_cell_784/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_784/ReluRelulstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_1Mullstm_cell_784/Sigmoid:y:0 lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_784/add_1AddV2lstm_cell_784/mul:z:0lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_2Sigmoidlstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_784/Relu_1Relulstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_2Mullstm_cell_784/Sigmoid_2:y:0"lstm_cell_784/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_784_matmul_readvariableop_resource.lstm_cell_784_matmul_1_readvariableop_resource-lstm_cell_784_biasadd_readvariableop_resource*
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
while_body_4751431*
condR
while_cond_4751430*K
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
NoOpNoOp%^lstm_cell_784/BiasAdd/ReadVariableOp$^lstm_cell_784/MatMul/ReadVariableOp&^lstm_cell_784/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_784/BiasAdd/ReadVariableOp$lstm_cell_784/BiasAdd/ReadVariableOp2J
#lstm_cell_784/MatMul/ReadVariableOp#lstm_cell_784/MatMul/ReadVariableOp2N
%lstm_cell_784/MatMul_1/ReadVariableOp%lstm_cell_784/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_4748229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4748229___redundant_placeholder05
1while_while_cond_4748229___redundant_placeholder15
1while_while_cond_4748229___redundant_placeholder25
1while_while_cond_4748229___redundant_placeholder3
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
lstm_603_while_cond_4750057.
*lstm_603_while_lstm_603_while_loop_counter4
0lstm_603_while_lstm_603_while_maximum_iterations
lstm_603_while_placeholder 
lstm_603_while_placeholder_1 
lstm_603_while_placeholder_2 
lstm_603_while_placeholder_30
,lstm_603_while_less_lstm_603_strided_slice_1G
Clstm_603_while_lstm_603_while_cond_4750057___redundant_placeholder0G
Clstm_603_while_lstm_603_while_cond_4750057___redundant_placeholder1G
Clstm_603_while_lstm_603_while_cond_4750057___redundant_placeholder2G
Clstm_603_while_lstm_603_while_cond_4750057___redundant_placeholder3
lstm_603_while_identity
�
lstm_603/while/LessLesslstm_603_while_placeholder,lstm_603_while_less_lstm_603_strided_slice_1*
T0*
_output_shapes
: ]
lstm_603/while/IdentityIdentitylstm_603/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_603_while_identity lstm_603/while/Identity:output:0*(
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
0__inference_sequential_201_layer_call_fn_4749423
lstm_603_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_603_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749371o
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
_user_specified_namelstm_603_input
�
�
*__inference_lstm_604_layer_call_fn_4751075

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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4748607s
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
while_body_4751761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_785_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_785_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_785_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_785_matmul_readvariableop_resource:2(F
4while_lstm_cell_785_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_785_biasadd_readvariableop_resource:(��*while/lstm_cell_785/BiasAdd/ReadVariableOp�)while/lstm_cell_785/MatMul/ReadVariableOp�+while/lstm_cell_785/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_785/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_785_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_785/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_785_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_785/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_785/addAddV2$while/lstm_cell_785/MatMul:product:0&while/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_785_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_785/BiasAddBiasAddwhile/lstm_cell_785/add:z:02while/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_785/splitSplit,while/lstm_cell_785/split/split_dim:output:0$while/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_785/SigmoidSigmoid"while/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_1Sigmoid"while/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mulMul!while/lstm_cell_785/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_785/ReluRelu"while/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_1Mulwhile/lstm_cell_785/Sigmoid:y:0&while/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/add_1AddV2while/lstm_cell_785/mul:z:0while/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_785/Sigmoid_2Sigmoid"while/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_785/Relu_1Reluwhile/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_785/mul_2Mul!while/lstm_cell_785/Sigmoid_2:y:0(while/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_785/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_785/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_785/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_785/BiasAdd/ReadVariableOp*^while/lstm_cell_785/MatMul/ReadVariableOp,^while/lstm_cell_785/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_785_biasadd_readvariableop_resource5while_lstm_cell_785_biasadd_readvariableop_resource_0"n
4while_lstm_cell_785_matmul_1_readvariableop_resource6while_lstm_cell_785_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_785_matmul_readvariableop_resource4while_lstm_cell_785_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_785/BiasAdd/ReadVariableOp*while/lstm_cell_785/BiasAdd/ReadVariableOp2V
)while/lstm_cell_785/MatMul/ReadVariableOp)while/lstm_cell_785/MatMul/ReadVariableOp2Z
+while/lstm_cell_785/MatMul_1/ReadVariableOp+while/lstm_cell_785/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4751431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_784_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_784_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_784_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_784_matmul_readvariableop_resource:	d�G
4while_lstm_cell_784_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_784_biasadd_readvariableop_resource:	���*while/lstm_cell_784/BiasAdd/ReadVariableOp�)while/lstm_cell_784/MatMul/ReadVariableOp�+while/lstm_cell_784/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_784/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_784_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_784/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_784_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_784/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_784/addAddV2$while/lstm_cell_784/MatMul:product:0&while/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_784_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_784/BiasAddBiasAddwhile/lstm_cell_784/add:z:02while/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_784/splitSplit,while/lstm_cell_784/split/split_dim:output:0$while/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_784/SigmoidSigmoid"while/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_1Sigmoid"while/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mulMul!while/lstm_cell_784/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_784/ReluRelu"while/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_1Mulwhile/lstm_cell_784/Sigmoid:y:0&while/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/add_1AddV2while/lstm_cell_784/mul:z:0while/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_2Sigmoid"while/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_784/Relu_1Reluwhile/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_2Mul!while/lstm_cell_784/Sigmoid_2:y:0(while/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_784/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_784/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_784/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_784/BiasAdd/ReadVariableOp*^while/lstm_cell_784/MatMul/ReadVariableOp,^while/lstm_cell_784/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_784_biasadd_readvariableop_resource5while_lstm_cell_784_biasadd_readvariableop_resource_0"n
4while_lstm_cell_784_matmul_1_readvariableop_resource6while_lstm_cell_784_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_784_matmul_readvariableop_resource4while_lstm_cell_784_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_784/BiasAdd/ReadVariableOp*while/lstm_cell_784/BiasAdd/ReadVariableOp2V
)while/lstm_cell_784/MatMul/ReadVariableOp)while/lstm_cell_784/MatMul/ReadVariableOp2Z
+while/lstm_cell_784/MatMul_1/ReadVariableOp+while/lstm_cell_784/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4749053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4749053___redundant_placeholder05
1while_while_cond_4749053___redundant_placeholder15
1while_while_cond_4749053___redundant_placeholder25
1while_while_cond_4749053___redundant_placeholder3
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
while_cond_4751760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4751760___redundant_placeholder05
1while_while_cond_4751760___redundant_placeholder15
1while_while_cond_4751760___redundant_placeholder25
1while_while_cond_4751760___redundant_placeholder3
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
�
�
+__inference_dense_201_layer_call_fn_4752283

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
F__inference_dense_201_layer_call_and_return_conditional_losses_4748775o
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
�W
�
 __inference__traced_save_4752730
file_prefix/
+savev2_dense_201_kernel_read_readvariableop-
)savev2_dense_201_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_603_lstm_cell_603_kernel_read_readvariableopF
Bsavev2_lstm_603_lstm_cell_603_recurrent_kernel_read_readvariableop:
6savev2_lstm_603_lstm_cell_603_bias_read_readvariableop<
8savev2_lstm_604_lstm_cell_604_kernel_read_readvariableopF
Bsavev2_lstm_604_lstm_cell_604_recurrent_kernel_read_readvariableop:
6savev2_lstm_604_lstm_cell_604_bias_read_readvariableop<
8savev2_lstm_605_lstm_cell_605_kernel_read_readvariableopF
Bsavev2_lstm_605_lstm_cell_605_recurrent_kernel_read_readvariableop:
6savev2_lstm_605_lstm_cell_605_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_201_kernel_m_read_readvariableop4
0savev2_adam_dense_201_bias_m_read_readvariableopC
?savev2_adam_lstm_603_lstm_cell_603_kernel_m_read_readvariableopM
Isavev2_adam_lstm_603_lstm_cell_603_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_603_lstm_cell_603_bias_m_read_readvariableopC
?savev2_adam_lstm_604_lstm_cell_604_kernel_m_read_readvariableopM
Isavev2_adam_lstm_604_lstm_cell_604_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_604_lstm_cell_604_bias_m_read_readvariableopC
?savev2_adam_lstm_605_lstm_cell_605_kernel_m_read_readvariableopM
Isavev2_adam_lstm_605_lstm_cell_605_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_605_lstm_cell_605_bias_m_read_readvariableop6
2savev2_adam_dense_201_kernel_v_read_readvariableop4
0savev2_adam_dense_201_bias_v_read_readvariableopC
?savev2_adam_lstm_603_lstm_cell_603_kernel_v_read_readvariableopM
Isavev2_adam_lstm_603_lstm_cell_603_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_603_lstm_cell_603_bias_v_read_readvariableopC
?savev2_adam_lstm_604_lstm_cell_604_kernel_v_read_readvariableopM
Isavev2_adam_lstm_604_lstm_cell_604_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_604_lstm_cell_604_bias_v_read_readvariableopC
?savev2_adam_lstm_605_lstm_cell_605_kernel_v_read_readvariableopM
Isavev2_adam_lstm_605_lstm_cell_605_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_605_lstm_cell_605_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_201_kernel_read_readvariableop)savev2_dense_201_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_603_lstm_cell_603_kernel_read_readvariableopBsavev2_lstm_603_lstm_cell_603_recurrent_kernel_read_readvariableop6savev2_lstm_603_lstm_cell_603_bias_read_readvariableop8savev2_lstm_604_lstm_cell_604_kernel_read_readvariableopBsavev2_lstm_604_lstm_cell_604_recurrent_kernel_read_readvariableop6savev2_lstm_604_lstm_cell_604_bias_read_readvariableop8savev2_lstm_605_lstm_cell_605_kernel_read_readvariableopBsavev2_lstm_605_lstm_cell_605_recurrent_kernel_read_readvariableop6savev2_lstm_605_lstm_cell_605_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_201_kernel_m_read_readvariableop0savev2_adam_dense_201_bias_m_read_readvariableop?savev2_adam_lstm_603_lstm_cell_603_kernel_m_read_readvariableopIsavev2_adam_lstm_603_lstm_cell_603_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_603_lstm_cell_603_bias_m_read_readvariableop?savev2_adam_lstm_604_lstm_cell_604_kernel_m_read_readvariableopIsavev2_adam_lstm_604_lstm_cell_604_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_604_lstm_cell_604_bias_m_read_readvariableop?savev2_adam_lstm_605_lstm_cell_605_kernel_m_read_readvariableopIsavev2_adam_lstm_605_lstm_cell_605_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_605_lstm_cell_605_bias_m_read_readvariableop2savev2_adam_dense_201_kernel_v_read_readvariableop0savev2_adam_dense_201_bias_v_read_readvariableop?savev2_adam_lstm_603_lstm_cell_603_kernel_v_read_readvariableopIsavev2_adam_lstm_603_lstm_cell_603_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_603_lstm_cell_603_bias_v_read_readvariableop?savev2_adam_lstm_604_lstm_cell_604_kernel_v_read_readvariableopIsavev2_adam_lstm_604_lstm_cell_604_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_604_lstm_cell_604_bias_v_read_readvariableop?savev2_adam_lstm_605_lstm_cell_605_kernel_v_read_readvariableopIsavev2_adam_lstm_605_lstm_cell_605_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_605_lstm_cell_605_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�
�
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749453
lstm_603_input#
lstm_603_4749426:	�#
lstm_603_4749428:	d�
lstm_603_4749430:	�#
lstm_604_4749433:	d�#
lstm_604_4749435:	2�
lstm_604_4749437:	�"
lstm_605_4749440:2("
lstm_605_4749442:
(
lstm_605_4749444:(#
dense_201_4749447:

dense_201_4749449:
identity��!dense_201/StatefulPartitionedCall� lstm_603/StatefulPartitionedCall� lstm_604/StatefulPartitionedCall� lstm_605/StatefulPartitionedCall�
 lstm_603/StatefulPartitionedCallStatefulPartitionedCalllstm_603_inputlstm_603_4749426lstm_603_4749428lstm_603_4749430*
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4748457�
 lstm_604/StatefulPartitionedCallStatefulPartitionedCall)lstm_603/StatefulPartitionedCall:output:0lstm_604_4749433lstm_604_4749435lstm_604_4749437*
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4748607�
 lstm_605/StatefulPartitionedCallStatefulPartitionedCall)lstm_604/StatefulPartitionedCall:output:0lstm_605_4749440lstm_605_4749442lstm_605_4749444*
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748757�
!dense_201/StatefulPartitionedCallStatefulPartitionedCall)lstm_605/StatefulPartitionedCall:output:0dense_201_4749447dense_201_4749449*
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
F__inference_dense_201_layer_call_and_return_conditional_losses_4748775y
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_201/StatefulPartitionedCall!^lstm_603/StatefulPartitionedCall!^lstm_604/StatefulPartitionedCall!^lstm_605/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2D
 lstm_603/StatefulPartitionedCall lstm_603/StatefulPartitionedCall2D
 lstm_604/StatefulPartitionedCall lstm_604/StatefulPartitionedCall2D
 lstm_605/StatefulPartitionedCall lstm_605/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_603_input
�
�
*__inference_lstm_604_layer_call_fn_4751064
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4747949|
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
�
while_body_4751574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_784_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_784_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_784_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_784_matmul_readvariableop_resource:	d�G
4while_lstm_cell_784_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_784_biasadd_readvariableop_resource:	���*while/lstm_cell_784/BiasAdd/ReadVariableOp�)while/lstm_cell_784/MatMul/ReadVariableOp�+while/lstm_cell_784/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_784/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_784_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_784/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_784_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_784/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_784/addAddV2$while/lstm_cell_784/MatMul:product:0&while/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_784_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_784/BiasAddBiasAddwhile/lstm_cell_784/add:z:02while/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_784/splitSplit,while/lstm_cell_784/split/split_dim:output:0$while/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_784/SigmoidSigmoid"while/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_1Sigmoid"while/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mulMul!while/lstm_cell_784/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_784/ReluRelu"while/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_1Mulwhile/lstm_cell_784/Sigmoid:y:0&while/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/add_1AddV2while/lstm_cell_784/mul:z:0while/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_2Sigmoid"while/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_784/Relu_1Reluwhile/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_2Mul!while/lstm_cell_784/Sigmoid_2:y:0(while/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_784/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_784/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_784/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_784/BiasAdd/ReadVariableOp*^while/lstm_cell_784/MatMul/ReadVariableOp,^while/lstm_cell_784/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_784_biasadd_readvariableop_resource5while_lstm_cell_784_biasadd_readvariableop_resource_0"n
4while_lstm_cell_784_matmul_1_readvariableop_resource6while_lstm_cell_784_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_784_matmul_readvariableop_resource4while_lstm_cell_784_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_784/BiasAdd/ReadVariableOp*while/lstm_cell_784/BiasAdd/ReadVariableOp2V
)while/lstm_cell_784/MatMul/ReadVariableOp)while/lstm_cell_784/MatMul/ReadVariableOp2Z
+while/lstm_cell_784/MatMul_1/ReadVariableOp+while/lstm_cell_784/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4747688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4747688___redundant_placeholder05
1while_while_cond_4747688___redundant_placeholder15
1while_while_cond_4747688___redundant_placeholder25
1while_while_cond_4747688___redundant_placeholder3
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
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749483
lstm_603_input#
lstm_603_4749456:	�#
lstm_603_4749458:	d�
lstm_603_4749460:	�#
lstm_604_4749463:	d�#
lstm_604_4749465:	2�
lstm_604_4749467:	�"
lstm_605_4749470:2("
lstm_605_4749472:
(
lstm_605_4749474:(#
dense_201_4749477:

dense_201_4749479:
identity��!dense_201/StatefulPartitionedCall� lstm_603/StatefulPartitionedCall� lstm_604/StatefulPartitionedCall� lstm_605/StatefulPartitionedCall�
 lstm_603/StatefulPartitionedCallStatefulPartitionedCalllstm_603_inputlstm_603_4749456lstm_603_4749458lstm_603_4749460*
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4749303�
 lstm_604/StatefulPartitionedCallStatefulPartitionedCall)lstm_603/StatefulPartitionedCall:output:0lstm_604_4749463lstm_604_4749465lstm_604_4749467*
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4749138�
 lstm_605/StatefulPartitionedCallStatefulPartitionedCall)lstm_604/StatefulPartitionedCall:output:0lstm_605_4749470lstm_605_4749472lstm_605_4749474*
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748973�
!dense_201/StatefulPartitionedCallStatefulPartitionedCall)lstm_605/StatefulPartitionedCall:output:0dense_201_4749477dense_201_4749479*
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
F__inference_dense_201_layer_call_and_return_conditional_losses_4748775y
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_201/StatefulPartitionedCall!^lstm_603/StatefulPartitionedCall!^lstm_604/StatefulPartitionedCall!^lstm_605/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2D
 lstm_603/StatefulPartitionedCall lstm_603/StatefulPartitionedCall2D
 lstm_604/StatefulPartitionedCall lstm_604/StatefulPartitionedCall2D
 lstm_605/StatefulPartitionedCall lstm_605/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_603_input
�
�
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4752489

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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4750756
inputs_0?
,lstm_cell_783_matmul_readvariableop_resource:	�A
.lstm_cell_783_matmul_1_readvariableop_resource:	d�<
-lstm_cell_783_biasadd_readvariableop_resource:	�
identity��$lstm_cell_783/BiasAdd/ReadVariableOp�#lstm_cell_783/MatMul/ReadVariableOp�%lstm_cell_783/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_783/MatMul/ReadVariableOpReadVariableOp,lstm_cell_783_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_783/MatMulMatMulstrided_slice_2:output:0+lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_783_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_783/MatMul_1MatMulzeros:output:0-lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_783/addAddV2lstm_cell_783/MatMul:product:0 lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_783_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_783/BiasAddBiasAddlstm_cell_783/add:z:0,lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_783/splitSplit&lstm_cell_783/split/split_dim:output:0lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_783/SigmoidSigmoidlstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_1Sigmoidlstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_783/mulMullstm_cell_783/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_783/ReluRelulstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_1Mullstm_cell_783/Sigmoid:y:0 lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_783/add_1AddV2lstm_cell_783/mul:z:0lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_783/Sigmoid_2Sigmoidlstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_783/Relu_1Relulstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_783/mul_2Mullstm_cell_783/Sigmoid_2:y:0"lstm_cell_783/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_783_matmul_readvariableop_resource.lstm_cell_783_matmul_1_readvariableop_resource-lstm_cell_783_biasadd_readvariableop_resource*
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
while_body_4750672*
condR
while_cond_4750671*K
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
NoOpNoOp%^lstm_cell_783/BiasAdd/ReadVariableOp$^lstm_cell_783/MatMul/ReadVariableOp&^lstm_cell_783/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_783/BiasAdd/ReadVariableOp$lstm_cell_783/BiasAdd/ReadVariableOp2J
#lstm_cell_783/MatMul/ReadVariableOp#lstm_cell_783/MatMul/ReadVariableOp2N
%lstm_cell_783/MatMul_1/ReadVariableOp%lstm_cell_783/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�C
�

lstm_603_while_body_4749631.
*lstm_603_while_lstm_603_while_loop_counter4
0lstm_603_while_lstm_603_while_maximum_iterations
lstm_603_while_placeholder 
lstm_603_while_placeholder_1 
lstm_603_while_placeholder_2 
lstm_603_while_placeholder_3-
)lstm_603_while_lstm_603_strided_slice_1_0i
elstm_603_while_tensorarrayv2read_tensorlistgetitem_lstm_603_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_603_while_lstm_cell_783_matmul_readvariableop_resource_0:	�R
?lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource_0:	d�M
>lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource_0:	�
lstm_603_while_identity
lstm_603_while_identity_1
lstm_603_while_identity_2
lstm_603_while_identity_3
lstm_603_while_identity_4
lstm_603_while_identity_5+
'lstm_603_while_lstm_603_strided_slice_1g
clstm_603_while_tensorarrayv2read_tensorlistgetitem_lstm_603_tensorarrayunstack_tensorlistfromtensorN
;lstm_603_while_lstm_cell_783_matmul_readvariableop_resource:	�P
=lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource:	d�K
<lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource:	���3lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp�2lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp�4lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp�
@lstm_603/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_603/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_603_while_tensorarrayv2read_tensorlistgetitem_lstm_603_tensorarrayunstack_tensorlistfromtensor_0lstm_603_while_placeholderIlstm_603/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_603/while/lstm_cell_783/MatMul/ReadVariableOpReadVariableOp=lstm_603_while_lstm_cell_783_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_603/while/lstm_cell_783/MatMulMatMul9lstm_603/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOpReadVariableOp?lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_603/while/lstm_cell_783/MatMul_1MatMullstm_603_while_placeholder_2<lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_603/while/lstm_cell_783/addAddV2-lstm_603/while/lstm_cell_783/MatMul:product:0/lstm_603/while/lstm_cell_783/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOpReadVariableOp>lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_603/while/lstm_cell_783/BiasAddBiasAdd$lstm_603/while/lstm_cell_783/add:z:0;lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_603/while/lstm_cell_783/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_603/while/lstm_cell_783/splitSplit5lstm_603/while/lstm_cell_783/split/split_dim:output:0-lstm_603/while/lstm_cell_783/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_603/while/lstm_cell_783/SigmoidSigmoid+lstm_603/while/lstm_cell_783/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_603/while/lstm_cell_783/Sigmoid_1Sigmoid+lstm_603/while/lstm_cell_783/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_603/while/lstm_cell_783/mulMul*lstm_603/while/lstm_cell_783/Sigmoid_1:y:0lstm_603_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_603/while/lstm_cell_783/ReluRelu+lstm_603/while/lstm_cell_783/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_603/while/lstm_cell_783/mul_1Mul(lstm_603/while/lstm_cell_783/Sigmoid:y:0/lstm_603/while/lstm_cell_783/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_603/while/lstm_cell_783/add_1AddV2$lstm_603/while/lstm_cell_783/mul:z:0&lstm_603/while/lstm_cell_783/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_603/while/lstm_cell_783/Sigmoid_2Sigmoid+lstm_603/while/lstm_cell_783/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_603/while/lstm_cell_783/Relu_1Relu&lstm_603/while/lstm_cell_783/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_603/while/lstm_cell_783/mul_2Mul*lstm_603/while/lstm_cell_783/Sigmoid_2:y:01lstm_603/while/lstm_cell_783/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_603/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_603_while_placeholder_1lstm_603_while_placeholder&lstm_603/while/lstm_cell_783/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_603/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_603/while/addAddV2lstm_603_while_placeholderlstm_603/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_603/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_603/while/add_1AddV2*lstm_603_while_lstm_603_while_loop_counterlstm_603/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_603/while/IdentityIdentitylstm_603/while/add_1:z:0^lstm_603/while/NoOp*
T0*
_output_shapes
: �
lstm_603/while/Identity_1Identity0lstm_603_while_lstm_603_while_maximum_iterations^lstm_603/while/NoOp*
T0*
_output_shapes
: t
lstm_603/while/Identity_2Identitylstm_603/while/add:z:0^lstm_603/while/NoOp*
T0*
_output_shapes
: �
lstm_603/while/Identity_3IdentityClstm_603/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_603/while/NoOp*
T0*
_output_shapes
: �
lstm_603/while/Identity_4Identity&lstm_603/while/lstm_cell_783/mul_2:z:0^lstm_603/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_603/while/Identity_5Identity&lstm_603/while/lstm_cell_783/add_1:z:0^lstm_603/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_603/while/NoOpNoOp4^lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp3^lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp5^lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_603_while_identity lstm_603/while/Identity:output:0"?
lstm_603_while_identity_1"lstm_603/while/Identity_1:output:0"?
lstm_603_while_identity_2"lstm_603/while/Identity_2:output:0"?
lstm_603_while_identity_3"lstm_603/while/Identity_3:output:0"?
lstm_603_while_identity_4"lstm_603/while/Identity_4:output:0"?
lstm_603_while_identity_5"lstm_603/while/Identity_5:output:0"T
'lstm_603_while_lstm_603_strided_slice_1)lstm_603_while_lstm_603_strided_slice_1_0"~
<lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource>lstm_603_while_lstm_cell_783_biasadd_readvariableop_resource_0"�
=lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource?lstm_603_while_lstm_cell_783_matmul_1_readvariableop_resource_0"|
;lstm_603_while_lstm_cell_783_matmul_readvariableop_resource=lstm_603_while_lstm_cell_783_matmul_readvariableop_resource_0"�
clstm_603_while_tensorarrayv2read_tensorlistgetitem_lstm_603_tensorarrayunstack_tensorlistfromtensorelstm_603_while_tensorarrayv2read_tensorlistgetitem_lstm_603_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp3lstm_603/while/lstm_cell_783/BiasAdd/ReadVariableOp2h
2lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp2lstm_603/while/lstm_cell_783/MatMul/ReadVariableOp2l
4lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp4lstm_603/while/lstm_cell_783/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�
�
*__inference_lstm_605_layer_call_fn_4751691

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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748757o
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
�#
�
while_body_4748230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_785_4748254_0:2(/
while_lstm_cell_785_4748256_0:
(+
while_lstm_cell_785_4748258_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_785_4748254:2(-
while_lstm_cell_785_4748256:
()
while_lstm_cell_785_4748258:(��+while/lstm_cell_785/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_785/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_785_4748254_0while_lstm_cell_785_4748256_0while_lstm_cell_785_4748258_0*
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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4748171�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_785/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_785/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_785/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_785/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_785_4748254while_lstm_cell_785_4748254_0"<
while_lstm_cell_785_4748256while_lstm_cell_785_4748256_0"<
while_lstm_cell_785_4748258while_lstm_cell_785_4748258_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_785/StatefulPartitionedCall+while/lstm_cell_785/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_201_layer_call_and_return_conditional_losses_4748775

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
while_body_4751288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_784_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_784_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_784_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_784_matmul_readvariableop_resource:	d�G
4while_lstm_cell_784_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_784_biasadd_readvariableop_resource:	���*while/lstm_cell_784/BiasAdd/ReadVariableOp�)while/lstm_cell_784/MatMul/ReadVariableOp�+while/lstm_cell_784/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_784/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_784_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_784/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_784_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_784/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_784/addAddV2$while/lstm_cell_784/MatMul:product:0&while/lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_784_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_784/BiasAddBiasAddwhile/lstm_cell_784/add:z:02while/lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_784/splitSplit,while/lstm_cell_784/split/split_dim:output:0$while/lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_784/SigmoidSigmoid"while/lstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_1Sigmoid"while/lstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mulMul!while/lstm_cell_784/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_784/ReluRelu"while/lstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_1Mulwhile/lstm_cell_784/Sigmoid:y:0&while/lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/add_1AddV2while/lstm_cell_784/mul:z:0while/lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_784/Sigmoid_2Sigmoid"while/lstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_784/Relu_1Reluwhile/lstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_784/mul_2Mul!while/lstm_cell_784/Sigmoid_2:y:0(while/lstm_cell_784/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_784/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_784/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_784/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_784/BiasAdd/ReadVariableOp*^while/lstm_cell_784/MatMul/ReadVariableOp,^while/lstm_cell_784/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_784_biasadd_readvariableop_resource5while_lstm_cell_784_biasadd_readvariableop_resource_0"n
4while_lstm_cell_784_matmul_1_readvariableop_resource6while_lstm_cell_784_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_784_matmul_readvariableop_resource4while_lstm_cell_784_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_784/BiasAdd/ReadVariableOp*while/lstm_cell_784/BiasAdd/ReadVariableOp2V
)while/lstm_cell_784/MatMul/ReadVariableOp)while/lstm_cell_784/MatMul/ReadVariableOp2Z
+while/lstm_cell_784/MatMul_1/ReadVariableOp+while/lstm_cell_784/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_604_while_cond_4749769.
*lstm_604_while_lstm_604_while_loop_counter4
0lstm_604_while_lstm_604_while_maximum_iterations
lstm_604_while_placeholder 
lstm_604_while_placeholder_1 
lstm_604_while_placeholder_2 
lstm_604_while_placeholder_30
,lstm_604_while_less_lstm_604_strided_slice_1G
Clstm_604_while_lstm_604_while_cond_4749769___redundant_placeholder0G
Clstm_604_while_lstm_604_while_cond_4749769___redundant_placeholder1G
Clstm_604_while_lstm_604_while_cond_4749769___redundant_placeholder2G
Clstm_604_while_lstm_604_while_cond_4749769___redundant_placeholder3
lstm_604_while_identity
�
lstm_604/while/LessLesslstm_604_while_placeholder,lstm_604_while_less_lstm_604_strided_slice_1*
T0*
_output_shapes
: ]
lstm_604/while/IdentityIdentitylstm_604/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_604_while_identity lstm_604/while/Identity:output:0*(
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
�
*sequential_201_lstm_605_while_cond_4747167L
Hsequential_201_lstm_605_while_sequential_201_lstm_605_while_loop_counterR
Nsequential_201_lstm_605_while_sequential_201_lstm_605_while_maximum_iterations-
)sequential_201_lstm_605_while_placeholder/
+sequential_201_lstm_605_while_placeholder_1/
+sequential_201_lstm_605_while_placeholder_2/
+sequential_201_lstm_605_while_placeholder_3N
Jsequential_201_lstm_605_while_less_sequential_201_lstm_605_strided_slice_1e
asequential_201_lstm_605_while_sequential_201_lstm_605_while_cond_4747167___redundant_placeholder0e
asequential_201_lstm_605_while_sequential_201_lstm_605_while_cond_4747167___redundant_placeholder1e
asequential_201_lstm_605_while_sequential_201_lstm_605_while_cond_4747167___redundant_placeholder2e
asequential_201_lstm_605_while_sequential_201_lstm_605_while_cond_4747167___redundant_placeholder3*
&sequential_201_lstm_605_while_identity
�
"sequential_201/lstm_605/while/LessLess)sequential_201_lstm_605_while_placeholderJsequential_201_lstm_605_while_less_sequential_201_lstm_605_strided_slice_1*
T0*
_output_shapes
: {
&sequential_201/lstm_605/while/IdentityIdentity&sequential_201/lstm_605/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_201_lstm_605_while_identity/sequential_201/lstm_605/while/Identity:output:0*(
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
�K
�
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751229
inputs_0?
,lstm_cell_784_matmul_readvariableop_resource:	d�A
.lstm_cell_784_matmul_1_readvariableop_resource:	2�<
-lstm_cell_784_biasadd_readvariableop_resource:	�
identity��$lstm_cell_784/BiasAdd/ReadVariableOp�#lstm_cell_784/MatMul/ReadVariableOp�%lstm_cell_784/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_784/MatMul/ReadVariableOpReadVariableOp,lstm_cell_784_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_784/MatMulMatMulstrided_slice_2:output:0+lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_784_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_784/MatMul_1MatMulzeros:output:0-lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_784/addAddV2lstm_cell_784/MatMul:product:0 lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_784_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_784/BiasAddBiasAddlstm_cell_784/add:z:0,lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_784/splitSplit&lstm_cell_784/split/split_dim:output:0lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_784/SigmoidSigmoidlstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_1Sigmoidlstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_784/mulMullstm_cell_784/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_784/ReluRelulstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_1Mullstm_cell_784/Sigmoid:y:0 lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_784/add_1AddV2lstm_cell_784/mul:z:0lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_2Sigmoidlstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_784/Relu_1Relulstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_2Mullstm_cell_784/Sigmoid_2:y:0"lstm_cell_784/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_784_matmul_readvariableop_resource.lstm_cell_784_matmul_1_readvariableop_resource-lstm_cell_784_biasadd_readvariableop_resource*
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
while_body_4751145*
condR
while_cond_4751144*K
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
NoOpNoOp%^lstm_cell_784/BiasAdd/ReadVariableOp$^lstm_cell_784/MatMul/ReadVariableOp&^lstm_cell_784/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_784/BiasAdd/ReadVariableOp$lstm_cell_784/BiasAdd/ReadVariableOp2J
#lstm_cell_784/MatMul/ReadVariableOp#lstm_cell_784/MatMul/ReadVariableOp2N
%lstm_cell_784/MatMul_1/ReadVariableOp%lstm_cell_784/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
while_cond_4748522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4748522___redundant_placeholder05
1while_while_cond_4748522___redundant_placeholder15
1while_while_cond_4748522___redundant_placeholder25
1while_while_cond_4748522___redundant_placeholder3
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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4747325

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
while_cond_4749218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4749218___redundant_placeholder05
1while_while_cond_4749218___redundant_placeholder15
1while_while_cond_4749218___redundant_placeholder25
1while_while_cond_4749218___redundant_placeholder3
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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4752587

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
�
�
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4748171

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

�
%__inference_signature_wrapper_4749518
lstm_603_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_603_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4747258o
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
_user_specified_namelstm_603_input
�

�
0__inference_sequential_201_layer_call_fn_4749572

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
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749371o
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
�
E__inference_lstm_604_layer_call_and_return_conditional_losses_4747949

inputs(
lstm_cell_784_4747867:	d�(
lstm_cell_784_4747869:	2�$
lstm_cell_784_4747871:	�
identity��%lstm_cell_784/StatefulPartitionedCall�while;
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
%lstm_cell_784/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_784_4747867lstm_cell_784_4747869lstm_cell_784_4747871*
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
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4747821n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_784_4747867lstm_cell_784_4747869lstm_cell_784_4747871*
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
while_body_4747880*
condR
while_cond_4747879*K
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
NoOpNoOp&^lstm_cell_784/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_784/StatefulPartitionedCall%lstm_cell_784/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�C
�

lstm_605_while_body_4750336.
*lstm_605_while_lstm_605_while_loop_counter4
0lstm_605_while_lstm_605_while_maximum_iterations
lstm_605_while_placeholder 
lstm_605_while_placeholder_1 
lstm_605_while_placeholder_2 
lstm_605_while_placeholder_3-
)lstm_605_while_lstm_605_strided_slice_1_0i
elstm_605_while_tensorarrayv2read_tensorlistgetitem_lstm_605_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_605_while_lstm_cell_785_matmul_readvariableop_resource_0:2(Q
?lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource_0:
(L
>lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource_0:(
lstm_605_while_identity
lstm_605_while_identity_1
lstm_605_while_identity_2
lstm_605_while_identity_3
lstm_605_while_identity_4
lstm_605_while_identity_5+
'lstm_605_while_lstm_605_strided_slice_1g
clstm_605_while_tensorarrayv2read_tensorlistgetitem_lstm_605_tensorarrayunstack_tensorlistfromtensorM
;lstm_605_while_lstm_cell_785_matmul_readvariableop_resource:2(O
=lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource:
(J
<lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource:(��3lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp�2lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp�4lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp�
@lstm_605/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_605/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_605_while_tensorarrayv2read_tensorlistgetitem_lstm_605_tensorarrayunstack_tensorlistfromtensor_0lstm_605_while_placeholderIlstm_605/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_605/while/lstm_cell_785/MatMul/ReadVariableOpReadVariableOp=lstm_605_while_lstm_cell_785_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_605/while/lstm_cell_785/MatMulMatMul9lstm_605/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOpReadVariableOp?lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_605/while/lstm_cell_785/MatMul_1MatMullstm_605_while_placeholder_2<lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_605/while/lstm_cell_785/addAddV2-lstm_605/while/lstm_cell_785/MatMul:product:0/lstm_605/while/lstm_cell_785/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOpReadVariableOp>lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_605/while/lstm_cell_785/BiasAddBiasAdd$lstm_605/while/lstm_cell_785/add:z:0;lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_605/while/lstm_cell_785/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_605/while/lstm_cell_785/splitSplit5lstm_605/while/lstm_cell_785/split/split_dim:output:0-lstm_605/while/lstm_cell_785/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_605/while/lstm_cell_785/SigmoidSigmoid+lstm_605/while/lstm_cell_785/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_605/while/lstm_cell_785/Sigmoid_1Sigmoid+lstm_605/while/lstm_cell_785/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_605/while/lstm_cell_785/mulMul*lstm_605/while/lstm_cell_785/Sigmoid_1:y:0lstm_605_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_605/while/lstm_cell_785/ReluRelu+lstm_605/while/lstm_cell_785/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_605/while/lstm_cell_785/mul_1Mul(lstm_605/while/lstm_cell_785/Sigmoid:y:0/lstm_605/while/lstm_cell_785/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_605/while/lstm_cell_785/add_1AddV2$lstm_605/while/lstm_cell_785/mul:z:0&lstm_605/while/lstm_cell_785/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_605/while/lstm_cell_785/Sigmoid_2Sigmoid+lstm_605/while/lstm_cell_785/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_605/while/lstm_cell_785/Relu_1Relu&lstm_605/while/lstm_cell_785/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_605/while/lstm_cell_785/mul_2Mul*lstm_605/while/lstm_cell_785/Sigmoid_2:y:01lstm_605/while/lstm_cell_785/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_605/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_605_while_placeholder_1lstm_605_while_placeholder&lstm_605/while/lstm_cell_785/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_605/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_605/while/addAddV2lstm_605_while_placeholderlstm_605/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_605/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_605/while/add_1AddV2*lstm_605_while_lstm_605_while_loop_counterlstm_605/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_605/while/IdentityIdentitylstm_605/while/add_1:z:0^lstm_605/while/NoOp*
T0*
_output_shapes
: �
lstm_605/while/Identity_1Identity0lstm_605_while_lstm_605_while_maximum_iterations^lstm_605/while/NoOp*
T0*
_output_shapes
: t
lstm_605/while/Identity_2Identitylstm_605/while/add:z:0^lstm_605/while/NoOp*
T0*
_output_shapes
: �
lstm_605/while/Identity_3IdentityClstm_605/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_605/while/NoOp*
T0*
_output_shapes
: �
lstm_605/while/Identity_4Identity&lstm_605/while/lstm_cell_785/mul_2:z:0^lstm_605/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_605/while/Identity_5Identity&lstm_605/while/lstm_cell_785/add_1:z:0^lstm_605/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_605/while/NoOpNoOp4^lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp3^lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp5^lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_605_while_identity lstm_605/while/Identity:output:0"?
lstm_605_while_identity_1"lstm_605/while/Identity_1:output:0"?
lstm_605_while_identity_2"lstm_605/while/Identity_2:output:0"?
lstm_605_while_identity_3"lstm_605/while/Identity_3:output:0"?
lstm_605_while_identity_4"lstm_605/while/Identity_4:output:0"?
lstm_605_while_identity_5"lstm_605/while/Identity_5:output:0"T
'lstm_605_while_lstm_605_strided_slice_1)lstm_605_while_lstm_605_strided_slice_1_0"~
<lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource>lstm_605_while_lstm_cell_785_biasadd_readvariableop_resource_0"�
=lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource?lstm_605_while_lstm_cell_785_matmul_1_readvariableop_resource_0"|
;lstm_605_while_lstm_cell_785_matmul_readvariableop_resource=lstm_605_while_lstm_cell_785_matmul_readvariableop_resource_0"�
clstm_605_while_tensorarrayv2read_tensorlistgetitem_lstm_605_tensorarrayunstack_tensorlistfromtensorelstm_605_while_tensorarrayv2read_tensorlistgetitem_lstm_605_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp3lstm_605/while/lstm_cell_785/BiasAdd/ReadVariableOp2h
2lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp2lstm_605/while/lstm_cell_785/MatMul/ReadVariableOp2l
4lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp4lstm_605/while/lstm_cell_785/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_201_layer_call_and_return_conditional_losses_4752293

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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4752359

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
�J
�
E__inference_lstm_604_layer_call_and_return_conditional_losses_4749138

inputs?
,lstm_cell_784_matmul_readvariableop_resource:	d�A
.lstm_cell_784_matmul_1_readvariableop_resource:	2�<
-lstm_cell_784_biasadd_readvariableop_resource:	�
identity��$lstm_cell_784/BiasAdd/ReadVariableOp�#lstm_cell_784/MatMul/ReadVariableOp�%lstm_cell_784/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_784/MatMul/ReadVariableOpReadVariableOp,lstm_cell_784_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_784/MatMulMatMulstrided_slice_2:output:0+lstm_cell_784/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_784/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_784_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_784/MatMul_1MatMulzeros:output:0-lstm_cell_784/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_784/addAddV2lstm_cell_784/MatMul:product:0 lstm_cell_784/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_784/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_784_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_784/BiasAddBiasAddlstm_cell_784/add:z:0,lstm_cell_784/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_784/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_784/splitSplit&lstm_cell_784/split/split_dim:output:0lstm_cell_784/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_784/SigmoidSigmoidlstm_cell_784/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_1Sigmoidlstm_cell_784/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_784/mulMullstm_cell_784/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_784/ReluRelulstm_cell_784/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_1Mullstm_cell_784/Sigmoid:y:0 lstm_cell_784/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_784/add_1AddV2lstm_cell_784/mul:z:0lstm_cell_784/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_784/Sigmoid_2Sigmoidlstm_cell_784/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_784/Relu_1Relulstm_cell_784/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_784/mul_2Mullstm_cell_784/Sigmoid_2:y:0"lstm_cell_784/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_784_matmul_readvariableop_resource.lstm_cell_784_matmul_1_readvariableop_resource-lstm_cell_784_biasadd_readvariableop_resource*
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
while_body_4749054*
condR
while_cond_4749053*K
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
NoOpNoOp%^lstm_cell_784/BiasAdd/ReadVariableOp$^lstm_cell_784/MatMul/ReadVariableOp&^lstm_cell_784/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_784/BiasAdd/ReadVariableOp$lstm_cell_784/BiasAdd/ReadVariableOp2J
#lstm_cell_784/MatMul/ReadVariableOp#lstm_cell_784/MatMul/ReadVariableOp2N
%lstm_cell_784/MatMul_1/ReadVariableOp%lstm_cell_784/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
E__inference_lstm_605_layer_call_and_return_conditional_losses_4748108

inputs'
lstm_cell_785_4748026:2('
lstm_cell_785_4748028:
(#
lstm_cell_785_4748030:(
identity��%lstm_cell_785/StatefulPartitionedCall�while;
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
%lstm_cell_785/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_785_4748026lstm_cell_785_4748028lstm_cell_785_4748030*
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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4748025n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_785_4748026lstm_cell_785_4748028lstm_cell_785_4748030*
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
while_body_4748039*
condR
while_cond_4748038*K
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
NoOpNoOp&^lstm_cell_785/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_785/StatefulPartitionedCall%lstm_cell_785/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
while_cond_4747879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4747879___redundant_placeholder05
1while_while_cond_4747879___redundant_placeholder15
1while_while_cond_4747879___redundant_placeholder25
1while_while_cond_4747879___redundant_placeholder3
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
while_cond_4751144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4751144___redundant_placeholder05
1while_while_cond_4751144___redundant_placeholder15
1while_while_cond_4751144___redundant_placeholder25
1while_while_cond_4751144___redundant_placeholder3
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
while_cond_4750957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4750957___redundant_placeholder05
1while_while_cond_4750957___redundant_placeholder15
1while_while_cond_4750957___redundant_placeholder25
1while_while_cond_4750957___redundant_placeholder3
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
M
lstm_603_input;
 serving_default_lstm_603_input:0���������=
	dense_2010
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
2dense_201/kernel
:2dense_201/bias
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
0:.	�2lstm_603/lstm_cell_603/kernel
::8	d�2'lstm_603/lstm_cell_603/recurrent_kernel
*:(�2lstm_603/lstm_cell_603/bias
0:.	d�2lstm_604/lstm_cell_604/kernel
::8	2�2'lstm_604/lstm_cell_604/recurrent_kernel
*:(�2lstm_604/lstm_cell_604/bias
/:-2(2lstm_605/lstm_cell_605/kernel
9:7
(2'lstm_605/lstm_cell_605/recurrent_kernel
):'(2lstm_605/lstm_cell_605/bias
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
2Adam/dense_201/kernel/m
!:2Adam/dense_201/bias/m
5:3	�2$Adam/lstm_603/lstm_cell_603/kernel/m
?:=	d�2.Adam/lstm_603/lstm_cell_603/recurrent_kernel/m
/:-�2"Adam/lstm_603/lstm_cell_603/bias/m
5:3	d�2$Adam/lstm_604/lstm_cell_604/kernel/m
?:=	2�2.Adam/lstm_604/lstm_cell_604/recurrent_kernel/m
/:-�2"Adam/lstm_604/lstm_cell_604/bias/m
4:22(2$Adam/lstm_605/lstm_cell_605/kernel/m
>:<
(2.Adam/lstm_605/lstm_cell_605/recurrent_kernel/m
.:,(2"Adam/lstm_605/lstm_cell_605/bias/m
':%
2Adam/dense_201/kernel/v
!:2Adam/dense_201/bias/v
5:3	�2$Adam/lstm_603/lstm_cell_603/kernel/v
?:=	d�2.Adam/lstm_603/lstm_cell_603/recurrent_kernel/v
/:-�2"Adam/lstm_603/lstm_cell_603/bias/v
5:3	d�2$Adam/lstm_604/lstm_cell_604/kernel/v
?:=	2�2.Adam/lstm_604/lstm_cell_604/recurrent_kernel/v
/:-�2"Adam/lstm_604/lstm_cell_604/bias/v
4:22(2$Adam/lstm_605/lstm_cell_605/kernel/v
>:<
(2.Adam/lstm_605/lstm_cell_605/recurrent_kernel/v
.:,(2"Adam/lstm_605/lstm_cell_605/bias/v
�2�
0__inference_sequential_201_layer_call_fn_4748807
0__inference_sequential_201_layer_call_fn_4749545
0__inference_sequential_201_layer_call_fn_4749572
0__inference_sequential_201_layer_call_fn_4749423�
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
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749999
K__inference_sequential_201_layer_call_and_return_conditional_losses_4750426
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749453
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749483�
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
"__inference__wrapped_model_4747258lstm_603_input"�
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
*__inference_lstm_603_layer_call_fn_4750437
*__inference_lstm_603_layer_call_fn_4750448
*__inference_lstm_603_layer_call_fn_4750459
*__inference_lstm_603_layer_call_fn_4750470�
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4750613
E__inference_lstm_603_layer_call_and_return_conditional_losses_4750756
E__inference_lstm_603_layer_call_and_return_conditional_losses_4750899
E__inference_lstm_603_layer_call_and_return_conditional_losses_4751042�
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
*__inference_lstm_604_layer_call_fn_4751053
*__inference_lstm_604_layer_call_fn_4751064
*__inference_lstm_604_layer_call_fn_4751075
*__inference_lstm_604_layer_call_fn_4751086�
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751229
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751372
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751515
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751658�
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
*__inference_lstm_605_layer_call_fn_4751669
*__inference_lstm_605_layer_call_fn_4751680
*__inference_lstm_605_layer_call_fn_4751691
*__inference_lstm_605_layer_call_fn_4751702�
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4751845
E__inference_lstm_605_layer_call_and_return_conditional_losses_4751988
E__inference_lstm_605_layer_call_and_return_conditional_losses_4752131
E__inference_lstm_605_layer_call_and_return_conditional_losses_4752274�
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
+__inference_dense_201_layer_call_fn_4752283�
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
F__inference_dense_201_layer_call_and_return_conditional_losses_4752293�
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
%__inference_signature_wrapper_4749518lstm_603_input"�
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
/__inference_lstm_cell_783_layer_call_fn_4752310
/__inference_lstm_cell_783_layer_call_fn_4752327�
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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4752359
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4752391�
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
/__inference_lstm_cell_784_layer_call_fn_4752408
/__inference_lstm_cell_784_layer_call_fn_4752425�
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
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4752457
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4752489�
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
/__inference_lstm_cell_785_layer_call_fn_4752506
/__inference_lstm_cell_785_layer_call_fn_4752523�
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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4752555
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4752587�
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
"__inference__wrapped_model_4747258�-./012345!";�8
1�.
,�)
lstm_603_input���������
� "5�2
0
	dense_201#� 
	dense_201����������
F__inference_dense_201_layer_call_and_return_conditional_losses_4752293\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� ~
+__inference_dense_201_layer_call_fn_4752283O!"/�,
%�"
 �
inputs���������

� "�����������
E__inference_lstm_603_layer_call_and_return_conditional_losses_4750613�-./O�L
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4750756�-./O�L
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4750899q-./?�<
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
E__inference_lstm_603_layer_call_and_return_conditional_losses_4751042q-./?�<
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
*__inference_lstm_603_layer_call_fn_4750437}-./O�L
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
*__inference_lstm_603_layer_call_fn_4750448}-./O�L
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
*__inference_lstm_603_layer_call_fn_4750459d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
*__inference_lstm_603_layer_call_fn_4750470d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751229�012O�L
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751372�012O�L
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751515q012?�<
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
E__inference_lstm_604_layer_call_and_return_conditional_losses_4751658q012?�<
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
*__inference_lstm_604_layer_call_fn_4751053}012O�L
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
*__inference_lstm_604_layer_call_fn_4751064}012O�L
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
*__inference_lstm_604_layer_call_fn_4751075d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
*__inference_lstm_604_layer_call_fn_4751086d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
E__inference_lstm_605_layer_call_and_return_conditional_losses_4751845}345O�L
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4751988}345O�L
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4752131m345?�<
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
E__inference_lstm_605_layer_call_and_return_conditional_losses_4752274m345?�<
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
*__inference_lstm_605_layer_call_fn_4751669p345O�L
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
*__inference_lstm_605_layer_call_fn_4751680p345O�L
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
*__inference_lstm_605_layer_call_fn_4751691`345?�<
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
*__inference_lstm_605_layer_call_fn_4751702`345?�<
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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4752359�-./��}
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
J__inference_lstm_cell_783_layer_call_and_return_conditional_losses_4752391�-./��}
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
/__inference_lstm_cell_783_layer_call_fn_4752310�-./��}
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
/__inference_lstm_cell_783_layer_call_fn_4752327�-./��}
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
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4752457�012��}
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
J__inference_lstm_cell_784_layer_call_and_return_conditional_losses_4752489�012��}
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
/__inference_lstm_cell_784_layer_call_fn_4752408�012��}
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
/__inference_lstm_cell_784_layer_call_fn_4752425�012��}
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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4752555�345��}
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
J__inference_lstm_cell_785_layer_call_and_return_conditional_losses_4752587�345��}
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
/__inference_lstm_cell_785_layer_call_fn_4752506�345��}
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
/__inference_lstm_cell_785_layer_call_fn_4752523�345��}
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
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749453y-./012345!"C�@
9�6
,�)
lstm_603_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749483y-./012345!"C�@
9�6
,�)
lstm_603_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_201_layer_call_and_return_conditional_losses_4749999q-./012345!";�8
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
K__inference_sequential_201_layer_call_and_return_conditional_losses_4750426q-./012345!";�8
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
0__inference_sequential_201_layer_call_fn_4748807l-./012345!"C�@
9�6
,�)
lstm_603_input���������
p 

 
� "�����������
0__inference_sequential_201_layer_call_fn_4749423l-./012345!"C�@
9�6
,�)
lstm_603_input���������
p

 
� "�����������
0__inference_sequential_201_layer_call_fn_4749545d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
0__inference_sequential_201_layer_call_fn_4749572d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_4749518�-./012345!"M�J
� 
C�@
>
lstm_603_input,�)
lstm_603_input���������"5�2
0
	dense_201#� 
	dense_201���������
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
dense_214/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_214/kernel
u
$dense_214/kernel/Read/ReadVariableOpReadVariableOpdense_214/kernel*
_output_shapes

:
*
dtype0
t
dense_214/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_214/bias
m
"dense_214/bias/Read/ReadVariableOpReadVariableOpdense_214/bias*
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
lstm_642/lstm_cell_642/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_642/lstm_cell_642/kernel
�
1lstm_642/lstm_cell_642/kernel/Read/ReadVariableOpReadVariableOplstm_642/lstm_cell_642/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_642/lstm_cell_642/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_642/lstm_cell_642/recurrent_kernel
�
;lstm_642/lstm_cell_642/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_642/lstm_cell_642/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_642/lstm_cell_642/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_642/lstm_cell_642/bias
�
/lstm_642/lstm_cell_642/bias/Read/ReadVariableOpReadVariableOplstm_642/lstm_cell_642/bias*
_output_shapes	
:�*
dtype0
�
lstm_643/lstm_cell_643/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_643/lstm_cell_643/kernel
�
1lstm_643/lstm_cell_643/kernel/Read/ReadVariableOpReadVariableOplstm_643/lstm_cell_643/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_643/lstm_cell_643/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_643/lstm_cell_643/recurrent_kernel
�
;lstm_643/lstm_cell_643/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_643/lstm_cell_643/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_643/lstm_cell_643/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_643/lstm_cell_643/bias
�
/lstm_643/lstm_cell_643/bias/Read/ReadVariableOpReadVariableOplstm_643/lstm_cell_643/bias*
_output_shapes	
:�*
dtype0
�
lstm_644/lstm_cell_644/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_644/lstm_cell_644/kernel
�
1lstm_644/lstm_cell_644/kernel/Read/ReadVariableOpReadVariableOplstm_644/lstm_cell_644/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_644/lstm_cell_644/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_644/lstm_cell_644/recurrent_kernel
�
;lstm_644/lstm_cell_644/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_644/lstm_cell_644/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_644/lstm_cell_644/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_644/lstm_cell_644/bias
�
/lstm_644/lstm_cell_644/bias/Read/ReadVariableOpReadVariableOplstm_644/lstm_cell_644/bias*
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
Adam/dense_214/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_214/kernel/m
�
+Adam/dense_214/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_214/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_214/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_214/bias/m
{
)Adam/dense_214/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_214/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_642/lstm_cell_642/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_642/lstm_cell_642/kernel/m
�
8Adam/lstm_642/lstm_cell_642/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_642/lstm_cell_642/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_642/lstm_cell_642/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_642/lstm_cell_642/recurrent_kernel/m
�
BAdam/lstm_642/lstm_cell_642/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_642/lstm_cell_642/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_642/lstm_cell_642/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_642/lstm_cell_642/bias/m
�
6Adam/lstm_642/lstm_cell_642/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_642/lstm_cell_642/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_643/lstm_cell_643/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_643/lstm_cell_643/kernel/m
�
8Adam/lstm_643/lstm_cell_643/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_643/lstm_cell_643/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_643/lstm_cell_643/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_643/lstm_cell_643/recurrent_kernel/m
�
BAdam/lstm_643/lstm_cell_643/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_643/lstm_cell_643/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_643/lstm_cell_643/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_643/lstm_cell_643/bias/m
�
6Adam/lstm_643/lstm_cell_643/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_643/lstm_cell_643/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_644/lstm_cell_644/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_644/lstm_cell_644/kernel/m
�
8Adam/lstm_644/lstm_cell_644/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_644/lstm_cell_644/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_644/lstm_cell_644/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_644/lstm_cell_644/recurrent_kernel/m
�
BAdam/lstm_644/lstm_cell_644/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_644/lstm_cell_644/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_644/lstm_cell_644/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_644/lstm_cell_644/bias/m
�
6Adam/lstm_644/lstm_cell_644/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_644/lstm_cell_644/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_214/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_214/kernel/v
�
+Adam/dense_214/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_214/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_214/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_214/bias/v
{
)Adam/dense_214/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_214/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_642/lstm_cell_642/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_642/lstm_cell_642/kernel/v
�
8Adam/lstm_642/lstm_cell_642/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_642/lstm_cell_642/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_642/lstm_cell_642/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_642/lstm_cell_642/recurrent_kernel/v
�
BAdam/lstm_642/lstm_cell_642/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_642/lstm_cell_642/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_642/lstm_cell_642/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_642/lstm_cell_642/bias/v
�
6Adam/lstm_642/lstm_cell_642/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_642/lstm_cell_642/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_643/lstm_cell_643/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_643/lstm_cell_643/kernel/v
�
8Adam/lstm_643/lstm_cell_643/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_643/lstm_cell_643/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_643/lstm_cell_643/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_643/lstm_cell_643/recurrent_kernel/v
�
BAdam/lstm_643/lstm_cell_643/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_643/lstm_cell_643/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_643/lstm_cell_643/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_643/lstm_cell_643/bias/v
�
6Adam/lstm_643/lstm_cell_643/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_643/lstm_cell_643/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_644/lstm_cell_644/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_644/lstm_cell_644/kernel/v
�
8Adam/lstm_644/lstm_cell_644/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_644/lstm_cell_644/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_644/lstm_cell_644/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_644/lstm_cell_644/recurrent_kernel/v
�
BAdam/lstm_644/lstm_cell_644/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_644/lstm_cell_644/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_644/lstm_cell_644/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_644/lstm_cell_644/bias/v
�
6Adam/lstm_644/lstm_cell_644/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_644/lstm_cell_644/bias/v*
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
VARIABLE_VALUEdense_214/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_214/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_642/lstm_cell_642/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_642/lstm_cell_642/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_642/lstm_cell_642/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_643/lstm_cell_643/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_643/lstm_cell_643/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_643/lstm_cell_643/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_644/lstm_cell_644/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_644/lstm_cell_644/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_644/lstm_cell_644/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_214/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_214/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_642/lstm_cell_642/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_642/lstm_cell_642/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_642/lstm_cell_642/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_643/lstm_cell_643/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_643/lstm_cell_643/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_643/lstm_cell_643/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_644/lstm_cell_644/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_644/lstm_cell_644/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_644/lstm_cell_644/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_214/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_214/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_642/lstm_cell_642/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_642/lstm_cell_642/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_642/lstm_cell_642/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_643/lstm_cell_643/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_643/lstm_cell_643/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_643/lstm_cell_643/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_644/lstm_cell_644/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_644/lstm_cell_644/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_644/lstm_cell_644/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_642_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_642_inputlstm_642/lstm_cell_642/kernel'lstm_642/lstm_cell_642/recurrent_kernellstm_642/lstm_cell_642/biaslstm_643/lstm_cell_643/kernel'lstm_643/lstm_cell_643/recurrent_kernellstm_643/lstm_cell_643/biaslstm_644/lstm_cell_644/kernel'lstm_644/lstm_cell_644/recurrent_kernellstm_644/lstm_cell_644/biasdense_214/kerneldense_214/bias*
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
%__inference_signature_wrapper_3718238
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_214/kernel/Read/ReadVariableOp"dense_214/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_642/lstm_cell_642/kernel/Read/ReadVariableOp;lstm_642/lstm_cell_642/recurrent_kernel/Read/ReadVariableOp/lstm_642/lstm_cell_642/bias/Read/ReadVariableOp1lstm_643/lstm_cell_643/kernel/Read/ReadVariableOp;lstm_643/lstm_cell_643/recurrent_kernel/Read/ReadVariableOp/lstm_643/lstm_cell_643/bias/Read/ReadVariableOp1lstm_644/lstm_cell_644/kernel/Read/ReadVariableOp;lstm_644/lstm_cell_644/recurrent_kernel/Read/ReadVariableOp/lstm_644/lstm_cell_644/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_214/kernel/m/Read/ReadVariableOp)Adam/dense_214/bias/m/Read/ReadVariableOp8Adam/lstm_642/lstm_cell_642/kernel/m/Read/ReadVariableOpBAdam/lstm_642/lstm_cell_642/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_642/lstm_cell_642/bias/m/Read/ReadVariableOp8Adam/lstm_643/lstm_cell_643/kernel/m/Read/ReadVariableOpBAdam/lstm_643/lstm_cell_643/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_643/lstm_cell_643/bias/m/Read/ReadVariableOp8Adam/lstm_644/lstm_cell_644/kernel/m/Read/ReadVariableOpBAdam/lstm_644/lstm_cell_644/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_644/lstm_cell_644/bias/m/Read/ReadVariableOp+Adam/dense_214/kernel/v/Read/ReadVariableOp)Adam/dense_214/bias/v/Read/ReadVariableOp8Adam/lstm_642/lstm_cell_642/kernel/v/Read/ReadVariableOpBAdam/lstm_642/lstm_cell_642/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_642/lstm_cell_642/bias/v/Read/ReadVariableOp8Adam/lstm_643/lstm_cell_643/kernel/v/Read/ReadVariableOpBAdam/lstm_643/lstm_cell_643/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_643/lstm_cell_643/bias/v/Read/ReadVariableOp8Adam/lstm_644/lstm_cell_644/kernel/v/Read/ReadVariableOpBAdam/lstm_644/lstm_cell_644/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_644/lstm_cell_644/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3721450
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_214/kerneldense_214/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_642/lstm_cell_642/kernel'lstm_642/lstm_cell_642/recurrent_kernellstm_642/lstm_cell_642/biaslstm_643/lstm_cell_643/kernel'lstm_643/lstm_cell_643/recurrent_kernellstm_643/lstm_cell_643/biaslstm_644/lstm_cell_644/kernel'lstm_644/lstm_cell_644/recurrent_kernellstm_644/lstm_cell_644/biastotalcountAdam/dense_214/kernel/mAdam/dense_214/bias/m$Adam/lstm_642/lstm_cell_642/kernel/m.Adam/lstm_642/lstm_cell_642/recurrent_kernel/m"Adam/lstm_642/lstm_cell_642/bias/m$Adam/lstm_643/lstm_cell_643/kernel/m.Adam/lstm_643/lstm_cell_643/recurrent_kernel/m"Adam/lstm_643/lstm_cell_643/bias/m$Adam/lstm_644/lstm_cell_644/kernel/m.Adam/lstm_644/lstm_cell_644/recurrent_kernel/m"Adam/lstm_644/lstm_cell_644/bias/mAdam/dense_214/kernel/vAdam/dense_214/bias/v$Adam/lstm_642/lstm_cell_642/kernel/v.Adam/lstm_642/lstm_cell_642/recurrent_kernel/v"Adam/lstm_642/lstm_cell_642/bias/v$Adam/lstm_643/lstm_cell_643/kernel/v.Adam/lstm_643/lstm_cell_643/recurrent_kernel/v"Adam/lstm_643/lstm_cell_643/bias/v$Adam/lstm_644/lstm_cell_644/kernel/v.Adam/lstm_644/lstm_cell_644/recurrent_kernel/v"Adam/lstm_644/lstm_cell_644/bias/v*4
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
#__inference__traced_restore_3721580��+
�K
�
E__inference_lstm_643_layer_call_and_return_conditional_losses_3719949
inputs_0?
,lstm_cell_613_matmul_readvariableop_resource:	d�A
.lstm_cell_613_matmul_1_readvariableop_resource:	2�<
-lstm_cell_613_biasadd_readvariableop_resource:	�
identity��$lstm_cell_613/BiasAdd/ReadVariableOp�#lstm_cell_613/MatMul/ReadVariableOp�%lstm_cell_613/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3719865*
condR
while_cond_3719864*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�#
�
while_body_3716950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_614_3716974_0:2(/
while_lstm_cell_614_3716976_0:
(+
while_lstm_cell_614_3716978_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_614_3716974:2(-
while_lstm_cell_614_3716976:
()
while_lstm_cell_614_3716978:(��+while/lstm_cell_614/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_614/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_614_3716974_0while_lstm_cell_614_3716976_0while_lstm_cell_614_3716978_0*
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3716891�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_614/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_614/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_614/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_614/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_614_3716974while_lstm_cell_614_3716974_0"<
while_lstm_cell_614_3716976while_lstm_cell_614_3716976_0"<
while_lstm_cell_614_3716978while_lstm_cell_614_3716978_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_614/StatefulPartitionedCall+while/lstm_cell_614/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3716949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3716949___redundant_placeholder05
1while_while_cond_3716949___redundant_placeholder15
1while_while_cond_3716949___redundant_placeholder25
1while_while_cond_3716949___redundant_placeholder3
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
F__inference_dense_214_layer_call_and_return_conditional_losses_3721013

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
�
�
*__inference_lstm_642_layer_call_fn_3719179

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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3717177s
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
�
�
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718173
lstm_642_input#
lstm_642_3718146:	�#
lstm_642_3718148:	d�
lstm_642_3718150:	�#
lstm_643_3718153:	d�#
lstm_643_3718155:	2�
lstm_643_3718157:	�"
lstm_644_3718160:2("
lstm_644_3718162:
(
lstm_644_3718164:(#
dense_214_3718167:

dense_214_3718169:
identity��!dense_214/StatefulPartitionedCall� lstm_642/StatefulPartitionedCall� lstm_643/StatefulPartitionedCall� lstm_644/StatefulPartitionedCall�
 lstm_642/StatefulPartitionedCallStatefulPartitionedCalllstm_642_inputlstm_642_3718146lstm_642_3718148lstm_642_3718150*
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3717177�
 lstm_643/StatefulPartitionedCallStatefulPartitionedCall)lstm_642/StatefulPartitionedCall:output:0lstm_643_3718153lstm_643_3718155lstm_643_3718157*
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3717327�
 lstm_644/StatefulPartitionedCallStatefulPartitionedCall)lstm_643/StatefulPartitionedCall:output:0lstm_644_3718160lstm_644_3718162lstm_644_3718164*
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3717477�
!dense_214/StatefulPartitionedCallStatefulPartitionedCall)lstm_644/StatefulPartitionedCall:output:0dense_214_3718167dense_214_3718169*
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
F__inference_dense_214_layer_call_and_return_conditional_losses_3717495y
IdentityIdentity*dense_214/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_214/StatefulPartitionedCall!^lstm_642/StatefulPartitionedCall!^lstm_643/StatefulPartitionedCall!^lstm_644/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_214/StatefulPartitionedCall!dense_214/StatefulPartitionedCall2D
 lstm_642/StatefulPartitionedCall lstm_642/StatefulPartitionedCall2D
 lstm_643/StatefulPartitionedCall lstm_643/StatefulPartitionedCall2D
 lstm_644/StatefulPartitionedCall lstm_644/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_642_input
��
�
K__inference_sequential_214_layer_call_and_return_conditional_losses_3719146

inputsH
5lstm_642_lstm_cell_612_matmul_readvariableop_resource:	�J
7lstm_642_lstm_cell_612_matmul_1_readvariableop_resource:	d�E
6lstm_642_lstm_cell_612_biasadd_readvariableop_resource:	�H
5lstm_643_lstm_cell_613_matmul_readvariableop_resource:	d�J
7lstm_643_lstm_cell_613_matmul_1_readvariableop_resource:	2�E
6lstm_643_lstm_cell_613_biasadd_readvariableop_resource:	�G
5lstm_644_lstm_cell_614_matmul_readvariableop_resource:2(I
7lstm_644_lstm_cell_614_matmul_1_readvariableop_resource:
(D
6lstm_644_lstm_cell_614_biasadd_readvariableop_resource:(:
(dense_214_matmul_readvariableop_resource:
7
)dense_214_biasadd_readvariableop_resource:
identity�� dense_214/BiasAdd/ReadVariableOp�dense_214/MatMul/ReadVariableOp�-lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp�,lstm_642/lstm_cell_612/MatMul/ReadVariableOp�.lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp�lstm_642/while�-lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp�,lstm_643/lstm_cell_613/MatMul/ReadVariableOp�.lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp�lstm_643/while�-lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp�,lstm_644/lstm_cell_614/MatMul/ReadVariableOp�.lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp�lstm_644/whileD
lstm_642/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_642/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_642/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_642/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_642/strided_sliceStridedSlicelstm_642/Shape:output:0%lstm_642/strided_slice/stack:output:0'lstm_642/strided_slice/stack_1:output:0'lstm_642/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_642/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_642/zeros/packedPacklstm_642/strided_slice:output:0 lstm_642/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_642/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_642/zerosFilllstm_642/zeros/packed:output:0lstm_642/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_642/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_642/zeros_1/packedPacklstm_642/strided_slice:output:0"lstm_642/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_642/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_642/zeros_1Fill lstm_642/zeros_1/packed:output:0lstm_642/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_642/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_642/transpose	Transposeinputs lstm_642/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_642/Shape_1Shapelstm_642/transpose:y:0*
T0*
_output_shapes
:h
lstm_642/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_642/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_642/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_642/strided_slice_1StridedSlicelstm_642/Shape_1:output:0'lstm_642/strided_slice_1/stack:output:0)lstm_642/strided_slice_1/stack_1:output:0)lstm_642/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_642/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_642/TensorArrayV2TensorListReserve-lstm_642/TensorArrayV2/element_shape:output:0!lstm_642/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_642/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_642/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_642/transpose:y:0Glstm_642/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_642/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_642/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_642/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_642/strided_slice_2StridedSlicelstm_642/transpose:y:0'lstm_642/strided_slice_2/stack:output:0)lstm_642/strided_slice_2/stack_1:output:0)lstm_642/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_642/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp5lstm_642_lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_642/lstm_cell_612/MatMulMatMul!lstm_642/strided_slice_2:output:04lstm_642/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_642/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp7lstm_642_lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_642/lstm_cell_612/MatMul_1MatMullstm_642/zeros:output:06lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_642/lstm_cell_612/addAddV2'lstm_642/lstm_cell_612/MatMul:product:0)lstm_642/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_642/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp6lstm_642_lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_642/lstm_cell_612/BiasAddBiasAddlstm_642/lstm_cell_612/add:z:05lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_642/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_642/lstm_cell_612/splitSplit/lstm_642/lstm_cell_612/split/split_dim:output:0'lstm_642/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_642/lstm_cell_612/SigmoidSigmoid%lstm_642/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_642/lstm_cell_612/Sigmoid_1Sigmoid%lstm_642/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_642/lstm_cell_612/mulMul$lstm_642/lstm_cell_612/Sigmoid_1:y:0lstm_642/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_642/lstm_cell_612/ReluRelu%lstm_642/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_642/lstm_cell_612/mul_1Mul"lstm_642/lstm_cell_612/Sigmoid:y:0)lstm_642/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_642/lstm_cell_612/add_1AddV2lstm_642/lstm_cell_612/mul:z:0 lstm_642/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_642/lstm_cell_612/Sigmoid_2Sigmoid%lstm_642/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_642/lstm_cell_612/Relu_1Relu lstm_642/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_642/lstm_cell_612/mul_2Mul$lstm_642/lstm_cell_612/Sigmoid_2:y:0+lstm_642/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_642/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_642/TensorArrayV2_1TensorListReserve/lstm_642/TensorArrayV2_1/element_shape:output:0!lstm_642/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_642/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_642/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_642/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_642/whileWhile$lstm_642/while/loop_counter:output:0*lstm_642/while/maximum_iterations:output:0lstm_642/time:output:0!lstm_642/TensorArrayV2_1:handle:0lstm_642/zeros:output:0lstm_642/zeros_1:output:0!lstm_642/strided_slice_1:output:0@lstm_642/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_642_lstm_cell_612_matmul_readvariableop_resource7lstm_642_lstm_cell_612_matmul_1_readvariableop_resource6lstm_642_lstm_cell_612_biasadd_readvariableop_resource*
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
lstm_642_while_body_3718778*'
condR
lstm_642_while_cond_3718777*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_642/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_642/TensorArrayV2Stack/TensorListStackTensorListStacklstm_642/while:output:3Blstm_642/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_642/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_642/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_642/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_642/strided_slice_3StridedSlice4lstm_642/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_642/strided_slice_3/stack:output:0)lstm_642/strided_slice_3/stack_1:output:0)lstm_642/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_642/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_642/transpose_1	Transpose4lstm_642/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_642/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_642/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_643/ShapeShapelstm_642/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_643/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_643/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_643/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_643/strided_sliceStridedSlicelstm_643/Shape:output:0%lstm_643/strided_slice/stack:output:0'lstm_643/strided_slice/stack_1:output:0'lstm_643/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_643/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_643/zeros/packedPacklstm_643/strided_slice:output:0 lstm_643/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_643/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_643/zerosFilllstm_643/zeros/packed:output:0lstm_643/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_643/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_643/zeros_1/packedPacklstm_643/strided_slice:output:0"lstm_643/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_643/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_643/zeros_1Fill lstm_643/zeros_1/packed:output:0lstm_643/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_643/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_643/transpose	Transposelstm_642/transpose_1:y:0 lstm_643/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_643/Shape_1Shapelstm_643/transpose:y:0*
T0*
_output_shapes
:h
lstm_643/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_643/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_643/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_643/strided_slice_1StridedSlicelstm_643/Shape_1:output:0'lstm_643/strided_slice_1/stack:output:0)lstm_643/strided_slice_1/stack_1:output:0)lstm_643/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_643/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_643/TensorArrayV2TensorListReserve-lstm_643/TensorArrayV2/element_shape:output:0!lstm_643/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_643/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_643/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_643/transpose:y:0Glstm_643/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_643/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_643/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_643/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_643/strided_slice_2StridedSlicelstm_643/transpose:y:0'lstm_643/strided_slice_2/stack:output:0)lstm_643/strided_slice_2/stack_1:output:0)lstm_643/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_643/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp5lstm_643_lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_643/lstm_cell_613/MatMulMatMul!lstm_643/strided_slice_2:output:04lstm_643/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_643/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp7lstm_643_lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_643/lstm_cell_613/MatMul_1MatMullstm_643/zeros:output:06lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_643/lstm_cell_613/addAddV2'lstm_643/lstm_cell_613/MatMul:product:0)lstm_643/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_643/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp6lstm_643_lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_643/lstm_cell_613/BiasAddBiasAddlstm_643/lstm_cell_613/add:z:05lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_643/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_643/lstm_cell_613/splitSplit/lstm_643/lstm_cell_613/split/split_dim:output:0'lstm_643/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_643/lstm_cell_613/SigmoidSigmoid%lstm_643/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_643/lstm_cell_613/Sigmoid_1Sigmoid%lstm_643/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_643/lstm_cell_613/mulMul$lstm_643/lstm_cell_613/Sigmoid_1:y:0lstm_643/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_643/lstm_cell_613/ReluRelu%lstm_643/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_643/lstm_cell_613/mul_1Mul"lstm_643/lstm_cell_613/Sigmoid:y:0)lstm_643/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_643/lstm_cell_613/add_1AddV2lstm_643/lstm_cell_613/mul:z:0 lstm_643/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_643/lstm_cell_613/Sigmoid_2Sigmoid%lstm_643/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_643/lstm_cell_613/Relu_1Relu lstm_643/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_643/lstm_cell_613/mul_2Mul$lstm_643/lstm_cell_613/Sigmoid_2:y:0+lstm_643/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_643/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_643/TensorArrayV2_1TensorListReserve/lstm_643/TensorArrayV2_1/element_shape:output:0!lstm_643/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_643/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_643/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_643/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_643/whileWhile$lstm_643/while/loop_counter:output:0*lstm_643/while/maximum_iterations:output:0lstm_643/time:output:0!lstm_643/TensorArrayV2_1:handle:0lstm_643/zeros:output:0lstm_643/zeros_1:output:0!lstm_643/strided_slice_1:output:0@lstm_643/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_643_lstm_cell_613_matmul_readvariableop_resource7lstm_643_lstm_cell_613_matmul_1_readvariableop_resource6lstm_643_lstm_cell_613_biasadd_readvariableop_resource*
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
lstm_643_while_body_3718917*'
condR
lstm_643_while_cond_3718916*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_643/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_643/TensorArrayV2Stack/TensorListStackTensorListStacklstm_643/while:output:3Blstm_643/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_643/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_643/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_643/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_643/strided_slice_3StridedSlice4lstm_643/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_643/strided_slice_3/stack:output:0)lstm_643/strided_slice_3/stack_1:output:0)lstm_643/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_643/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_643/transpose_1	Transpose4lstm_643/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_643/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_643/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_644/ShapeShapelstm_643/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_644/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_644/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_644/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_644/strided_sliceStridedSlicelstm_644/Shape:output:0%lstm_644/strided_slice/stack:output:0'lstm_644/strided_slice/stack_1:output:0'lstm_644/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_644/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_644/zeros/packedPacklstm_644/strided_slice:output:0 lstm_644/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_644/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_644/zerosFilllstm_644/zeros/packed:output:0lstm_644/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_644/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_644/zeros_1/packedPacklstm_644/strided_slice:output:0"lstm_644/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_644/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_644/zeros_1Fill lstm_644/zeros_1/packed:output:0lstm_644/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_644/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_644/transpose	Transposelstm_643/transpose_1:y:0 lstm_644/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_644/Shape_1Shapelstm_644/transpose:y:0*
T0*
_output_shapes
:h
lstm_644/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_644/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_644/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_644/strided_slice_1StridedSlicelstm_644/Shape_1:output:0'lstm_644/strided_slice_1/stack:output:0)lstm_644/strided_slice_1/stack_1:output:0)lstm_644/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_644/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_644/TensorArrayV2TensorListReserve-lstm_644/TensorArrayV2/element_shape:output:0!lstm_644/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_644/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_644/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_644/transpose:y:0Glstm_644/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_644/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_644/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_644/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_644/strided_slice_2StridedSlicelstm_644/transpose:y:0'lstm_644/strided_slice_2/stack:output:0)lstm_644/strided_slice_2/stack_1:output:0)lstm_644/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_644/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp5lstm_644_lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_644/lstm_cell_614/MatMulMatMul!lstm_644/strided_slice_2:output:04lstm_644/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_644/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp7lstm_644_lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_644/lstm_cell_614/MatMul_1MatMullstm_644/zeros:output:06lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_644/lstm_cell_614/addAddV2'lstm_644/lstm_cell_614/MatMul:product:0)lstm_644/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_644/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp6lstm_644_lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_644/lstm_cell_614/BiasAddBiasAddlstm_644/lstm_cell_614/add:z:05lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_644/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_644/lstm_cell_614/splitSplit/lstm_644/lstm_cell_614/split/split_dim:output:0'lstm_644/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_644/lstm_cell_614/SigmoidSigmoid%lstm_644/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_644/lstm_cell_614/Sigmoid_1Sigmoid%lstm_644/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_644/lstm_cell_614/mulMul$lstm_644/lstm_cell_614/Sigmoid_1:y:0lstm_644/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_644/lstm_cell_614/ReluRelu%lstm_644/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_644/lstm_cell_614/mul_1Mul"lstm_644/lstm_cell_614/Sigmoid:y:0)lstm_644/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_644/lstm_cell_614/add_1AddV2lstm_644/lstm_cell_614/mul:z:0 lstm_644/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_644/lstm_cell_614/Sigmoid_2Sigmoid%lstm_644/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_644/lstm_cell_614/Relu_1Relu lstm_644/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_644/lstm_cell_614/mul_2Mul$lstm_644/lstm_cell_614/Sigmoid_2:y:0+lstm_644/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_644/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_644/TensorArrayV2_1TensorListReserve/lstm_644/TensorArrayV2_1/element_shape:output:0!lstm_644/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_644/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_644/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_644/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_644/whileWhile$lstm_644/while/loop_counter:output:0*lstm_644/while/maximum_iterations:output:0lstm_644/time:output:0!lstm_644/TensorArrayV2_1:handle:0lstm_644/zeros:output:0lstm_644/zeros_1:output:0!lstm_644/strided_slice_1:output:0@lstm_644/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_644_lstm_cell_614_matmul_readvariableop_resource7lstm_644_lstm_cell_614_matmul_1_readvariableop_resource6lstm_644_lstm_cell_614_biasadd_readvariableop_resource*
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
lstm_644_while_body_3719056*'
condR
lstm_644_while_cond_3719055*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_644/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_644/TensorArrayV2Stack/TensorListStackTensorListStacklstm_644/while:output:3Blstm_644/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_644/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_644/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_644/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_644/strided_slice_3StridedSlice4lstm_644/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_644/strided_slice_3/stack:output:0)lstm_644/strided_slice_3/stack_1:output:0)lstm_644/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_644/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_644/transpose_1	Transpose4lstm_644/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_644/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_644/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_214/MatMul/ReadVariableOpReadVariableOp(dense_214_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_214/MatMulMatMul!lstm_644/strided_slice_3:output:0'dense_214/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_214/BiasAdd/ReadVariableOpReadVariableOp)dense_214_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_214/BiasAddBiasAdddense_214/MatMul:product:0(dense_214/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_214/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_214/BiasAdd/ReadVariableOp ^dense_214/MatMul/ReadVariableOp.^lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp-^lstm_642/lstm_cell_612/MatMul/ReadVariableOp/^lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp^lstm_642/while.^lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp-^lstm_643/lstm_cell_613/MatMul/ReadVariableOp/^lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp^lstm_643/while.^lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp-^lstm_644/lstm_cell_614/MatMul/ReadVariableOp/^lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp^lstm_644/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_214/BiasAdd/ReadVariableOp dense_214/BiasAdd/ReadVariableOp2B
dense_214/MatMul/ReadVariableOpdense_214/MatMul/ReadVariableOp2^
-lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp-lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp2\
,lstm_642/lstm_cell_612/MatMul/ReadVariableOp,lstm_642/lstm_cell_612/MatMul/ReadVariableOp2`
.lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp.lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp2 
lstm_642/whilelstm_642/while2^
-lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp-lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp2\
,lstm_643/lstm_cell_613/MatMul/ReadVariableOp,lstm_643/lstm_cell_613/MatMul/ReadVariableOp2`
.lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp.lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp2 
lstm_643/whilelstm_643/while2^
-lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp-lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp2\
,lstm_644/lstm_cell_614/MatMul/ReadVariableOp,lstm_644/lstm_cell_614/MatMul/ReadVariableOp2`
.lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp.lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp2 
lstm_644/whilelstm_644/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_613_layer_call_fn_3721145

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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3716541o
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
�C
�

lstm_644_while_body_3718629.
*lstm_644_while_lstm_644_while_loop_counter4
0lstm_644_while_lstm_644_while_maximum_iterations
lstm_644_while_placeholder 
lstm_644_while_placeholder_1 
lstm_644_while_placeholder_2 
lstm_644_while_placeholder_3-
)lstm_644_while_lstm_644_strided_slice_1_0i
elstm_644_while_tensorarrayv2read_tensorlistgetitem_lstm_644_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_644_while_lstm_cell_614_matmul_readvariableop_resource_0:2(Q
?lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(L
>lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource_0:(
lstm_644_while_identity
lstm_644_while_identity_1
lstm_644_while_identity_2
lstm_644_while_identity_3
lstm_644_while_identity_4
lstm_644_while_identity_5+
'lstm_644_while_lstm_644_strided_slice_1g
clstm_644_while_tensorarrayv2read_tensorlistgetitem_lstm_644_tensorarrayunstack_tensorlistfromtensorM
;lstm_644_while_lstm_cell_614_matmul_readvariableop_resource:2(O
=lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource:
(J
<lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource:(��3lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp�2lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp�4lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp�
@lstm_644/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_644/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_644_while_tensorarrayv2read_tensorlistgetitem_lstm_644_tensorarrayunstack_tensorlistfromtensor_0lstm_644_while_placeholderIlstm_644/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_644/while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp=lstm_644_while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_644/while/lstm_cell_614/MatMulMatMul9lstm_644/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp?lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_644/while/lstm_cell_614/MatMul_1MatMullstm_644_while_placeholder_2<lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_644/while/lstm_cell_614/addAddV2-lstm_644/while/lstm_cell_614/MatMul:product:0/lstm_644/while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp>lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_644/while/lstm_cell_614/BiasAddBiasAdd$lstm_644/while/lstm_cell_614/add:z:0;lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_644/while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_644/while/lstm_cell_614/splitSplit5lstm_644/while/lstm_cell_614/split/split_dim:output:0-lstm_644/while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_644/while/lstm_cell_614/SigmoidSigmoid+lstm_644/while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_644/while/lstm_cell_614/Sigmoid_1Sigmoid+lstm_644/while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_644/while/lstm_cell_614/mulMul*lstm_644/while/lstm_cell_614/Sigmoid_1:y:0lstm_644_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_644/while/lstm_cell_614/ReluRelu+lstm_644/while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_644/while/lstm_cell_614/mul_1Mul(lstm_644/while/lstm_cell_614/Sigmoid:y:0/lstm_644/while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_644/while/lstm_cell_614/add_1AddV2$lstm_644/while/lstm_cell_614/mul:z:0&lstm_644/while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_644/while/lstm_cell_614/Sigmoid_2Sigmoid+lstm_644/while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_644/while/lstm_cell_614/Relu_1Relu&lstm_644/while/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_644/while/lstm_cell_614/mul_2Mul*lstm_644/while/lstm_cell_614/Sigmoid_2:y:01lstm_644/while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_644/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_644_while_placeholder_1lstm_644_while_placeholder&lstm_644/while/lstm_cell_614/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_644/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_644/while/addAddV2lstm_644_while_placeholderlstm_644/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_644/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_644/while/add_1AddV2*lstm_644_while_lstm_644_while_loop_counterlstm_644/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_644/while/IdentityIdentitylstm_644/while/add_1:z:0^lstm_644/while/NoOp*
T0*
_output_shapes
: �
lstm_644/while/Identity_1Identity0lstm_644_while_lstm_644_while_maximum_iterations^lstm_644/while/NoOp*
T0*
_output_shapes
: t
lstm_644/while/Identity_2Identitylstm_644/while/add:z:0^lstm_644/while/NoOp*
T0*
_output_shapes
: �
lstm_644/while/Identity_3IdentityClstm_644/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_644/while/NoOp*
T0*
_output_shapes
: �
lstm_644/while/Identity_4Identity&lstm_644/while/lstm_cell_614/mul_2:z:0^lstm_644/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_644/while/Identity_5Identity&lstm_644/while/lstm_cell_614/add_1:z:0^lstm_644/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_644/while/NoOpNoOp4^lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp3^lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp5^lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_644_while_identity lstm_644/while/Identity:output:0"?
lstm_644_while_identity_1"lstm_644/while/Identity_1:output:0"?
lstm_644_while_identity_2"lstm_644/while/Identity_2:output:0"?
lstm_644_while_identity_3"lstm_644/while/Identity_3:output:0"?
lstm_644_while_identity_4"lstm_644/while/Identity_4:output:0"?
lstm_644_while_identity_5"lstm_644/while/Identity_5:output:0"T
'lstm_644_while_lstm_644_strided_slice_1)lstm_644_while_lstm_644_strided_slice_1_0"~
<lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource>lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource_0"�
=lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource?lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource_0"|
;lstm_644_while_lstm_cell_614_matmul_readvariableop_resource=lstm_644_while_lstm_cell_614_matmul_readvariableop_resource_0"�
clstm_644_while_tensorarrayv2read_tensorlistgetitem_lstm_644_tensorarrayunstack_tensorlistfromtensorelstm_644_while_tensorarrayv2read_tensorlistgetitem_lstm_644_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp3lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp2h
2lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp2lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp2l
4lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp4lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_214_layer_call_and_return_conditional_losses_3717495

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
�
E__inference_lstm_644_layer_call_and_return_conditional_losses_3716828

inputs'
lstm_cell_614_3716746:2('
lstm_cell_614_3716748:
(#
lstm_cell_614_3716750:(
identity��%lstm_cell_614/StatefulPartitionedCall�while;
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
%lstm_cell_614/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_614_3716746lstm_cell_614_3716748lstm_cell_614_3716750*
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3716745n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_614_3716746lstm_cell_614_3716748lstm_cell_614_3716750*
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
while_body_3716759*
condR
while_cond_3716758*K
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
NoOpNoOp&^lstm_cell_614/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_614/StatefulPartitionedCall%lstm_cell_614/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�T
�
*sequential_214_lstm_642_while_body_3715610L
Hsequential_214_lstm_642_while_sequential_214_lstm_642_while_loop_counterR
Nsequential_214_lstm_642_while_sequential_214_lstm_642_while_maximum_iterations-
)sequential_214_lstm_642_while_placeholder/
+sequential_214_lstm_642_while_placeholder_1/
+sequential_214_lstm_642_while_placeholder_2/
+sequential_214_lstm_642_while_placeholder_3K
Gsequential_214_lstm_642_while_sequential_214_lstm_642_strided_slice_1_0�
�sequential_214_lstm_642_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_642_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_214_lstm_642_while_lstm_cell_612_matmul_readvariableop_resource_0:	�a
Nsequential_214_lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d�\
Msequential_214_lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource_0:	�*
&sequential_214_lstm_642_while_identity,
(sequential_214_lstm_642_while_identity_1,
(sequential_214_lstm_642_while_identity_2,
(sequential_214_lstm_642_while_identity_3,
(sequential_214_lstm_642_while_identity_4,
(sequential_214_lstm_642_while_identity_5I
Esequential_214_lstm_642_while_sequential_214_lstm_642_strided_slice_1�
�sequential_214_lstm_642_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_642_tensorarrayunstack_tensorlistfromtensor]
Jsequential_214_lstm_642_while_lstm_cell_612_matmul_readvariableop_resource:	�_
Lsequential_214_lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource:	d�Z
Ksequential_214_lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource:	���Bsequential_214/lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp�Asequential_214/lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp�Csequential_214/lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp�
Osequential_214/lstm_642/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_214/lstm_642/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_214_lstm_642_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_642_tensorarrayunstack_tensorlistfromtensor_0)sequential_214_lstm_642_while_placeholderXsequential_214/lstm_642/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Asequential_214/lstm_642/while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOpLsequential_214_lstm_642_while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
2sequential_214/lstm_642/while/lstm_cell_612/MatMulMatMulHsequential_214/lstm_642/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_214/lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_214/lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOpNsequential_214_lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
4sequential_214/lstm_642/while/lstm_cell_612/MatMul_1MatMul+sequential_214_lstm_642_while_placeholder_2Ksequential_214/lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_214/lstm_642/while/lstm_cell_612/addAddV2<sequential_214/lstm_642/while/lstm_cell_612/MatMul:product:0>sequential_214/lstm_642/while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_214/lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOpMsequential_214_lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_214/lstm_642/while/lstm_cell_612/BiasAddBiasAdd3sequential_214/lstm_642/while/lstm_cell_612/add:z:0Jsequential_214/lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_214/lstm_642/while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_214/lstm_642/while/lstm_cell_612/splitSplitDsequential_214/lstm_642/while/lstm_cell_612/split/split_dim:output:0<sequential_214/lstm_642/while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
3sequential_214/lstm_642/while/lstm_cell_612/SigmoidSigmoid:sequential_214/lstm_642/while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d�
5sequential_214/lstm_642/while/lstm_cell_612/Sigmoid_1Sigmoid:sequential_214/lstm_642/while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
/sequential_214/lstm_642/while/lstm_cell_612/mulMul9sequential_214/lstm_642/while/lstm_cell_612/Sigmoid_1:y:0+sequential_214_lstm_642_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential_214/lstm_642/while/lstm_cell_612/ReluRelu:sequential_214/lstm_642/while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
1sequential_214/lstm_642/while/lstm_cell_612/mul_1Mul7sequential_214/lstm_642/while/lstm_cell_612/Sigmoid:y:0>sequential_214/lstm_642/while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
1sequential_214/lstm_642/while/lstm_cell_612/add_1AddV23sequential_214/lstm_642/while/lstm_cell_612/mul:z:05sequential_214/lstm_642/while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d�
5sequential_214/lstm_642/while/lstm_cell_612/Sigmoid_2Sigmoid:sequential_214/lstm_642/while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������d�
2sequential_214/lstm_642/while/lstm_cell_612/Relu_1Relu5sequential_214/lstm_642/while/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
1sequential_214/lstm_642/while/lstm_cell_612/mul_2Mul9sequential_214/lstm_642/while/lstm_cell_612/Sigmoid_2:y:0@sequential_214/lstm_642/while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Bsequential_214/lstm_642/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_214_lstm_642_while_placeholder_1)sequential_214_lstm_642_while_placeholder5sequential_214/lstm_642/while/lstm_cell_612/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_214/lstm_642/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_214/lstm_642/while/addAddV2)sequential_214_lstm_642_while_placeholder,sequential_214/lstm_642/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_214/lstm_642/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_214/lstm_642/while/add_1AddV2Hsequential_214_lstm_642_while_sequential_214_lstm_642_while_loop_counter.sequential_214/lstm_642/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_214/lstm_642/while/IdentityIdentity'sequential_214/lstm_642/while/add_1:z:0#^sequential_214/lstm_642/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_642/while/Identity_1IdentityNsequential_214_lstm_642_while_sequential_214_lstm_642_while_maximum_iterations#^sequential_214/lstm_642/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_642/while/Identity_2Identity%sequential_214/lstm_642/while/add:z:0#^sequential_214/lstm_642/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_642/while/Identity_3IdentityRsequential_214/lstm_642/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_214/lstm_642/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_642/while/Identity_4Identity5sequential_214/lstm_642/while/lstm_cell_612/mul_2:z:0#^sequential_214/lstm_642/while/NoOp*
T0*'
_output_shapes
:���������d�
(sequential_214/lstm_642/while/Identity_5Identity5sequential_214/lstm_642/while/lstm_cell_612/add_1:z:0#^sequential_214/lstm_642/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential_214/lstm_642/while/NoOpNoOpC^sequential_214/lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOpB^sequential_214/lstm_642/while/lstm_cell_612/MatMul/ReadVariableOpD^sequential_214/lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_214_lstm_642_while_identity/sequential_214/lstm_642/while/Identity:output:0"]
(sequential_214_lstm_642_while_identity_11sequential_214/lstm_642/while/Identity_1:output:0"]
(sequential_214_lstm_642_while_identity_21sequential_214/lstm_642/while/Identity_2:output:0"]
(sequential_214_lstm_642_while_identity_31sequential_214/lstm_642/while/Identity_3:output:0"]
(sequential_214_lstm_642_while_identity_41sequential_214/lstm_642/while/Identity_4:output:0"]
(sequential_214_lstm_642_while_identity_51sequential_214/lstm_642/while/Identity_5:output:0"�
Ksequential_214_lstm_642_while_lstm_cell_612_biasadd_readvariableop_resourceMsequential_214_lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource_0"�
Lsequential_214_lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resourceNsequential_214_lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource_0"�
Jsequential_214_lstm_642_while_lstm_cell_612_matmul_readvariableop_resourceLsequential_214_lstm_642_while_lstm_cell_612_matmul_readvariableop_resource_0"�
Esequential_214_lstm_642_while_sequential_214_lstm_642_strided_slice_1Gsequential_214_lstm_642_while_sequential_214_lstm_642_strided_slice_1_0"�
�sequential_214_lstm_642_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_642_tensorarrayunstack_tensorlistfromtensor�sequential_214_lstm_642_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_642_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
Bsequential_214/lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOpBsequential_214/lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp2�
Asequential_214/lstm_642/while/lstm_cell_612/MatMul/ReadVariableOpAsequential_214/lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp2�
Csequential_214/lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOpCsequential_214/lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3719534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3719534___redundant_placeholder05
1while_while_cond_3719534___redundant_placeholder15
1while_while_cond_3719534___redundant_placeholder25
1while_while_cond_3719534___redundant_placeholder3
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
�
E__inference_lstm_642_layer_call_and_return_conditional_losses_3716128

inputs(
lstm_cell_612_3716046:	�(
lstm_cell_612_3716048:	d�$
lstm_cell_612_3716050:	�
identity��%lstm_cell_612/StatefulPartitionedCall�while;
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
%lstm_cell_612/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_612_3716046lstm_cell_612_3716048lstm_cell_612_3716050*
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3716045n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_612_3716046lstm_cell_612_3716048lstm_cell_612_3716050*
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
while_body_3716059*
condR
while_cond_3716058*K
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
NoOpNoOp&^lstm_cell_612/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_612/StatefulPartitionedCall%lstm_cell_612/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
*__inference_lstm_644_layer_call_fn_3720389
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3716828o
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3717327

inputs?
,lstm_cell_613_matmul_readvariableop_resource:	d�A
.lstm_cell_613_matmul_1_readvariableop_resource:	2�<
-lstm_cell_613_biasadd_readvariableop_resource:	�
identity��$lstm_cell_613/BiasAdd/ReadVariableOp�#lstm_cell_613/MatMul/ReadVariableOp�%lstm_cell_613/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3717243*
condR
while_cond_3717242*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
*__inference_lstm_644_layer_call_fn_3720400
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3717019o
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
�8
�
while_body_3717774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d�G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_613_biasadd_readvariableop_resource:	���*while/lstm_cell_613/BiasAdd/ReadVariableOp�)while/lstm_cell_613/MatMul/ReadVariableOp�+while/lstm_cell_613/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_214_lstm_644_while_cond_3715887L
Hsequential_214_lstm_644_while_sequential_214_lstm_644_while_loop_counterR
Nsequential_214_lstm_644_while_sequential_214_lstm_644_while_maximum_iterations-
)sequential_214_lstm_644_while_placeholder/
+sequential_214_lstm_644_while_placeholder_1/
+sequential_214_lstm_644_while_placeholder_2/
+sequential_214_lstm_644_while_placeholder_3N
Jsequential_214_lstm_644_while_less_sequential_214_lstm_644_strided_slice_1e
asequential_214_lstm_644_while_sequential_214_lstm_644_while_cond_3715887___redundant_placeholder0e
asequential_214_lstm_644_while_sequential_214_lstm_644_while_cond_3715887___redundant_placeholder1e
asequential_214_lstm_644_while_sequential_214_lstm_644_while_cond_3715887___redundant_placeholder2e
asequential_214_lstm_644_while_sequential_214_lstm_644_while_cond_3715887___redundant_placeholder3*
&sequential_214_lstm_644_while_identity
�
"sequential_214/lstm_644/while/LessLess)sequential_214_lstm_644_while_placeholderJsequential_214_lstm_644_while_less_sequential_214_lstm_644_strided_slice_1*
T0*
_output_shapes
: {
&sequential_214/lstm_644/while/IdentityIdentity&sequential_214/lstm_644/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_214_lstm_644_while_identity/sequential_214/lstm_644/while/Identity:output:0*(
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
while_body_3720910
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(��*while/lstm_cell_614/BiasAdd/ReadVariableOp�)while/lstm_cell_614/MatMul/ReadVariableOp�+while/lstm_cell_614/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3717477

inputs>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity��$lstm_cell_614/BiasAdd/ReadVariableOp�#lstm_cell_614/MatMul/ReadVariableOp�%lstm_cell_614/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3717393*
condR
while_cond_3717392*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3716045

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
0__inference_sequential_214_layer_call_fn_3717527
lstm_642_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_642_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_214_layer_call_and_return_conditional_losses_3717502o
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
_user_specified_namelstm_642_input
�
�
/__inference_lstm_cell_614_layer_call_fn_3721226

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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3716745o
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
�
�
/__inference_lstm_cell_612_layer_call_fn_3721047

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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3716191o
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
�
*__inference_lstm_642_layer_call_fn_3719190

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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3718023s
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
�8
�
while_body_3719392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	�G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_612_biasadd_readvariableop_resource:	���*while/lstm_cell_612/BiasAdd/ReadVariableOp�)while/lstm_cell_612/MatMul/ReadVariableOp�+while/lstm_cell_612/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_643_layer_call_fn_3719773
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3716478|
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
�
�
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3721079

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
while_body_3716600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_613_3716624_0:	d�0
while_lstm_cell_613_3716626_0:	2�,
while_lstm_cell_613_3716628_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_613_3716624:	d�.
while_lstm_cell_613_3716626:	2�*
while_lstm_cell_613_3716628:	���+while/lstm_cell_613/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_613/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_613_3716624_0while_lstm_cell_613_3716626_0while_lstm_cell_613_3716628_0*
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3716541�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_613/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_613/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_613/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_613/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_613_3716624while_lstm_cell_613_3716624_0"<
while_lstm_cell_613_3716626while_lstm_cell_613_3716626_0"<
while_lstm_cell_613_3716628while_lstm_cell_613_3716628_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_613/StatefulPartitionedCall+while/lstm_cell_613/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719476
inputs_0?
,lstm_cell_612_matmul_readvariableop_resource:	�A
.lstm_cell_612_matmul_1_readvariableop_resource:	d�<
-lstm_cell_612_biasadd_readvariableop_resource:	�
identity��$lstm_cell_612/BiasAdd/ReadVariableOp�#lstm_cell_612/MatMul/ReadVariableOp�%lstm_cell_612/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3719392*
condR
while_cond_3719391*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_3719864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3719864___redundant_placeholder05
1while_while_cond_3719864___redundant_placeholder15
1while_while_cond_3719864___redundant_placeholder25
1while_while_cond_3719864___redundant_placeholder3
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
lstm_643_while_cond_3718489.
*lstm_643_while_lstm_643_while_loop_counter4
0lstm_643_while_lstm_643_while_maximum_iterations
lstm_643_while_placeholder 
lstm_643_while_placeholder_1 
lstm_643_while_placeholder_2 
lstm_643_while_placeholder_30
,lstm_643_while_less_lstm_643_strided_slice_1G
Clstm_643_while_lstm_643_while_cond_3718489___redundant_placeholder0G
Clstm_643_while_lstm_643_while_cond_3718489___redundant_placeholder1G
Clstm_643_while_lstm_643_while_cond_3718489___redundant_placeholder2G
Clstm_643_while_lstm_643_while_cond_3718489___redundant_placeholder3
lstm_643_while_identity
�
lstm_643/while/LessLesslstm_643_while_placeholder,lstm_643_while_less_lstm_643_strided_slice_1*
T0*
_output_shapes
: ]
lstm_643/while/IdentityIdentitylstm_643/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_643_while_identity lstm_643/while/Identity:output:0*(
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720851

inputs>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity��$lstm_cell_614/BiasAdd/ReadVariableOp�#lstm_cell_614/MatMul/ReadVariableOp�%lstm_cell_614/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3720767*
condR
while_cond_3720766*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
*sequential_214_lstm_643_while_cond_3715748L
Hsequential_214_lstm_643_while_sequential_214_lstm_643_while_loop_counterR
Nsequential_214_lstm_643_while_sequential_214_lstm_643_while_maximum_iterations-
)sequential_214_lstm_643_while_placeholder/
+sequential_214_lstm_643_while_placeholder_1/
+sequential_214_lstm_643_while_placeholder_2/
+sequential_214_lstm_643_while_placeholder_3N
Jsequential_214_lstm_643_while_less_sequential_214_lstm_643_strided_slice_1e
asequential_214_lstm_643_while_sequential_214_lstm_643_while_cond_3715748___redundant_placeholder0e
asequential_214_lstm_643_while_sequential_214_lstm_643_while_cond_3715748___redundant_placeholder1e
asequential_214_lstm_643_while_sequential_214_lstm_643_while_cond_3715748___redundant_placeholder2e
asequential_214_lstm_643_while_sequential_214_lstm_643_while_cond_3715748___redundant_placeholder3*
&sequential_214_lstm_643_while_identity
�
"sequential_214/lstm_643/while/LessLess)sequential_214_lstm_643_while_placeholderJsequential_214_lstm_643_while_less_sequential_214_lstm_643_strided_slice_1*
T0*
_output_shapes
: {
&sequential_214/lstm_643/while/IdentityIdentity&sequential_214/lstm_643/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_214_lstm_643_while_identity/sequential_214/lstm_643/while/Identity:output:0*(
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720565
inputs_0>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity��$lstm_cell_614/BiasAdd/ReadVariableOp�#lstm_cell_614/MatMul/ReadVariableOp�%lstm_cell_614/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3720481*
condR
while_cond_3720480*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
while_cond_3717938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3717938___redundant_placeholder05
1while_while_cond_3717938___redundant_placeholder15
1while_while_cond_3717938___redundant_placeholder25
1while_while_cond_3717938___redundant_placeholder3
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3721307

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
*__inference_lstm_642_layer_call_fn_3719157
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3716128|
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
while_cond_3720293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3720293___redundant_placeholder05
1while_while_cond_3720293___redundant_placeholder15
1while_while_cond_3720293___redundant_placeholder25
1while_while_cond_3720293___redundant_placeholder3
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
while_cond_3720766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3720766___redundant_placeholder05
1while_while_cond_3720766___redundant_placeholder15
1while_while_cond_3720766___redundant_placeholder25
1while_while_cond_3720766___redundant_placeholder3
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
/__inference_lstm_cell_613_layer_call_fn_3721128

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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3716395o
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
�C
�

lstm_643_while_body_3718490.
*lstm_643_while_lstm_643_while_loop_counter4
0lstm_643_while_lstm_643_while_maximum_iterations
lstm_643_while_placeholder 
lstm_643_while_placeholder_1 
lstm_643_while_placeholder_2 
lstm_643_while_placeholder_3-
)lstm_643_while_lstm_643_strided_slice_1_0i
elstm_643_while_tensorarrayv2read_tensorlistgetitem_lstm_643_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_643_while_lstm_cell_613_matmul_readvariableop_resource_0:	d�R
?lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2�M
>lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource_0:	�
lstm_643_while_identity
lstm_643_while_identity_1
lstm_643_while_identity_2
lstm_643_while_identity_3
lstm_643_while_identity_4
lstm_643_while_identity_5+
'lstm_643_while_lstm_643_strided_slice_1g
clstm_643_while_tensorarrayv2read_tensorlistgetitem_lstm_643_tensorarrayunstack_tensorlistfromtensorN
;lstm_643_while_lstm_cell_613_matmul_readvariableop_resource:	d�P
=lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource:	2�K
<lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource:	���3lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp�2lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp�4lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp�
@lstm_643/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_643/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_643_while_tensorarrayv2read_tensorlistgetitem_lstm_643_tensorarrayunstack_tensorlistfromtensor_0lstm_643_while_placeholderIlstm_643/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_643/while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp=lstm_643_while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_643/while/lstm_cell_613/MatMulMatMul9lstm_643/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp?lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_643/while/lstm_cell_613/MatMul_1MatMullstm_643_while_placeholder_2<lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_643/while/lstm_cell_613/addAddV2-lstm_643/while/lstm_cell_613/MatMul:product:0/lstm_643/while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp>lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_643/while/lstm_cell_613/BiasAddBiasAdd$lstm_643/while/lstm_cell_613/add:z:0;lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_643/while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_643/while/lstm_cell_613/splitSplit5lstm_643/while/lstm_cell_613/split/split_dim:output:0-lstm_643/while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_643/while/lstm_cell_613/SigmoidSigmoid+lstm_643/while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_643/while/lstm_cell_613/Sigmoid_1Sigmoid+lstm_643/while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_643/while/lstm_cell_613/mulMul*lstm_643/while/lstm_cell_613/Sigmoid_1:y:0lstm_643_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_643/while/lstm_cell_613/ReluRelu+lstm_643/while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_643/while/lstm_cell_613/mul_1Mul(lstm_643/while/lstm_cell_613/Sigmoid:y:0/lstm_643/while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_643/while/lstm_cell_613/add_1AddV2$lstm_643/while/lstm_cell_613/mul:z:0&lstm_643/while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_643/while/lstm_cell_613/Sigmoid_2Sigmoid+lstm_643/while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_643/while/lstm_cell_613/Relu_1Relu&lstm_643/while/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_643/while/lstm_cell_613/mul_2Mul*lstm_643/while/lstm_cell_613/Sigmoid_2:y:01lstm_643/while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_643/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_643_while_placeholder_1lstm_643_while_placeholder&lstm_643/while/lstm_cell_613/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_643/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_643/while/addAddV2lstm_643_while_placeholderlstm_643/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_643/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_643/while/add_1AddV2*lstm_643_while_lstm_643_while_loop_counterlstm_643/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_643/while/IdentityIdentitylstm_643/while/add_1:z:0^lstm_643/while/NoOp*
T0*
_output_shapes
: �
lstm_643/while/Identity_1Identity0lstm_643_while_lstm_643_while_maximum_iterations^lstm_643/while/NoOp*
T0*
_output_shapes
: t
lstm_643/while/Identity_2Identitylstm_643/while/add:z:0^lstm_643/while/NoOp*
T0*
_output_shapes
: �
lstm_643/while/Identity_3IdentityClstm_643/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_643/while/NoOp*
T0*
_output_shapes
: �
lstm_643/while/Identity_4Identity&lstm_643/while/lstm_cell_613/mul_2:z:0^lstm_643/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_643/while/Identity_5Identity&lstm_643/while/lstm_cell_613/add_1:z:0^lstm_643/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_643/while/NoOpNoOp4^lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp3^lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp5^lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_643_while_identity lstm_643/while/Identity:output:0"?
lstm_643_while_identity_1"lstm_643/while/Identity_1:output:0"?
lstm_643_while_identity_2"lstm_643/while/Identity_2:output:0"?
lstm_643_while_identity_3"lstm_643/while/Identity_3:output:0"?
lstm_643_while_identity_4"lstm_643/while/Identity_4:output:0"?
lstm_643_while_identity_5"lstm_643/while/Identity_5:output:0"T
'lstm_643_while_lstm_643_strided_slice_1)lstm_643_while_lstm_643_strided_slice_1_0"~
<lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource>lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource_0"�
=lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource?lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource_0"|
;lstm_643_while_lstm_cell_613_matmul_readvariableop_resource=lstm_643_while_lstm_cell_613_matmul_readvariableop_resource_0"�
clstm_643_while_tensorarrayv2read_tensorlistgetitem_lstm_643_tensorarrayunstack_tensorlistfromtensorelstm_643_while_tensorarrayv2read_tensorlistgetitem_lstm_643_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp3lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp2h
2lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp2lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp2l
4lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp4lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3720151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d�G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_613_biasadd_readvariableop_resource:	���*while/lstm_cell_613/BiasAdd/ReadVariableOp�)while/lstm_cell_613/MatMul/ReadVariableOp�+while/lstm_cell_613/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3719248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3719248___redundant_placeholder05
1while_while_cond_3719248___redundant_placeholder15
1while_while_cond_3719248___redundant_placeholder25
1while_while_cond_3719248___redundant_placeholder3
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719333
inputs_0?
,lstm_cell_612_matmul_readvariableop_resource:	�A
.lstm_cell_612_matmul_1_readvariableop_resource:	d�<
-lstm_cell_612_biasadd_readvariableop_resource:	�
identity��$lstm_cell_612/BiasAdd/ReadVariableOp�#lstm_cell_612/MatMul/ReadVariableOp�%lstm_cell_612/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3719249*
condR
while_cond_3719248*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�J
�
E__inference_lstm_643_layer_call_and_return_conditional_losses_3717858

inputs?
,lstm_cell_613_matmul_readvariableop_resource:	d�A
.lstm_cell_613_matmul_1_readvariableop_resource:	2�<
-lstm_cell_613_biasadd_readvariableop_resource:	�
identity��$lstm_cell_613/BiasAdd/ReadVariableOp�#lstm_cell_613/MatMul/ReadVariableOp�%lstm_cell_613/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3717774*
condR
while_cond_3717773*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
while_body_3719678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	�G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_612_biasadd_readvariableop_resource:	���*while/lstm_cell_612/BiasAdd/ReadVariableOp�)while/lstm_cell_612/MatMul/ReadVariableOp�+while/lstm_cell_612/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3716191

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
�K
�
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720708
inputs_0>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity��$lstm_cell_614/BiasAdd/ReadVariableOp�#lstm_cell_614/MatMul/ReadVariableOp�%lstm_cell_614/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3720624*
condR
while_cond_3720623*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
��
�
#__inference__traced_restore_3721580
file_prefix3
!assignvariableop_dense_214_kernel:
/
!assignvariableop_1_dense_214_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_642_lstm_cell_642_kernel:	�M
:assignvariableop_8_lstm_642_lstm_cell_642_recurrent_kernel:	d�=
.assignvariableop_9_lstm_642_lstm_cell_642_bias:	�D
1assignvariableop_10_lstm_643_lstm_cell_643_kernel:	d�N
;assignvariableop_11_lstm_643_lstm_cell_643_recurrent_kernel:	2�>
/assignvariableop_12_lstm_643_lstm_cell_643_bias:	�C
1assignvariableop_13_lstm_644_lstm_cell_644_kernel:2(M
;assignvariableop_14_lstm_644_lstm_cell_644_recurrent_kernel:
(=
/assignvariableop_15_lstm_644_lstm_cell_644_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_214_kernel_m:
7
)assignvariableop_19_adam_dense_214_bias_m:K
8assignvariableop_20_adam_lstm_642_lstm_cell_642_kernel_m:	�U
Bassignvariableop_21_adam_lstm_642_lstm_cell_642_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_642_lstm_cell_642_bias_m:	�K
8assignvariableop_23_adam_lstm_643_lstm_cell_643_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_643_lstm_cell_643_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_643_lstm_cell_643_bias_m:	�J
8assignvariableop_26_adam_lstm_644_lstm_cell_644_kernel_m:2(T
Bassignvariableop_27_adam_lstm_644_lstm_cell_644_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_644_lstm_cell_644_bias_m:(=
+assignvariableop_29_adam_dense_214_kernel_v:
7
)assignvariableop_30_adam_dense_214_bias_v:K
8assignvariableop_31_adam_lstm_642_lstm_cell_642_kernel_v:	�U
Bassignvariableop_32_adam_lstm_642_lstm_cell_642_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_642_lstm_cell_642_bias_v:	�K
8assignvariableop_34_adam_lstm_643_lstm_cell_643_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_643_lstm_cell_643_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_643_lstm_cell_643_bias_v:	�J
8assignvariableop_37_adam_lstm_644_lstm_cell_644_kernel_v:2(T
Bassignvariableop_38_adam_lstm_644_lstm_cell_644_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_644_lstm_cell_644_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_214_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_214_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_642_lstm_cell_642_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_642_lstm_cell_642_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_642_lstm_cell_642_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_643_lstm_cell_643_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_643_lstm_cell_643_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_643_lstm_cell_643_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_644_lstm_cell_644_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_644_lstm_cell_644_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_644_lstm_cell_644_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_214_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_214_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_642_lstm_cell_642_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_642_lstm_cell_642_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_642_lstm_cell_642_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_643_lstm_cell_643_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_643_lstm_cell_643_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_643_lstm_cell_643_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_644_lstm_cell_644_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_644_lstm_cell_644_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_644_lstm_cell_644_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_214_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_214_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_642_lstm_cell_642_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_642_lstm_cell_642_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_642_lstm_cell_642_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_643_lstm_cell_643_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_643_lstm_cell_643_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_643_lstm_cell_643_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_644_lstm_cell_644_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_644_lstm_cell_644_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_644_lstm_cell_644_bias_vIdentity_39:output:0"/device:CPU:0*
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
�
�
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3716745

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
�
�
+__inference_dense_214_layer_call_fn_3721003

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
F__inference_dense_214_layer_call_and_return_conditional_losses_3717495o
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
�
�
*__inference_lstm_644_layer_call_fn_3720411

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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3717477o
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

�
0__inference_sequential_214_layer_call_fn_3718265

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
K__inference_sequential_214_layer_call_and_return_conditional_losses_3717502o
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
*__inference_lstm_644_layer_call_fn_3720422

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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3717693o
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3716541

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
*__inference_lstm_643_layer_call_fn_3719795

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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3717327s
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
�W
�
 __inference__traced_save_3721450
file_prefix/
+savev2_dense_214_kernel_read_readvariableop-
)savev2_dense_214_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_642_lstm_cell_642_kernel_read_readvariableopF
Bsavev2_lstm_642_lstm_cell_642_recurrent_kernel_read_readvariableop:
6savev2_lstm_642_lstm_cell_642_bias_read_readvariableop<
8savev2_lstm_643_lstm_cell_643_kernel_read_readvariableopF
Bsavev2_lstm_643_lstm_cell_643_recurrent_kernel_read_readvariableop:
6savev2_lstm_643_lstm_cell_643_bias_read_readvariableop<
8savev2_lstm_644_lstm_cell_644_kernel_read_readvariableopF
Bsavev2_lstm_644_lstm_cell_644_recurrent_kernel_read_readvariableop:
6savev2_lstm_644_lstm_cell_644_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_214_kernel_m_read_readvariableop4
0savev2_adam_dense_214_bias_m_read_readvariableopC
?savev2_adam_lstm_642_lstm_cell_642_kernel_m_read_readvariableopM
Isavev2_adam_lstm_642_lstm_cell_642_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_642_lstm_cell_642_bias_m_read_readvariableopC
?savev2_adam_lstm_643_lstm_cell_643_kernel_m_read_readvariableopM
Isavev2_adam_lstm_643_lstm_cell_643_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_643_lstm_cell_643_bias_m_read_readvariableopC
?savev2_adam_lstm_644_lstm_cell_644_kernel_m_read_readvariableopM
Isavev2_adam_lstm_644_lstm_cell_644_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_644_lstm_cell_644_bias_m_read_readvariableop6
2savev2_adam_dense_214_kernel_v_read_readvariableop4
0savev2_adam_dense_214_bias_v_read_readvariableopC
?savev2_adam_lstm_642_lstm_cell_642_kernel_v_read_readvariableopM
Isavev2_adam_lstm_642_lstm_cell_642_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_642_lstm_cell_642_bias_v_read_readvariableopC
?savev2_adam_lstm_643_lstm_cell_643_kernel_v_read_readvariableopM
Isavev2_adam_lstm_643_lstm_cell_643_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_643_lstm_cell_643_bias_v_read_readvariableopC
?savev2_adam_lstm_644_lstm_cell_644_kernel_v_read_readvariableopM
Isavev2_adam_lstm_644_lstm_cell_644_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_644_lstm_cell_644_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_214_kernel_read_readvariableop)savev2_dense_214_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_642_lstm_cell_642_kernel_read_readvariableopBsavev2_lstm_642_lstm_cell_642_recurrent_kernel_read_readvariableop6savev2_lstm_642_lstm_cell_642_bias_read_readvariableop8savev2_lstm_643_lstm_cell_643_kernel_read_readvariableopBsavev2_lstm_643_lstm_cell_643_recurrent_kernel_read_readvariableop6savev2_lstm_643_lstm_cell_643_bias_read_readvariableop8savev2_lstm_644_lstm_cell_644_kernel_read_readvariableopBsavev2_lstm_644_lstm_cell_644_recurrent_kernel_read_readvariableop6savev2_lstm_644_lstm_cell_644_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_214_kernel_m_read_readvariableop0savev2_adam_dense_214_bias_m_read_readvariableop?savev2_adam_lstm_642_lstm_cell_642_kernel_m_read_readvariableopIsavev2_adam_lstm_642_lstm_cell_642_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_642_lstm_cell_642_bias_m_read_readvariableop?savev2_adam_lstm_643_lstm_cell_643_kernel_m_read_readvariableopIsavev2_adam_lstm_643_lstm_cell_643_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_643_lstm_cell_643_bias_m_read_readvariableop?savev2_adam_lstm_644_lstm_cell_644_kernel_m_read_readvariableopIsavev2_adam_lstm_644_lstm_cell_644_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_644_lstm_cell_644_bias_m_read_readvariableop2savev2_adam_dense_214_kernel_v_read_readvariableop0savev2_adam_dense_214_bias_v_read_readvariableop?savev2_adam_lstm_642_lstm_cell_642_kernel_v_read_readvariableopIsavev2_adam_lstm_642_lstm_cell_642_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_642_lstm_cell_642_bias_v_read_readvariableop?savev2_adam_lstm_643_lstm_cell_643_kernel_v_read_readvariableopIsavev2_adam_lstm_643_lstm_cell_643_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_643_lstm_cell_643_bias_v_read_readvariableop?savev2_adam_lstm_644_lstm_cell_644_kernel_v_read_readvariableopIsavev2_adam_lstm_644_lstm_cell_644_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_644_lstm_cell_644_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

�
0__inference_sequential_214_layer_call_fn_3718292

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
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718091o
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
�
�
while_cond_3720007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3720007___redundant_placeholder05
1while_while_cond_3720007___redundant_placeholder15
1while_while_cond_3720007___redundant_placeholder25
1while_while_cond_3720007___redundant_placeholder3
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

lstm_644_while_body_3719056.
*lstm_644_while_lstm_644_while_loop_counter4
0lstm_644_while_lstm_644_while_maximum_iterations
lstm_644_while_placeholder 
lstm_644_while_placeholder_1 
lstm_644_while_placeholder_2 
lstm_644_while_placeholder_3-
)lstm_644_while_lstm_644_strided_slice_1_0i
elstm_644_while_tensorarrayv2read_tensorlistgetitem_lstm_644_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_644_while_lstm_cell_614_matmul_readvariableop_resource_0:2(Q
?lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(L
>lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource_0:(
lstm_644_while_identity
lstm_644_while_identity_1
lstm_644_while_identity_2
lstm_644_while_identity_3
lstm_644_while_identity_4
lstm_644_while_identity_5+
'lstm_644_while_lstm_644_strided_slice_1g
clstm_644_while_tensorarrayv2read_tensorlistgetitem_lstm_644_tensorarrayunstack_tensorlistfromtensorM
;lstm_644_while_lstm_cell_614_matmul_readvariableop_resource:2(O
=lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource:
(J
<lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource:(��3lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp�2lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp�4lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp�
@lstm_644/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_644/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_644_while_tensorarrayv2read_tensorlistgetitem_lstm_644_tensorarrayunstack_tensorlistfromtensor_0lstm_644_while_placeholderIlstm_644/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_644/while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp=lstm_644_while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_644/while/lstm_cell_614/MatMulMatMul9lstm_644/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp?lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_644/while/lstm_cell_614/MatMul_1MatMullstm_644_while_placeholder_2<lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_644/while/lstm_cell_614/addAddV2-lstm_644/while/lstm_cell_614/MatMul:product:0/lstm_644/while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp>lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_644/while/lstm_cell_614/BiasAddBiasAdd$lstm_644/while/lstm_cell_614/add:z:0;lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_644/while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_644/while/lstm_cell_614/splitSplit5lstm_644/while/lstm_cell_614/split/split_dim:output:0-lstm_644/while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_644/while/lstm_cell_614/SigmoidSigmoid+lstm_644/while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_644/while/lstm_cell_614/Sigmoid_1Sigmoid+lstm_644/while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_644/while/lstm_cell_614/mulMul*lstm_644/while/lstm_cell_614/Sigmoid_1:y:0lstm_644_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_644/while/lstm_cell_614/ReluRelu+lstm_644/while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_644/while/lstm_cell_614/mul_1Mul(lstm_644/while/lstm_cell_614/Sigmoid:y:0/lstm_644/while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_644/while/lstm_cell_614/add_1AddV2$lstm_644/while/lstm_cell_614/mul:z:0&lstm_644/while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_644/while/lstm_cell_614/Sigmoid_2Sigmoid+lstm_644/while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_644/while/lstm_cell_614/Relu_1Relu&lstm_644/while/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_644/while/lstm_cell_614/mul_2Mul*lstm_644/while/lstm_cell_614/Sigmoid_2:y:01lstm_644/while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_644/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_644_while_placeholder_1lstm_644_while_placeholder&lstm_644/while/lstm_cell_614/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_644/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_644/while/addAddV2lstm_644_while_placeholderlstm_644/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_644/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_644/while/add_1AddV2*lstm_644_while_lstm_644_while_loop_counterlstm_644/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_644/while/IdentityIdentitylstm_644/while/add_1:z:0^lstm_644/while/NoOp*
T0*
_output_shapes
: �
lstm_644/while/Identity_1Identity0lstm_644_while_lstm_644_while_maximum_iterations^lstm_644/while/NoOp*
T0*
_output_shapes
: t
lstm_644/while/Identity_2Identitylstm_644/while/add:z:0^lstm_644/while/NoOp*
T0*
_output_shapes
: �
lstm_644/while/Identity_3IdentityClstm_644/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_644/while/NoOp*
T0*
_output_shapes
: �
lstm_644/while/Identity_4Identity&lstm_644/while/lstm_cell_614/mul_2:z:0^lstm_644/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_644/while/Identity_5Identity&lstm_644/while/lstm_cell_614/add_1:z:0^lstm_644/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_644/while/NoOpNoOp4^lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp3^lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp5^lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_644_while_identity lstm_644/while/Identity:output:0"?
lstm_644_while_identity_1"lstm_644/while/Identity_1:output:0"?
lstm_644_while_identity_2"lstm_644/while/Identity_2:output:0"?
lstm_644_while_identity_3"lstm_644/while/Identity_3:output:0"?
lstm_644_while_identity_4"lstm_644/while/Identity_4:output:0"?
lstm_644_while_identity_5"lstm_644/while/Identity_5:output:0"T
'lstm_644_while_lstm_644_strided_slice_1)lstm_644_while_lstm_644_strided_slice_1_0"~
<lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource>lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource_0"�
=lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource?lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource_0"|
;lstm_644_while_lstm_cell_614_matmul_readvariableop_resource=lstm_644_while_lstm_cell_614_matmul_readvariableop_resource_0"�
clstm_644_while_tensorarrayv2read_tensorlistgetitem_lstm_644_tensorarrayunstack_tensorlistfromtensorelstm_644_while_tensorarrayv2read_tensorlistgetitem_lstm_644_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp3lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp2h
2lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp2lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp2l
4lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp4lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3716758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3716758___redundant_placeholder05
1while_while_cond_3716758___redundant_placeholder15
1while_while_cond_3716758___redundant_placeholder25
1while_while_cond_3716758___redundant_placeholder3
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
while_body_3717243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d�G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_613_biasadd_readvariableop_resource:	���*while/lstm_cell_613/BiasAdd/ReadVariableOp�)while/lstm_cell_613/MatMul/ReadVariableOp�+while/lstm_cell_613/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3720624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(��*while/lstm_cell_614/BiasAdd/ReadVariableOp�)while/lstm_cell_614/MatMul/ReadVariableOp�+while/lstm_cell_614/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3716395

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

�
%__inference_signature_wrapper_3718238
lstm_642_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_642_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3715978o
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
_user_specified_namelstm_642_input
�8
�
E__inference_lstm_642_layer_call_and_return_conditional_losses_3716319

inputs(
lstm_cell_612_3716237:	�(
lstm_cell_612_3716239:	d�$
lstm_cell_612_3716241:	�
identity��%lstm_cell_612/StatefulPartitionedCall�while;
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
%lstm_cell_612/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_612_3716237lstm_cell_612_3716239lstm_cell_612_3716241*
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3716191n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_612_3716237lstm_cell_612_3716239lstm_cell_612_3716241*
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
while_body_3716250*
condR
while_cond_3716249*K
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
NoOpNoOp&^lstm_cell_612/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_612/StatefulPartitionedCall%lstm_cell_612/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_3719677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3719677___redundant_placeholder05
1while_while_cond_3719677___redundant_placeholder15
1while_while_cond_3719677___redundant_placeholder25
1while_while_cond_3719677___redundant_placeholder3
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3721209

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
�C
�

lstm_643_while_body_3718917.
*lstm_643_while_lstm_643_while_loop_counter4
0lstm_643_while_lstm_643_while_maximum_iterations
lstm_643_while_placeholder 
lstm_643_while_placeholder_1 
lstm_643_while_placeholder_2 
lstm_643_while_placeholder_3-
)lstm_643_while_lstm_643_strided_slice_1_0i
elstm_643_while_tensorarrayv2read_tensorlistgetitem_lstm_643_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_643_while_lstm_cell_613_matmul_readvariableop_resource_0:	d�R
?lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2�M
>lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource_0:	�
lstm_643_while_identity
lstm_643_while_identity_1
lstm_643_while_identity_2
lstm_643_while_identity_3
lstm_643_while_identity_4
lstm_643_while_identity_5+
'lstm_643_while_lstm_643_strided_slice_1g
clstm_643_while_tensorarrayv2read_tensorlistgetitem_lstm_643_tensorarrayunstack_tensorlistfromtensorN
;lstm_643_while_lstm_cell_613_matmul_readvariableop_resource:	d�P
=lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource:	2�K
<lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource:	���3lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp�2lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp�4lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp�
@lstm_643/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_643/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_643_while_tensorarrayv2read_tensorlistgetitem_lstm_643_tensorarrayunstack_tensorlistfromtensor_0lstm_643_while_placeholderIlstm_643/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_643/while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp=lstm_643_while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_643/while/lstm_cell_613/MatMulMatMul9lstm_643/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp?lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_643/while/lstm_cell_613/MatMul_1MatMullstm_643_while_placeholder_2<lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_643/while/lstm_cell_613/addAddV2-lstm_643/while/lstm_cell_613/MatMul:product:0/lstm_643/while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp>lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_643/while/lstm_cell_613/BiasAddBiasAdd$lstm_643/while/lstm_cell_613/add:z:0;lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_643/while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_643/while/lstm_cell_613/splitSplit5lstm_643/while/lstm_cell_613/split/split_dim:output:0-lstm_643/while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_643/while/lstm_cell_613/SigmoidSigmoid+lstm_643/while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_643/while/lstm_cell_613/Sigmoid_1Sigmoid+lstm_643/while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_643/while/lstm_cell_613/mulMul*lstm_643/while/lstm_cell_613/Sigmoid_1:y:0lstm_643_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_643/while/lstm_cell_613/ReluRelu+lstm_643/while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_643/while/lstm_cell_613/mul_1Mul(lstm_643/while/lstm_cell_613/Sigmoid:y:0/lstm_643/while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_643/while/lstm_cell_613/add_1AddV2$lstm_643/while/lstm_cell_613/mul:z:0&lstm_643/while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_643/while/lstm_cell_613/Sigmoid_2Sigmoid+lstm_643/while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_643/while/lstm_cell_613/Relu_1Relu&lstm_643/while/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_643/while/lstm_cell_613/mul_2Mul*lstm_643/while/lstm_cell_613/Sigmoid_2:y:01lstm_643/while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_643/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_643_while_placeholder_1lstm_643_while_placeholder&lstm_643/while/lstm_cell_613/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_643/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_643/while/addAddV2lstm_643_while_placeholderlstm_643/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_643/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_643/while/add_1AddV2*lstm_643_while_lstm_643_while_loop_counterlstm_643/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_643/while/IdentityIdentitylstm_643/while/add_1:z:0^lstm_643/while/NoOp*
T0*
_output_shapes
: �
lstm_643/while/Identity_1Identity0lstm_643_while_lstm_643_while_maximum_iterations^lstm_643/while/NoOp*
T0*
_output_shapes
: t
lstm_643/while/Identity_2Identitylstm_643/while/add:z:0^lstm_643/while/NoOp*
T0*
_output_shapes
: �
lstm_643/while/Identity_3IdentityClstm_643/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_643/while/NoOp*
T0*
_output_shapes
: �
lstm_643/while/Identity_4Identity&lstm_643/while/lstm_cell_613/mul_2:z:0^lstm_643/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_643/while/Identity_5Identity&lstm_643/while/lstm_cell_613/add_1:z:0^lstm_643/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_643/while/NoOpNoOp4^lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp3^lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp5^lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_643_while_identity lstm_643/while/Identity:output:0"?
lstm_643_while_identity_1"lstm_643/while/Identity_1:output:0"?
lstm_643_while_identity_2"lstm_643/while/Identity_2:output:0"?
lstm_643_while_identity_3"lstm_643/while/Identity_3:output:0"?
lstm_643_while_identity_4"lstm_643/while/Identity_4:output:0"?
lstm_643_while_identity_5"lstm_643/while/Identity_5:output:0"T
'lstm_643_while_lstm_643_strided_slice_1)lstm_643_while_lstm_643_strided_slice_1_0"~
<lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource>lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource_0"�
=lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource?lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource_0"|
;lstm_643_while_lstm_cell_613_matmul_readvariableop_resource=lstm_643_while_lstm_cell_613_matmul_readvariableop_resource_0"�
clstm_643_while_tensorarrayv2read_tensorlistgetitem_lstm_643_tensorarrayunstack_tensorlistfromtensorelstm_643_while_tensorarrayv2read_tensorlistgetitem_lstm_643_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp3lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp2h
2lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp2lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp2l
4lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp4lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3717393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(��*while/lstm_cell_614/BiasAdd/ReadVariableOp�)while/lstm_cell_614/MatMul/ReadVariableOp�+while/lstm_cell_614/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3717609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(��*while/lstm_cell_614/BiasAdd/ReadVariableOp�)while/lstm_cell_614/MatMul/ReadVariableOp�+while/lstm_cell_614/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3719535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	�G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_612_biasadd_readvariableop_resource:	���*while/lstm_cell_612/BiasAdd/ReadVariableOp�)while/lstm_cell_612/MatMul/ReadVariableOp�+while/lstm_cell_612/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3719391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3719391___redundant_placeholder05
1while_while_cond_3719391___redundant_placeholder15
1while_while_cond_3719391___redundant_placeholder25
1while_while_cond_3719391___redundant_placeholder3
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3721275

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
�8
�
while_body_3717939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	�G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_612_biasadd_readvariableop_resource:	���*while/lstm_cell_612/BiasAdd/ReadVariableOp�)while/lstm_cell_612/MatMul/ReadVariableOp�+while/lstm_cell_612/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3716409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_613_3716433_0:	d�0
while_lstm_cell_613_3716435_0:	2�,
while_lstm_cell_613_3716437_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_613_3716433:	d�.
while_lstm_cell_613_3716435:	2�*
while_lstm_cell_613_3716437:	���+while/lstm_cell_613/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_613/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_613_3716433_0while_lstm_cell_613_3716435_0while_lstm_cell_613_3716437_0*
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3716395�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_613/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_613/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_613/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_613/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_613_3716433while_lstm_cell_613_3716433_0"<
while_lstm_cell_613_3716435while_lstm_cell_613_3716435_0"<
while_lstm_cell_613_3716437while_lstm_cell_613_3716437_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_613/StatefulPartitionedCall+while/lstm_cell_613/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3716891

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
�
/__inference_lstm_cell_612_layer_call_fn_3721030

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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3716045o
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
while_cond_3717773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3717773___redundant_placeholder05
1while_while_cond_3717773___redundant_placeholder15
1while_while_cond_3717773___redundant_placeholder25
1while_while_cond_3717773___redundant_placeholder3
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
while_body_3717093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	�G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_612_biasadd_readvariableop_resource:	���*while/lstm_cell_612/BiasAdd/ReadVariableOp�)while/lstm_cell_612/MatMul/ReadVariableOp�+while/lstm_cell_612/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_643_while_cond_3718916.
*lstm_643_while_lstm_643_while_loop_counter4
0lstm_643_while_lstm_643_while_maximum_iterations
lstm_643_while_placeholder 
lstm_643_while_placeholder_1 
lstm_643_while_placeholder_2 
lstm_643_while_placeholder_30
,lstm_643_while_less_lstm_643_strided_slice_1G
Clstm_643_while_lstm_643_while_cond_3718916___redundant_placeholder0G
Clstm_643_while_lstm_643_while_cond_3718916___redundant_placeholder1G
Clstm_643_while_lstm_643_while_cond_3718916___redundant_placeholder2G
Clstm_643_while_lstm_643_while_cond_3718916___redundant_placeholder3
lstm_643_while_identity
�
lstm_643/while/LessLesslstm_643_while_placeholder,lstm_643_while_less_lstm_643_strided_slice_1*
T0*
_output_shapes
: ]
lstm_643/while/IdentityIdentitylstm_643/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_643_while_identity lstm_643/while/Identity:output:0*(
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
lstm_642_while_cond_3718777.
*lstm_642_while_lstm_642_while_loop_counter4
0lstm_642_while_lstm_642_while_maximum_iterations
lstm_642_while_placeholder 
lstm_642_while_placeholder_1 
lstm_642_while_placeholder_2 
lstm_642_while_placeholder_30
,lstm_642_while_less_lstm_642_strided_slice_1G
Clstm_642_while_lstm_642_while_cond_3718777___redundant_placeholder0G
Clstm_642_while_lstm_642_while_cond_3718777___redundant_placeholder1G
Clstm_642_while_lstm_642_while_cond_3718777___redundant_placeholder2G
Clstm_642_while_lstm_642_while_cond_3718777___redundant_placeholder3
lstm_642_while_identity
�
lstm_642/while/LessLesslstm_642_while_placeholder,lstm_642_while_less_lstm_642_strided_slice_1*
T0*
_output_shapes
: ]
lstm_642/while/IdentityIdentitylstm_642/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_642_while_identity lstm_642/while/Identity:output:0*(
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
while_cond_3717608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3717608___redundant_placeholder05
1while_while_cond_3717608___redundant_placeholder15
1while_while_cond_3717608___redundant_placeholder25
1while_while_cond_3717608___redundant_placeholder3
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

lstm_642_while_body_3718351.
*lstm_642_while_lstm_642_while_loop_counter4
0lstm_642_while_lstm_642_while_maximum_iterations
lstm_642_while_placeholder 
lstm_642_while_placeholder_1 
lstm_642_while_placeholder_2 
lstm_642_while_placeholder_3-
)lstm_642_while_lstm_642_strided_slice_1_0i
elstm_642_while_tensorarrayv2read_tensorlistgetitem_lstm_642_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_642_while_lstm_cell_612_matmul_readvariableop_resource_0:	�R
?lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d�M
>lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource_0:	�
lstm_642_while_identity
lstm_642_while_identity_1
lstm_642_while_identity_2
lstm_642_while_identity_3
lstm_642_while_identity_4
lstm_642_while_identity_5+
'lstm_642_while_lstm_642_strided_slice_1g
clstm_642_while_tensorarrayv2read_tensorlistgetitem_lstm_642_tensorarrayunstack_tensorlistfromtensorN
;lstm_642_while_lstm_cell_612_matmul_readvariableop_resource:	�P
=lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource:	d�K
<lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource:	���3lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp�2lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp�4lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp�
@lstm_642/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_642/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_642_while_tensorarrayv2read_tensorlistgetitem_lstm_642_tensorarrayunstack_tensorlistfromtensor_0lstm_642_while_placeholderIlstm_642/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_642/while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp=lstm_642_while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_642/while/lstm_cell_612/MatMulMatMul9lstm_642/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp?lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_642/while/lstm_cell_612/MatMul_1MatMullstm_642_while_placeholder_2<lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_642/while/lstm_cell_612/addAddV2-lstm_642/while/lstm_cell_612/MatMul:product:0/lstm_642/while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp>lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_642/while/lstm_cell_612/BiasAddBiasAdd$lstm_642/while/lstm_cell_612/add:z:0;lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_642/while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_642/while/lstm_cell_612/splitSplit5lstm_642/while/lstm_cell_612/split/split_dim:output:0-lstm_642/while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_642/while/lstm_cell_612/SigmoidSigmoid+lstm_642/while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_642/while/lstm_cell_612/Sigmoid_1Sigmoid+lstm_642/while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_642/while/lstm_cell_612/mulMul*lstm_642/while/lstm_cell_612/Sigmoid_1:y:0lstm_642_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_642/while/lstm_cell_612/ReluRelu+lstm_642/while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_642/while/lstm_cell_612/mul_1Mul(lstm_642/while/lstm_cell_612/Sigmoid:y:0/lstm_642/while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_642/while/lstm_cell_612/add_1AddV2$lstm_642/while/lstm_cell_612/mul:z:0&lstm_642/while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_642/while/lstm_cell_612/Sigmoid_2Sigmoid+lstm_642/while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_642/while/lstm_cell_612/Relu_1Relu&lstm_642/while/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_642/while/lstm_cell_612/mul_2Mul*lstm_642/while/lstm_cell_612/Sigmoid_2:y:01lstm_642/while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_642/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_642_while_placeholder_1lstm_642_while_placeholder&lstm_642/while/lstm_cell_612/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_642/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_642/while/addAddV2lstm_642_while_placeholderlstm_642/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_642/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_642/while/add_1AddV2*lstm_642_while_lstm_642_while_loop_counterlstm_642/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_642/while/IdentityIdentitylstm_642/while/add_1:z:0^lstm_642/while/NoOp*
T0*
_output_shapes
: �
lstm_642/while/Identity_1Identity0lstm_642_while_lstm_642_while_maximum_iterations^lstm_642/while/NoOp*
T0*
_output_shapes
: t
lstm_642/while/Identity_2Identitylstm_642/while/add:z:0^lstm_642/while/NoOp*
T0*
_output_shapes
: �
lstm_642/while/Identity_3IdentityClstm_642/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_642/while/NoOp*
T0*
_output_shapes
: �
lstm_642/while/Identity_4Identity&lstm_642/while/lstm_cell_612/mul_2:z:0^lstm_642/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_642/while/Identity_5Identity&lstm_642/while/lstm_cell_612/add_1:z:0^lstm_642/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_642/while/NoOpNoOp4^lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp3^lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp5^lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_642_while_identity lstm_642/while/Identity:output:0"?
lstm_642_while_identity_1"lstm_642/while/Identity_1:output:0"?
lstm_642_while_identity_2"lstm_642/while/Identity_2:output:0"?
lstm_642_while_identity_3"lstm_642/while/Identity_3:output:0"?
lstm_642_while_identity_4"lstm_642/while/Identity_4:output:0"?
lstm_642_while_identity_5"lstm_642/while/Identity_5:output:0"T
'lstm_642_while_lstm_642_strided_slice_1)lstm_642_while_lstm_642_strided_slice_1_0"~
<lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource>lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource_0"�
=lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource?lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource_0"|
;lstm_642_while_lstm_cell_612_matmul_readvariableop_resource=lstm_642_while_lstm_cell_612_matmul_readvariableop_resource_0"�
clstm_642_while_tensorarrayv2read_tensorlistgetitem_lstm_642_tensorarrayunstack_tensorlistfromtensorelstm_642_while_tensorarrayv2read_tensorlistgetitem_lstm_642_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp3lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp2h
2lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp2lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp2l
4lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp4lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_642_while_body_3718778.
*lstm_642_while_lstm_642_while_loop_counter4
0lstm_642_while_lstm_642_while_maximum_iterations
lstm_642_while_placeholder 
lstm_642_while_placeholder_1 
lstm_642_while_placeholder_2 
lstm_642_while_placeholder_3-
)lstm_642_while_lstm_642_strided_slice_1_0i
elstm_642_while_tensorarrayv2read_tensorlistgetitem_lstm_642_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_642_while_lstm_cell_612_matmul_readvariableop_resource_0:	�R
?lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d�M
>lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource_0:	�
lstm_642_while_identity
lstm_642_while_identity_1
lstm_642_while_identity_2
lstm_642_while_identity_3
lstm_642_while_identity_4
lstm_642_while_identity_5+
'lstm_642_while_lstm_642_strided_slice_1g
clstm_642_while_tensorarrayv2read_tensorlistgetitem_lstm_642_tensorarrayunstack_tensorlistfromtensorN
;lstm_642_while_lstm_cell_612_matmul_readvariableop_resource:	�P
=lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource:	d�K
<lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource:	���3lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp�2lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp�4lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp�
@lstm_642/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_642/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_642_while_tensorarrayv2read_tensorlistgetitem_lstm_642_tensorarrayunstack_tensorlistfromtensor_0lstm_642_while_placeholderIlstm_642/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_642/while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp=lstm_642_while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_642/while/lstm_cell_612/MatMulMatMul9lstm_642/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp?lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_642/while/lstm_cell_612/MatMul_1MatMullstm_642_while_placeholder_2<lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_642/while/lstm_cell_612/addAddV2-lstm_642/while/lstm_cell_612/MatMul:product:0/lstm_642/while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp>lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_642/while/lstm_cell_612/BiasAddBiasAdd$lstm_642/while/lstm_cell_612/add:z:0;lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_642/while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_642/while/lstm_cell_612/splitSplit5lstm_642/while/lstm_cell_612/split/split_dim:output:0-lstm_642/while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_642/while/lstm_cell_612/SigmoidSigmoid+lstm_642/while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_642/while/lstm_cell_612/Sigmoid_1Sigmoid+lstm_642/while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_642/while/lstm_cell_612/mulMul*lstm_642/while/lstm_cell_612/Sigmoid_1:y:0lstm_642_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_642/while/lstm_cell_612/ReluRelu+lstm_642/while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_642/while/lstm_cell_612/mul_1Mul(lstm_642/while/lstm_cell_612/Sigmoid:y:0/lstm_642/while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_642/while/lstm_cell_612/add_1AddV2$lstm_642/while/lstm_cell_612/mul:z:0&lstm_642/while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_642/while/lstm_cell_612/Sigmoid_2Sigmoid+lstm_642/while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_642/while/lstm_cell_612/Relu_1Relu&lstm_642/while/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_642/while/lstm_cell_612/mul_2Mul*lstm_642/while/lstm_cell_612/Sigmoid_2:y:01lstm_642/while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_642/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_642_while_placeholder_1lstm_642_while_placeholder&lstm_642/while/lstm_cell_612/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_642/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_642/while/addAddV2lstm_642_while_placeholderlstm_642/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_642/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_642/while/add_1AddV2*lstm_642_while_lstm_642_while_loop_counterlstm_642/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_642/while/IdentityIdentitylstm_642/while/add_1:z:0^lstm_642/while/NoOp*
T0*
_output_shapes
: �
lstm_642/while/Identity_1Identity0lstm_642_while_lstm_642_while_maximum_iterations^lstm_642/while/NoOp*
T0*
_output_shapes
: t
lstm_642/while/Identity_2Identitylstm_642/while/add:z:0^lstm_642/while/NoOp*
T0*
_output_shapes
: �
lstm_642/while/Identity_3IdentityClstm_642/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_642/while/NoOp*
T0*
_output_shapes
: �
lstm_642/while/Identity_4Identity&lstm_642/while/lstm_cell_612/mul_2:z:0^lstm_642/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_642/while/Identity_5Identity&lstm_642/while/lstm_cell_612/add_1:z:0^lstm_642/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_642/while/NoOpNoOp4^lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp3^lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp5^lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_642_while_identity lstm_642/while/Identity:output:0"?
lstm_642_while_identity_1"lstm_642/while/Identity_1:output:0"?
lstm_642_while_identity_2"lstm_642/while/Identity_2:output:0"?
lstm_642_while_identity_3"lstm_642/while/Identity_3:output:0"?
lstm_642_while_identity_4"lstm_642/while/Identity_4:output:0"?
lstm_642_while_identity_5"lstm_642/while/Identity_5:output:0"T
'lstm_642_while_lstm_642_strided_slice_1)lstm_642_while_lstm_642_strided_slice_1_0"~
<lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource>lstm_642_while_lstm_cell_612_biasadd_readvariableop_resource_0"�
=lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource?lstm_642_while_lstm_cell_612_matmul_1_readvariableop_resource_0"|
;lstm_642_while_lstm_cell_612_matmul_readvariableop_resource=lstm_642_while_lstm_cell_612_matmul_readvariableop_resource_0"�
clstm_642_while_tensorarrayv2read_tensorlistgetitem_lstm_642_tensorarrayunstack_tensorlistfromtensorelstm_642_while_tensorarrayv2read_tensorlistgetitem_lstm_642_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp3lstm_642/while/lstm_cell_612/BiasAdd/ReadVariableOp2h
2lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp2lstm_642/while/lstm_cell_612/MatMul/ReadVariableOp2l
4lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp4lstm_642/while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3716759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_614_3716783_0:2(/
while_lstm_cell_614_3716785_0:
(+
while_lstm_cell_614_3716787_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_614_3716783:2(-
while_lstm_cell_614_3716785:
()
while_lstm_cell_614_3716787:(��+while/lstm_cell_614/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_614/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_614_3716783_0while_lstm_cell_614_3716785_0while_lstm_cell_614_3716787_0*
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3716745�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_614/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_614/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_614/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_614/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_614_3716783while_lstm_cell_614_3716783_0"<
while_lstm_cell_614_3716785while_lstm_cell_614_3716785_0"<
while_lstm_cell_614_3716787while_lstm_cell_614_3716787_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_614/StatefulPartitionedCall+while/lstm_cell_614/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�
�
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718203
lstm_642_input#
lstm_642_3718176:	�#
lstm_642_3718178:	d�
lstm_642_3718180:	�#
lstm_643_3718183:	d�#
lstm_643_3718185:	2�
lstm_643_3718187:	�"
lstm_644_3718190:2("
lstm_644_3718192:
(
lstm_644_3718194:(#
dense_214_3718197:

dense_214_3718199:
identity��!dense_214/StatefulPartitionedCall� lstm_642/StatefulPartitionedCall� lstm_643/StatefulPartitionedCall� lstm_644/StatefulPartitionedCall�
 lstm_642/StatefulPartitionedCallStatefulPartitionedCalllstm_642_inputlstm_642_3718176lstm_642_3718178lstm_642_3718180*
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3718023�
 lstm_643/StatefulPartitionedCallStatefulPartitionedCall)lstm_642/StatefulPartitionedCall:output:0lstm_643_3718183lstm_643_3718185lstm_643_3718187*
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3717858�
 lstm_644/StatefulPartitionedCallStatefulPartitionedCall)lstm_643/StatefulPartitionedCall:output:0lstm_644_3718190lstm_644_3718192lstm_644_3718194*
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3717693�
!dense_214/StatefulPartitionedCallStatefulPartitionedCall)lstm_644/StatefulPartitionedCall:output:0dense_214_3718197dense_214_3718199*
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
F__inference_dense_214_layer_call_and_return_conditional_losses_3717495y
IdentityIdentity*dense_214/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_214/StatefulPartitionedCall!^lstm_642/StatefulPartitionedCall!^lstm_643/StatefulPartitionedCall!^lstm_644/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_214/StatefulPartitionedCall!dense_214/StatefulPartitionedCall2D
 lstm_642/StatefulPartitionedCall lstm_642/StatefulPartitionedCall2D
 lstm_643/StatefulPartitionedCall lstm_643/StatefulPartitionedCall2D
 lstm_644/StatefulPartitionedCall lstm_644/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_642_input
�T
�
*sequential_214_lstm_644_while_body_3715888L
Hsequential_214_lstm_644_while_sequential_214_lstm_644_while_loop_counterR
Nsequential_214_lstm_644_while_sequential_214_lstm_644_while_maximum_iterations-
)sequential_214_lstm_644_while_placeholder/
+sequential_214_lstm_644_while_placeholder_1/
+sequential_214_lstm_644_while_placeholder_2/
+sequential_214_lstm_644_while_placeholder_3K
Gsequential_214_lstm_644_while_sequential_214_lstm_644_strided_slice_1_0�
�sequential_214_lstm_644_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_644_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_214_lstm_644_while_lstm_cell_614_matmul_readvariableop_resource_0:2(`
Nsequential_214_lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource_0:
([
Msequential_214_lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource_0:(*
&sequential_214_lstm_644_while_identity,
(sequential_214_lstm_644_while_identity_1,
(sequential_214_lstm_644_while_identity_2,
(sequential_214_lstm_644_while_identity_3,
(sequential_214_lstm_644_while_identity_4,
(sequential_214_lstm_644_while_identity_5I
Esequential_214_lstm_644_while_sequential_214_lstm_644_strided_slice_1�
�sequential_214_lstm_644_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_644_tensorarrayunstack_tensorlistfromtensor\
Jsequential_214_lstm_644_while_lstm_cell_614_matmul_readvariableop_resource:2(^
Lsequential_214_lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource:
(Y
Ksequential_214_lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource:(��Bsequential_214/lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp�Asequential_214/lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp�Csequential_214/lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp�
Osequential_214/lstm_644/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Asequential_214/lstm_644/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_214_lstm_644_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_644_tensorarrayunstack_tensorlistfromtensor_0)sequential_214_lstm_644_while_placeholderXsequential_214/lstm_644/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Asequential_214/lstm_644/while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOpLsequential_214_lstm_644_while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
2sequential_214/lstm_644/while/lstm_cell_614/MatMulMatMulHsequential_214/lstm_644/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_214/lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_214/lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOpNsequential_214_lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
4sequential_214/lstm_644/while/lstm_cell_614/MatMul_1MatMul+sequential_214_lstm_644_while_placeholder_2Ksequential_214/lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_214/lstm_644/while/lstm_cell_614/addAddV2<sequential_214/lstm_644/while/lstm_cell_614/MatMul:product:0>sequential_214/lstm_644/while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
Bsequential_214/lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOpMsequential_214_lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
3sequential_214/lstm_644/while/lstm_cell_614/BiasAddBiasAdd3sequential_214/lstm_644/while/lstm_cell_614/add:z:0Jsequential_214/lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(}
;sequential_214/lstm_644/while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_214/lstm_644/while/lstm_cell_614/splitSplitDsequential_214/lstm_644/while/lstm_cell_614/split/split_dim:output:0<sequential_214/lstm_644/while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
3sequential_214/lstm_644/while/lstm_cell_614/SigmoidSigmoid:sequential_214/lstm_644/while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
�
5sequential_214/lstm_644/while/lstm_cell_614/Sigmoid_1Sigmoid:sequential_214/lstm_644/while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
/sequential_214/lstm_644/while/lstm_cell_614/mulMul9sequential_214/lstm_644/while/lstm_cell_614/Sigmoid_1:y:0+sequential_214_lstm_644_while_placeholder_3*
T0*'
_output_shapes
:���������
�
0sequential_214/lstm_644/while/lstm_cell_614/ReluRelu:sequential_214/lstm_644/while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
1sequential_214/lstm_644/while/lstm_cell_614/mul_1Mul7sequential_214/lstm_644/while/lstm_cell_614/Sigmoid:y:0>sequential_214/lstm_644/while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
1sequential_214/lstm_644/while/lstm_cell_614/add_1AddV23sequential_214/lstm_644/while/lstm_cell_614/mul:z:05sequential_214/lstm_644/while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
�
5sequential_214/lstm_644/while/lstm_cell_614/Sigmoid_2Sigmoid:sequential_214/lstm_644/while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
�
2sequential_214/lstm_644/while/lstm_cell_614/Relu_1Relu5sequential_214/lstm_644/while/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_214/lstm_644/while/lstm_cell_614/mul_2Mul9sequential_214/lstm_644/while/lstm_cell_614/Sigmoid_2:y:0@sequential_214/lstm_644/while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Bsequential_214/lstm_644/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_214_lstm_644_while_placeholder_1)sequential_214_lstm_644_while_placeholder5sequential_214/lstm_644/while/lstm_cell_614/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_214/lstm_644/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_214/lstm_644/while/addAddV2)sequential_214_lstm_644_while_placeholder,sequential_214/lstm_644/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_214/lstm_644/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_214/lstm_644/while/add_1AddV2Hsequential_214_lstm_644_while_sequential_214_lstm_644_while_loop_counter.sequential_214/lstm_644/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_214/lstm_644/while/IdentityIdentity'sequential_214/lstm_644/while/add_1:z:0#^sequential_214/lstm_644/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_644/while/Identity_1IdentityNsequential_214_lstm_644_while_sequential_214_lstm_644_while_maximum_iterations#^sequential_214/lstm_644/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_644/while/Identity_2Identity%sequential_214/lstm_644/while/add:z:0#^sequential_214/lstm_644/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_644/while/Identity_3IdentityRsequential_214/lstm_644/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_214/lstm_644/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_644/while/Identity_4Identity5sequential_214/lstm_644/while/lstm_cell_614/mul_2:z:0#^sequential_214/lstm_644/while/NoOp*
T0*'
_output_shapes
:���������
�
(sequential_214/lstm_644/while/Identity_5Identity5sequential_214/lstm_644/while/lstm_cell_614/add_1:z:0#^sequential_214/lstm_644/while/NoOp*
T0*'
_output_shapes
:���������
�
"sequential_214/lstm_644/while/NoOpNoOpC^sequential_214/lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOpB^sequential_214/lstm_644/while/lstm_cell_614/MatMul/ReadVariableOpD^sequential_214/lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_214_lstm_644_while_identity/sequential_214/lstm_644/while/Identity:output:0"]
(sequential_214_lstm_644_while_identity_11sequential_214/lstm_644/while/Identity_1:output:0"]
(sequential_214_lstm_644_while_identity_21sequential_214/lstm_644/while/Identity_2:output:0"]
(sequential_214_lstm_644_while_identity_31sequential_214/lstm_644/while/Identity_3:output:0"]
(sequential_214_lstm_644_while_identity_41sequential_214/lstm_644/while/Identity_4:output:0"]
(sequential_214_lstm_644_while_identity_51sequential_214/lstm_644/while/Identity_5:output:0"�
Ksequential_214_lstm_644_while_lstm_cell_614_biasadd_readvariableop_resourceMsequential_214_lstm_644_while_lstm_cell_614_biasadd_readvariableop_resource_0"�
Lsequential_214_lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resourceNsequential_214_lstm_644_while_lstm_cell_614_matmul_1_readvariableop_resource_0"�
Jsequential_214_lstm_644_while_lstm_cell_614_matmul_readvariableop_resourceLsequential_214_lstm_644_while_lstm_cell_614_matmul_readvariableop_resource_0"�
Esequential_214_lstm_644_while_sequential_214_lstm_644_strided_slice_1Gsequential_214_lstm_644_while_sequential_214_lstm_644_strided_slice_1_0"�
�sequential_214_lstm_644_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_644_tensorarrayunstack_tensorlistfromtensor�sequential_214_lstm_644_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_644_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
Bsequential_214/lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOpBsequential_214/lstm_644/while/lstm_cell_614/BiasAdd/ReadVariableOp2�
Asequential_214/lstm_644/while/lstm_cell_614/MatMul/ReadVariableOpAsequential_214/lstm_644/while/lstm_cell_614/MatMul/ReadVariableOp2�
Csequential_214/lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOpCsequential_214/lstm_644/while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3720480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3720480___redundant_placeholder05
1while_while_cond_3720480___redundant_placeholder15
1while_while_cond_3720480___redundant_placeholder25
1while_while_cond_3720480___redundant_placeholder3
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
"__inference__wrapped_model_3715978
lstm_642_inputW
Dsequential_214_lstm_642_lstm_cell_612_matmul_readvariableop_resource:	�Y
Fsequential_214_lstm_642_lstm_cell_612_matmul_1_readvariableop_resource:	d�T
Esequential_214_lstm_642_lstm_cell_612_biasadd_readvariableop_resource:	�W
Dsequential_214_lstm_643_lstm_cell_613_matmul_readvariableop_resource:	d�Y
Fsequential_214_lstm_643_lstm_cell_613_matmul_1_readvariableop_resource:	2�T
Esequential_214_lstm_643_lstm_cell_613_biasadd_readvariableop_resource:	�V
Dsequential_214_lstm_644_lstm_cell_614_matmul_readvariableop_resource:2(X
Fsequential_214_lstm_644_lstm_cell_614_matmul_1_readvariableop_resource:
(S
Esequential_214_lstm_644_lstm_cell_614_biasadd_readvariableop_resource:(I
7sequential_214_dense_214_matmul_readvariableop_resource:
F
8sequential_214_dense_214_biasadd_readvariableop_resource:
identity��/sequential_214/dense_214/BiasAdd/ReadVariableOp�.sequential_214/dense_214/MatMul/ReadVariableOp�<sequential_214/lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp�;sequential_214/lstm_642/lstm_cell_612/MatMul/ReadVariableOp�=sequential_214/lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp�sequential_214/lstm_642/while�<sequential_214/lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp�;sequential_214/lstm_643/lstm_cell_613/MatMul/ReadVariableOp�=sequential_214/lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp�sequential_214/lstm_643/while�<sequential_214/lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp�;sequential_214/lstm_644/lstm_cell_614/MatMul/ReadVariableOp�=sequential_214/lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp�sequential_214/lstm_644/while[
sequential_214/lstm_642/ShapeShapelstm_642_input*
T0*
_output_shapes
:u
+sequential_214/lstm_642/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_214/lstm_642/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_214/lstm_642/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_214/lstm_642/strided_sliceStridedSlice&sequential_214/lstm_642/Shape:output:04sequential_214/lstm_642/strided_slice/stack:output:06sequential_214/lstm_642/strided_slice/stack_1:output:06sequential_214/lstm_642/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_214/lstm_642/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_214/lstm_642/zeros/packedPack.sequential_214/lstm_642/strided_slice:output:0/sequential_214/lstm_642/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_214/lstm_642/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_214/lstm_642/zerosFill-sequential_214/lstm_642/zeros/packed:output:0,sequential_214/lstm_642/zeros/Const:output:0*
T0*'
_output_shapes
:���������dj
(sequential_214/lstm_642/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
&sequential_214/lstm_642/zeros_1/packedPack.sequential_214/lstm_642/strided_slice:output:01sequential_214/lstm_642/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_214/lstm_642/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_214/lstm_642/zeros_1Fill/sequential_214/lstm_642/zeros_1/packed:output:0.sequential_214/lstm_642/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d{
&sequential_214/lstm_642/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_214/lstm_642/transpose	Transposelstm_642_input/sequential_214/lstm_642/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
sequential_214/lstm_642/Shape_1Shape%sequential_214/lstm_642/transpose:y:0*
T0*
_output_shapes
:w
-sequential_214/lstm_642/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_214/lstm_642/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_214/lstm_642/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_214/lstm_642/strided_slice_1StridedSlice(sequential_214/lstm_642/Shape_1:output:06sequential_214/lstm_642/strided_slice_1/stack:output:08sequential_214/lstm_642/strided_slice_1/stack_1:output:08sequential_214/lstm_642/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_214/lstm_642/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_214/lstm_642/TensorArrayV2TensorListReserve<sequential_214/lstm_642/TensorArrayV2/element_shape:output:00sequential_214/lstm_642/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_214/lstm_642/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_214/lstm_642/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_214/lstm_642/transpose:y:0Vsequential_214/lstm_642/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_214/lstm_642/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_214/lstm_642/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_214/lstm_642/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_214/lstm_642/strided_slice_2StridedSlice%sequential_214/lstm_642/transpose:y:06sequential_214/lstm_642/strided_slice_2/stack:output:08sequential_214/lstm_642/strided_slice_2/stack_1:output:08sequential_214/lstm_642/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
;sequential_214/lstm_642/lstm_cell_612/MatMul/ReadVariableOpReadVariableOpDsequential_214_lstm_642_lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,sequential_214/lstm_642/lstm_cell_612/MatMulMatMul0sequential_214/lstm_642/strided_slice_2:output:0Csequential_214/lstm_642/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_214/lstm_642/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOpFsequential_214_lstm_642_lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
.sequential_214/lstm_642/lstm_cell_612/MatMul_1MatMul&sequential_214/lstm_642/zeros:output:0Esequential_214/lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_214/lstm_642/lstm_cell_612/addAddV26sequential_214/lstm_642/lstm_cell_612/MatMul:product:08sequential_214/lstm_642/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_214/lstm_642/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOpEsequential_214_lstm_642_lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_214/lstm_642/lstm_cell_612/BiasAddBiasAdd-sequential_214/lstm_642/lstm_cell_612/add:z:0Dsequential_214/lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_214/lstm_642/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_214/lstm_642/lstm_cell_612/splitSplit>sequential_214/lstm_642/lstm_cell_612/split/split_dim:output:06sequential_214/lstm_642/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_214/lstm_642/lstm_cell_612/SigmoidSigmoid4sequential_214/lstm_642/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_214/lstm_642/lstm_cell_612/Sigmoid_1Sigmoid4sequential_214/lstm_642/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_214/lstm_642/lstm_cell_612/mulMul3sequential_214/lstm_642/lstm_cell_612/Sigmoid_1:y:0(sequential_214/lstm_642/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential_214/lstm_642/lstm_cell_612/ReluRelu4sequential_214/lstm_642/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_214/lstm_642/lstm_cell_612/mul_1Mul1sequential_214/lstm_642/lstm_cell_612/Sigmoid:y:08sequential_214/lstm_642/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_214/lstm_642/lstm_cell_612/add_1AddV2-sequential_214/lstm_642/lstm_cell_612/mul:z:0/sequential_214/lstm_642/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_214/lstm_642/lstm_cell_612/Sigmoid_2Sigmoid4sequential_214/lstm_642/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_214/lstm_642/lstm_cell_612/Relu_1Relu/sequential_214/lstm_642/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_214/lstm_642/lstm_cell_612/mul_2Mul3sequential_214/lstm_642/lstm_cell_612/Sigmoid_2:y:0:sequential_214/lstm_642/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
5sequential_214/lstm_642/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'sequential_214/lstm_642/TensorArrayV2_1TensorListReserve>sequential_214/lstm_642/TensorArrayV2_1/element_shape:output:00sequential_214/lstm_642/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_214/lstm_642/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_214/lstm_642/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_214/lstm_642/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_214/lstm_642/whileWhile3sequential_214/lstm_642/while/loop_counter:output:09sequential_214/lstm_642/while/maximum_iterations:output:0%sequential_214/lstm_642/time:output:00sequential_214/lstm_642/TensorArrayV2_1:handle:0&sequential_214/lstm_642/zeros:output:0(sequential_214/lstm_642/zeros_1:output:00sequential_214/lstm_642/strided_slice_1:output:0Osequential_214/lstm_642/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_214_lstm_642_lstm_cell_612_matmul_readvariableop_resourceFsequential_214_lstm_642_lstm_cell_612_matmul_1_readvariableop_resourceEsequential_214_lstm_642_lstm_cell_612_biasadd_readvariableop_resource*
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
*sequential_214_lstm_642_while_body_3715610*6
cond.R,
*sequential_214_lstm_642_while_cond_3715609*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Hsequential_214/lstm_642/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
:sequential_214/lstm_642/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_214/lstm_642/while:output:3Qsequential_214/lstm_642/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0�
-sequential_214/lstm_642/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_214/lstm_642/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_214/lstm_642/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_214/lstm_642/strided_slice_3StridedSliceCsequential_214/lstm_642/TensorArrayV2Stack/TensorListStack:tensor:06sequential_214/lstm_642/strided_slice_3/stack:output:08sequential_214/lstm_642/strided_slice_3/stack_1:output:08sequential_214/lstm_642/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask}
(sequential_214/lstm_642/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_214/lstm_642/transpose_1	TransposeCsequential_214/lstm_642/TensorArrayV2Stack/TensorListStack:tensor:01sequential_214/lstm_642/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ds
sequential_214/lstm_642/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_214/lstm_643/ShapeShape'sequential_214/lstm_642/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_214/lstm_643/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_214/lstm_643/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_214/lstm_643/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_214/lstm_643/strided_sliceStridedSlice&sequential_214/lstm_643/Shape:output:04sequential_214/lstm_643/strided_slice/stack:output:06sequential_214/lstm_643/strided_slice/stack_1:output:06sequential_214/lstm_643/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_214/lstm_643/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_214/lstm_643/zeros/packedPack.sequential_214/lstm_643/strided_slice:output:0/sequential_214/lstm_643/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_214/lstm_643/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_214/lstm_643/zerosFill-sequential_214/lstm_643/zeros/packed:output:0,sequential_214/lstm_643/zeros/Const:output:0*
T0*'
_output_shapes
:���������2j
(sequential_214/lstm_643/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
&sequential_214/lstm_643/zeros_1/packedPack.sequential_214/lstm_643/strided_slice:output:01sequential_214/lstm_643/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_214/lstm_643/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_214/lstm_643/zeros_1Fill/sequential_214/lstm_643/zeros_1/packed:output:0.sequential_214/lstm_643/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2{
&sequential_214/lstm_643/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_214/lstm_643/transpose	Transpose'sequential_214/lstm_642/transpose_1:y:0/sequential_214/lstm_643/transpose/perm:output:0*
T0*+
_output_shapes
:���������dt
sequential_214/lstm_643/Shape_1Shape%sequential_214/lstm_643/transpose:y:0*
T0*
_output_shapes
:w
-sequential_214/lstm_643/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_214/lstm_643/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_214/lstm_643/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_214/lstm_643/strided_slice_1StridedSlice(sequential_214/lstm_643/Shape_1:output:06sequential_214/lstm_643/strided_slice_1/stack:output:08sequential_214/lstm_643/strided_slice_1/stack_1:output:08sequential_214/lstm_643/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_214/lstm_643/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_214/lstm_643/TensorArrayV2TensorListReserve<sequential_214/lstm_643/TensorArrayV2/element_shape:output:00sequential_214/lstm_643/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_214/lstm_643/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_214/lstm_643/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_214/lstm_643/transpose:y:0Vsequential_214/lstm_643/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_214/lstm_643/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_214/lstm_643/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_214/lstm_643/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_214/lstm_643/strided_slice_2StridedSlice%sequential_214/lstm_643/transpose:y:06sequential_214/lstm_643/strided_slice_2/stack:output:08sequential_214/lstm_643/strided_slice_2/stack_1:output:08sequential_214/lstm_643/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
;sequential_214/lstm_643/lstm_cell_613/MatMul/ReadVariableOpReadVariableOpDsequential_214_lstm_643_lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_214/lstm_643/lstm_cell_613/MatMulMatMul0sequential_214/lstm_643/strided_slice_2:output:0Csequential_214/lstm_643/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_214/lstm_643/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOpFsequential_214_lstm_643_lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
.sequential_214/lstm_643/lstm_cell_613/MatMul_1MatMul&sequential_214/lstm_643/zeros:output:0Esequential_214/lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_214/lstm_643/lstm_cell_613/addAddV26sequential_214/lstm_643/lstm_cell_613/MatMul:product:08sequential_214/lstm_643/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_214/lstm_643/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOpEsequential_214_lstm_643_lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_214/lstm_643/lstm_cell_613/BiasAddBiasAdd-sequential_214/lstm_643/lstm_cell_613/add:z:0Dsequential_214/lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_214/lstm_643/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_214/lstm_643/lstm_cell_613/splitSplit>sequential_214/lstm_643/lstm_cell_613/split/split_dim:output:06sequential_214/lstm_643/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
-sequential_214/lstm_643/lstm_cell_613/SigmoidSigmoid4sequential_214/lstm_643/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2�
/sequential_214/lstm_643/lstm_cell_613/Sigmoid_1Sigmoid4sequential_214/lstm_643/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
)sequential_214/lstm_643/lstm_cell_613/mulMul3sequential_214/lstm_643/lstm_cell_613/Sigmoid_1:y:0(sequential_214/lstm_643/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential_214/lstm_643/lstm_cell_613/ReluRelu4sequential_214/lstm_643/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
+sequential_214/lstm_643/lstm_cell_613/mul_1Mul1sequential_214/lstm_643/lstm_cell_613/Sigmoid:y:08sequential_214/lstm_643/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
+sequential_214/lstm_643/lstm_cell_613/add_1AddV2-sequential_214/lstm_643/lstm_cell_613/mul:z:0/sequential_214/lstm_643/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_214/lstm_643/lstm_cell_613/Sigmoid_2Sigmoid4sequential_214/lstm_643/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2�
,sequential_214/lstm_643/lstm_cell_613/Relu_1Relu/sequential_214/lstm_643/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_214/lstm_643/lstm_cell_613/mul_2Mul3sequential_214/lstm_643/lstm_cell_613/Sigmoid_2:y:0:sequential_214/lstm_643/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
5sequential_214/lstm_643/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'sequential_214/lstm_643/TensorArrayV2_1TensorListReserve>sequential_214/lstm_643/TensorArrayV2_1/element_shape:output:00sequential_214/lstm_643/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_214/lstm_643/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_214/lstm_643/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_214/lstm_643/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_214/lstm_643/whileWhile3sequential_214/lstm_643/while/loop_counter:output:09sequential_214/lstm_643/while/maximum_iterations:output:0%sequential_214/lstm_643/time:output:00sequential_214/lstm_643/TensorArrayV2_1:handle:0&sequential_214/lstm_643/zeros:output:0(sequential_214/lstm_643/zeros_1:output:00sequential_214/lstm_643/strided_slice_1:output:0Osequential_214/lstm_643/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_214_lstm_643_lstm_cell_613_matmul_readvariableop_resourceFsequential_214_lstm_643_lstm_cell_613_matmul_1_readvariableop_resourceEsequential_214_lstm_643_lstm_cell_613_biasadd_readvariableop_resource*
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
*sequential_214_lstm_643_while_body_3715749*6
cond.R,
*sequential_214_lstm_643_while_cond_3715748*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Hsequential_214/lstm_643/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
:sequential_214/lstm_643/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_214/lstm_643/while:output:3Qsequential_214/lstm_643/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0�
-sequential_214/lstm_643/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_214/lstm_643/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_214/lstm_643/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_214/lstm_643/strided_slice_3StridedSliceCsequential_214/lstm_643/TensorArrayV2Stack/TensorListStack:tensor:06sequential_214/lstm_643/strided_slice_3/stack:output:08sequential_214/lstm_643/strided_slice_3/stack_1:output:08sequential_214/lstm_643/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask}
(sequential_214/lstm_643/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_214/lstm_643/transpose_1	TransposeCsequential_214/lstm_643/TensorArrayV2Stack/TensorListStack:tensor:01sequential_214/lstm_643/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2s
sequential_214/lstm_643/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_214/lstm_644/ShapeShape'sequential_214/lstm_643/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_214/lstm_644/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_214/lstm_644/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_214/lstm_644/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_214/lstm_644/strided_sliceStridedSlice&sequential_214/lstm_644/Shape:output:04sequential_214/lstm_644/strided_slice/stack:output:06sequential_214/lstm_644/strided_slice/stack_1:output:06sequential_214/lstm_644/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_214/lstm_644/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_214/lstm_644/zeros/packedPack.sequential_214/lstm_644/strided_slice:output:0/sequential_214/lstm_644/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_214/lstm_644/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_214/lstm_644/zerosFill-sequential_214/lstm_644/zeros/packed:output:0,sequential_214/lstm_644/zeros/Const:output:0*
T0*'
_output_shapes
:���������
j
(sequential_214/lstm_644/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&sequential_214/lstm_644/zeros_1/packedPack.sequential_214/lstm_644/strided_slice:output:01sequential_214/lstm_644/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_214/lstm_644/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_214/lstm_644/zeros_1Fill/sequential_214/lstm_644/zeros_1/packed:output:0.sequential_214/lstm_644/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
{
&sequential_214/lstm_644/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_214/lstm_644/transpose	Transpose'sequential_214/lstm_643/transpose_1:y:0/sequential_214/lstm_644/transpose/perm:output:0*
T0*+
_output_shapes
:���������2t
sequential_214/lstm_644/Shape_1Shape%sequential_214/lstm_644/transpose:y:0*
T0*
_output_shapes
:w
-sequential_214/lstm_644/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_214/lstm_644/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_214/lstm_644/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_214/lstm_644/strided_slice_1StridedSlice(sequential_214/lstm_644/Shape_1:output:06sequential_214/lstm_644/strided_slice_1/stack:output:08sequential_214/lstm_644/strided_slice_1/stack_1:output:08sequential_214/lstm_644/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_214/lstm_644/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_214/lstm_644/TensorArrayV2TensorListReserve<sequential_214/lstm_644/TensorArrayV2/element_shape:output:00sequential_214/lstm_644/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_214/lstm_644/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_214/lstm_644/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_214/lstm_644/transpose:y:0Vsequential_214/lstm_644/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_214/lstm_644/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_214/lstm_644/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_214/lstm_644/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_214/lstm_644/strided_slice_2StridedSlice%sequential_214/lstm_644/transpose:y:06sequential_214/lstm_644/strided_slice_2/stack:output:08sequential_214/lstm_644/strided_slice_2/stack_1:output:08sequential_214/lstm_644/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
;sequential_214/lstm_644/lstm_cell_614/MatMul/ReadVariableOpReadVariableOpDsequential_214_lstm_644_lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
,sequential_214/lstm_644/lstm_cell_614/MatMulMatMul0sequential_214/lstm_644/strided_slice_2:output:0Csequential_214/lstm_644/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
=sequential_214/lstm_644/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOpFsequential_214_lstm_644_lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
.sequential_214/lstm_644/lstm_cell_614/MatMul_1MatMul&sequential_214/lstm_644/zeros:output:0Esequential_214/lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)sequential_214/lstm_644/lstm_cell_614/addAddV26sequential_214/lstm_644/lstm_cell_614/MatMul:product:08sequential_214/lstm_644/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
<sequential_214/lstm_644/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOpEsequential_214_lstm_644_lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
-sequential_214/lstm_644/lstm_cell_614/BiasAddBiasAdd-sequential_214/lstm_644/lstm_cell_614/add:z:0Dsequential_214/lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(w
5sequential_214/lstm_644/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_214/lstm_644/lstm_cell_614/splitSplit>sequential_214/lstm_644/lstm_cell_614/split/split_dim:output:06sequential_214/lstm_644/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
-sequential_214/lstm_644/lstm_cell_614/SigmoidSigmoid4sequential_214/lstm_644/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
�
/sequential_214/lstm_644/lstm_cell_614/Sigmoid_1Sigmoid4sequential_214/lstm_644/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
)sequential_214/lstm_644/lstm_cell_614/mulMul3sequential_214/lstm_644/lstm_cell_614/Sigmoid_1:y:0(sequential_214/lstm_644/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
*sequential_214/lstm_644/lstm_cell_614/ReluRelu4sequential_214/lstm_644/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
+sequential_214/lstm_644/lstm_cell_614/mul_1Mul1sequential_214/lstm_644/lstm_cell_614/Sigmoid:y:08sequential_214/lstm_644/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
+sequential_214/lstm_644/lstm_cell_614/add_1AddV2-sequential_214/lstm_644/lstm_cell_614/mul:z:0/sequential_214/lstm_644/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_214/lstm_644/lstm_cell_614/Sigmoid_2Sigmoid4sequential_214/lstm_644/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
�
,sequential_214/lstm_644/lstm_cell_614/Relu_1Relu/sequential_214/lstm_644/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_214/lstm_644/lstm_cell_614/mul_2Mul3sequential_214/lstm_644/lstm_cell_614/Sigmoid_2:y:0:sequential_214/lstm_644/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
5sequential_214/lstm_644/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
'sequential_214/lstm_644/TensorArrayV2_1TensorListReserve>sequential_214/lstm_644/TensorArrayV2_1/element_shape:output:00sequential_214/lstm_644/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_214/lstm_644/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_214/lstm_644/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_214/lstm_644/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_214/lstm_644/whileWhile3sequential_214/lstm_644/while/loop_counter:output:09sequential_214/lstm_644/while/maximum_iterations:output:0%sequential_214/lstm_644/time:output:00sequential_214/lstm_644/TensorArrayV2_1:handle:0&sequential_214/lstm_644/zeros:output:0(sequential_214/lstm_644/zeros_1:output:00sequential_214/lstm_644/strided_slice_1:output:0Osequential_214/lstm_644/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_214_lstm_644_lstm_cell_614_matmul_readvariableop_resourceFsequential_214_lstm_644_lstm_cell_614_matmul_1_readvariableop_resourceEsequential_214_lstm_644_lstm_cell_614_biasadd_readvariableop_resource*
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
*sequential_214_lstm_644_while_body_3715888*6
cond.R,
*sequential_214_lstm_644_while_cond_3715887*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Hsequential_214/lstm_644/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
:sequential_214/lstm_644/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_214/lstm_644/while:output:3Qsequential_214/lstm_644/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0�
-sequential_214/lstm_644/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_214/lstm_644/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_214/lstm_644/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_214/lstm_644/strided_slice_3StridedSliceCsequential_214/lstm_644/TensorArrayV2Stack/TensorListStack:tensor:06sequential_214/lstm_644/strided_slice_3/stack:output:08sequential_214/lstm_644/strided_slice_3/stack_1:output:08sequential_214/lstm_644/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask}
(sequential_214/lstm_644/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_214/lstm_644/transpose_1	TransposeCsequential_214/lstm_644/TensorArrayV2Stack/TensorListStack:tensor:01sequential_214/lstm_644/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
s
sequential_214/lstm_644/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_214/dense_214/MatMul/ReadVariableOpReadVariableOp7sequential_214_dense_214_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_214/dense_214/MatMulMatMul0sequential_214/lstm_644/strided_slice_3:output:06sequential_214/dense_214/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_214/dense_214/BiasAdd/ReadVariableOpReadVariableOp8sequential_214_dense_214_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_214/dense_214/BiasAddBiasAdd)sequential_214/dense_214/MatMul:product:07sequential_214/dense_214/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_214/dense_214/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_214/dense_214/BiasAdd/ReadVariableOp/^sequential_214/dense_214/MatMul/ReadVariableOp=^sequential_214/lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp<^sequential_214/lstm_642/lstm_cell_612/MatMul/ReadVariableOp>^sequential_214/lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp^sequential_214/lstm_642/while=^sequential_214/lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp<^sequential_214/lstm_643/lstm_cell_613/MatMul/ReadVariableOp>^sequential_214/lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp^sequential_214/lstm_643/while=^sequential_214/lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp<^sequential_214/lstm_644/lstm_cell_614/MatMul/ReadVariableOp>^sequential_214/lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp^sequential_214/lstm_644/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_214/dense_214/BiasAdd/ReadVariableOp/sequential_214/dense_214/BiasAdd/ReadVariableOp2`
.sequential_214/dense_214/MatMul/ReadVariableOp.sequential_214/dense_214/MatMul/ReadVariableOp2|
<sequential_214/lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp<sequential_214/lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp2z
;sequential_214/lstm_642/lstm_cell_612/MatMul/ReadVariableOp;sequential_214/lstm_642/lstm_cell_612/MatMul/ReadVariableOp2~
=sequential_214/lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp=sequential_214/lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp2>
sequential_214/lstm_642/whilesequential_214/lstm_642/while2|
<sequential_214/lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp<sequential_214/lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp2z
;sequential_214/lstm_643/lstm_cell_613/MatMul/ReadVariableOp;sequential_214/lstm_643/lstm_cell_613/MatMul/ReadVariableOp2~
=sequential_214/lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp=sequential_214/lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp2>
sequential_214/lstm_643/whilesequential_214/lstm_643/while2|
<sequential_214/lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp<sequential_214/lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp2z
;sequential_214/lstm_644/lstm_cell_614/MatMul/ReadVariableOp;sequential_214/lstm_644/lstm_cell_614/MatMul/ReadVariableOp2~
=sequential_214/lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp=sequential_214/lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp2>
sequential_214/lstm_644/whilesequential_214/lstm_644/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_642_input
�

�
0__inference_sequential_214_layer_call_fn_3718143
lstm_642_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_642_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718091o
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
_user_specified_namelstm_642_input
�

�
lstm_644_while_cond_3719055.
*lstm_644_while_lstm_644_while_loop_counter4
0lstm_644_while_lstm_644_while_maximum_iterations
lstm_644_while_placeholder 
lstm_644_while_placeholder_1 
lstm_644_while_placeholder_2 
lstm_644_while_placeholder_30
,lstm_644_while_less_lstm_644_strided_slice_1G
Clstm_644_while_lstm_644_while_cond_3719055___redundant_placeholder0G
Clstm_644_while_lstm_644_while_cond_3719055___redundant_placeholder1G
Clstm_644_while_lstm_644_while_cond_3719055___redundant_placeholder2G
Clstm_644_while_lstm_644_while_cond_3719055___redundant_placeholder3
lstm_644_while_identity
�
lstm_644/while/LessLesslstm_644_while_placeholder,lstm_644_while_less_lstm_644_strided_slice_1*
T0*
_output_shapes
: ]
lstm_644/while/IdentityIdentitylstm_644/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_644_while_identity lstm_644/while/Identity:output:0*(
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3716478

inputs(
lstm_cell_613_3716396:	d�(
lstm_cell_613_3716398:	2�$
lstm_cell_613_3716400:	�
identity��%lstm_cell_613/StatefulPartitionedCall�while;
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
%lstm_cell_613/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_613_3716396lstm_cell_613_3716398lstm_cell_613_3716400*
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3716395n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_613_3716396lstm_cell_613_3716398lstm_cell_613_3716400*
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
while_body_3716409*
condR
while_cond_3716408*K
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
NoOpNoOp&^lstm_cell_613/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_613/StatefulPartitionedCall%lstm_cell_613/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
while_cond_3720909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3720909___redundant_placeholder05
1while_while_cond_3720909___redundant_placeholder15
1while_while_cond_3720909___redundant_placeholder25
1while_while_cond_3720909___redundant_placeholder3
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
�K
�
E__inference_lstm_643_layer_call_and_return_conditional_losses_3720092
inputs_0?
,lstm_cell_613_matmul_readvariableop_resource:	d�A
.lstm_cell_613_matmul_1_readvariableop_resource:	2�<
-lstm_cell_613_biasadd_readvariableop_resource:	�
identity��$lstm_cell_613/BiasAdd/ReadVariableOp�#lstm_cell_613/MatMul/ReadVariableOp�%lstm_cell_613/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3720008*
condR
while_cond_3720007*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
while_cond_3720623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3720623___redundant_placeholder05
1while_while_cond_3720623___redundant_placeholder15
1while_while_cond_3720623___redundant_placeholder25
1while_while_cond_3720623___redundant_placeholder3
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
�
�
K__inference_sequential_214_layer_call_and_return_conditional_losses_3717502

inputs#
lstm_642_3717178:	�#
lstm_642_3717180:	d�
lstm_642_3717182:	�#
lstm_643_3717328:	d�#
lstm_643_3717330:	2�
lstm_643_3717332:	�"
lstm_644_3717478:2("
lstm_644_3717480:
(
lstm_644_3717482:(#
dense_214_3717496:

dense_214_3717498:
identity��!dense_214/StatefulPartitionedCall� lstm_642/StatefulPartitionedCall� lstm_643/StatefulPartitionedCall� lstm_644/StatefulPartitionedCall�
 lstm_642/StatefulPartitionedCallStatefulPartitionedCallinputslstm_642_3717178lstm_642_3717180lstm_642_3717182*
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3717177�
 lstm_643/StatefulPartitionedCallStatefulPartitionedCall)lstm_642/StatefulPartitionedCall:output:0lstm_643_3717328lstm_643_3717330lstm_643_3717332*
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3717327�
 lstm_644/StatefulPartitionedCallStatefulPartitionedCall)lstm_643/StatefulPartitionedCall:output:0lstm_644_3717478lstm_644_3717480lstm_644_3717482*
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3717477�
!dense_214/StatefulPartitionedCallStatefulPartitionedCall)lstm_644/StatefulPartitionedCall:output:0dense_214_3717496dense_214_3717498*
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
F__inference_dense_214_layer_call_and_return_conditional_losses_3717495y
IdentityIdentity*dense_214/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_214/StatefulPartitionedCall!^lstm_642/StatefulPartitionedCall!^lstm_643/StatefulPartitionedCall!^lstm_644/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_214/StatefulPartitionedCall!dense_214/StatefulPartitionedCall2D
 lstm_642/StatefulPartitionedCall lstm_642/StatefulPartitionedCall2D
 lstm_643/StatefulPartitionedCall lstm_643/StatefulPartitionedCall2D
 lstm_644/StatefulPartitionedCall lstm_644/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_3719865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d�G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_613_biasadd_readvariableop_resource:	���*while/lstm_cell_613/BiasAdd/ReadVariableOp�)while/lstm_cell_613/MatMul/ReadVariableOp�+while/lstm_cell_613/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3716669

inputs(
lstm_cell_613_3716587:	d�(
lstm_cell_613_3716589:	2�$
lstm_cell_613_3716591:	�
identity��%lstm_cell_613/StatefulPartitionedCall�while;
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
%lstm_cell_613/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_613_3716587lstm_cell_613_3716589lstm_cell_613_3716591*
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3716541n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_613_3716587lstm_cell_613_3716589lstm_cell_613_3716591*
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
while_body_3716600*
condR
while_cond_3716599*K
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
NoOpNoOp&^lstm_cell_613/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_613/StatefulPartitionedCall%lstm_cell_613/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�8
�
while_body_3720767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(��*while/lstm_cell_614/BiasAdd/ReadVariableOp�)while/lstm_cell_614/MatMul/ReadVariableOp�+while/lstm_cell_614/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3717177

inputs?
,lstm_cell_612_matmul_readvariableop_resource:	�A
.lstm_cell_612_matmul_1_readvariableop_resource:	d�<
-lstm_cell_612_biasadd_readvariableop_resource:	�
identity��$lstm_cell_612/BiasAdd/ReadVariableOp�#lstm_cell_612/MatMul/ReadVariableOp�%lstm_cell_612/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3717093*
condR
while_cond_3717092*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*sequential_214_lstm_642_while_cond_3715609L
Hsequential_214_lstm_642_while_sequential_214_lstm_642_while_loop_counterR
Nsequential_214_lstm_642_while_sequential_214_lstm_642_while_maximum_iterations-
)sequential_214_lstm_642_while_placeholder/
+sequential_214_lstm_642_while_placeholder_1/
+sequential_214_lstm_642_while_placeholder_2/
+sequential_214_lstm_642_while_placeholder_3N
Jsequential_214_lstm_642_while_less_sequential_214_lstm_642_strided_slice_1e
asequential_214_lstm_642_while_sequential_214_lstm_642_while_cond_3715609___redundant_placeholder0e
asequential_214_lstm_642_while_sequential_214_lstm_642_while_cond_3715609___redundant_placeholder1e
asequential_214_lstm_642_while_sequential_214_lstm_642_while_cond_3715609___redundant_placeholder2e
asequential_214_lstm_642_while_sequential_214_lstm_642_while_cond_3715609___redundant_placeholder3*
&sequential_214_lstm_642_while_identity
�
"sequential_214/lstm_642/while/LessLess)sequential_214_lstm_642_while_placeholderJsequential_214_lstm_642_while_less_sequential_214_lstm_642_strided_slice_1*
T0*
_output_shapes
: {
&sequential_214/lstm_642/while/IdentityIdentity&sequential_214/lstm_642/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_214_lstm_642_while_identity/sequential_214/lstm_642/while/Identity:output:0*(
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719762

inputs?
,lstm_cell_612_matmul_readvariableop_resource:	�A
.lstm_cell_612_matmul_1_readvariableop_resource:	d�<
-lstm_cell_612_biasadd_readvariableop_resource:	�
identity��$lstm_cell_612/BiasAdd/ReadVariableOp�#lstm_cell_612/MatMul/ReadVariableOp�%lstm_cell_612/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3719678*
condR
while_cond_3719677*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_3720008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d�G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_613_biasadd_readvariableop_resource:	���*while/lstm_cell_613/BiasAdd/ReadVariableOp�)while/lstm_cell_613/MatMul/ReadVariableOp�+while/lstm_cell_613/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3716408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3716408___redundant_placeholder05
1while_while_cond_3716408___redundant_placeholder15
1while_while_cond_3716408___redundant_placeholder25
1while_while_cond_3716408___redundant_placeholder3
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
while_cond_3716249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3716249___redundant_placeholder05
1while_while_cond_3716249___redundant_placeholder15
1while_while_cond_3716249___redundant_placeholder25
1while_while_cond_3716249___redundant_placeholder3
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
while_cond_3716058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3716058___redundant_placeholder05
1while_while_cond_3716058___redundant_placeholder15
1while_while_cond_3716058___redundant_placeholder25
1while_while_cond_3716058___redundant_placeholder3
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
while_cond_3716599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3716599___redundant_placeholder05
1while_while_cond_3716599___redundant_placeholder15
1while_while_cond_3716599___redundant_placeholder25
1while_while_cond_3716599___redundant_placeholder3
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
while_cond_3717392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3717392___redundant_placeholder05
1while_while_cond_3717392___redundant_placeholder15
1while_while_cond_3717392___redundant_placeholder25
1while_while_cond_3717392___redundant_placeholder3
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
�T
�
*sequential_214_lstm_643_while_body_3715749L
Hsequential_214_lstm_643_while_sequential_214_lstm_643_while_loop_counterR
Nsequential_214_lstm_643_while_sequential_214_lstm_643_while_maximum_iterations-
)sequential_214_lstm_643_while_placeholder/
+sequential_214_lstm_643_while_placeholder_1/
+sequential_214_lstm_643_while_placeholder_2/
+sequential_214_lstm_643_while_placeholder_3K
Gsequential_214_lstm_643_while_sequential_214_lstm_643_strided_slice_1_0�
�sequential_214_lstm_643_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_643_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_214_lstm_643_while_lstm_cell_613_matmul_readvariableop_resource_0:	d�a
Nsequential_214_lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2�\
Msequential_214_lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource_0:	�*
&sequential_214_lstm_643_while_identity,
(sequential_214_lstm_643_while_identity_1,
(sequential_214_lstm_643_while_identity_2,
(sequential_214_lstm_643_while_identity_3,
(sequential_214_lstm_643_while_identity_4,
(sequential_214_lstm_643_while_identity_5I
Esequential_214_lstm_643_while_sequential_214_lstm_643_strided_slice_1�
�sequential_214_lstm_643_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_643_tensorarrayunstack_tensorlistfromtensor]
Jsequential_214_lstm_643_while_lstm_cell_613_matmul_readvariableop_resource:	d�_
Lsequential_214_lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource:	2�Z
Ksequential_214_lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource:	���Bsequential_214/lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp�Asequential_214/lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp�Csequential_214/lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp�
Osequential_214/lstm_643/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
Asequential_214/lstm_643/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_214_lstm_643_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_643_tensorarrayunstack_tensorlistfromtensor_0)sequential_214_lstm_643_while_placeholderXsequential_214/lstm_643/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
Asequential_214/lstm_643/while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOpLsequential_214_lstm_643_while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_214/lstm_643/while/lstm_cell_613/MatMulMatMulHsequential_214/lstm_643/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_214/lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_214/lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOpNsequential_214_lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
4sequential_214/lstm_643/while/lstm_cell_613/MatMul_1MatMul+sequential_214_lstm_643_while_placeholder_2Ksequential_214/lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_214/lstm_643/while/lstm_cell_613/addAddV2<sequential_214/lstm_643/while/lstm_cell_613/MatMul:product:0>sequential_214/lstm_643/while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_214/lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOpMsequential_214_lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_214/lstm_643/while/lstm_cell_613/BiasAddBiasAdd3sequential_214/lstm_643/while/lstm_cell_613/add:z:0Jsequential_214/lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_214/lstm_643/while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_214/lstm_643/while/lstm_cell_613/splitSplitDsequential_214/lstm_643/while/lstm_cell_613/split/split_dim:output:0<sequential_214/lstm_643/while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
3sequential_214/lstm_643/while/lstm_cell_613/SigmoidSigmoid:sequential_214/lstm_643/while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2�
5sequential_214/lstm_643/while/lstm_cell_613/Sigmoid_1Sigmoid:sequential_214/lstm_643/while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
/sequential_214/lstm_643/while/lstm_cell_613/mulMul9sequential_214/lstm_643/while/lstm_cell_613/Sigmoid_1:y:0+sequential_214_lstm_643_while_placeholder_3*
T0*'
_output_shapes
:���������2�
0sequential_214/lstm_643/while/lstm_cell_613/ReluRelu:sequential_214/lstm_643/while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
1sequential_214/lstm_643/while/lstm_cell_613/mul_1Mul7sequential_214/lstm_643/while/lstm_cell_613/Sigmoid:y:0>sequential_214/lstm_643/while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
1sequential_214/lstm_643/while/lstm_cell_613/add_1AddV23sequential_214/lstm_643/while/lstm_cell_613/mul:z:05sequential_214/lstm_643/while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2�
5sequential_214/lstm_643/while/lstm_cell_613/Sigmoid_2Sigmoid:sequential_214/lstm_643/while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2�
2sequential_214/lstm_643/while/lstm_cell_613/Relu_1Relu5sequential_214/lstm_643/while/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_214/lstm_643/while/lstm_cell_613/mul_2Mul9sequential_214/lstm_643/while/lstm_cell_613/Sigmoid_2:y:0@sequential_214/lstm_643/while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Bsequential_214/lstm_643/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_214_lstm_643_while_placeholder_1)sequential_214_lstm_643_while_placeholder5sequential_214/lstm_643/while/lstm_cell_613/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_214/lstm_643/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_214/lstm_643/while/addAddV2)sequential_214_lstm_643_while_placeholder,sequential_214/lstm_643/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_214/lstm_643/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_214/lstm_643/while/add_1AddV2Hsequential_214_lstm_643_while_sequential_214_lstm_643_while_loop_counter.sequential_214/lstm_643/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_214/lstm_643/while/IdentityIdentity'sequential_214/lstm_643/while/add_1:z:0#^sequential_214/lstm_643/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_643/while/Identity_1IdentityNsequential_214_lstm_643_while_sequential_214_lstm_643_while_maximum_iterations#^sequential_214/lstm_643/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_643/while/Identity_2Identity%sequential_214/lstm_643/while/add:z:0#^sequential_214/lstm_643/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_643/while/Identity_3IdentityRsequential_214/lstm_643/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_214/lstm_643/while/NoOp*
T0*
_output_shapes
: �
(sequential_214/lstm_643/while/Identity_4Identity5sequential_214/lstm_643/while/lstm_cell_613/mul_2:z:0#^sequential_214/lstm_643/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_214/lstm_643/while/Identity_5Identity5sequential_214/lstm_643/while/lstm_cell_613/add_1:z:0#^sequential_214/lstm_643/while/NoOp*
T0*'
_output_shapes
:���������2�
"sequential_214/lstm_643/while/NoOpNoOpC^sequential_214/lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOpB^sequential_214/lstm_643/while/lstm_cell_613/MatMul/ReadVariableOpD^sequential_214/lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_214_lstm_643_while_identity/sequential_214/lstm_643/while/Identity:output:0"]
(sequential_214_lstm_643_while_identity_11sequential_214/lstm_643/while/Identity_1:output:0"]
(sequential_214_lstm_643_while_identity_21sequential_214/lstm_643/while/Identity_2:output:0"]
(sequential_214_lstm_643_while_identity_31sequential_214/lstm_643/while/Identity_3:output:0"]
(sequential_214_lstm_643_while_identity_41sequential_214/lstm_643/while/Identity_4:output:0"]
(sequential_214_lstm_643_while_identity_51sequential_214/lstm_643/while/Identity_5:output:0"�
Ksequential_214_lstm_643_while_lstm_cell_613_biasadd_readvariableop_resourceMsequential_214_lstm_643_while_lstm_cell_613_biasadd_readvariableop_resource_0"�
Lsequential_214_lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resourceNsequential_214_lstm_643_while_lstm_cell_613_matmul_1_readvariableop_resource_0"�
Jsequential_214_lstm_643_while_lstm_cell_613_matmul_readvariableop_resourceLsequential_214_lstm_643_while_lstm_cell_613_matmul_readvariableop_resource_0"�
Esequential_214_lstm_643_while_sequential_214_lstm_643_strided_slice_1Gsequential_214_lstm_643_while_sequential_214_lstm_643_strided_slice_1_0"�
�sequential_214_lstm_643_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_643_tensorarrayunstack_tensorlistfromtensor�sequential_214_lstm_643_while_tensorarrayv2read_tensorlistgetitem_sequential_214_lstm_643_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
Bsequential_214/lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOpBsequential_214/lstm_643/while/lstm_cell_613/BiasAdd/ReadVariableOp2�
Asequential_214/lstm_643/while/lstm_cell_613/MatMul/ReadVariableOpAsequential_214/lstm_643/while/lstm_cell_613/MatMul/ReadVariableOp2�
Csequential_214/lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOpCsequential_214/lstm_643/while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3717242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3717242___redundant_placeholder05
1while_while_cond_3717242___redundant_placeholder15
1while_while_cond_3717242___redundant_placeholder25
1while_while_cond_3717242___redundant_placeholder3
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
�
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718091

inputs#
lstm_642_3718064:	�#
lstm_642_3718066:	d�
lstm_642_3718068:	�#
lstm_643_3718071:	d�#
lstm_643_3718073:	2�
lstm_643_3718075:	�"
lstm_644_3718078:2("
lstm_644_3718080:
(
lstm_644_3718082:(#
dense_214_3718085:

dense_214_3718087:
identity��!dense_214/StatefulPartitionedCall� lstm_642/StatefulPartitionedCall� lstm_643/StatefulPartitionedCall� lstm_644/StatefulPartitionedCall�
 lstm_642/StatefulPartitionedCallStatefulPartitionedCallinputslstm_642_3718064lstm_642_3718066lstm_642_3718068*
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3718023�
 lstm_643/StatefulPartitionedCallStatefulPartitionedCall)lstm_642/StatefulPartitionedCall:output:0lstm_643_3718071lstm_643_3718073lstm_643_3718075*
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3717858�
 lstm_644/StatefulPartitionedCallStatefulPartitionedCall)lstm_643/StatefulPartitionedCall:output:0lstm_644_3718078lstm_644_3718080lstm_644_3718082*
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3717693�
!dense_214/StatefulPartitionedCallStatefulPartitionedCall)lstm_644/StatefulPartitionedCall:output:0dense_214_3718085dense_214_3718087*
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
F__inference_dense_214_layer_call_and_return_conditional_losses_3717495y
IdentityIdentity*dense_214/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_214/StatefulPartitionedCall!^lstm_642/StatefulPartitionedCall!^lstm_643/StatefulPartitionedCall!^lstm_644/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_214/StatefulPartitionedCall!dense_214/StatefulPartitionedCall2D
 lstm_642/StatefulPartitionedCall lstm_642/StatefulPartitionedCall2D
 lstm_643/StatefulPartitionedCall lstm_643/StatefulPartitionedCall2D
 lstm_644/StatefulPartitionedCall lstm_644/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719619

inputs?
,lstm_cell_612_matmul_readvariableop_resource:	�A
.lstm_cell_612_matmul_1_readvariableop_resource:	d�<
-lstm_cell_612_biasadd_readvariableop_resource:	�
identity��$lstm_cell_612/BiasAdd/ReadVariableOp�#lstm_cell_612/MatMul/ReadVariableOp�%lstm_cell_612/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3719535*
condR
while_cond_3719534*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
E__inference_lstm_642_layer_call_and_return_conditional_losses_3718023

inputs?
,lstm_cell_612_matmul_readvariableop_resource:	�A
.lstm_cell_612_matmul_1_readvariableop_resource:	d�<
-lstm_cell_612_biasadd_readvariableop_resource:	�
identity��$lstm_cell_612/BiasAdd/ReadVariableOp�#lstm_cell_612/MatMul/ReadVariableOp�%lstm_cell_612/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3717939*
condR
while_cond_3717938*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_643_layer_call_fn_3719806

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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3717858s
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
�#
�
while_body_3716059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_612_3716083_0:	�0
while_lstm_cell_612_3716085_0:	d�,
while_lstm_cell_612_3716087_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_612_3716083:	�.
while_lstm_cell_612_3716085:	d�*
while_lstm_cell_612_3716087:	���+while/lstm_cell_612/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_612/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_612_3716083_0while_lstm_cell_612_3716085_0while_lstm_cell_612_3716087_0*
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3716045�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_612/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_612/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_612/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_612/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_612_3716083while_lstm_cell_612_3716083_0"<
while_lstm_cell_612_3716085while_lstm_cell_612_3716085_0"<
while_lstm_cell_612_3716087while_lstm_cell_612_3716087_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_612/StatefulPartitionedCall+while/lstm_cell_612/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3720150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3720150___redundant_placeholder05
1while_while_cond_3720150___redundant_placeholder15
1while_while_cond_3720150___redundant_placeholder25
1while_while_cond_3720150___redundant_placeholder3
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3720378

inputs?
,lstm_cell_613_matmul_readvariableop_resource:	d�A
.lstm_cell_613_matmul_1_readvariableop_resource:	2�<
-lstm_cell_613_biasadd_readvariableop_resource:	�
identity��$lstm_cell_613/BiasAdd/ReadVariableOp�#lstm_cell_613/MatMul/ReadVariableOp�%lstm_cell_613/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3720294*
condR
while_cond_3720293*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�J
�
E__inference_lstm_644_layer_call_and_return_conditional_losses_3717693

inputs>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity��$lstm_cell_614/BiasAdd/ReadVariableOp�#lstm_cell_614/MatMul/ReadVariableOp�%lstm_cell_614/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3717609*
condR
while_cond_3717608*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�#
�
while_body_3716250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_612_3716274_0:	�0
while_lstm_cell_612_3716276_0:	d�,
while_lstm_cell_612_3716278_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_612_3716274:	�.
while_lstm_cell_612_3716276:	d�*
while_lstm_cell_612_3716278:	���+while/lstm_cell_612/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_612/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_612_3716274_0while_lstm_cell_612_3716276_0while_lstm_cell_612_3716278_0*
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3716191�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_612/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_612/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_612/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_612/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_612_3716274while_lstm_cell_612_3716274_0"<
while_lstm_cell_612_3716276while_lstm_cell_612_3716276_0"<
while_lstm_cell_612_3716278while_lstm_cell_612_3716278_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_612/StatefulPartitionedCall+while/lstm_cell_612/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3721111

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
while_body_3720294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d�G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_613_biasadd_readvariableop_resource:	���*while/lstm_cell_613/BiasAdd/ReadVariableOp�)while/lstm_cell_613/MatMul/ReadVariableOp�+while/lstm_cell_613/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_614_layer_call_fn_3721243

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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3716891o
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720994

inputs>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity��$lstm_cell_614/BiasAdd/ReadVariableOp�#lstm_cell_614/MatMul/ReadVariableOp�%lstm_cell_614/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3720910*
condR
while_cond_3720909*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
lstm_642_while_cond_3718350.
*lstm_642_while_lstm_642_while_loop_counter4
0lstm_642_while_lstm_642_while_maximum_iterations
lstm_642_while_placeholder 
lstm_642_while_placeholder_1 
lstm_642_while_placeholder_2 
lstm_642_while_placeholder_30
,lstm_642_while_less_lstm_642_strided_slice_1G
Clstm_642_while_lstm_642_while_cond_3718350___redundant_placeholder0G
Clstm_642_while_lstm_642_while_cond_3718350___redundant_placeholder1G
Clstm_642_while_lstm_642_while_cond_3718350___redundant_placeholder2G
Clstm_642_while_lstm_642_while_cond_3718350___redundant_placeholder3
lstm_642_while_identity
�
lstm_642/while/LessLesslstm_642_while_placeholder,lstm_642_while_less_lstm_642_strided_slice_1*
T0*
_output_shapes
: ]
lstm_642/while/IdentityIdentitylstm_642/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_642_while_identity lstm_642/while/Identity:output:0*(
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
�
E__inference_lstm_644_layer_call_and_return_conditional_losses_3717019

inputs'
lstm_cell_614_3716937:2('
lstm_cell_614_3716939:
(#
lstm_cell_614_3716941:(
identity��%lstm_cell_614/StatefulPartitionedCall�while;
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
%lstm_cell_614/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_614_3716937lstm_cell_614_3716939lstm_cell_614_3716941*
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3716891n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_614_3716937lstm_cell_614_3716939lstm_cell_614_3716941*
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
while_body_3716950*
condR
while_cond_3716949*K
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
NoOpNoOp&^lstm_cell_614/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_614/StatefulPartitionedCall%lstm_cell_614/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�

�
lstm_644_while_cond_3718628.
*lstm_644_while_lstm_644_while_loop_counter4
0lstm_644_while_lstm_644_while_maximum_iterations
lstm_644_while_placeholder 
lstm_644_while_placeholder_1 
lstm_644_while_placeholder_2 
lstm_644_while_placeholder_30
,lstm_644_while_less_lstm_644_strided_slice_1G
Clstm_644_while_lstm_644_while_cond_3718628___redundant_placeholder0G
Clstm_644_while_lstm_644_while_cond_3718628___redundant_placeholder1G
Clstm_644_while_lstm_644_while_cond_3718628___redundant_placeholder2G
Clstm_644_while_lstm_644_while_cond_3718628___redundant_placeholder3
lstm_644_while_identity
�
lstm_644/while/LessLesslstm_644_while_placeholder,lstm_644_while_less_lstm_644_strided_slice_1*
T0*
_output_shapes
: ]
lstm_644/while/IdentityIdentitylstm_644/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_644_while_identity lstm_644/while/Identity:output:0*(
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
while_body_3720481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(��*while/lstm_cell_614/BiasAdd/ReadVariableOp�)while/lstm_cell_614/MatMul/ReadVariableOp�+while/lstm_cell_614/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3719249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	�G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_612_biasadd_readvariableop_resource:	���*while/lstm_cell_612/BiasAdd/ReadVariableOp�)while/lstm_cell_612/MatMul/ReadVariableOp�+while/lstm_cell_612/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3721177

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
�
�
while_cond_3717092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3717092___redundant_placeholder05
1while_while_cond_3717092___redundant_placeholder15
1while_while_cond_3717092___redundant_placeholder25
1while_while_cond_3717092___redundant_placeholder3
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3720235

inputs?
,lstm_cell_613_matmul_readvariableop_resource:	d�A
.lstm_cell_613_matmul_1_readvariableop_resource:	2�<
-lstm_cell_613_biasadd_readvariableop_resource:	�
identity��$lstm_cell_613/BiasAdd/ReadVariableOp�#lstm_cell_613/MatMul/ReadVariableOp�%lstm_cell_613/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3720151*
condR
while_cond_3720150*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
*__inference_lstm_642_layer_call_fn_3719168
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3716319|
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
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718719

inputsH
5lstm_642_lstm_cell_612_matmul_readvariableop_resource:	�J
7lstm_642_lstm_cell_612_matmul_1_readvariableop_resource:	d�E
6lstm_642_lstm_cell_612_biasadd_readvariableop_resource:	�H
5lstm_643_lstm_cell_613_matmul_readvariableop_resource:	d�J
7lstm_643_lstm_cell_613_matmul_1_readvariableop_resource:	2�E
6lstm_643_lstm_cell_613_biasadd_readvariableop_resource:	�G
5lstm_644_lstm_cell_614_matmul_readvariableop_resource:2(I
7lstm_644_lstm_cell_614_matmul_1_readvariableop_resource:
(D
6lstm_644_lstm_cell_614_biasadd_readvariableop_resource:(:
(dense_214_matmul_readvariableop_resource:
7
)dense_214_biasadd_readvariableop_resource:
identity�� dense_214/BiasAdd/ReadVariableOp�dense_214/MatMul/ReadVariableOp�-lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp�,lstm_642/lstm_cell_612/MatMul/ReadVariableOp�.lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp�lstm_642/while�-lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp�,lstm_643/lstm_cell_613/MatMul/ReadVariableOp�.lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp�lstm_643/while�-lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp�,lstm_644/lstm_cell_614/MatMul/ReadVariableOp�.lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp�lstm_644/whileD
lstm_642/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_642/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_642/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_642/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_642/strided_sliceStridedSlicelstm_642/Shape:output:0%lstm_642/strided_slice/stack:output:0'lstm_642/strided_slice/stack_1:output:0'lstm_642/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_642/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_642/zeros/packedPacklstm_642/strided_slice:output:0 lstm_642/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_642/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_642/zerosFilllstm_642/zeros/packed:output:0lstm_642/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_642/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_642/zeros_1/packedPacklstm_642/strided_slice:output:0"lstm_642/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_642/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_642/zeros_1Fill lstm_642/zeros_1/packed:output:0lstm_642/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_642/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_642/transpose	Transposeinputs lstm_642/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_642/Shape_1Shapelstm_642/transpose:y:0*
T0*
_output_shapes
:h
lstm_642/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_642/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_642/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_642/strided_slice_1StridedSlicelstm_642/Shape_1:output:0'lstm_642/strided_slice_1/stack:output:0)lstm_642/strided_slice_1/stack_1:output:0)lstm_642/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_642/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_642/TensorArrayV2TensorListReserve-lstm_642/TensorArrayV2/element_shape:output:0!lstm_642/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_642/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_642/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_642/transpose:y:0Glstm_642/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_642/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_642/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_642/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_642/strided_slice_2StridedSlicelstm_642/transpose:y:0'lstm_642/strided_slice_2/stack:output:0)lstm_642/strided_slice_2/stack_1:output:0)lstm_642/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_642/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp5lstm_642_lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_642/lstm_cell_612/MatMulMatMul!lstm_642/strided_slice_2:output:04lstm_642/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_642/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp7lstm_642_lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_642/lstm_cell_612/MatMul_1MatMullstm_642/zeros:output:06lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_642/lstm_cell_612/addAddV2'lstm_642/lstm_cell_612/MatMul:product:0)lstm_642/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_642/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp6lstm_642_lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_642/lstm_cell_612/BiasAddBiasAddlstm_642/lstm_cell_612/add:z:05lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_642/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_642/lstm_cell_612/splitSplit/lstm_642/lstm_cell_612/split/split_dim:output:0'lstm_642/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_642/lstm_cell_612/SigmoidSigmoid%lstm_642/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_642/lstm_cell_612/Sigmoid_1Sigmoid%lstm_642/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_642/lstm_cell_612/mulMul$lstm_642/lstm_cell_612/Sigmoid_1:y:0lstm_642/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_642/lstm_cell_612/ReluRelu%lstm_642/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_642/lstm_cell_612/mul_1Mul"lstm_642/lstm_cell_612/Sigmoid:y:0)lstm_642/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_642/lstm_cell_612/add_1AddV2lstm_642/lstm_cell_612/mul:z:0 lstm_642/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_642/lstm_cell_612/Sigmoid_2Sigmoid%lstm_642/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_642/lstm_cell_612/Relu_1Relu lstm_642/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_642/lstm_cell_612/mul_2Mul$lstm_642/lstm_cell_612/Sigmoid_2:y:0+lstm_642/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_642/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_642/TensorArrayV2_1TensorListReserve/lstm_642/TensorArrayV2_1/element_shape:output:0!lstm_642/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_642/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_642/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_642/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_642/whileWhile$lstm_642/while/loop_counter:output:0*lstm_642/while/maximum_iterations:output:0lstm_642/time:output:0!lstm_642/TensorArrayV2_1:handle:0lstm_642/zeros:output:0lstm_642/zeros_1:output:0!lstm_642/strided_slice_1:output:0@lstm_642/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_642_lstm_cell_612_matmul_readvariableop_resource7lstm_642_lstm_cell_612_matmul_1_readvariableop_resource6lstm_642_lstm_cell_612_biasadd_readvariableop_resource*
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
lstm_642_while_body_3718351*'
condR
lstm_642_while_cond_3718350*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_642/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_642/TensorArrayV2Stack/TensorListStackTensorListStacklstm_642/while:output:3Blstm_642/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_642/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_642/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_642/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_642/strided_slice_3StridedSlice4lstm_642/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_642/strided_slice_3/stack:output:0)lstm_642/strided_slice_3/stack_1:output:0)lstm_642/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_642/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_642/transpose_1	Transpose4lstm_642/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_642/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_642/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_643/ShapeShapelstm_642/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_643/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_643/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_643/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_643/strided_sliceStridedSlicelstm_643/Shape:output:0%lstm_643/strided_slice/stack:output:0'lstm_643/strided_slice/stack_1:output:0'lstm_643/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_643/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_643/zeros/packedPacklstm_643/strided_slice:output:0 lstm_643/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_643/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_643/zerosFilllstm_643/zeros/packed:output:0lstm_643/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_643/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_643/zeros_1/packedPacklstm_643/strided_slice:output:0"lstm_643/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_643/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_643/zeros_1Fill lstm_643/zeros_1/packed:output:0lstm_643/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_643/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_643/transpose	Transposelstm_642/transpose_1:y:0 lstm_643/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_643/Shape_1Shapelstm_643/transpose:y:0*
T0*
_output_shapes
:h
lstm_643/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_643/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_643/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_643/strided_slice_1StridedSlicelstm_643/Shape_1:output:0'lstm_643/strided_slice_1/stack:output:0)lstm_643/strided_slice_1/stack_1:output:0)lstm_643/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_643/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_643/TensorArrayV2TensorListReserve-lstm_643/TensorArrayV2/element_shape:output:0!lstm_643/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_643/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_643/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_643/transpose:y:0Glstm_643/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_643/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_643/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_643/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_643/strided_slice_2StridedSlicelstm_643/transpose:y:0'lstm_643/strided_slice_2/stack:output:0)lstm_643/strided_slice_2/stack_1:output:0)lstm_643/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_643/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp5lstm_643_lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_643/lstm_cell_613/MatMulMatMul!lstm_643/strided_slice_2:output:04lstm_643/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_643/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp7lstm_643_lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_643/lstm_cell_613/MatMul_1MatMullstm_643/zeros:output:06lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_643/lstm_cell_613/addAddV2'lstm_643/lstm_cell_613/MatMul:product:0)lstm_643/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_643/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp6lstm_643_lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_643/lstm_cell_613/BiasAddBiasAddlstm_643/lstm_cell_613/add:z:05lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_643/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_643/lstm_cell_613/splitSplit/lstm_643/lstm_cell_613/split/split_dim:output:0'lstm_643/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_643/lstm_cell_613/SigmoidSigmoid%lstm_643/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_643/lstm_cell_613/Sigmoid_1Sigmoid%lstm_643/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_643/lstm_cell_613/mulMul$lstm_643/lstm_cell_613/Sigmoid_1:y:0lstm_643/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_643/lstm_cell_613/ReluRelu%lstm_643/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_643/lstm_cell_613/mul_1Mul"lstm_643/lstm_cell_613/Sigmoid:y:0)lstm_643/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_643/lstm_cell_613/add_1AddV2lstm_643/lstm_cell_613/mul:z:0 lstm_643/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_643/lstm_cell_613/Sigmoid_2Sigmoid%lstm_643/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_643/lstm_cell_613/Relu_1Relu lstm_643/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_643/lstm_cell_613/mul_2Mul$lstm_643/lstm_cell_613/Sigmoid_2:y:0+lstm_643/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_643/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_643/TensorArrayV2_1TensorListReserve/lstm_643/TensorArrayV2_1/element_shape:output:0!lstm_643/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_643/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_643/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_643/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_643/whileWhile$lstm_643/while/loop_counter:output:0*lstm_643/while/maximum_iterations:output:0lstm_643/time:output:0!lstm_643/TensorArrayV2_1:handle:0lstm_643/zeros:output:0lstm_643/zeros_1:output:0!lstm_643/strided_slice_1:output:0@lstm_643/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_643_lstm_cell_613_matmul_readvariableop_resource7lstm_643_lstm_cell_613_matmul_1_readvariableop_resource6lstm_643_lstm_cell_613_biasadd_readvariableop_resource*
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
lstm_643_while_body_3718490*'
condR
lstm_643_while_cond_3718489*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_643/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_643/TensorArrayV2Stack/TensorListStackTensorListStacklstm_643/while:output:3Blstm_643/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_643/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_643/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_643/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_643/strided_slice_3StridedSlice4lstm_643/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_643/strided_slice_3/stack:output:0)lstm_643/strided_slice_3/stack_1:output:0)lstm_643/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_643/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_643/transpose_1	Transpose4lstm_643/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_643/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_643/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_644/ShapeShapelstm_643/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_644/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_644/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_644/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_644/strided_sliceStridedSlicelstm_644/Shape:output:0%lstm_644/strided_slice/stack:output:0'lstm_644/strided_slice/stack_1:output:0'lstm_644/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_644/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_644/zeros/packedPacklstm_644/strided_slice:output:0 lstm_644/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_644/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_644/zerosFilllstm_644/zeros/packed:output:0lstm_644/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_644/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_644/zeros_1/packedPacklstm_644/strided_slice:output:0"lstm_644/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_644/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_644/zeros_1Fill lstm_644/zeros_1/packed:output:0lstm_644/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_644/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_644/transpose	Transposelstm_643/transpose_1:y:0 lstm_644/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_644/Shape_1Shapelstm_644/transpose:y:0*
T0*
_output_shapes
:h
lstm_644/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_644/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_644/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_644/strided_slice_1StridedSlicelstm_644/Shape_1:output:0'lstm_644/strided_slice_1/stack:output:0)lstm_644/strided_slice_1/stack_1:output:0)lstm_644/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_644/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_644/TensorArrayV2TensorListReserve-lstm_644/TensorArrayV2/element_shape:output:0!lstm_644/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_644/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_644/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_644/transpose:y:0Glstm_644/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_644/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_644/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_644/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_644/strided_slice_2StridedSlicelstm_644/transpose:y:0'lstm_644/strided_slice_2/stack:output:0)lstm_644/strided_slice_2/stack_1:output:0)lstm_644/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_644/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp5lstm_644_lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_644/lstm_cell_614/MatMulMatMul!lstm_644/strided_slice_2:output:04lstm_644/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_644/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp7lstm_644_lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_644/lstm_cell_614/MatMul_1MatMullstm_644/zeros:output:06lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_644/lstm_cell_614/addAddV2'lstm_644/lstm_cell_614/MatMul:product:0)lstm_644/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_644/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp6lstm_644_lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_644/lstm_cell_614/BiasAddBiasAddlstm_644/lstm_cell_614/add:z:05lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_644/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_644/lstm_cell_614/splitSplit/lstm_644/lstm_cell_614/split/split_dim:output:0'lstm_644/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_644/lstm_cell_614/SigmoidSigmoid%lstm_644/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_644/lstm_cell_614/Sigmoid_1Sigmoid%lstm_644/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_644/lstm_cell_614/mulMul$lstm_644/lstm_cell_614/Sigmoid_1:y:0lstm_644/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_644/lstm_cell_614/ReluRelu%lstm_644/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_644/lstm_cell_614/mul_1Mul"lstm_644/lstm_cell_614/Sigmoid:y:0)lstm_644/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_644/lstm_cell_614/add_1AddV2lstm_644/lstm_cell_614/mul:z:0 lstm_644/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_644/lstm_cell_614/Sigmoid_2Sigmoid%lstm_644/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_644/lstm_cell_614/Relu_1Relu lstm_644/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_644/lstm_cell_614/mul_2Mul$lstm_644/lstm_cell_614/Sigmoid_2:y:0+lstm_644/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_644/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_644/TensorArrayV2_1TensorListReserve/lstm_644/TensorArrayV2_1/element_shape:output:0!lstm_644/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_644/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_644/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_644/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_644/whileWhile$lstm_644/while/loop_counter:output:0*lstm_644/while/maximum_iterations:output:0lstm_644/time:output:0!lstm_644/TensorArrayV2_1:handle:0lstm_644/zeros:output:0lstm_644/zeros_1:output:0!lstm_644/strided_slice_1:output:0@lstm_644/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_644_lstm_cell_614_matmul_readvariableop_resource7lstm_644_lstm_cell_614_matmul_1_readvariableop_resource6lstm_644_lstm_cell_614_biasadd_readvariableop_resource*
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
lstm_644_while_body_3718629*'
condR
lstm_644_while_cond_3718628*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_644/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_644/TensorArrayV2Stack/TensorListStackTensorListStacklstm_644/while:output:3Blstm_644/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_644/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_644/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_644/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_644/strided_slice_3StridedSlice4lstm_644/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_644/strided_slice_3/stack:output:0)lstm_644/strided_slice_3/stack_1:output:0)lstm_644/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_644/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_644/transpose_1	Transpose4lstm_644/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_644/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_644/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_214/MatMul/ReadVariableOpReadVariableOp(dense_214_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_214/MatMulMatMul!lstm_644/strided_slice_3:output:0'dense_214/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_214/BiasAdd/ReadVariableOpReadVariableOp)dense_214_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_214/BiasAddBiasAdddense_214/MatMul:product:0(dense_214/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_214/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_214/BiasAdd/ReadVariableOp ^dense_214/MatMul/ReadVariableOp.^lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp-^lstm_642/lstm_cell_612/MatMul/ReadVariableOp/^lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp^lstm_642/while.^lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp-^lstm_643/lstm_cell_613/MatMul/ReadVariableOp/^lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp^lstm_643/while.^lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp-^lstm_644/lstm_cell_614/MatMul/ReadVariableOp/^lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp^lstm_644/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_214/BiasAdd/ReadVariableOp dense_214/BiasAdd/ReadVariableOp2B
dense_214/MatMul/ReadVariableOpdense_214/MatMul/ReadVariableOp2^
-lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp-lstm_642/lstm_cell_612/BiasAdd/ReadVariableOp2\
,lstm_642/lstm_cell_612/MatMul/ReadVariableOp,lstm_642/lstm_cell_612/MatMul/ReadVariableOp2`
.lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp.lstm_642/lstm_cell_612/MatMul_1/ReadVariableOp2 
lstm_642/whilelstm_642/while2^
-lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp-lstm_643/lstm_cell_613/BiasAdd/ReadVariableOp2\
,lstm_643/lstm_cell_613/MatMul/ReadVariableOp,lstm_643/lstm_cell_613/MatMul/ReadVariableOp2`
.lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp.lstm_643/lstm_cell_613/MatMul_1/ReadVariableOp2 
lstm_643/whilelstm_643/while2^
-lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp-lstm_644/lstm_cell_614/BiasAdd/ReadVariableOp2\
,lstm_644/lstm_cell_614/MatMul/ReadVariableOp,lstm_644/lstm_cell_614/MatMul/ReadVariableOp2`
.lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp.lstm_644/lstm_cell_614/MatMul_1/ReadVariableOp2 
lstm_644/whilelstm_644/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_643_layer_call_fn_3719784
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3716669|
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
inputs/0"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
lstm_642_input;
 serving_default_lstm_642_input:0���������=
	dense_2140
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
2dense_214/kernel
:2dense_214/bias
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
0:.	�2lstm_642/lstm_cell_642/kernel
::8	d�2'lstm_642/lstm_cell_642/recurrent_kernel
*:(�2lstm_642/lstm_cell_642/bias
0:.	d�2lstm_643/lstm_cell_643/kernel
::8	2�2'lstm_643/lstm_cell_643/recurrent_kernel
*:(�2lstm_643/lstm_cell_643/bias
/:-2(2lstm_644/lstm_cell_644/kernel
9:7
(2'lstm_644/lstm_cell_644/recurrent_kernel
):'(2lstm_644/lstm_cell_644/bias
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
2Adam/dense_214/kernel/m
!:2Adam/dense_214/bias/m
5:3	�2$Adam/lstm_642/lstm_cell_642/kernel/m
?:=	d�2.Adam/lstm_642/lstm_cell_642/recurrent_kernel/m
/:-�2"Adam/lstm_642/lstm_cell_642/bias/m
5:3	d�2$Adam/lstm_643/lstm_cell_643/kernel/m
?:=	2�2.Adam/lstm_643/lstm_cell_643/recurrent_kernel/m
/:-�2"Adam/lstm_643/lstm_cell_643/bias/m
4:22(2$Adam/lstm_644/lstm_cell_644/kernel/m
>:<
(2.Adam/lstm_644/lstm_cell_644/recurrent_kernel/m
.:,(2"Adam/lstm_644/lstm_cell_644/bias/m
':%
2Adam/dense_214/kernel/v
!:2Adam/dense_214/bias/v
5:3	�2$Adam/lstm_642/lstm_cell_642/kernel/v
?:=	d�2.Adam/lstm_642/lstm_cell_642/recurrent_kernel/v
/:-�2"Adam/lstm_642/lstm_cell_642/bias/v
5:3	d�2$Adam/lstm_643/lstm_cell_643/kernel/v
?:=	2�2.Adam/lstm_643/lstm_cell_643/recurrent_kernel/v
/:-�2"Adam/lstm_643/lstm_cell_643/bias/v
4:22(2$Adam/lstm_644/lstm_cell_644/kernel/v
>:<
(2.Adam/lstm_644/lstm_cell_644/recurrent_kernel/v
.:,(2"Adam/lstm_644/lstm_cell_644/bias/v
�2�
0__inference_sequential_214_layer_call_fn_3717527
0__inference_sequential_214_layer_call_fn_3718265
0__inference_sequential_214_layer_call_fn_3718292
0__inference_sequential_214_layer_call_fn_3718143�
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
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718719
K__inference_sequential_214_layer_call_and_return_conditional_losses_3719146
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718173
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718203�
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
"__inference__wrapped_model_3715978lstm_642_input"�
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
*__inference_lstm_642_layer_call_fn_3719157
*__inference_lstm_642_layer_call_fn_3719168
*__inference_lstm_642_layer_call_fn_3719179
*__inference_lstm_642_layer_call_fn_3719190�
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719333
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719476
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719619
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719762�
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
*__inference_lstm_643_layer_call_fn_3719773
*__inference_lstm_643_layer_call_fn_3719784
*__inference_lstm_643_layer_call_fn_3719795
*__inference_lstm_643_layer_call_fn_3719806�
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3719949
E__inference_lstm_643_layer_call_and_return_conditional_losses_3720092
E__inference_lstm_643_layer_call_and_return_conditional_losses_3720235
E__inference_lstm_643_layer_call_and_return_conditional_losses_3720378�
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
*__inference_lstm_644_layer_call_fn_3720389
*__inference_lstm_644_layer_call_fn_3720400
*__inference_lstm_644_layer_call_fn_3720411
*__inference_lstm_644_layer_call_fn_3720422�
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720565
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720708
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720851
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720994�
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
+__inference_dense_214_layer_call_fn_3721003�
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
F__inference_dense_214_layer_call_and_return_conditional_losses_3721013�
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
%__inference_signature_wrapper_3718238lstm_642_input"�
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
/__inference_lstm_cell_612_layer_call_fn_3721030
/__inference_lstm_cell_612_layer_call_fn_3721047�
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3721079
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3721111�
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
/__inference_lstm_cell_613_layer_call_fn_3721128
/__inference_lstm_cell_613_layer_call_fn_3721145�
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3721177
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3721209�
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
/__inference_lstm_cell_614_layer_call_fn_3721226
/__inference_lstm_cell_614_layer_call_fn_3721243�
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3721275
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3721307�
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
"__inference__wrapped_model_3715978�-./012345!";�8
1�.
,�)
lstm_642_input���������
� "5�2
0
	dense_214#� 
	dense_214����������
F__inference_dense_214_layer_call_and_return_conditional_losses_3721013\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� ~
+__inference_dense_214_layer_call_fn_3721003O!"/�,
%�"
 �
inputs���������

� "�����������
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719333�-./O�L
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719476�-./O�L
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719619q-./?�<
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
E__inference_lstm_642_layer_call_and_return_conditional_losses_3719762q-./?�<
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
*__inference_lstm_642_layer_call_fn_3719157}-./O�L
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
*__inference_lstm_642_layer_call_fn_3719168}-./O�L
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
*__inference_lstm_642_layer_call_fn_3719179d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
*__inference_lstm_642_layer_call_fn_3719190d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
E__inference_lstm_643_layer_call_and_return_conditional_losses_3719949�012O�L
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3720092�012O�L
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3720235q012?�<
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
E__inference_lstm_643_layer_call_and_return_conditional_losses_3720378q012?�<
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
*__inference_lstm_643_layer_call_fn_3719773}012O�L
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
*__inference_lstm_643_layer_call_fn_3719784}012O�L
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
*__inference_lstm_643_layer_call_fn_3719795d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
*__inference_lstm_643_layer_call_fn_3719806d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720565}345O�L
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720708}345O�L
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720851m345?�<
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
E__inference_lstm_644_layer_call_and_return_conditional_losses_3720994m345?�<
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
*__inference_lstm_644_layer_call_fn_3720389p345O�L
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
*__inference_lstm_644_layer_call_fn_3720400p345O�L
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
*__inference_lstm_644_layer_call_fn_3720411`345?�<
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
*__inference_lstm_644_layer_call_fn_3720422`345?�<
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3721079�-./��}
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3721111�-./��}
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
/__inference_lstm_cell_612_layer_call_fn_3721030�-./��}
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
/__inference_lstm_cell_612_layer_call_fn_3721047�-./��}
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3721177�012��}
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3721209�012��}
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
/__inference_lstm_cell_613_layer_call_fn_3721128�012��}
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
/__inference_lstm_cell_613_layer_call_fn_3721145�012��}
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3721275�345��}
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3721307�345��}
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
/__inference_lstm_cell_614_layer_call_fn_3721226�345��}
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
/__inference_lstm_cell_614_layer_call_fn_3721243�345��}
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
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718173y-./012345!"C�@
9�6
,�)
lstm_642_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718203y-./012345!"C�@
9�6
,�)
lstm_642_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_214_layer_call_and_return_conditional_losses_3718719q-./012345!";�8
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
K__inference_sequential_214_layer_call_and_return_conditional_losses_3719146q-./012345!";�8
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
0__inference_sequential_214_layer_call_fn_3717527l-./012345!"C�@
9�6
,�)
lstm_642_input���������
p 

 
� "�����������
0__inference_sequential_214_layer_call_fn_3718143l-./012345!"C�@
9�6
,�)
lstm_642_input���������
p

 
� "�����������
0__inference_sequential_214_layer_call_fn_3718265d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
0__inference_sequential_214_layer_call_fn_3718292d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_3718238�-./012345!"M�J
� 
C�@
>
lstm_642_input,�)
lstm_642_input���������"5�2
0
	dense_214#� 
	dense_214���������
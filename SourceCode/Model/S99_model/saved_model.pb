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
�"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ž-
|
dense_167/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_167/kernel
u
$dense_167/kernel/Read/ReadVariableOpReadVariableOpdense_167/kernel*
_output_shapes

:
*
dtype0
t
dense_167/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_167/bias
m
"dense_167/bias/Read/ReadVariableOpReadVariableOpdense_167/bias*
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
lstm_501/lstm_cell_501/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_501/lstm_cell_501/kernel
�
1lstm_501/lstm_cell_501/kernel/Read/ReadVariableOpReadVariableOplstm_501/lstm_cell_501/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_501/lstm_cell_501/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_501/lstm_cell_501/recurrent_kernel
�
;lstm_501/lstm_cell_501/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_501/lstm_cell_501/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_501/lstm_cell_501/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_501/lstm_cell_501/bias
�
/lstm_501/lstm_cell_501/bias/Read/ReadVariableOpReadVariableOplstm_501/lstm_cell_501/bias*
_output_shapes	
:�*
dtype0
�
lstm_502/lstm_cell_502/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_502/lstm_cell_502/kernel
�
1lstm_502/lstm_cell_502/kernel/Read/ReadVariableOpReadVariableOplstm_502/lstm_cell_502/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_502/lstm_cell_502/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_502/lstm_cell_502/recurrent_kernel
�
;lstm_502/lstm_cell_502/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_502/lstm_cell_502/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_502/lstm_cell_502/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_502/lstm_cell_502/bias
�
/lstm_502/lstm_cell_502/bias/Read/ReadVariableOpReadVariableOplstm_502/lstm_cell_502/bias*
_output_shapes	
:�*
dtype0
�
lstm_503/lstm_cell_503/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_503/lstm_cell_503/kernel
�
1lstm_503/lstm_cell_503/kernel/Read/ReadVariableOpReadVariableOplstm_503/lstm_cell_503/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_503/lstm_cell_503/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_503/lstm_cell_503/recurrent_kernel
�
;lstm_503/lstm_cell_503/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_503/lstm_cell_503/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_503/lstm_cell_503/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_503/lstm_cell_503/bias
�
/lstm_503/lstm_cell_503/bias/Read/ReadVariableOpReadVariableOplstm_503/lstm_cell_503/bias*
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
Adam/dense_167/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_167/kernel/m
�
+Adam/dense_167/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_167/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_167/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_167/bias/m
{
)Adam/dense_167/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_167/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_501/lstm_cell_501/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_501/lstm_cell_501/kernel/m
�
8Adam/lstm_501/lstm_cell_501/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_501/lstm_cell_501/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_501/lstm_cell_501/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_501/lstm_cell_501/recurrent_kernel/m
�
BAdam/lstm_501/lstm_cell_501/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_501/lstm_cell_501/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_501/lstm_cell_501/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_501/lstm_cell_501/bias/m
�
6Adam/lstm_501/lstm_cell_501/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_501/lstm_cell_501/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_502/lstm_cell_502/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_502/lstm_cell_502/kernel/m
�
8Adam/lstm_502/lstm_cell_502/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_502/lstm_cell_502/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_502/lstm_cell_502/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_502/lstm_cell_502/recurrent_kernel/m
�
BAdam/lstm_502/lstm_cell_502/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_502/lstm_cell_502/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_502/lstm_cell_502/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_502/lstm_cell_502/bias/m
�
6Adam/lstm_502/lstm_cell_502/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_502/lstm_cell_502/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_503/lstm_cell_503/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_503/lstm_cell_503/kernel/m
�
8Adam/lstm_503/lstm_cell_503/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_503/lstm_cell_503/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_503/lstm_cell_503/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_503/lstm_cell_503/recurrent_kernel/m
�
BAdam/lstm_503/lstm_cell_503/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_503/lstm_cell_503/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_503/lstm_cell_503/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_503/lstm_cell_503/bias/m
�
6Adam/lstm_503/lstm_cell_503/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_503/lstm_cell_503/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_167/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_167/kernel/v
�
+Adam/dense_167/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_167/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_167/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_167/bias/v
{
)Adam/dense_167/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_167/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_501/lstm_cell_501/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_501/lstm_cell_501/kernel/v
�
8Adam/lstm_501/lstm_cell_501/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_501/lstm_cell_501/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_501/lstm_cell_501/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_501/lstm_cell_501/recurrent_kernel/v
�
BAdam/lstm_501/lstm_cell_501/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_501/lstm_cell_501/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_501/lstm_cell_501/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_501/lstm_cell_501/bias/v
�
6Adam/lstm_501/lstm_cell_501/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_501/lstm_cell_501/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_502/lstm_cell_502/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_502/lstm_cell_502/kernel/v
�
8Adam/lstm_502/lstm_cell_502/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_502/lstm_cell_502/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_502/lstm_cell_502/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_502/lstm_cell_502/recurrent_kernel/v
�
BAdam/lstm_502/lstm_cell_502/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_502/lstm_cell_502/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_502/lstm_cell_502/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_502/lstm_cell_502/bias/v
�
6Adam/lstm_502/lstm_cell_502/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_502/lstm_cell_502/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_503/lstm_cell_503/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_503/lstm_cell_503/kernel/v
�
8Adam/lstm_503/lstm_cell_503/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_503/lstm_cell_503/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_503/lstm_cell_503/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_503/lstm_cell_503/recurrent_kernel/v
�
BAdam/lstm_503/lstm_cell_503/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_503/lstm_cell_503/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_503/lstm_cell_503/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_503/lstm_cell_503/bias/v
�
6Adam/lstm_503/lstm_cell_503/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_503/lstm_cell_503/bias/v*
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
VARIABLE_VALUEdense_167/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_167/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_501/lstm_cell_501/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_501/lstm_cell_501/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_501/lstm_cell_501/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_502/lstm_cell_502/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_502/lstm_cell_502/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_502/lstm_cell_502/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_503/lstm_cell_503/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_503/lstm_cell_503/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_503/lstm_cell_503/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_167/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_167/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_501/lstm_cell_501/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_501/lstm_cell_501/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_501/lstm_cell_501/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_502/lstm_cell_502/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_502/lstm_cell_502/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_502/lstm_cell_502/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_503/lstm_cell_503/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_503/lstm_cell_503/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_503/lstm_cell_503/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_167/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_167/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_501/lstm_cell_501/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_501/lstm_cell_501/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_501/lstm_cell_501/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_502/lstm_cell_502/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_502/lstm_cell_502/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_502/lstm_cell_502/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_503/lstm_cell_503/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_503/lstm_cell_503/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_503/lstm_cell_503/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_501_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_501_inputlstm_501/lstm_cell_501/kernel'lstm_501/lstm_cell_501/recurrent_kernellstm_501/lstm_cell_501/biaslstm_502/lstm_cell_502/kernel'lstm_502/lstm_cell_502/recurrent_kernellstm_502/lstm_cell_502/biaslstm_503/lstm_cell_503/kernel'lstm_503/lstm_cell_503/recurrent_kernellstm_503/lstm_cell_503/biasdense_167/kerneldense_167/bias*
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
$__inference_signature_wrapper_867191
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_167/kernel/Read/ReadVariableOp"dense_167/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_501/lstm_cell_501/kernel/Read/ReadVariableOp;lstm_501/lstm_cell_501/recurrent_kernel/Read/ReadVariableOp/lstm_501/lstm_cell_501/bias/Read/ReadVariableOp1lstm_502/lstm_cell_502/kernel/Read/ReadVariableOp;lstm_502/lstm_cell_502/recurrent_kernel/Read/ReadVariableOp/lstm_502/lstm_cell_502/bias/Read/ReadVariableOp1lstm_503/lstm_cell_503/kernel/Read/ReadVariableOp;lstm_503/lstm_cell_503/recurrent_kernel/Read/ReadVariableOp/lstm_503/lstm_cell_503/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_167/kernel/m/Read/ReadVariableOp)Adam/dense_167/bias/m/Read/ReadVariableOp8Adam/lstm_501/lstm_cell_501/kernel/m/Read/ReadVariableOpBAdam/lstm_501/lstm_cell_501/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_501/lstm_cell_501/bias/m/Read/ReadVariableOp8Adam/lstm_502/lstm_cell_502/kernel/m/Read/ReadVariableOpBAdam/lstm_502/lstm_cell_502/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_502/lstm_cell_502/bias/m/Read/ReadVariableOp8Adam/lstm_503/lstm_cell_503/kernel/m/Read/ReadVariableOpBAdam/lstm_503/lstm_cell_503/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_503/lstm_cell_503/bias/m/Read/ReadVariableOp+Adam/dense_167/kernel/v/Read/ReadVariableOp)Adam/dense_167/bias/v/Read/ReadVariableOp8Adam/lstm_501/lstm_cell_501/kernel/v/Read/ReadVariableOpBAdam/lstm_501/lstm_cell_501/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_501/lstm_cell_501/bias/v/Read/ReadVariableOp8Adam/lstm_502/lstm_cell_502/kernel/v/Read/ReadVariableOpBAdam/lstm_502/lstm_cell_502/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_502/lstm_cell_502/bias/v/Read/ReadVariableOp8Adam/lstm_503/lstm_cell_503/kernel/v/Read/ReadVariableOpBAdam/lstm_503/lstm_cell_503/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_503/lstm_cell_503/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_870403
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_167/kerneldense_167/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_501/lstm_cell_501/kernel'lstm_501/lstm_cell_501/recurrent_kernellstm_501/lstm_cell_501/biaslstm_502/lstm_cell_502/kernel'lstm_502/lstm_cell_502/recurrent_kernellstm_502/lstm_cell_502/biaslstm_503/lstm_cell_503/kernel'lstm_503/lstm_cell_503/recurrent_kernellstm_503/lstm_cell_503/biastotalcountAdam/dense_167/kernel/mAdam/dense_167/bias/m$Adam/lstm_501/lstm_cell_501/kernel/m.Adam/lstm_501/lstm_cell_501/recurrent_kernel/m"Adam/lstm_501/lstm_cell_501/bias/m$Adam/lstm_502/lstm_cell_502/kernel/m.Adam/lstm_502/lstm_cell_502/recurrent_kernel/m"Adam/lstm_502/lstm_cell_502/bias/m$Adam/lstm_503/lstm_cell_503/kernel/m.Adam/lstm_503/lstm_cell_503/recurrent_kernel/m"Adam/lstm_503/lstm_cell_503/bias/mAdam/dense_167/kernel/vAdam/dense_167/bias/v$Adam/lstm_501/lstm_cell_501/kernel/v.Adam/lstm_501/lstm_cell_501/recurrent_kernel/v"Adam/lstm_501/lstm_cell_501/bias/v$Adam/lstm_502/lstm_cell_502/kernel/v.Adam/lstm_502/lstm_cell_502/recurrent_kernel/v"Adam/lstm_502/lstm_cell_502/bias/v$Adam/lstm_503/lstm_cell_503/kernel/v.Adam/lstm_503/lstm_cell_503/recurrent_kernel/v"Adam/lstm_503/lstm_cell_503/bias/v*4
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
"__inference__traced_restore_870533��+
�
�
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_870064

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
D__inference_lstm_502_layer_call_and_return_conditional_losses_865431

inputs'
lstm_cell_142_865349:	d�'
lstm_cell_142_865351:	2�#
lstm_cell_142_865353:	�
identity��%lstm_cell_142/StatefulPartitionedCall�while;
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
%lstm_cell_142/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_142_865349lstm_cell_142_865351lstm_cell_142_865353*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_865348n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_142_865349lstm_cell_142_865351lstm_cell_142_865353*
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
while_body_865362*
condR
while_cond_865361*K
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
NoOpNoOp&^lstm_cell_142/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_142/StatefulPartitionedCall%lstm_cell_142/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
while_cond_868201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_868201___redundant_placeholder04
0while_while_cond_868201___redundant_placeholder14
0while_while_cond_868201___redundant_placeholder24
0while_while_cond_868201___redundant_placeholder3
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
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_865494

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
while_cond_865902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865902___redundant_placeholder04
0while_while_cond_865902___redundant_placeholder14
0while_while_cond_865902___redundant_placeholder24
0while_while_cond_865902___redundant_placeholder3
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
)__inference_lstm_502_layer_call_fn_868737
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_865622|
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
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_870162

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
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_865348

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
while_body_866562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_143_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_143_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_143_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_143_matmul_readvariableop_resource:2(F
4while_lstm_cell_143_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_143_biasadd_readvariableop_resource:(��*while/lstm_cell_143/BiasAdd/ReadVariableOp�)while/lstm_cell_143/MatMul/ReadVariableOp�+while/lstm_cell_143/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_143/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_143_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_143/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_143_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_143/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_143/addAddV2$while/lstm_cell_143/MatMul:product:0&while/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_143_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_143/BiasAddBiasAddwhile/lstm_cell_143/add:z:02while/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_143/splitSplit,while/lstm_cell_143/split/split_dim:output:0$while/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_143/SigmoidSigmoid"while/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_1Sigmoid"while/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mulMul!while/lstm_cell_143/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_143/ReluRelu"while/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_1Mulwhile/lstm_cell_143/Sigmoid:y:0&while/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/add_1AddV2while/lstm_cell_143/mul:z:0while/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_2Sigmoid"while/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_143/Relu_1Reluwhile/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_2Mul!while/lstm_cell_143/Sigmoid_2:y:0(while/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_143/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_143/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_143/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_143/BiasAdd/ReadVariableOp*^while/lstm_cell_143/MatMul/ReadVariableOp,^while/lstm_cell_143/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_143_biasadd_readvariableop_resource5while_lstm_cell_143_biasadd_readvariableop_resource_0"n
4while_lstm_cell_143_matmul_1_readvariableop_resource6while_lstm_cell_143_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_143_matmul_readvariableop_resource4while_lstm_cell_143_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_143/BiasAdd/ReadVariableOp*while/lstm_cell_143/BiasAdd/ReadVariableOp2V
)while/lstm_cell_143/MatMul/ReadVariableOp)while/lstm_cell_143/MatMul/ReadVariableOp2Z
+while/lstm_cell_143/MatMul_1/ReadVariableOp+while/lstm_cell_143/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_866561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_866561___redundant_placeholder04
0while_while_cond_866561___redundant_placeholder14
0while_while_cond_866561___redundant_placeholder24
0while_while_cond_866561___redundant_placeholder3
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

lstm_502_while_body_867870.
*lstm_502_while_lstm_502_while_loop_counter4
0lstm_502_while_lstm_502_while_maximum_iterations
lstm_502_while_placeholder 
lstm_502_while_placeholder_1 
lstm_502_while_placeholder_2 
lstm_502_while_placeholder_3-
)lstm_502_while_lstm_502_strided_slice_1_0i
elstm_502_while_tensorarrayv2read_tensorlistgetitem_lstm_502_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_502_while_lstm_cell_142_matmul_readvariableop_resource_0:	d�R
?lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource_0:	2�M
>lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource_0:	�
lstm_502_while_identity
lstm_502_while_identity_1
lstm_502_while_identity_2
lstm_502_while_identity_3
lstm_502_while_identity_4
lstm_502_while_identity_5+
'lstm_502_while_lstm_502_strided_slice_1g
clstm_502_while_tensorarrayv2read_tensorlistgetitem_lstm_502_tensorarrayunstack_tensorlistfromtensorN
;lstm_502_while_lstm_cell_142_matmul_readvariableop_resource:	d�P
=lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource:	2�K
<lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource:	���3lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp�2lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp�4lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp�
@lstm_502/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_502/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_502_while_tensorarrayv2read_tensorlistgetitem_lstm_502_tensorarrayunstack_tensorlistfromtensor_0lstm_502_while_placeholderIlstm_502/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_502/while/lstm_cell_142/MatMul/ReadVariableOpReadVariableOp=lstm_502_while_lstm_cell_142_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_502/while/lstm_cell_142/MatMulMatMul9lstm_502/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp?lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_502/while/lstm_cell_142/MatMul_1MatMullstm_502_while_placeholder_2<lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_502/while/lstm_cell_142/addAddV2-lstm_502/while/lstm_cell_142/MatMul:product:0/lstm_502/while/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp>lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_502/while/lstm_cell_142/BiasAddBiasAdd$lstm_502/while/lstm_cell_142/add:z:0;lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_502/while/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_502/while/lstm_cell_142/splitSplit5lstm_502/while/lstm_cell_142/split/split_dim:output:0-lstm_502/while/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_502/while/lstm_cell_142/SigmoidSigmoid+lstm_502/while/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_502/while/lstm_cell_142/Sigmoid_1Sigmoid+lstm_502/while/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_502/while/lstm_cell_142/mulMul*lstm_502/while/lstm_cell_142/Sigmoid_1:y:0lstm_502_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_502/while/lstm_cell_142/ReluRelu+lstm_502/while/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_502/while/lstm_cell_142/mul_1Mul(lstm_502/while/lstm_cell_142/Sigmoid:y:0/lstm_502/while/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_502/while/lstm_cell_142/add_1AddV2$lstm_502/while/lstm_cell_142/mul:z:0&lstm_502/while/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_502/while/lstm_cell_142/Sigmoid_2Sigmoid+lstm_502/while/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_502/while/lstm_cell_142/Relu_1Relu&lstm_502/while/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_502/while/lstm_cell_142/mul_2Mul*lstm_502/while/lstm_cell_142/Sigmoid_2:y:01lstm_502/while/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_502/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_502_while_placeholder_1lstm_502_while_placeholder&lstm_502/while/lstm_cell_142/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_502/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_502/while/addAddV2lstm_502_while_placeholderlstm_502/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_502/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_502/while/add_1AddV2*lstm_502_while_lstm_502_while_loop_counterlstm_502/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_502/while/IdentityIdentitylstm_502/while/add_1:z:0^lstm_502/while/NoOp*
T0*
_output_shapes
: �
lstm_502/while/Identity_1Identity0lstm_502_while_lstm_502_while_maximum_iterations^lstm_502/while/NoOp*
T0*
_output_shapes
: t
lstm_502/while/Identity_2Identitylstm_502/while/add:z:0^lstm_502/while/NoOp*
T0*
_output_shapes
: �
lstm_502/while/Identity_3IdentityClstm_502/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_502/while/NoOp*
T0*
_output_shapes
: �
lstm_502/while/Identity_4Identity&lstm_502/while/lstm_cell_142/mul_2:z:0^lstm_502/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_502/while/Identity_5Identity&lstm_502/while/lstm_cell_142/add_1:z:0^lstm_502/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_502/while/NoOpNoOp4^lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp3^lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp5^lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_502_while_identity lstm_502/while/Identity:output:0"?
lstm_502_while_identity_1"lstm_502/while/Identity_1:output:0"?
lstm_502_while_identity_2"lstm_502/while/Identity_2:output:0"?
lstm_502_while_identity_3"lstm_502/while/Identity_3:output:0"?
lstm_502_while_identity_4"lstm_502/while/Identity_4:output:0"?
lstm_502_while_identity_5"lstm_502/while/Identity_5:output:0"T
'lstm_502_while_lstm_502_strided_slice_1)lstm_502_while_lstm_502_strided_slice_1_0"~
<lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource>lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource_0"�
=lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource?lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource_0"|
;lstm_502_while_lstm_cell_142_matmul_readvariableop_resource=lstm_502_while_lstm_cell_142_matmul_readvariableop_resource_0"�
clstm_502_while_tensorarrayv2read_tensorlistgetitem_lstm_502_tensorarrayunstack_tensorlistfromtensorelstm_502_while_tensorarrayv2read_tensorlistgetitem_lstm_502_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp3lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp2h
2lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp2lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp2l
4lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp4lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_868429
inputs_0?
,lstm_cell_141_matmul_readvariableop_resource:	�A
.lstm_cell_141_matmul_1_readvariableop_resource:	d�<
-lstm_cell_141_biasadd_readvariableop_resource:	�
identity��$lstm_cell_141/BiasAdd/ReadVariableOp�#lstm_cell_141/MatMul/ReadVariableOp�%lstm_cell_141/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_141/MatMul/ReadVariableOpReadVariableOp,lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_141/MatMulMatMulstrided_slice_2:output:0+lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_141_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_141/MatMul_1MatMulzeros:output:0-lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_141/addAddV2lstm_cell_141/MatMul:product:0 lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_141/BiasAddBiasAddlstm_cell_141/add:z:0,lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_141/splitSplit&lstm_cell_141/split/split_dim:output:0lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_141/SigmoidSigmoidlstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_1Sigmoidlstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_141/mulMullstm_cell_141/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_141/ReluRelulstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_1Mullstm_cell_141/Sigmoid:y:0 lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_141/add_1AddV2lstm_cell_141/mul:z:0lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_2Sigmoidlstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_141/Relu_1Relulstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_2Mullstm_cell_141/Sigmoid_2:y:0"lstm_cell_141/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_141_matmul_readvariableop_resource.lstm_cell_141_matmul_1_readvariableop_resource-lstm_cell_141_biasadd_readvariableop_resource*
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
while_body_868345*
condR
while_cond_868344*K
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
NoOpNoOp%^lstm_cell_141/BiasAdd/ReadVariableOp$^lstm_cell_141/MatMul/ReadVariableOp&^lstm_cell_141/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_141/BiasAdd/ReadVariableOp$lstm_cell_141/BiasAdd/ReadVariableOp2J
#lstm_cell_141/MatMul/ReadVariableOp#lstm_cell_141/MatMul/ReadVariableOp2N
%lstm_cell_141/MatMul_1/ReadVariableOp%lstm_cell_141/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�8
�
while_body_866046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_141_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_141_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_141_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_141_matmul_readvariableop_resource:	�G
4while_lstm_cell_141_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_141_biasadd_readvariableop_resource:	���*while/lstm_cell_141/BiasAdd/ReadVariableOp�)while/lstm_cell_141/MatMul/ReadVariableOp�+while/lstm_cell_141/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_141/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_141_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_141/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_141/addAddV2$while/lstm_cell_141/MatMul:product:0&while/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_141/BiasAddBiasAddwhile/lstm_cell_141/add:z:02while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_141/splitSplit,while/lstm_cell_141/split/split_dim:output:0$while/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_141/SigmoidSigmoid"while/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_1Sigmoid"while/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mulMul!while/lstm_cell_141/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_141/ReluRelu"while/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_1Mulwhile/lstm_cell_141/Sigmoid:y:0&while/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/add_1AddV2while/lstm_cell_141/mul:z:0while/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_2Sigmoid"while/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_141/Relu_1Reluwhile/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_2Mul!while/lstm_cell_141/Sigmoid_2:y:0(while/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_141/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_141/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_141/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp,^while/lstm_cell_141/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_141_biasadd_readvariableop_resource5while_lstm_cell_141_biasadd_readvariableop_resource_0"n
4while_lstm_cell_141_matmul_1_readvariableop_resource6while_lstm_cell_141_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_141_matmul_readvariableop_resource4while_lstm_cell_141_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_141/BiasAdd/ReadVariableOp*while/lstm_cell_141/BiasAdd/ReadVariableOp2V
)while/lstm_cell_141/MatMul/ReadVariableOp)while/lstm_cell_141/MatMul/ReadVariableOp2Z
+while/lstm_cell_141/MatMul_1/ReadVariableOp+while/lstm_cell_141/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_866976

inputs?
,lstm_cell_141_matmul_readvariableop_resource:	�A
.lstm_cell_141_matmul_1_readvariableop_resource:	d�<
-lstm_cell_141_biasadd_readvariableop_resource:	�
identity��$lstm_cell_141/BiasAdd/ReadVariableOp�#lstm_cell_141/MatMul/ReadVariableOp�%lstm_cell_141/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_141/MatMul/ReadVariableOpReadVariableOp,lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_141/MatMulMatMulstrided_slice_2:output:0+lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_141_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_141/MatMul_1MatMulzeros:output:0-lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_141/addAddV2lstm_cell_141/MatMul:product:0 lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_141/BiasAddBiasAddlstm_cell_141/add:z:0,lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_141/splitSplit&lstm_cell_141/split/split_dim:output:0lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_141/SigmoidSigmoidlstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_1Sigmoidlstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_141/mulMullstm_cell_141/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_141/ReluRelulstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_1Mullstm_cell_141/Sigmoid:y:0 lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_141/add_1AddV2lstm_cell_141/mul:z:0lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_2Sigmoidlstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_141/Relu_1Relulstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_2Mullstm_cell_141/Sigmoid_2:y:0"lstm_cell_141/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_141_matmul_readvariableop_resource.lstm_cell_141_matmul_1_readvariableop_resource-lstm_cell_141_biasadd_readvariableop_resource*
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
while_body_866892*
condR
while_cond_866891*K
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
NoOpNoOp%^lstm_cell_141/BiasAdd/ReadVariableOp$^lstm_cell_141/MatMul/ReadVariableOp&^lstm_cell_141/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_141/BiasAdd/ReadVariableOp$lstm_cell_141/BiasAdd/ReadVariableOp2J
#lstm_cell_141/MatMul/ReadVariableOp#lstm_cell_141/MatMul/ReadVariableOp2N
%lstm_cell_141/MatMul_1/ReadVariableOp%lstm_cell_141/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_501_layer_call_fn_868121
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_865272|
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
�
�
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_865698

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
�
)__inference_lstm_502_layer_call_fn_868748

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
D__inference_lstm_502_layer_call_and_return_conditional_losses_866280s
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

�
lstm_501_while_cond_867730.
*lstm_501_while_lstm_501_while_loop_counter4
0lstm_501_while_lstm_501_while_maximum_iterations
lstm_501_while_placeholder 
lstm_501_while_placeholder_1 
lstm_501_while_placeholder_2 
lstm_501_while_placeholder_30
,lstm_501_while_less_lstm_501_strided_slice_1F
Blstm_501_while_lstm_501_while_cond_867730___redundant_placeholder0F
Blstm_501_while_lstm_501_while_cond_867730___redundant_placeholder1F
Blstm_501_while_lstm_501_while_cond_867730___redundant_placeholder2F
Blstm_501_while_lstm_501_while_cond_867730___redundant_placeholder3
lstm_501_while_identity
�
lstm_501/while/LessLesslstm_501_while_placeholder,lstm_501_while_less_lstm_501_strided_slice_1*
T0*
_output_shapes
: ]
lstm_501/while/IdentityIdentitylstm_501/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_501_while_identity lstm_501/while/Identity:output:0*(
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
while_cond_869576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_869576___redundant_placeholder04
0while_while_cond_869576___redundant_placeholder14
0while_while_cond_869576___redundant_placeholder24
0while_while_cond_869576___redundant_placeholder3
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
while_cond_865011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865011___redundant_placeholder04
0while_while_cond_865011___redundant_placeholder14
0while_while_cond_865011___redundant_placeholder24
0while_while_cond_865011___redundant_placeholder3
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_866811

inputs?
,lstm_cell_142_matmul_readvariableop_resource:	d�A
.lstm_cell_142_matmul_1_readvariableop_resource:	2�<
-lstm_cell_142_biasadd_readvariableop_resource:	�
identity��$lstm_cell_142/BiasAdd/ReadVariableOp�#lstm_cell_142/MatMul/ReadVariableOp�%lstm_cell_142/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_142/MatMul/ReadVariableOpReadVariableOp,lstm_cell_142_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_142/MatMulMatMulstrided_slice_2:output:0+lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_142_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_142/MatMul_1MatMulzeros:output:0-lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_142/addAddV2lstm_cell_142/MatMul:product:0 lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_142_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_142/BiasAddBiasAddlstm_cell_142/add:z:0,lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_142/splitSplit&lstm_cell_142/split/split_dim:output:0lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_142/SigmoidSigmoidlstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_1Sigmoidlstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_142/mulMullstm_cell_142/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_142/ReluRelulstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_1Mullstm_cell_142/Sigmoid:y:0 lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_142/add_1AddV2lstm_cell_142/mul:z:0lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_2Sigmoidlstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_142/Relu_1Relulstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_2Mullstm_cell_142/Sigmoid_2:y:0"lstm_cell_142/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_142_matmul_readvariableop_resource.lstm_cell_142_matmul_1_readvariableop_resource-lstm_cell_142_biasadd_readvariableop_resource*
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
while_body_866727*
condR
while_cond_866726*K
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
NoOpNoOp%^lstm_cell_142/BiasAdd/ReadVariableOp$^lstm_cell_142/MatMul/ReadVariableOp&^lstm_cell_142/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_142/BiasAdd/ReadVariableOp$lstm_cell_142/BiasAdd/ReadVariableOp2J
#lstm_cell_142/MatMul/ReadVariableOp#lstm_cell_142/MatMul/ReadVariableOp2N
%lstm_cell_142/MatMul_1/ReadVariableOp%lstm_cell_142/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�W
�
__inference__traced_save_870403
file_prefix/
+savev2_dense_167_kernel_read_readvariableop-
)savev2_dense_167_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_501_lstm_cell_501_kernel_read_readvariableopF
Bsavev2_lstm_501_lstm_cell_501_recurrent_kernel_read_readvariableop:
6savev2_lstm_501_lstm_cell_501_bias_read_readvariableop<
8savev2_lstm_502_lstm_cell_502_kernel_read_readvariableopF
Bsavev2_lstm_502_lstm_cell_502_recurrent_kernel_read_readvariableop:
6savev2_lstm_502_lstm_cell_502_bias_read_readvariableop<
8savev2_lstm_503_lstm_cell_503_kernel_read_readvariableopF
Bsavev2_lstm_503_lstm_cell_503_recurrent_kernel_read_readvariableop:
6savev2_lstm_503_lstm_cell_503_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_167_kernel_m_read_readvariableop4
0savev2_adam_dense_167_bias_m_read_readvariableopC
?savev2_adam_lstm_501_lstm_cell_501_kernel_m_read_readvariableopM
Isavev2_adam_lstm_501_lstm_cell_501_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_501_lstm_cell_501_bias_m_read_readvariableopC
?savev2_adam_lstm_502_lstm_cell_502_kernel_m_read_readvariableopM
Isavev2_adam_lstm_502_lstm_cell_502_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_502_lstm_cell_502_bias_m_read_readvariableopC
?savev2_adam_lstm_503_lstm_cell_503_kernel_m_read_readvariableopM
Isavev2_adam_lstm_503_lstm_cell_503_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_503_lstm_cell_503_bias_m_read_readvariableop6
2savev2_adam_dense_167_kernel_v_read_readvariableop4
0savev2_adam_dense_167_bias_v_read_readvariableopC
?savev2_adam_lstm_501_lstm_cell_501_kernel_v_read_readvariableopM
Isavev2_adam_lstm_501_lstm_cell_501_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_501_lstm_cell_501_bias_v_read_readvariableopC
?savev2_adam_lstm_502_lstm_cell_502_kernel_v_read_readvariableopM
Isavev2_adam_lstm_502_lstm_cell_502_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_502_lstm_cell_502_bias_v_read_readvariableopC
?savev2_adam_lstm_503_lstm_cell_503_kernel_v_read_readvariableopM
Isavev2_adam_lstm_503_lstm_cell_503_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_503_lstm_cell_503_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_167_kernel_read_readvariableop)savev2_dense_167_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_501_lstm_cell_501_kernel_read_readvariableopBsavev2_lstm_501_lstm_cell_501_recurrent_kernel_read_readvariableop6savev2_lstm_501_lstm_cell_501_bias_read_readvariableop8savev2_lstm_502_lstm_cell_502_kernel_read_readvariableopBsavev2_lstm_502_lstm_cell_502_recurrent_kernel_read_readvariableop6savev2_lstm_502_lstm_cell_502_bias_read_readvariableop8savev2_lstm_503_lstm_cell_503_kernel_read_readvariableopBsavev2_lstm_503_lstm_cell_503_recurrent_kernel_read_readvariableop6savev2_lstm_503_lstm_cell_503_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_167_kernel_m_read_readvariableop0savev2_adam_dense_167_bias_m_read_readvariableop?savev2_adam_lstm_501_lstm_cell_501_kernel_m_read_readvariableopIsavev2_adam_lstm_501_lstm_cell_501_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_501_lstm_cell_501_bias_m_read_readvariableop?savev2_adam_lstm_502_lstm_cell_502_kernel_m_read_readvariableopIsavev2_adam_lstm_502_lstm_cell_502_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_502_lstm_cell_502_bias_m_read_readvariableop?savev2_adam_lstm_503_lstm_cell_503_kernel_m_read_readvariableopIsavev2_adam_lstm_503_lstm_cell_503_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_503_lstm_cell_503_bias_m_read_readvariableop2savev2_adam_dense_167_kernel_v_read_readvariableop0savev2_adam_dense_167_bias_v_read_readvariableop?savev2_adam_lstm_501_lstm_cell_501_kernel_v_read_readvariableopIsavev2_adam_lstm_501_lstm_cell_501_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_501_lstm_cell_501_bias_v_read_readvariableop?savev2_adam_lstm_502_lstm_cell_502_kernel_v_read_readvariableopIsavev2_adam_lstm_502_lstm_cell_502_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_502_lstm_cell_502_bias_v_read_readvariableop?savev2_adam_lstm_503_lstm_cell_503_kernel_v_read_readvariableopIsavev2_adam_lstm_503_lstm_cell_503_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_503_lstm_cell_503_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�8
�
while_body_869247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_142_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_142_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_142_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_142_matmul_readvariableop_resource:	d�G
4while_lstm_cell_142_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_142_biasadd_readvariableop_resource:	���*while/lstm_cell_142/BiasAdd/ReadVariableOp�)while/lstm_cell_142/MatMul/ReadVariableOp�+while/lstm_cell_142/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_142/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_142_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_142/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_142_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_142/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_142/addAddV2$while/lstm_cell_142/MatMul:product:0&while/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_142_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_142/BiasAddBiasAddwhile/lstm_cell_142/add:z:02while/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_142/splitSplit,while/lstm_cell_142/split/split_dim:output:0$while/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_142/SigmoidSigmoid"while/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_1Sigmoid"while/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mulMul!while/lstm_cell_142/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_142/ReluRelu"while/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_1Mulwhile/lstm_cell_142/Sigmoid:y:0&while/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/add_1AddV2while/lstm_cell_142/mul:z:0while/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_2Sigmoid"while/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_142/Relu_1Reluwhile/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_2Mul!while/lstm_cell_142/Sigmoid_2:y:0(while/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_142/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_142/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_142/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_142/BiasAdd/ReadVariableOp*^while/lstm_cell_142/MatMul/ReadVariableOp,^while/lstm_cell_142/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_142_biasadd_readvariableop_resource5while_lstm_cell_142_biasadd_readvariableop_resource_0"n
4while_lstm_cell_142_matmul_1_readvariableop_resource6while_lstm_cell_142_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_142_matmul_readvariableop_resource4while_lstm_cell_142_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_142/BiasAdd/ReadVariableOp*while/lstm_cell_142/BiasAdd/ReadVariableOp2V
)while/lstm_cell_142/MatMul/ReadVariableOp)while/lstm_cell_142/MatMul/ReadVariableOp2Z
+while/lstm_cell_142/MatMul_1/ReadVariableOp+while/lstm_cell_142/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_868202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_141_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_141_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_141_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_141_matmul_readvariableop_resource:	�G
4while_lstm_cell_141_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_141_biasadd_readvariableop_resource:	���*while/lstm_cell_141/BiasAdd/ReadVariableOp�)while/lstm_cell_141/MatMul/ReadVariableOp�+while/lstm_cell_141/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_141/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_141_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_141/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_141/addAddV2$while/lstm_cell_141/MatMul:product:0&while/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_141/BiasAddBiasAddwhile/lstm_cell_141/add:z:02while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_141/splitSplit,while/lstm_cell_141/split/split_dim:output:0$while/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_141/SigmoidSigmoid"while/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_1Sigmoid"while/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mulMul!while/lstm_cell_141/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_141/ReluRelu"while/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_1Mulwhile/lstm_cell_141/Sigmoid:y:0&while/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/add_1AddV2while/lstm_cell_141/mul:z:0while/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_2Sigmoid"while/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_141/Relu_1Reluwhile/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_2Mul!while/lstm_cell_141/Sigmoid_2:y:0(while/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_141/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_141/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_141/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp,^while/lstm_cell_141/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_141_biasadd_readvariableop_resource5while_lstm_cell_141_biasadd_readvariableop_resource_0"n
4while_lstm_cell_141_matmul_1_readvariableop_resource6while_lstm_cell_141_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_141_matmul_readvariableop_resource4while_lstm_cell_141_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_141/BiasAdd/ReadVariableOp*while/lstm_cell_141/BiasAdd/ReadVariableOp2V
)while/lstm_cell_141/MatMul/ReadVariableOp)while/lstm_cell_141/MatMul/ReadVariableOp2Z
+while/lstm_cell_141/MatMul_1/ReadVariableOp+while/lstm_cell_141/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_869103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_869103___redundant_placeholder04
0while_while_cond_869103___redundant_placeholder14
0while_while_cond_869103___redundant_placeholder24
0while_while_cond_869103___redundant_placeholder3
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
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_870130

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
/__inference_sequential_167_layer_call_fn_866480
lstm_501_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_501_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_167_layer_call_and_return_conditional_losses_866455o
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
_user_specified_namelstm_501_input
�
�
)sequential_167_lstm_502_while_cond_864701L
Hsequential_167_lstm_502_while_sequential_167_lstm_502_while_loop_counterR
Nsequential_167_lstm_502_while_sequential_167_lstm_502_while_maximum_iterations-
)sequential_167_lstm_502_while_placeholder/
+sequential_167_lstm_502_while_placeholder_1/
+sequential_167_lstm_502_while_placeholder_2/
+sequential_167_lstm_502_while_placeholder_3N
Jsequential_167_lstm_502_while_less_sequential_167_lstm_502_strided_slice_1d
`sequential_167_lstm_502_while_sequential_167_lstm_502_while_cond_864701___redundant_placeholder0d
`sequential_167_lstm_502_while_sequential_167_lstm_502_while_cond_864701___redundant_placeholder1d
`sequential_167_lstm_502_while_sequential_167_lstm_502_while_cond_864701___redundant_placeholder2d
`sequential_167_lstm_502_while_sequential_167_lstm_502_while_cond_864701___redundant_placeholder3*
&sequential_167_lstm_502_while_identity
�
"sequential_167/lstm_502/while/LessLess)sequential_167_lstm_502_while_placeholderJsequential_167_lstm_502_while_less_sequential_167_lstm_502_strided_slice_1*
T0*
_output_shapes
: {
&sequential_167/lstm_502/while/IdentityIdentity&sequential_167/lstm_502/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_167_lstm_502_while_identity/sequential_167/lstm_502/while/Identity:output:0*(
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
*__inference_dense_167_layer_call_fn_869956

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
E__inference_dense_167_layer_call_and_return_conditional_losses_866448o
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_869331

inputs?
,lstm_cell_142_matmul_readvariableop_resource:	d�A
.lstm_cell_142_matmul_1_readvariableop_resource:	2�<
-lstm_cell_142_biasadd_readvariableop_resource:	�
identity��$lstm_cell_142/BiasAdd/ReadVariableOp�#lstm_cell_142/MatMul/ReadVariableOp�%lstm_cell_142/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_142/MatMul/ReadVariableOpReadVariableOp,lstm_cell_142_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_142/MatMulMatMulstrided_slice_2:output:0+lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_142_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_142/MatMul_1MatMulzeros:output:0-lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_142/addAddV2lstm_cell_142/MatMul:product:0 lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_142_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_142/BiasAddBiasAddlstm_cell_142/add:z:0,lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_142/splitSplit&lstm_cell_142/split/split_dim:output:0lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_142/SigmoidSigmoidlstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_1Sigmoidlstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_142/mulMullstm_cell_142/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_142/ReluRelulstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_1Mullstm_cell_142/Sigmoid:y:0 lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_142/add_1AddV2lstm_cell_142/mul:z:0lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_2Sigmoidlstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_142/Relu_1Relulstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_2Mullstm_cell_142/Sigmoid_2:y:0"lstm_cell_142/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_142_matmul_readvariableop_resource.lstm_cell_142_matmul_1_readvariableop_resource-lstm_cell_142_biasadd_readvariableop_resource*
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
while_body_869247*
condR
while_cond_869246*K
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
NoOpNoOp%^lstm_cell_142/BiasAdd/ReadVariableOp$^lstm_cell_142/MatMul/ReadVariableOp&^lstm_cell_142/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_142/BiasAdd/ReadVariableOp$lstm_cell_142/BiasAdd/ReadVariableOp2J
#lstm_cell_142/MatMul/ReadVariableOp#lstm_cell_142/MatMul/ReadVariableOp2N
%lstm_cell_142/MatMul_1/ReadVariableOp%lstm_cell_142/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
/__inference_sequential_167_layer_call_fn_867096
lstm_501_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_501_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_167_layer_call_and_return_conditional_losses_867044o
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
_user_specified_namelstm_501_input
�
�
)__inference_lstm_503_layer_call_fn_869353
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_865972o
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
while_cond_868344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_868344___redundant_placeholder04
0while_while_cond_868344___redundant_placeholder14
0while_while_cond_868344___redundant_placeholder24
0while_while_cond_868344___redundant_placeholder3
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_868572

inputs?
,lstm_cell_141_matmul_readvariableop_resource:	�A
.lstm_cell_141_matmul_1_readvariableop_resource:	d�<
-lstm_cell_141_biasadd_readvariableop_resource:	�
identity��$lstm_cell_141/BiasAdd/ReadVariableOp�#lstm_cell_141/MatMul/ReadVariableOp�%lstm_cell_141/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_141/MatMul/ReadVariableOpReadVariableOp,lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_141/MatMulMatMulstrided_slice_2:output:0+lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_141_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_141/MatMul_1MatMulzeros:output:0-lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_141/addAddV2lstm_cell_141/MatMul:product:0 lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_141/BiasAddBiasAddlstm_cell_141/add:z:0,lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_141/splitSplit&lstm_cell_141/split/split_dim:output:0lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_141/SigmoidSigmoidlstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_1Sigmoidlstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_141/mulMullstm_cell_141/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_141/ReluRelulstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_1Mullstm_cell_141/Sigmoid:y:0 lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_141/add_1AddV2lstm_cell_141/mul:z:0lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_2Sigmoidlstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_141/Relu_1Relulstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_2Mullstm_cell_141/Sigmoid_2:y:0"lstm_cell_141/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_141_matmul_readvariableop_resource.lstm_cell_141_matmul_1_readvariableop_resource-lstm_cell_141_biasadd_readvariableop_resource*
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
while_body_868488*
condR
while_cond_868487*K
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
NoOpNoOp%^lstm_cell_141/BiasAdd/ReadVariableOp$^lstm_cell_141/MatMul/ReadVariableOp&^lstm_cell_141/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_141/BiasAdd/ReadVariableOp$lstm_cell_141/BiasAdd/ReadVariableOp2J
#lstm_cell_141/MatMul/ReadVariableOp#lstm_cell_141/MatMul/ReadVariableOp2N
%lstm_cell_141/MatMul_1/ReadVariableOp%lstm_cell_141/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_869862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_869862___redundant_placeholder04
0while_while_cond_869862___redundant_placeholder14
0while_while_cond_869862___redundant_placeholder24
0while_while_cond_869862___redundant_placeholder3
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
$__inference_signature_wrapper_867191
lstm_501_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_501_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_864931o
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
_user_specified_namelstm_501_input
�
�
while_cond_865711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865711___redundant_placeholder04
0while_while_cond_865711___redundant_placeholder14
0while_while_cond_865711___redundant_placeholder24
0while_while_cond_865711___redundant_placeholder3
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
while_cond_868817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_868817___redundant_placeholder04
0while_while_cond_868817___redundant_placeholder14
0while_while_cond_868817___redundant_placeholder24
0while_while_cond_868817___redundant_placeholder3
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
while_cond_865202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865202___redundant_placeholder04
0while_while_cond_865202___redundant_placeholder14
0while_while_cond_865202___redundant_placeholder24
0while_while_cond_865202___redundant_placeholder3
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
while_cond_865361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865361___redundant_placeholder04
0while_while_cond_865361___redundant_placeholder14
0while_while_cond_865361___redundant_placeholder24
0while_while_cond_865361___redundant_placeholder3
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
�K
�
D__inference_lstm_501_layer_call_and_return_conditional_losses_868286
inputs_0?
,lstm_cell_141_matmul_readvariableop_resource:	�A
.lstm_cell_141_matmul_1_readvariableop_resource:	d�<
-lstm_cell_141_biasadd_readvariableop_resource:	�
identity��$lstm_cell_141/BiasAdd/ReadVariableOp�#lstm_cell_141/MatMul/ReadVariableOp�%lstm_cell_141/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_141/MatMul/ReadVariableOpReadVariableOp,lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_141/MatMulMatMulstrided_slice_2:output:0+lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_141_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_141/MatMul_1MatMulzeros:output:0-lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_141/addAddV2lstm_cell_141/MatMul:product:0 lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_141/BiasAddBiasAddlstm_cell_141/add:z:0,lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_141/splitSplit&lstm_cell_141/split/split_dim:output:0lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_141/SigmoidSigmoidlstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_1Sigmoidlstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_141/mulMullstm_cell_141/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_141/ReluRelulstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_1Mullstm_cell_141/Sigmoid:y:0 lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_141/add_1AddV2lstm_cell_141/mul:z:0lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_2Sigmoidlstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_141/Relu_1Relulstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_2Mullstm_cell_141/Sigmoid_2:y:0"lstm_cell_141/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_141_matmul_readvariableop_resource.lstm_cell_141_matmul_1_readvariableop_resource-lstm_cell_141_biasadd_readvariableop_resource*
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
while_body_868202*
condR
while_cond_868201*K
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
NoOpNoOp%^lstm_cell_141/BiasAdd/ReadVariableOp$^lstm_cell_141/MatMul/ReadVariableOp&^lstm_cell_141/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_141/BiasAdd/ReadVariableOp$lstm_cell_141/BiasAdd/ReadVariableOp2J
#lstm_cell_141/MatMul/ReadVariableOp#lstm_cell_141/MatMul/ReadVariableOp2N
%lstm_cell_141/MatMul_1/ReadVariableOp%lstm_cell_141/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�J
�
D__inference_lstm_503_layer_call_and_return_conditional_losses_866646

inputs>
,lstm_cell_143_matmul_readvariableop_resource:2(@
.lstm_cell_143_matmul_1_readvariableop_resource:
(;
-lstm_cell_143_biasadd_readvariableop_resource:(
identity��$lstm_cell_143/BiasAdd/ReadVariableOp�#lstm_cell_143/MatMul/ReadVariableOp�%lstm_cell_143/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_143/MatMul/ReadVariableOpReadVariableOp,lstm_cell_143_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_143/MatMulMatMulstrided_slice_2:output:0+lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_143_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_143/MatMul_1MatMulzeros:output:0-lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_143/addAddV2lstm_cell_143/MatMul:product:0 lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_143_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_143/BiasAddBiasAddlstm_cell_143/add:z:0,lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_143/splitSplit&lstm_cell_143/split/split_dim:output:0lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_143/SigmoidSigmoidlstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_1Sigmoidlstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_143/mulMullstm_cell_143/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_143/ReluRelulstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_1Mullstm_cell_143/Sigmoid:y:0 lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_143/add_1AddV2lstm_cell_143/mul:z:0lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_2Sigmoidlstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_143/Relu_1Relulstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_2Mullstm_cell_143/Sigmoid_2:y:0"lstm_cell_143/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_143_matmul_readvariableop_resource.lstm_cell_143_matmul_1_readvariableop_resource-lstm_cell_143_biasadd_readvariableop_resource*
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
while_body_866562*
condR
while_cond_866561*K
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
NoOpNoOp%^lstm_cell_143/BiasAdd/ReadVariableOp$^lstm_cell_143/MatMul/ReadVariableOp&^lstm_cell_143/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_143/BiasAdd/ReadVariableOp$lstm_cell_143/BiasAdd/ReadVariableOp2J
#lstm_cell_143/MatMul/ReadVariableOp#lstm_cell_143/MatMul/ReadVariableOp2N
%lstm_cell_143/MatMul_1/ReadVariableOp%lstm_cell_143/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_865844

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
lstm_503_while_cond_868008.
*lstm_503_while_lstm_503_while_loop_counter4
0lstm_503_while_lstm_503_while_maximum_iterations
lstm_503_while_placeholder 
lstm_503_while_placeholder_1 
lstm_503_while_placeholder_2 
lstm_503_while_placeholder_30
,lstm_503_while_less_lstm_503_strided_slice_1F
Blstm_503_while_lstm_503_while_cond_868008___redundant_placeholder0F
Blstm_503_while_lstm_503_while_cond_868008___redundant_placeholder1F
Blstm_503_while_lstm_503_while_cond_868008___redundant_placeholder2F
Blstm_503_while_lstm_503_while_cond_868008___redundant_placeholder3
lstm_503_while_identity
�
lstm_503/while/LessLesslstm_503_while_placeholder,lstm_503_while_less_lstm_503_strided_slice_1*
T0*
_output_shapes
: ]
lstm_503/while/IdentityIdentitylstm_503/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_503_while_identity lstm_503/while/Identity:output:0*(
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_865622

inputs'
lstm_cell_142_865540:	d�'
lstm_cell_142_865542:	2�#
lstm_cell_142_865544:	�
identity��%lstm_cell_142/StatefulPartitionedCall�while;
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
%lstm_cell_142/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_142_865540lstm_cell_142_865542lstm_cell_142_865544*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_865494n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_142_865540lstm_cell_142_865542lstm_cell_142_865544*
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
while_body_865553*
condR
while_cond_865552*K
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
NoOpNoOp&^lstm_cell_142/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_142/StatefulPartitionedCall%lstm_cell_142/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_870032

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

�
/__inference_sequential_167_layer_call_fn_867218

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
J__inference_sequential_167_layer_call_and_return_conditional_losses_866455o
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
while_cond_866045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_866045___redundant_placeholder04
0while_while_cond_866045___redundant_placeholder14
0while_while_cond_866045___redundant_placeholder24
0while_while_cond_866045___redundant_placeholder3
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
while_body_868631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_141_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_141_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_141_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_141_matmul_readvariableop_resource:	�G
4while_lstm_cell_141_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_141_biasadd_readvariableop_resource:	���*while/lstm_cell_141/BiasAdd/ReadVariableOp�)while/lstm_cell_141/MatMul/ReadVariableOp�+while/lstm_cell_141/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_141/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_141_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_141/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_141/addAddV2$while/lstm_cell_141/MatMul:product:0&while/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_141/BiasAddBiasAddwhile/lstm_cell_141/add:z:02while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_141/splitSplit,while/lstm_cell_141/split/split_dim:output:0$while/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_141/SigmoidSigmoid"while/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_1Sigmoid"while/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mulMul!while/lstm_cell_141/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_141/ReluRelu"while/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_1Mulwhile/lstm_cell_141/Sigmoid:y:0&while/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/add_1AddV2while/lstm_cell_141/mul:z:0while/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_2Sigmoid"while/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_141/Relu_1Reluwhile/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_2Mul!while/lstm_cell_141/Sigmoid_2:y:0(while/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_141/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_141/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_141/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp,^while/lstm_cell_141/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_141_biasadd_readvariableop_resource5while_lstm_cell_141_biasadd_readvariableop_resource_0"n
4while_lstm_cell_141_matmul_1_readvariableop_resource6while_lstm_cell_141_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_141_matmul_readvariableop_resource4while_lstm_cell_141_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_141/BiasAdd/ReadVariableOp*while/lstm_cell_141/BiasAdd/ReadVariableOp2V
)while/lstm_cell_141/MatMul/ReadVariableOp)while/lstm_cell_141/MatMul/ReadVariableOp2Z
+while/lstm_cell_141/MatMul_1/ReadVariableOp+while/lstm_cell_141/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_869246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_869246___redundant_placeholder04
0while_while_cond_869246___redundant_placeholder14
0while_while_cond_869246___redundant_placeholder24
0while_while_cond_869246___redundant_placeholder3
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

lstm_503_while_body_867582.
*lstm_503_while_lstm_503_while_loop_counter4
0lstm_503_while_lstm_503_while_maximum_iterations
lstm_503_while_placeholder 
lstm_503_while_placeholder_1 
lstm_503_while_placeholder_2 
lstm_503_while_placeholder_3-
)lstm_503_while_lstm_503_strided_slice_1_0i
elstm_503_while_tensorarrayv2read_tensorlistgetitem_lstm_503_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_503_while_lstm_cell_143_matmul_readvariableop_resource_0:2(Q
?lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource_0:
(L
>lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource_0:(
lstm_503_while_identity
lstm_503_while_identity_1
lstm_503_while_identity_2
lstm_503_while_identity_3
lstm_503_while_identity_4
lstm_503_while_identity_5+
'lstm_503_while_lstm_503_strided_slice_1g
clstm_503_while_tensorarrayv2read_tensorlistgetitem_lstm_503_tensorarrayunstack_tensorlistfromtensorM
;lstm_503_while_lstm_cell_143_matmul_readvariableop_resource:2(O
=lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource:
(J
<lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource:(��3lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp�2lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp�4lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp�
@lstm_503/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_503/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_503_while_tensorarrayv2read_tensorlistgetitem_lstm_503_tensorarrayunstack_tensorlistfromtensor_0lstm_503_while_placeholderIlstm_503/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_503/while/lstm_cell_143/MatMul/ReadVariableOpReadVariableOp=lstm_503_while_lstm_cell_143_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_503/while/lstm_cell_143/MatMulMatMul9lstm_503/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp?lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_503/while/lstm_cell_143/MatMul_1MatMullstm_503_while_placeholder_2<lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_503/while/lstm_cell_143/addAddV2-lstm_503/while/lstm_cell_143/MatMul:product:0/lstm_503/while/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp>lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_503/while/lstm_cell_143/BiasAddBiasAdd$lstm_503/while/lstm_cell_143/add:z:0;lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_503/while/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_503/while/lstm_cell_143/splitSplit5lstm_503/while/lstm_cell_143/split/split_dim:output:0-lstm_503/while/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_503/while/lstm_cell_143/SigmoidSigmoid+lstm_503/while/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_503/while/lstm_cell_143/Sigmoid_1Sigmoid+lstm_503/while/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_503/while/lstm_cell_143/mulMul*lstm_503/while/lstm_cell_143/Sigmoid_1:y:0lstm_503_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_503/while/lstm_cell_143/ReluRelu+lstm_503/while/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_503/while/lstm_cell_143/mul_1Mul(lstm_503/while/lstm_cell_143/Sigmoid:y:0/lstm_503/while/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_503/while/lstm_cell_143/add_1AddV2$lstm_503/while/lstm_cell_143/mul:z:0&lstm_503/while/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_503/while/lstm_cell_143/Sigmoid_2Sigmoid+lstm_503/while/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_503/while/lstm_cell_143/Relu_1Relu&lstm_503/while/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_503/while/lstm_cell_143/mul_2Mul*lstm_503/while/lstm_cell_143/Sigmoid_2:y:01lstm_503/while/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_503/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_503_while_placeholder_1lstm_503_while_placeholder&lstm_503/while/lstm_cell_143/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_503/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_503/while/addAddV2lstm_503_while_placeholderlstm_503/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_503/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_503/while/add_1AddV2*lstm_503_while_lstm_503_while_loop_counterlstm_503/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_503/while/IdentityIdentitylstm_503/while/add_1:z:0^lstm_503/while/NoOp*
T0*
_output_shapes
: �
lstm_503/while/Identity_1Identity0lstm_503_while_lstm_503_while_maximum_iterations^lstm_503/while/NoOp*
T0*
_output_shapes
: t
lstm_503/while/Identity_2Identitylstm_503/while/add:z:0^lstm_503/while/NoOp*
T0*
_output_shapes
: �
lstm_503/while/Identity_3IdentityClstm_503/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_503/while/NoOp*
T0*
_output_shapes
: �
lstm_503/while/Identity_4Identity&lstm_503/while/lstm_cell_143/mul_2:z:0^lstm_503/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_503/while/Identity_5Identity&lstm_503/while/lstm_cell_143/add_1:z:0^lstm_503/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_503/while/NoOpNoOp4^lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp3^lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp5^lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_503_while_identity lstm_503/while/Identity:output:0"?
lstm_503_while_identity_1"lstm_503/while/Identity_1:output:0"?
lstm_503_while_identity_2"lstm_503/while/Identity_2:output:0"?
lstm_503_while_identity_3"lstm_503/while/Identity_3:output:0"?
lstm_503_while_identity_4"lstm_503/while/Identity_4:output:0"?
lstm_503_while_identity_5"lstm_503/while/Identity_5:output:0"T
'lstm_503_while_lstm_503_strided_slice_1)lstm_503_while_lstm_503_strided_slice_1_0"~
<lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource>lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource_0"�
=lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource?lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource_0"|
;lstm_503_while_lstm_cell_143_matmul_readvariableop_resource=lstm_503_while_lstm_cell_143_matmul_readvariableop_resource_0"�
clstm_503_while_tensorarrayv2read_tensorlistgetitem_lstm_503_tensorarrayunstack_tensorlistfromtensorelstm_503_while_tensorarrayv2read_tensorlistgetitem_lstm_503_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp3lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp2h
2lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp2lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp2l
4lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp4lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_869434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_143_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_143_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_143_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_143_matmul_readvariableop_resource:2(F
4while_lstm_cell_143_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_143_biasadd_readvariableop_resource:(��*while/lstm_cell_143/BiasAdd/ReadVariableOp�)while/lstm_cell_143/MatMul/ReadVariableOp�+while/lstm_cell_143/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_143/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_143_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_143/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_143_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_143/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_143/addAddV2$while/lstm_cell_143/MatMul:product:0&while/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_143_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_143/BiasAddBiasAddwhile/lstm_cell_143/add:z:02while/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_143/splitSplit,while/lstm_cell_143/split/split_dim:output:0$while/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_143/SigmoidSigmoid"while/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_1Sigmoid"while/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mulMul!while/lstm_cell_143/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_143/ReluRelu"while/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_1Mulwhile/lstm_cell_143/Sigmoid:y:0&while/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/add_1AddV2while/lstm_cell_143/mul:z:0while/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_2Sigmoid"while/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_143/Relu_1Reluwhile/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_2Mul!while/lstm_cell_143/Sigmoid_2:y:0(while/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_143/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_143/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_143/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_143/BiasAdd/ReadVariableOp*^while/lstm_cell_143/MatMul/ReadVariableOp,^while/lstm_cell_143/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_143_biasadd_readvariableop_resource5while_lstm_cell_143_biasadd_readvariableop_resource_0"n
4while_lstm_cell_143_matmul_1_readvariableop_resource6while_lstm_cell_143_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_143_matmul_readvariableop_resource4while_lstm_cell_143_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_143/BiasAdd/ReadVariableOp*while/lstm_cell_143/BiasAdd/ReadVariableOp2V
)while/lstm_cell_143/MatMul/ReadVariableOp)while/lstm_cell_143/MatMul/ReadVariableOp2Z
+while/lstm_cell_143/MatMul_1/ReadVariableOp+while/lstm_cell_143/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_141_layer_call_fn_869983

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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_864998o
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
)__inference_lstm_503_layer_call_fn_869342
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_865781o
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
while_cond_868960
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_868960___redundant_placeholder04
0while_while_cond_868960___redundant_placeholder14
0while_while_cond_868960___redundant_placeholder24
0while_while_cond_868960___redundant_placeholder3
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
J__inference_sequential_167_layer_call_and_return_conditional_losses_866455

inputs"
lstm_501_866131:	�"
lstm_501_866133:	d�
lstm_501_866135:	�"
lstm_502_866281:	d�"
lstm_502_866283:	2�
lstm_502_866285:	�!
lstm_503_866431:2(!
lstm_503_866433:
(
lstm_503_866435:("
dense_167_866449:

dense_167_866451:
identity��!dense_167/StatefulPartitionedCall� lstm_501/StatefulPartitionedCall� lstm_502/StatefulPartitionedCall� lstm_503/StatefulPartitionedCall�
 lstm_501/StatefulPartitionedCallStatefulPartitionedCallinputslstm_501_866131lstm_501_866133lstm_501_866135*
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_866130�
 lstm_502/StatefulPartitionedCallStatefulPartitionedCall)lstm_501/StatefulPartitionedCall:output:0lstm_502_866281lstm_502_866283lstm_502_866285*
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_866280�
 lstm_503/StatefulPartitionedCallStatefulPartitionedCall)lstm_502/StatefulPartitionedCall:output:0lstm_503_866431lstm_503_866433lstm_503_866435*
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_866430�
!dense_167/StatefulPartitionedCallStatefulPartitionedCall)lstm_503/StatefulPartitionedCall:output:0dense_167_866449dense_167_866451*
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
E__inference_dense_167_layer_call_and_return_conditional_losses_866448y
IdentityIdentity*dense_167/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_167/StatefulPartitionedCall!^lstm_501/StatefulPartitionedCall!^lstm_502/StatefulPartitionedCall!^lstm_503/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_167/StatefulPartitionedCall!dense_167/StatefulPartitionedCall2D
 lstm_501/StatefulPartitionedCall lstm_501/StatefulPartitionedCall2D
 lstm_502/StatefulPartitionedCall lstm_502/StatefulPartitionedCall2D
 lstm_503/StatefulPartitionedCall lstm_503/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
lstm_501_while_cond_867303.
*lstm_501_while_lstm_501_while_loop_counter4
0lstm_501_while_lstm_501_while_maximum_iterations
lstm_501_while_placeholder 
lstm_501_while_placeholder_1 
lstm_501_while_placeholder_2 
lstm_501_while_placeholder_30
,lstm_501_while_less_lstm_501_strided_slice_1F
Blstm_501_while_lstm_501_while_cond_867303___redundant_placeholder0F
Blstm_501_while_lstm_501_while_cond_867303___redundant_placeholder1F
Blstm_501_while_lstm_501_while_cond_867303___redundant_placeholder2F
Blstm_501_while_lstm_501_while_cond_867303___redundant_placeholder3
lstm_501_while_identity
�
lstm_501/while/LessLesslstm_501_while_placeholder,lstm_501_while_less_lstm_501_strided_slice_1*
T0*
_output_shapes
: ]
lstm_501/while/IdentityIdentitylstm_501/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_501_while_identity lstm_501/while/Identity:output:0*(
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
while_body_868488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_141_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_141_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_141_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_141_matmul_readvariableop_resource:	�G
4while_lstm_cell_141_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_141_biasadd_readvariableop_resource:	���*while/lstm_cell_141/BiasAdd/ReadVariableOp�)while/lstm_cell_141/MatMul/ReadVariableOp�+while/lstm_cell_141/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_141/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_141_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_141/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_141/addAddV2$while/lstm_cell_141/MatMul:product:0&while/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_141/BiasAddBiasAddwhile/lstm_cell_141/add:z:02while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_141/splitSplit,while/lstm_cell_141/split/split_dim:output:0$while/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_141/SigmoidSigmoid"while/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_1Sigmoid"while/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mulMul!while/lstm_cell_141/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_141/ReluRelu"while/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_1Mulwhile/lstm_cell_141/Sigmoid:y:0&while/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/add_1AddV2while/lstm_cell_141/mul:z:0while/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_2Sigmoid"while/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_141/Relu_1Reluwhile/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_2Mul!while/lstm_cell_141/Sigmoid_2:y:0(while/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_141/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_141/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_141/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp,^while/lstm_cell_141/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_141_biasadd_readvariableop_resource5while_lstm_cell_141_biasadd_readvariableop_resource_0"n
4while_lstm_cell_141_matmul_1_readvariableop_resource6while_lstm_cell_141_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_141_matmul_readvariableop_resource4while_lstm_cell_141_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_141/BiasAdd/ReadVariableOp*while/lstm_cell_141/BiasAdd/ReadVariableOp2V
)while/lstm_cell_141/MatMul/ReadVariableOp)while/lstm_cell_141/MatMul/ReadVariableOp2Z
+while/lstm_cell_141/MatMul_1/ReadVariableOp+while/lstm_cell_141/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_869433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_869433___redundant_placeholder04
0while_while_cond_869433___redundant_placeholder14
0while_while_cond_869433___redundant_placeholder24
0while_while_cond_869433___redundant_placeholder3
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
while_body_869104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_142_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_142_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_142_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_142_matmul_readvariableop_resource:	d�G
4while_lstm_cell_142_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_142_biasadd_readvariableop_resource:	���*while/lstm_cell_142/BiasAdd/ReadVariableOp�)while/lstm_cell_142/MatMul/ReadVariableOp�+while/lstm_cell_142/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_142/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_142_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_142/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_142_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_142/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_142/addAddV2$while/lstm_cell_142/MatMul:product:0&while/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_142_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_142/BiasAddBiasAddwhile/lstm_cell_142/add:z:02while/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_142/splitSplit,while/lstm_cell_142/split/split_dim:output:0$while/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_142/SigmoidSigmoid"while/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_1Sigmoid"while/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mulMul!while/lstm_cell_142/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_142/ReluRelu"while/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_1Mulwhile/lstm_cell_142/Sigmoid:y:0&while/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/add_1AddV2while/lstm_cell_142/mul:z:0while/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_2Sigmoid"while/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_142/Relu_1Reluwhile/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_2Mul!while/lstm_cell_142/Sigmoid_2:y:0(while/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_142/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_142/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_142/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_142/BiasAdd/ReadVariableOp*^while/lstm_cell_142/MatMul/ReadVariableOp,^while/lstm_cell_142/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_142_biasadd_readvariableop_resource5while_lstm_cell_142_biasadd_readvariableop_resource_0"n
4while_lstm_cell_142_matmul_1_readvariableop_resource6while_lstm_cell_142_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_142_matmul_readvariableop_resource4while_lstm_cell_142_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_142/BiasAdd/ReadVariableOp*while/lstm_cell_142/BiasAdd/ReadVariableOp2V
)while/lstm_cell_142/MatMul/ReadVariableOp)while/lstm_cell_142/MatMul/ReadVariableOp2Z
+while/lstm_cell_142/MatMul_1/ReadVariableOp+while/lstm_cell_142/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_167_lstm_501_while_cond_864562L
Hsequential_167_lstm_501_while_sequential_167_lstm_501_while_loop_counterR
Nsequential_167_lstm_501_while_sequential_167_lstm_501_while_maximum_iterations-
)sequential_167_lstm_501_while_placeholder/
+sequential_167_lstm_501_while_placeholder_1/
+sequential_167_lstm_501_while_placeholder_2/
+sequential_167_lstm_501_while_placeholder_3N
Jsequential_167_lstm_501_while_less_sequential_167_lstm_501_strided_slice_1d
`sequential_167_lstm_501_while_sequential_167_lstm_501_while_cond_864562___redundant_placeholder0d
`sequential_167_lstm_501_while_sequential_167_lstm_501_while_cond_864562___redundant_placeholder1d
`sequential_167_lstm_501_while_sequential_167_lstm_501_while_cond_864562___redundant_placeholder2d
`sequential_167_lstm_501_while_sequential_167_lstm_501_while_cond_864562___redundant_placeholder3*
&sequential_167_lstm_501_while_identity
�
"sequential_167/lstm_501/while/LessLess)sequential_167_lstm_501_while_placeholderJsequential_167_lstm_501_while_less_sequential_167_lstm_501_strided_slice_1*
T0*
_output_shapes
: {
&sequential_167/lstm_501/while/IdentityIdentity&sequential_167/lstm_501/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_167_lstm_501_while_identity/sequential_167/lstm_501/while/Identity:output:0*(
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_869188

inputs?
,lstm_cell_142_matmul_readvariableop_resource:	d�A
.lstm_cell_142_matmul_1_readvariableop_resource:	2�<
-lstm_cell_142_biasadd_readvariableop_resource:	�
identity��$lstm_cell_142/BiasAdd/ReadVariableOp�#lstm_cell_142/MatMul/ReadVariableOp�%lstm_cell_142/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_142/MatMul/ReadVariableOpReadVariableOp,lstm_cell_142_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_142/MatMulMatMulstrided_slice_2:output:0+lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_142_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_142/MatMul_1MatMulzeros:output:0-lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_142/addAddV2lstm_cell_142/MatMul:product:0 lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_142_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_142/BiasAddBiasAddlstm_cell_142/add:z:0,lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_142/splitSplit&lstm_cell_142/split/split_dim:output:0lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_142/SigmoidSigmoidlstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_1Sigmoidlstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_142/mulMullstm_cell_142/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_142/ReluRelulstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_1Mullstm_cell_142/Sigmoid:y:0 lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_142/add_1AddV2lstm_cell_142/mul:z:0lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_2Sigmoidlstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_142/Relu_1Relulstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_2Mullstm_cell_142/Sigmoid_2:y:0"lstm_cell_142/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_142_matmul_readvariableop_resource.lstm_cell_142_matmul_1_readvariableop_resource-lstm_cell_142_biasadd_readvariableop_resource*
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
while_body_869104*
condR
while_cond_869103*K
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
NoOpNoOp%^lstm_cell_142/BiasAdd/ReadVariableOp$^lstm_cell_142/MatMul/ReadVariableOp&^lstm_cell_142/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_142/BiasAdd/ReadVariableOp$lstm_cell_142/BiasAdd/ReadVariableOp2J
#lstm_cell_142/MatMul/ReadVariableOp#lstm_cell_142/MatMul/ReadVariableOp2N
%lstm_cell_142/MatMul_1/ReadVariableOp%lstm_cell_142/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
D__inference_lstm_501_layer_call_and_return_conditional_losses_865272

inputs'
lstm_cell_141_865190:	�'
lstm_cell_141_865192:	d�#
lstm_cell_141_865194:	�
identity��%lstm_cell_141/StatefulPartitionedCall�while;
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
%lstm_cell_141/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_141_865190lstm_cell_141_865192lstm_cell_141_865194*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_865144n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_141_865190lstm_cell_141_865192lstm_cell_141_865194*
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
while_body_865203*
condR
while_cond_865202*K
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
NoOpNoOp&^lstm_cell_141/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_141/StatefulPartitionedCall%lstm_cell_141/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�J
�
D__inference_lstm_501_layer_call_and_return_conditional_losses_868715

inputs?
,lstm_cell_141_matmul_readvariableop_resource:	�A
.lstm_cell_141_matmul_1_readvariableop_resource:	d�<
-lstm_cell_141_biasadd_readvariableop_resource:	�
identity��$lstm_cell_141/BiasAdd/ReadVariableOp�#lstm_cell_141/MatMul/ReadVariableOp�%lstm_cell_141/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_141/MatMul/ReadVariableOpReadVariableOp,lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_141/MatMulMatMulstrided_slice_2:output:0+lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_141_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_141/MatMul_1MatMulzeros:output:0-lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_141/addAddV2lstm_cell_141/MatMul:product:0 lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_141/BiasAddBiasAddlstm_cell_141/add:z:0,lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_141/splitSplit&lstm_cell_141/split/split_dim:output:0lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_141/SigmoidSigmoidlstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_1Sigmoidlstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_141/mulMullstm_cell_141/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_141/ReluRelulstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_1Mullstm_cell_141/Sigmoid:y:0 lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_141/add_1AddV2lstm_cell_141/mul:z:0lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_2Sigmoidlstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_141/Relu_1Relulstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_2Mullstm_cell_141/Sigmoid_2:y:0"lstm_cell_141/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_141_matmul_readvariableop_resource.lstm_cell_141_matmul_1_readvariableop_resource-lstm_cell_141_biasadd_readvariableop_resource*
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
while_body_868631*
condR
while_cond_868630*K
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
NoOpNoOp%^lstm_cell_141/BiasAdd/ReadVariableOp$^lstm_cell_141/MatMul/ReadVariableOp&^lstm_cell_141/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_141/BiasAdd/ReadVariableOp$lstm_cell_141/BiasAdd/ReadVariableOp2J
#lstm_cell_141/MatMul/ReadVariableOp#lstm_cell_141/MatMul/ReadVariableOp2N
%lstm_cell_141/MatMul_1/ReadVariableOp%lstm_cell_141/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_501_layer_call_fn_868110
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_865081|
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
while_body_866727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_142_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_142_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_142_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_142_matmul_readvariableop_resource:	d�G
4while_lstm_cell_142_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_142_biasadd_readvariableop_resource:	���*while/lstm_cell_142/BiasAdd/ReadVariableOp�)while/lstm_cell_142/MatMul/ReadVariableOp�+while/lstm_cell_142/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_142/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_142_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_142/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_142_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_142/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_142/addAddV2$while/lstm_cell_142/MatMul:product:0&while/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_142_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_142/BiasAddBiasAddwhile/lstm_cell_142/add:z:02while/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_142/splitSplit,while/lstm_cell_142/split/split_dim:output:0$while/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_142/SigmoidSigmoid"while/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_1Sigmoid"while/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mulMul!while/lstm_cell_142/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_142/ReluRelu"while/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_1Mulwhile/lstm_cell_142/Sigmoid:y:0&while/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/add_1AddV2while/lstm_cell_142/mul:z:0while/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_2Sigmoid"while/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_142/Relu_1Reluwhile/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_2Mul!while/lstm_cell_142/Sigmoid_2:y:0(while/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_142/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_142/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_142/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_142/BiasAdd/ReadVariableOp*^while/lstm_cell_142/MatMul/ReadVariableOp,^while/lstm_cell_142/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_142_biasadd_readvariableop_resource5while_lstm_cell_142_biasadd_readvariableop_resource_0"n
4while_lstm_cell_142_matmul_1_readvariableop_resource6while_lstm_cell_142_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_142_matmul_readvariableop_resource4while_lstm_cell_142_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_142/BiasAdd/ReadVariableOp*while/lstm_cell_142/BiasAdd/ReadVariableOp2V
)while/lstm_cell_142/MatMul/ReadVariableOp)while/lstm_cell_142/MatMul/ReadVariableOp2Z
+while/lstm_cell_142/MatMul_1/ReadVariableOp+while/lstm_cell_142/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_502_while_cond_867869.
*lstm_502_while_lstm_502_while_loop_counter4
0lstm_502_while_lstm_502_while_maximum_iterations
lstm_502_while_placeholder 
lstm_502_while_placeholder_1 
lstm_502_while_placeholder_2 
lstm_502_while_placeholder_30
,lstm_502_while_less_lstm_502_strided_slice_1F
Blstm_502_while_lstm_502_while_cond_867869___redundant_placeholder0F
Blstm_502_while_lstm_502_while_cond_867869___redundant_placeholder1F
Blstm_502_while_lstm_502_while_cond_867869___redundant_placeholder2F
Blstm_502_while_lstm_502_while_cond_867869___redundant_placeholder3
lstm_502_while_identity
�
lstm_502/while/LessLesslstm_502_while_placeholder,lstm_502_while_less_lstm_502_strided_slice_1*
T0*
_output_shapes
: ]
lstm_502/while/IdentityIdentitylstm_502/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_502_while_identity lstm_502/while/Identity:output:0*(
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
.__inference_lstm_cell_143_layer_call_fn_870196

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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_865844o
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
E__inference_dense_167_layer_call_and_return_conditional_losses_869966

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
E__inference_dense_167_layer_call_and_return_conditional_losses_866448

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
.__inference_lstm_cell_143_layer_call_fn_870179

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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_865698o
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
�C
�

lstm_502_while_body_867443.
*lstm_502_while_lstm_502_while_loop_counter4
0lstm_502_while_lstm_502_while_maximum_iterations
lstm_502_while_placeholder 
lstm_502_while_placeholder_1 
lstm_502_while_placeholder_2 
lstm_502_while_placeholder_3-
)lstm_502_while_lstm_502_strided_slice_1_0i
elstm_502_while_tensorarrayv2read_tensorlistgetitem_lstm_502_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_502_while_lstm_cell_142_matmul_readvariableop_resource_0:	d�R
?lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource_0:	2�M
>lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource_0:	�
lstm_502_while_identity
lstm_502_while_identity_1
lstm_502_while_identity_2
lstm_502_while_identity_3
lstm_502_while_identity_4
lstm_502_while_identity_5+
'lstm_502_while_lstm_502_strided_slice_1g
clstm_502_while_tensorarrayv2read_tensorlistgetitem_lstm_502_tensorarrayunstack_tensorlistfromtensorN
;lstm_502_while_lstm_cell_142_matmul_readvariableop_resource:	d�P
=lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource:	2�K
<lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource:	���3lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp�2lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp�4lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp�
@lstm_502/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_502/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_502_while_tensorarrayv2read_tensorlistgetitem_lstm_502_tensorarrayunstack_tensorlistfromtensor_0lstm_502_while_placeholderIlstm_502/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_502/while/lstm_cell_142/MatMul/ReadVariableOpReadVariableOp=lstm_502_while_lstm_cell_142_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_502/while/lstm_cell_142/MatMulMatMul9lstm_502/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp?lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_502/while/lstm_cell_142/MatMul_1MatMullstm_502_while_placeholder_2<lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_502/while/lstm_cell_142/addAddV2-lstm_502/while/lstm_cell_142/MatMul:product:0/lstm_502/while/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp>lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_502/while/lstm_cell_142/BiasAddBiasAdd$lstm_502/while/lstm_cell_142/add:z:0;lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_502/while/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_502/while/lstm_cell_142/splitSplit5lstm_502/while/lstm_cell_142/split/split_dim:output:0-lstm_502/while/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_502/while/lstm_cell_142/SigmoidSigmoid+lstm_502/while/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_502/while/lstm_cell_142/Sigmoid_1Sigmoid+lstm_502/while/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_502/while/lstm_cell_142/mulMul*lstm_502/while/lstm_cell_142/Sigmoid_1:y:0lstm_502_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_502/while/lstm_cell_142/ReluRelu+lstm_502/while/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_502/while/lstm_cell_142/mul_1Mul(lstm_502/while/lstm_cell_142/Sigmoid:y:0/lstm_502/while/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_502/while/lstm_cell_142/add_1AddV2$lstm_502/while/lstm_cell_142/mul:z:0&lstm_502/while/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_502/while/lstm_cell_142/Sigmoid_2Sigmoid+lstm_502/while/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_502/while/lstm_cell_142/Relu_1Relu&lstm_502/while/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_502/while/lstm_cell_142/mul_2Mul*lstm_502/while/lstm_cell_142/Sigmoid_2:y:01lstm_502/while/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_502/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_502_while_placeholder_1lstm_502_while_placeholder&lstm_502/while/lstm_cell_142/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_502/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_502/while/addAddV2lstm_502_while_placeholderlstm_502/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_502/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_502/while/add_1AddV2*lstm_502_while_lstm_502_while_loop_counterlstm_502/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_502/while/IdentityIdentitylstm_502/while/add_1:z:0^lstm_502/while/NoOp*
T0*
_output_shapes
: �
lstm_502/while/Identity_1Identity0lstm_502_while_lstm_502_while_maximum_iterations^lstm_502/while/NoOp*
T0*
_output_shapes
: t
lstm_502/while/Identity_2Identitylstm_502/while/add:z:0^lstm_502/while/NoOp*
T0*
_output_shapes
: �
lstm_502/while/Identity_3IdentityClstm_502/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_502/while/NoOp*
T0*
_output_shapes
: �
lstm_502/while/Identity_4Identity&lstm_502/while/lstm_cell_142/mul_2:z:0^lstm_502/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_502/while/Identity_5Identity&lstm_502/while/lstm_cell_142/add_1:z:0^lstm_502/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_502/while/NoOpNoOp4^lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp3^lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp5^lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_502_while_identity lstm_502/while/Identity:output:0"?
lstm_502_while_identity_1"lstm_502/while/Identity_1:output:0"?
lstm_502_while_identity_2"lstm_502/while/Identity_2:output:0"?
lstm_502_while_identity_3"lstm_502/while/Identity_3:output:0"?
lstm_502_while_identity_4"lstm_502/while/Identity_4:output:0"?
lstm_502_while_identity_5"lstm_502/while/Identity_5:output:0"T
'lstm_502_while_lstm_502_strided_slice_1)lstm_502_while_lstm_502_strided_slice_1_0"~
<lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource>lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource_0"�
=lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource?lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource_0"|
;lstm_502_while_lstm_cell_142_matmul_readvariableop_resource=lstm_502_while_lstm_cell_142_matmul_readvariableop_resource_0"�
clstm_502_while_tensorarrayv2read_tensorlistgetitem_lstm_502_tensorarrayunstack_tensorlistfromtensorelstm_502_while_tensorarrayv2read_tensorlistgetitem_lstm_502_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp3lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp2h
2lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp2lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp2l
4lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp4lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_167_lstm_501_while_body_864563L
Hsequential_167_lstm_501_while_sequential_167_lstm_501_while_loop_counterR
Nsequential_167_lstm_501_while_sequential_167_lstm_501_while_maximum_iterations-
)sequential_167_lstm_501_while_placeholder/
+sequential_167_lstm_501_while_placeholder_1/
+sequential_167_lstm_501_while_placeholder_2/
+sequential_167_lstm_501_while_placeholder_3K
Gsequential_167_lstm_501_while_sequential_167_lstm_501_strided_slice_1_0�
�sequential_167_lstm_501_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_501_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_167_lstm_501_while_lstm_cell_141_matmul_readvariableop_resource_0:	�a
Nsequential_167_lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource_0:	d�\
Msequential_167_lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource_0:	�*
&sequential_167_lstm_501_while_identity,
(sequential_167_lstm_501_while_identity_1,
(sequential_167_lstm_501_while_identity_2,
(sequential_167_lstm_501_while_identity_3,
(sequential_167_lstm_501_while_identity_4,
(sequential_167_lstm_501_while_identity_5I
Esequential_167_lstm_501_while_sequential_167_lstm_501_strided_slice_1�
�sequential_167_lstm_501_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_501_tensorarrayunstack_tensorlistfromtensor]
Jsequential_167_lstm_501_while_lstm_cell_141_matmul_readvariableop_resource:	�_
Lsequential_167_lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource:	d�Z
Ksequential_167_lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource:	���Bsequential_167/lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp�Asequential_167/lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp�Csequential_167/lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp�
Osequential_167/lstm_501/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_167/lstm_501/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_167_lstm_501_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_501_tensorarrayunstack_tensorlistfromtensor_0)sequential_167_lstm_501_while_placeholderXsequential_167/lstm_501/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Asequential_167/lstm_501/while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOpLsequential_167_lstm_501_while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
2sequential_167/lstm_501/while/lstm_cell_141/MatMulMatMulHsequential_167/lstm_501/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_167/lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_167/lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOpNsequential_167_lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
4sequential_167/lstm_501/while/lstm_cell_141/MatMul_1MatMul+sequential_167_lstm_501_while_placeholder_2Ksequential_167/lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_167/lstm_501/while/lstm_cell_141/addAddV2<sequential_167/lstm_501/while/lstm_cell_141/MatMul:product:0>sequential_167/lstm_501/while/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_167/lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOpMsequential_167_lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_167/lstm_501/while/lstm_cell_141/BiasAddBiasAdd3sequential_167/lstm_501/while/lstm_cell_141/add:z:0Jsequential_167/lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_167/lstm_501/while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_167/lstm_501/while/lstm_cell_141/splitSplitDsequential_167/lstm_501/while/lstm_cell_141/split/split_dim:output:0<sequential_167/lstm_501/while/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
3sequential_167/lstm_501/while/lstm_cell_141/SigmoidSigmoid:sequential_167/lstm_501/while/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d�
5sequential_167/lstm_501/while/lstm_cell_141/Sigmoid_1Sigmoid:sequential_167/lstm_501/while/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
/sequential_167/lstm_501/while/lstm_cell_141/mulMul9sequential_167/lstm_501/while/lstm_cell_141/Sigmoid_1:y:0+sequential_167_lstm_501_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential_167/lstm_501/while/lstm_cell_141/ReluRelu:sequential_167/lstm_501/while/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
1sequential_167/lstm_501/while/lstm_cell_141/mul_1Mul7sequential_167/lstm_501/while/lstm_cell_141/Sigmoid:y:0>sequential_167/lstm_501/while/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
1sequential_167/lstm_501/while/lstm_cell_141/add_1AddV23sequential_167/lstm_501/while/lstm_cell_141/mul:z:05sequential_167/lstm_501/while/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d�
5sequential_167/lstm_501/while/lstm_cell_141/Sigmoid_2Sigmoid:sequential_167/lstm_501/while/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������d�
2sequential_167/lstm_501/while/lstm_cell_141/Relu_1Relu5sequential_167/lstm_501/while/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
1sequential_167/lstm_501/while/lstm_cell_141/mul_2Mul9sequential_167/lstm_501/while/lstm_cell_141/Sigmoid_2:y:0@sequential_167/lstm_501/while/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Bsequential_167/lstm_501/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_167_lstm_501_while_placeholder_1)sequential_167_lstm_501_while_placeholder5sequential_167/lstm_501/while/lstm_cell_141/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_167/lstm_501/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_167/lstm_501/while/addAddV2)sequential_167_lstm_501_while_placeholder,sequential_167/lstm_501/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_167/lstm_501/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_167/lstm_501/while/add_1AddV2Hsequential_167_lstm_501_while_sequential_167_lstm_501_while_loop_counter.sequential_167/lstm_501/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_167/lstm_501/while/IdentityIdentity'sequential_167/lstm_501/while/add_1:z:0#^sequential_167/lstm_501/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_501/while/Identity_1IdentityNsequential_167_lstm_501_while_sequential_167_lstm_501_while_maximum_iterations#^sequential_167/lstm_501/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_501/while/Identity_2Identity%sequential_167/lstm_501/while/add:z:0#^sequential_167/lstm_501/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_501/while/Identity_3IdentityRsequential_167/lstm_501/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_167/lstm_501/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_501/while/Identity_4Identity5sequential_167/lstm_501/while/lstm_cell_141/mul_2:z:0#^sequential_167/lstm_501/while/NoOp*
T0*'
_output_shapes
:���������d�
(sequential_167/lstm_501/while/Identity_5Identity5sequential_167/lstm_501/while/lstm_cell_141/add_1:z:0#^sequential_167/lstm_501/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential_167/lstm_501/while/NoOpNoOpC^sequential_167/lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOpB^sequential_167/lstm_501/while/lstm_cell_141/MatMul/ReadVariableOpD^sequential_167/lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_167_lstm_501_while_identity/sequential_167/lstm_501/while/Identity:output:0"]
(sequential_167_lstm_501_while_identity_11sequential_167/lstm_501/while/Identity_1:output:0"]
(sequential_167_lstm_501_while_identity_21sequential_167/lstm_501/while/Identity_2:output:0"]
(sequential_167_lstm_501_while_identity_31sequential_167/lstm_501/while/Identity_3:output:0"]
(sequential_167_lstm_501_while_identity_41sequential_167/lstm_501/while/Identity_4:output:0"]
(sequential_167_lstm_501_while_identity_51sequential_167/lstm_501/while/Identity_5:output:0"�
Ksequential_167_lstm_501_while_lstm_cell_141_biasadd_readvariableop_resourceMsequential_167_lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource_0"�
Lsequential_167_lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resourceNsequential_167_lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource_0"�
Jsequential_167_lstm_501_while_lstm_cell_141_matmul_readvariableop_resourceLsequential_167_lstm_501_while_lstm_cell_141_matmul_readvariableop_resource_0"�
Esequential_167_lstm_501_while_sequential_167_lstm_501_strided_slice_1Gsequential_167_lstm_501_while_sequential_167_lstm_501_strided_slice_1_0"�
�sequential_167_lstm_501_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_501_tensorarrayunstack_tensorlistfromtensor�sequential_167_lstm_501_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_501_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
Bsequential_167/lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOpBsequential_167/lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp2�
Asequential_167/lstm_501/while/lstm_cell_141/MatMul/ReadVariableOpAsequential_167/lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp2�
Csequential_167/lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOpCsequential_167/lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_866345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_866345___redundant_placeholder04
0while_while_cond_866345___redundant_placeholder14
0while_while_cond_866345___redundant_placeholder24
0while_while_cond_866345___redundant_placeholder3
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
J__inference_sequential_167_layer_call_and_return_conditional_losses_867126
lstm_501_input"
lstm_501_867099:	�"
lstm_501_867101:	d�
lstm_501_867103:	�"
lstm_502_867106:	d�"
lstm_502_867108:	2�
lstm_502_867110:	�!
lstm_503_867113:2(!
lstm_503_867115:
(
lstm_503_867117:("
dense_167_867120:

dense_167_867122:
identity��!dense_167/StatefulPartitionedCall� lstm_501/StatefulPartitionedCall� lstm_502/StatefulPartitionedCall� lstm_503/StatefulPartitionedCall�
 lstm_501/StatefulPartitionedCallStatefulPartitionedCalllstm_501_inputlstm_501_867099lstm_501_867101lstm_501_867103*
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_866130�
 lstm_502/StatefulPartitionedCallStatefulPartitionedCall)lstm_501/StatefulPartitionedCall:output:0lstm_502_867106lstm_502_867108lstm_502_867110*
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_866280�
 lstm_503/StatefulPartitionedCallStatefulPartitionedCall)lstm_502/StatefulPartitionedCall:output:0lstm_503_867113lstm_503_867115lstm_503_867117*
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_866430�
!dense_167/StatefulPartitionedCallStatefulPartitionedCall)lstm_503/StatefulPartitionedCall:output:0dense_167_867120dense_167_867122*
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
E__inference_dense_167_layer_call_and_return_conditional_losses_866448y
IdentityIdentity*dense_167/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_167/StatefulPartitionedCall!^lstm_501/StatefulPartitionedCall!^lstm_502/StatefulPartitionedCall!^lstm_503/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_167/StatefulPartitionedCall!dense_167/StatefulPartitionedCall2D
 lstm_501/StatefulPartitionedCall lstm_501/StatefulPartitionedCall2D
 lstm_502/StatefulPartitionedCall lstm_502/StatefulPartitionedCall2D
 lstm_503/StatefulPartitionedCall lstm_503/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_501_input
�
�
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_870228

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
�J
�
D__inference_lstm_502_layer_call_and_return_conditional_losses_866280

inputs?
,lstm_cell_142_matmul_readvariableop_resource:	d�A
.lstm_cell_142_matmul_1_readvariableop_resource:	2�<
-lstm_cell_142_biasadd_readvariableop_resource:	�
identity��$lstm_cell_142/BiasAdd/ReadVariableOp�#lstm_cell_142/MatMul/ReadVariableOp�%lstm_cell_142/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_142/MatMul/ReadVariableOpReadVariableOp,lstm_cell_142_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_142/MatMulMatMulstrided_slice_2:output:0+lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_142_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_142/MatMul_1MatMulzeros:output:0-lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_142/addAddV2lstm_cell_142/MatMul:product:0 lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_142_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_142/BiasAddBiasAddlstm_cell_142/add:z:0,lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_142/splitSplit&lstm_cell_142/split/split_dim:output:0lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_142/SigmoidSigmoidlstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_1Sigmoidlstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_142/mulMullstm_cell_142/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_142/ReluRelulstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_1Mullstm_cell_142/Sigmoid:y:0 lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_142/add_1AddV2lstm_cell_142/mul:z:0lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_2Sigmoidlstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_142/Relu_1Relulstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_2Mullstm_cell_142/Sigmoid_2:y:0"lstm_cell_142/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_142_matmul_readvariableop_resource.lstm_cell_142_matmul_1_readvariableop_resource-lstm_cell_142_biasadd_readvariableop_resource*
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
while_body_866196*
condR
while_cond_866195*K
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
NoOpNoOp%^lstm_cell_142/BiasAdd/ReadVariableOp$^lstm_cell_142/MatMul/ReadVariableOp&^lstm_cell_142/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_142/BiasAdd/ReadVariableOp$lstm_cell_142/BiasAdd/ReadVariableOp2J
#lstm_cell_142/MatMul/ReadVariableOp#lstm_cell_142/MatMul/ReadVariableOp2N
%lstm_cell_142/MatMul_1/ReadVariableOp%lstm_cell_142/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�"
�
while_body_865553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_142_865577_0:	d�/
while_lstm_cell_142_865579_0:	2�+
while_lstm_cell_142_865581_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_142_865577:	d�-
while_lstm_cell_142_865579:	2�)
while_lstm_cell_142_865581:	���+while/lstm_cell_142/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_142/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_142_865577_0while_lstm_cell_142_865579_0while_lstm_cell_142_865581_0*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_865494�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_142/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_142/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_142/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_142/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_142_865577while_lstm_cell_142_865577_0":
while_lstm_cell_142_865579while_lstm_cell_142_865579_0":
while_lstm_cell_142_865581while_lstm_cell_142_865581_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_142/StatefulPartitionedCall+while/lstm_cell_142/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_503_while_cond_867581.
*lstm_503_while_lstm_503_while_loop_counter4
0lstm_503_while_lstm_503_while_maximum_iterations
lstm_503_while_placeholder 
lstm_503_while_placeholder_1 
lstm_503_while_placeholder_2 
lstm_503_while_placeholder_30
,lstm_503_while_less_lstm_503_strided_slice_1F
Blstm_503_while_lstm_503_while_cond_867581___redundant_placeholder0F
Blstm_503_while_lstm_503_while_cond_867581___redundant_placeholder1F
Blstm_503_while_lstm_503_while_cond_867581___redundant_placeholder2F
Blstm_503_while_lstm_503_while_cond_867581___redundant_placeholder3
lstm_503_while_identity
�
lstm_503/while/LessLesslstm_503_while_placeholder,lstm_503_while_less_lstm_503_strided_slice_1*
T0*
_output_shapes
: ]
lstm_503/while/IdentityIdentitylstm_503/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_503_while_identity lstm_503/while/Identity:output:0*(
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
J__inference_sequential_167_layer_call_and_return_conditional_losses_868099

inputsH
5lstm_501_lstm_cell_141_matmul_readvariableop_resource:	�J
7lstm_501_lstm_cell_141_matmul_1_readvariableop_resource:	d�E
6lstm_501_lstm_cell_141_biasadd_readvariableop_resource:	�H
5lstm_502_lstm_cell_142_matmul_readvariableop_resource:	d�J
7lstm_502_lstm_cell_142_matmul_1_readvariableop_resource:	2�E
6lstm_502_lstm_cell_142_biasadd_readvariableop_resource:	�G
5lstm_503_lstm_cell_143_matmul_readvariableop_resource:2(I
7lstm_503_lstm_cell_143_matmul_1_readvariableop_resource:
(D
6lstm_503_lstm_cell_143_biasadd_readvariableop_resource:(:
(dense_167_matmul_readvariableop_resource:
7
)dense_167_biasadd_readvariableop_resource:
identity�� dense_167/BiasAdd/ReadVariableOp�dense_167/MatMul/ReadVariableOp�-lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp�,lstm_501/lstm_cell_141/MatMul/ReadVariableOp�.lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp�lstm_501/while�-lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp�,lstm_502/lstm_cell_142/MatMul/ReadVariableOp�.lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp�lstm_502/while�-lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp�,lstm_503/lstm_cell_143/MatMul/ReadVariableOp�.lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp�lstm_503/whileD
lstm_501/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_501/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_501/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_501/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_501/strided_sliceStridedSlicelstm_501/Shape:output:0%lstm_501/strided_slice/stack:output:0'lstm_501/strided_slice/stack_1:output:0'lstm_501/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_501/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_501/zeros/packedPacklstm_501/strided_slice:output:0 lstm_501/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_501/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_501/zerosFilllstm_501/zeros/packed:output:0lstm_501/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_501/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_501/zeros_1/packedPacklstm_501/strided_slice:output:0"lstm_501/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_501/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_501/zeros_1Fill lstm_501/zeros_1/packed:output:0lstm_501/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_501/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_501/transpose	Transposeinputs lstm_501/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_501/Shape_1Shapelstm_501/transpose:y:0*
T0*
_output_shapes
:h
lstm_501/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_501/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_501/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_501/strided_slice_1StridedSlicelstm_501/Shape_1:output:0'lstm_501/strided_slice_1/stack:output:0)lstm_501/strided_slice_1/stack_1:output:0)lstm_501/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_501/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_501/TensorArrayV2TensorListReserve-lstm_501/TensorArrayV2/element_shape:output:0!lstm_501/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_501/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_501/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_501/transpose:y:0Glstm_501/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_501/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_501/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_501/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_501/strided_slice_2StridedSlicelstm_501/transpose:y:0'lstm_501/strided_slice_2/stack:output:0)lstm_501/strided_slice_2/stack_1:output:0)lstm_501/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_501/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp5lstm_501_lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_501/lstm_cell_141/MatMulMatMul!lstm_501/strided_slice_2:output:04lstm_501/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_501/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp7lstm_501_lstm_cell_141_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_501/lstm_cell_141/MatMul_1MatMullstm_501/zeros:output:06lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_501/lstm_cell_141/addAddV2'lstm_501/lstm_cell_141/MatMul:product:0)lstm_501/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_501/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp6lstm_501_lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_501/lstm_cell_141/BiasAddBiasAddlstm_501/lstm_cell_141/add:z:05lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_501/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_501/lstm_cell_141/splitSplit/lstm_501/lstm_cell_141/split/split_dim:output:0'lstm_501/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_501/lstm_cell_141/SigmoidSigmoid%lstm_501/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_501/lstm_cell_141/Sigmoid_1Sigmoid%lstm_501/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_501/lstm_cell_141/mulMul$lstm_501/lstm_cell_141/Sigmoid_1:y:0lstm_501/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_501/lstm_cell_141/ReluRelu%lstm_501/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_501/lstm_cell_141/mul_1Mul"lstm_501/lstm_cell_141/Sigmoid:y:0)lstm_501/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_501/lstm_cell_141/add_1AddV2lstm_501/lstm_cell_141/mul:z:0 lstm_501/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_501/lstm_cell_141/Sigmoid_2Sigmoid%lstm_501/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_501/lstm_cell_141/Relu_1Relu lstm_501/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_501/lstm_cell_141/mul_2Mul$lstm_501/lstm_cell_141/Sigmoid_2:y:0+lstm_501/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_501/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_501/TensorArrayV2_1TensorListReserve/lstm_501/TensorArrayV2_1/element_shape:output:0!lstm_501/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_501/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_501/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_501/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_501/whileWhile$lstm_501/while/loop_counter:output:0*lstm_501/while/maximum_iterations:output:0lstm_501/time:output:0!lstm_501/TensorArrayV2_1:handle:0lstm_501/zeros:output:0lstm_501/zeros_1:output:0!lstm_501/strided_slice_1:output:0@lstm_501/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_501_lstm_cell_141_matmul_readvariableop_resource7lstm_501_lstm_cell_141_matmul_1_readvariableop_resource6lstm_501_lstm_cell_141_biasadd_readvariableop_resource*
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
lstm_501_while_body_867731*&
condR
lstm_501_while_cond_867730*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_501/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_501/TensorArrayV2Stack/TensorListStackTensorListStacklstm_501/while:output:3Blstm_501/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_501/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_501/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_501/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_501/strided_slice_3StridedSlice4lstm_501/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_501/strided_slice_3/stack:output:0)lstm_501/strided_slice_3/stack_1:output:0)lstm_501/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_501/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_501/transpose_1	Transpose4lstm_501/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_501/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_501/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_502/ShapeShapelstm_501/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_502/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_502/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_502/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_502/strided_sliceStridedSlicelstm_502/Shape:output:0%lstm_502/strided_slice/stack:output:0'lstm_502/strided_slice/stack_1:output:0'lstm_502/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_502/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_502/zeros/packedPacklstm_502/strided_slice:output:0 lstm_502/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_502/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_502/zerosFilllstm_502/zeros/packed:output:0lstm_502/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_502/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_502/zeros_1/packedPacklstm_502/strided_slice:output:0"lstm_502/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_502/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_502/zeros_1Fill lstm_502/zeros_1/packed:output:0lstm_502/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_502/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_502/transpose	Transposelstm_501/transpose_1:y:0 lstm_502/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_502/Shape_1Shapelstm_502/transpose:y:0*
T0*
_output_shapes
:h
lstm_502/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_502/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_502/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_502/strided_slice_1StridedSlicelstm_502/Shape_1:output:0'lstm_502/strided_slice_1/stack:output:0)lstm_502/strided_slice_1/stack_1:output:0)lstm_502/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_502/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_502/TensorArrayV2TensorListReserve-lstm_502/TensorArrayV2/element_shape:output:0!lstm_502/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_502/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_502/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_502/transpose:y:0Glstm_502/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_502/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_502/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_502/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_502/strided_slice_2StridedSlicelstm_502/transpose:y:0'lstm_502/strided_slice_2/stack:output:0)lstm_502/strided_slice_2/stack_1:output:0)lstm_502/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_502/lstm_cell_142/MatMul/ReadVariableOpReadVariableOp5lstm_502_lstm_cell_142_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_502/lstm_cell_142/MatMulMatMul!lstm_502/strided_slice_2:output:04lstm_502/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_502/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp7lstm_502_lstm_cell_142_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_502/lstm_cell_142/MatMul_1MatMullstm_502/zeros:output:06lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_502/lstm_cell_142/addAddV2'lstm_502/lstm_cell_142/MatMul:product:0)lstm_502/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_502/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp6lstm_502_lstm_cell_142_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_502/lstm_cell_142/BiasAddBiasAddlstm_502/lstm_cell_142/add:z:05lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_502/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_502/lstm_cell_142/splitSplit/lstm_502/lstm_cell_142/split/split_dim:output:0'lstm_502/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_502/lstm_cell_142/SigmoidSigmoid%lstm_502/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_502/lstm_cell_142/Sigmoid_1Sigmoid%lstm_502/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_502/lstm_cell_142/mulMul$lstm_502/lstm_cell_142/Sigmoid_1:y:0lstm_502/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_502/lstm_cell_142/ReluRelu%lstm_502/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_502/lstm_cell_142/mul_1Mul"lstm_502/lstm_cell_142/Sigmoid:y:0)lstm_502/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_502/lstm_cell_142/add_1AddV2lstm_502/lstm_cell_142/mul:z:0 lstm_502/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_502/lstm_cell_142/Sigmoid_2Sigmoid%lstm_502/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_502/lstm_cell_142/Relu_1Relu lstm_502/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_502/lstm_cell_142/mul_2Mul$lstm_502/lstm_cell_142/Sigmoid_2:y:0+lstm_502/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_502/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_502/TensorArrayV2_1TensorListReserve/lstm_502/TensorArrayV2_1/element_shape:output:0!lstm_502/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_502/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_502/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_502/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_502/whileWhile$lstm_502/while/loop_counter:output:0*lstm_502/while/maximum_iterations:output:0lstm_502/time:output:0!lstm_502/TensorArrayV2_1:handle:0lstm_502/zeros:output:0lstm_502/zeros_1:output:0!lstm_502/strided_slice_1:output:0@lstm_502/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_502_lstm_cell_142_matmul_readvariableop_resource7lstm_502_lstm_cell_142_matmul_1_readvariableop_resource6lstm_502_lstm_cell_142_biasadd_readvariableop_resource*
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
lstm_502_while_body_867870*&
condR
lstm_502_while_cond_867869*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_502/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_502/TensorArrayV2Stack/TensorListStackTensorListStacklstm_502/while:output:3Blstm_502/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_502/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_502/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_502/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_502/strided_slice_3StridedSlice4lstm_502/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_502/strided_slice_3/stack:output:0)lstm_502/strided_slice_3/stack_1:output:0)lstm_502/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_502/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_502/transpose_1	Transpose4lstm_502/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_502/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_502/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_503/ShapeShapelstm_502/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_503/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_503/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_503/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_503/strided_sliceStridedSlicelstm_503/Shape:output:0%lstm_503/strided_slice/stack:output:0'lstm_503/strided_slice/stack_1:output:0'lstm_503/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_503/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_503/zeros/packedPacklstm_503/strided_slice:output:0 lstm_503/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_503/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_503/zerosFilllstm_503/zeros/packed:output:0lstm_503/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_503/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_503/zeros_1/packedPacklstm_503/strided_slice:output:0"lstm_503/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_503/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_503/zeros_1Fill lstm_503/zeros_1/packed:output:0lstm_503/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_503/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_503/transpose	Transposelstm_502/transpose_1:y:0 lstm_503/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_503/Shape_1Shapelstm_503/transpose:y:0*
T0*
_output_shapes
:h
lstm_503/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_503/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_503/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_503/strided_slice_1StridedSlicelstm_503/Shape_1:output:0'lstm_503/strided_slice_1/stack:output:0)lstm_503/strided_slice_1/stack_1:output:0)lstm_503/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_503/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_503/TensorArrayV2TensorListReserve-lstm_503/TensorArrayV2/element_shape:output:0!lstm_503/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_503/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_503/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_503/transpose:y:0Glstm_503/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_503/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_503/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_503/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_503/strided_slice_2StridedSlicelstm_503/transpose:y:0'lstm_503/strided_slice_2/stack:output:0)lstm_503/strided_slice_2/stack_1:output:0)lstm_503/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_503/lstm_cell_143/MatMul/ReadVariableOpReadVariableOp5lstm_503_lstm_cell_143_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_503/lstm_cell_143/MatMulMatMul!lstm_503/strided_slice_2:output:04lstm_503/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_503/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp7lstm_503_lstm_cell_143_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_503/lstm_cell_143/MatMul_1MatMullstm_503/zeros:output:06lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_503/lstm_cell_143/addAddV2'lstm_503/lstm_cell_143/MatMul:product:0)lstm_503/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_503/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp6lstm_503_lstm_cell_143_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_503/lstm_cell_143/BiasAddBiasAddlstm_503/lstm_cell_143/add:z:05lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_503/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_503/lstm_cell_143/splitSplit/lstm_503/lstm_cell_143/split/split_dim:output:0'lstm_503/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_503/lstm_cell_143/SigmoidSigmoid%lstm_503/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_503/lstm_cell_143/Sigmoid_1Sigmoid%lstm_503/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_503/lstm_cell_143/mulMul$lstm_503/lstm_cell_143/Sigmoid_1:y:0lstm_503/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_503/lstm_cell_143/ReluRelu%lstm_503/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_503/lstm_cell_143/mul_1Mul"lstm_503/lstm_cell_143/Sigmoid:y:0)lstm_503/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_503/lstm_cell_143/add_1AddV2lstm_503/lstm_cell_143/mul:z:0 lstm_503/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_503/lstm_cell_143/Sigmoid_2Sigmoid%lstm_503/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_503/lstm_cell_143/Relu_1Relu lstm_503/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_503/lstm_cell_143/mul_2Mul$lstm_503/lstm_cell_143/Sigmoid_2:y:0+lstm_503/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_503/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_503/TensorArrayV2_1TensorListReserve/lstm_503/TensorArrayV2_1/element_shape:output:0!lstm_503/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_503/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_503/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_503/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_503/whileWhile$lstm_503/while/loop_counter:output:0*lstm_503/while/maximum_iterations:output:0lstm_503/time:output:0!lstm_503/TensorArrayV2_1:handle:0lstm_503/zeros:output:0lstm_503/zeros_1:output:0!lstm_503/strided_slice_1:output:0@lstm_503/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_503_lstm_cell_143_matmul_readvariableop_resource7lstm_503_lstm_cell_143_matmul_1_readvariableop_resource6lstm_503_lstm_cell_143_biasadd_readvariableop_resource*
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
lstm_503_while_body_868009*&
condR
lstm_503_while_cond_868008*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_503/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_503/TensorArrayV2Stack/TensorListStackTensorListStacklstm_503/while:output:3Blstm_503/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_503/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_503/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_503/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_503/strided_slice_3StridedSlice4lstm_503/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_503/strided_slice_3/stack:output:0)lstm_503/strided_slice_3/stack_1:output:0)lstm_503/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_503/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_503/transpose_1	Transpose4lstm_503/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_503/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_503/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_167/MatMul/ReadVariableOpReadVariableOp(dense_167_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_167/MatMulMatMul!lstm_503/strided_slice_3:output:0'dense_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_167/BiasAdd/ReadVariableOpReadVariableOp)dense_167_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_167/BiasAddBiasAdddense_167/MatMul:product:0(dense_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_167/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_167/BiasAdd/ReadVariableOp ^dense_167/MatMul/ReadVariableOp.^lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp-^lstm_501/lstm_cell_141/MatMul/ReadVariableOp/^lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp^lstm_501/while.^lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp-^lstm_502/lstm_cell_142/MatMul/ReadVariableOp/^lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp^lstm_502/while.^lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp-^lstm_503/lstm_cell_143/MatMul/ReadVariableOp/^lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp^lstm_503/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_167/BiasAdd/ReadVariableOp dense_167/BiasAdd/ReadVariableOp2B
dense_167/MatMul/ReadVariableOpdense_167/MatMul/ReadVariableOp2^
-lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp-lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp2\
,lstm_501/lstm_cell_141/MatMul/ReadVariableOp,lstm_501/lstm_cell_141/MatMul/ReadVariableOp2`
.lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp.lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp2 
lstm_501/whilelstm_501/while2^
-lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp-lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp2\
,lstm_502/lstm_cell_142/MatMul/ReadVariableOp,lstm_502/lstm_cell_142/MatMul/ReadVariableOp2`
.lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp.lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp2 
lstm_502/whilelstm_502/while2^
-lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp-lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp2\
,lstm_503/lstm_cell_143/MatMul/ReadVariableOp,lstm_503/lstm_cell_143/MatMul/ReadVariableOp2`
.lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp.lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp2 
lstm_503/whilelstm_503/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
/__inference_sequential_167_layer_call_fn_867245

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
J__inference_sequential_167_layer_call_and_return_conditional_losses_867044o
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
�"
�
while_body_865012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_141_865036_0:	�/
while_lstm_cell_141_865038_0:	d�+
while_lstm_cell_141_865040_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_141_865036:	�-
while_lstm_cell_141_865038:	d�)
while_lstm_cell_141_865040:	���+while/lstm_cell_141/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_141/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_141_865036_0while_lstm_cell_141_865038_0while_lstm_cell_141_865040_0*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_864998�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_141/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_141/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_141/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_141/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_141_865036while_lstm_cell_141_865036_0":
while_lstm_cell_141_865038while_lstm_cell_141_865038_0":
while_lstm_cell_141_865040while_lstm_cell_141_865040_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_141/StatefulPartitionedCall+while/lstm_cell_141/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_868961
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_142_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_142_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_142_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_142_matmul_readvariableop_resource:	d�G
4while_lstm_cell_142_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_142_biasadd_readvariableop_resource:	���*while/lstm_cell_142/BiasAdd/ReadVariableOp�)while/lstm_cell_142/MatMul/ReadVariableOp�+while/lstm_cell_142/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_142/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_142_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_142/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_142_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_142/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_142/addAddV2$while/lstm_cell_142/MatMul:product:0&while/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_142_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_142/BiasAddBiasAddwhile/lstm_cell_142/add:z:02while/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_142/splitSplit,while/lstm_cell_142/split/split_dim:output:0$while/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_142/SigmoidSigmoid"while/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_1Sigmoid"while/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mulMul!while/lstm_cell_142/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_142/ReluRelu"while/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_1Mulwhile/lstm_cell_142/Sigmoid:y:0&while/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/add_1AddV2while/lstm_cell_142/mul:z:0while/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_2Sigmoid"while/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_142/Relu_1Reluwhile/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_2Mul!while/lstm_cell_142/Sigmoid_2:y:0(while/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_142/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_142/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_142/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_142/BiasAdd/ReadVariableOp*^while/lstm_cell_142/MatMul/ReadVariableOp,^while/lstm_cell_142/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_142_biasadd_readvariableop_resource5while_lstm_cell_142_biasadd_readvariableop_resource_0"n
4while_lstm_cell_142_matmul_1_readvariableop_resource6while_lstm_cell_142_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_142_matmul_readvariableop_resource4while_lstm_cell_142_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_142/BiasAdd/ReadVariableOp*while/lstm_cell_142/BiasAdd/ReadVariableOp2V
)while/lstm_cell_142/MatMul/ReadVariableOp)while/lstm_cell_142/MatMul/ReadVariableOp2Z
+while/lstm_cell_142/MatMul_1/ReadVariableOp+while/lstm_cell_142/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_866892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_141_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_141_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_141_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_141_matmul_readvariableop_resource:	�G
4while_lstm_cell_141_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_141_biasadd_readvariableop_resource:	���*while/lstm_cell_141/BiasAdd/ReadVariableOp�)while/lstm_cell_141/MatMul/ReadVariableOp�+while/lstm_cell_141/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_141/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_141_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_141/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_141/addAddV2$while/lstm_cell_141/MatMul:product:0&while/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_141/BiasAddBiasAddwhile/lstm_cell_141/add:z:02while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_141/splitSplit,while/lstm_cell_141/split/split_dim:output:0$while/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_141/SigmoidSigmoid"while/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_1Sigmoid"while/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mulMul!while/lstm_cell_141/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_141/ReluRelu"while/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_1Mulwhile/lstm_cell_141/Sigmoid:y:0&while/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/add_1AddV2while/lstm_cell_141/mul:z:0while/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_2Sigmoid"while/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_141/Relu_1Reluwhile/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_2Mul!while/lstm_cell_141/Sigmoid_2:y:0(while/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_141/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_141/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_141/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp,^while/lstm_cell_141/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_141_biasadd_readvariableop_resource5while_lstm_cell_141_biasadd_readvariableop_resource_0"n
4while_lstm_cell_141_matmul_1_readvariableop_resource6while_lstm_cell_141_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_141_matmul_readvariableop_resource4while_lstm_cell_141_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_141/BiasAdd/ReadVariableOp*while/lstm_cell_141/BiasAdd/ReadVariableOp2V
)while/lstm_cell_141/MatMul/ReadVariableOp)while/lstm_cell_141/MatMul/ReadVariableOp2Z
+while/lstm_cell_141/MatMul_1/ReadVariableOp+while/lstm_cell_141/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�"
�
while_body_865712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_143_865736_0:2(.
while_lstm_cell_143_865738_0:
(*
while_lstm_cell_143_865740_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_143_865736:2(,
while_lstm_cell_143_865738:
((
while_lstm_cell_143_865740:(��+while/lstm_cell_143/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_143/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_143_865736_0while_lstm_cell_143_865738_0while_lstm_cell_143_865740_0*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_865698�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_143/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_143/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_143/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_143_865736while_lstm_cell_143_865736_0":
while_lstm_cell_143_865738while_lstm_cell_143_865738_0":
while_lstm_cell_143_865740while_lstm_cell_143_865740_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_143/StatefulPartitionedCall+while/lstm_cell_143/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_501_while_body_867304.
*lstm_501_while_lstm_501_while_loop_counter4
0lstm_501_while_lstm_501_while_maximum_iterations
lstm_501_while_placeholder 
lstm_501_while_placeholder_1 
lstm_501_while_placeholder_2 
lstm_501_while_placeholder_3-
)lstm_501_while_lstm_501_strided_slice_1_0i
elstm_501_while_tensorarrayv2read_tensorlistgetitem_lstm_501_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_501_while_lstm_cell_141_matmul_readvariableop_resource_0:	�R
?lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource_0:	d�M
>lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource_0:	�
lstm_501_while_identity
lstm_501_while_identity_1
lstm_501_while_identity_2
lstm_501_while_identity_3
lstm_501_while_identity_4
lstm_501_while_identity_5+
'lstm_501_while_lstm_501_strided_slice_1g
clstm_501_while_tensorarrayv2read_tensorlistgetitem_lstm_501_tensorarrayunstack_tensorlistfromtensorN
;lstm_501_while_lstm_cell_141_matmul_readvariableop_resource:	�P
=lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource:	d�K
<lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource:	���3lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp�2lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp�4lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp�
@lstm_501/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_501/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_501_while_tensorarrayv2read_tensorlistgetitem_lstm_501_tensorarrayunstack_tensorlistfromtensor_0lstm_501_while_placeholderIlstm_501/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_501/while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp=lstm_501_while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_501/while/lstm_cell_141/MatMulMatMul9lstm_501/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp?lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_501/while/lstm_cell_141/MatMul_1MatMullstm_501_while_placeholder_2<lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_501/while/lstm_cell_141/addAddV2-lstm_501/while/lstm_cell_141/MatMul:product:0/lstm_501/while/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp>lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_501/while/lstm_cell_141/BiasAddBiasAdd$lstm_501/while/lstm_cell_141/add:z:0;lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_501/while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_501/while/lstm_cell_141/splitSplit5lstm_501/while/lstm_cell_141/split/split_dim:output:0-lstm_501/while/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_501/while/lstm_cell_141/SigmoidSigmoid+lstm_501/while/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_501/while/lstm_cell_141/Sigmoid_1Sigmoid+lstm_501/while/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_501/while/lstm_cell_141/mulMul*lstm_501/while/lstm_cell_141/Sigmoid_1:y:0lstm_501_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_501/while/lstm_cell_141/ReluRelu+lstm_501/while/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_501/while/lstm_cell_141/mul_1Mul(lstm_501/while/lstm_cell_141/Sigmoid:y:0/lstm_501/while/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_501/while/lstm_cell_141/add_1AddV2$lstm_501/while/lstm_cell_141/mul:z:0&lstm_501/while/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_501/while/lstm_cell_141/Sigmoid_2Sigmoid+lstm_501/while/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_501/while/lstm_cell_141/Relu_1Relu&lstm_501/while/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_501/while/lstm_cell_141/mul_2Mul*lstm_501/while/lstm_cell_141/Sigmoid_2:y:01lstm_501/while/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_501/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_501_while_placeholder_1lstm_501_while_placeholder&lstm_501/while/lstm_cell_141/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_501/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_501/while/addAddV2lstm_501_while_placeholderlstm_501/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_501/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_501/while/add_1AddV2*lstm_501_while_lstm_501_while_loop_counterlstm_501/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_501/while/IdentityIdentitylstm_501/while/add_1:z:0^lstm_501/while/NoOp*
T0*
_output_shapes
: �
lstm_501/while/Identity_1Identity0lstm_501_while_lstm_501_while_maximum_iterations^lstm_501/while/NoOp*
T0*
_output_shapes
: t
lstm_501/while/Identity_2Identitylstm_501/while/add:z:0^lstm_501/while/NoOp*
T0*
_output_shapes
: �
lstm_501/while/Identity_3IdentityClstm_501/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_501/while/NoOp*
T0*
_output_shapes
: �
lstm_501/while/Identity_4Identity&lstm_501/while/lstm_cell_141/mul_2:z:0^lstm_501/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_501/while/Identity_5Identity&lstm_501/while/lstm_cell_141/add_1:z:0^lstm_501/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_501/while/NoOpNoOp4^lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp3^lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp5^lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_501_while_identity lstm_501/while/Identity:output:0"?
lstm_501_while_identity_1"lstm_501/while/Identity_1:output:0"?
lstm_501_while_identity_2"lstm_501/while/Identity_2:output:0"?
lstm_501_while_identity_3"lstm_501/while/Identity_3:output:0"?
lstm_501_while_identity_4"lstm_501/while/Identity_4:output:0"?
lstm_501_while_identity_5"lstm_501/while/Identity_5:output:0"T
'lstm_501_while_lstm_501_strided_slice_1)lstm_501_while_lstm_501_strided_slice_1_0"~
<lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource>lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource_0"�
=lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource?lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource_0"|
;lstm_501_while_lstm_cell_141_matmul_readvariableop_resource=lstm_501_while_lstm_cell_141_matmul_readvariableop_resource_0"�
clstm_501_while_tensorarrayv2read_tensorlistgetitem_lstm_501_tensorarrayunstack_tensorlistfromtensorelstm_501_while_tensorarrayv2read_tensorlistgetitem_lstm_501_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp3lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp2h
2lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp2lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp2l
4lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp4lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_866346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_143_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_143_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_143_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_143_matmul_readvariableop_resource:2(F
4while_lstm_cell_143_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_143_biasadd_readvariableop_resource:(��*while/lstm_cell_143/BiasAdd/ReadVariableOp�)while/lstm_cell_143/MatMul/ReadVariableOp�+while/lstm_cell_143/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_143/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_143_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_143/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_143_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_143/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_143/addAddV2$while/lstm_cell_143/MatMul:product:0&while/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_143_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_143/BiasAddBiasAddwhile/lstm_cell_143/add:z:02while/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_143/splitSplit,while/lstm_cell_143/split/split_dim:output:0$while/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_143/SigmoidSigmoid"while/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_1Sigmoid"while/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mulMul!while/lstm_cell_143/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_143/ReluRelu"while/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_1Mulwhile/lstm_cell_143/Sigmoid:y:0&while/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/add_1AddV2while/lstm_cell_143/mul:z:0while/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_2Sigmoid"while/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_143/Relu_1Reluwhile/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_2Mul!while/lstm_cell_143/Sigmoid_2:y:0(while/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_143/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_143/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_143/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_143/BiasAdd/ReadVariableOp*^while/lstm_cell_143/MatMul/ReadVariableOp,^while/lstm_cell_143/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_143_biasadd_readvariableop_resource5while_lstm_cell_143_biasadd_readvariableop_resource_0"n
4while_lstm_cell_143_matmul_1_readvariableop_resource6while_lstm_cell_143_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_143_matmul_readvariableop_resource4while_lstm_cell_143_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_143/BiasAdd/ReadVariableOp*while/lstm_cell_143/BiasAdd/ReadVariableOp2V
)while/lstm_cell_143/MatMul/ReadVariableOp)while/lstm_cell_143/MatMul/ReadVariableOp2Z
+while/lstm_cell_143/MatMul_1/ReadVariableOp+while/lstm_cell_143/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_142_layer_call_fn_870081

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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_865348o
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
�T
�
)sequential_167_lstm_502_while_body_864702L
Hsequential_167_lstm_502_while_sequential_167_lstm_502_while_loop_counterR
Nsequential_167_lstm_502_while_sequential_167_lstm_502_while_maximum_iterations-
)sequential_167_lstm_502_while_placeholder/
+sequential_167_lstm_502_while_placeholder_1/
+sequential_167_lstm_502_while_placeholder_2/
+sequential_167_lstm_502_while_placeholder_3K
Gsequential_167_lstm_502_while_sequential_167_lstm_502_strided_slice_1_0�
�sequential_167_lstm_502_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_502_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_167_lstm_502_while_lstm_cell_142_matmul_readvariableop_resource_0:	d�a
Nsequential_167_lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource_0:	2�\
Msequential_167_lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource_0:	�*
&sequential_167_lstm_502_while_identity,
(sequential_167_lstm_502_while_identity_1,
(sequential_167_lstm_502_while_identity_2,
(sequential_167_lstm_502_while_identity_3,
(sequential_167_lstm_502_while_identity_4,
(sequential_167_lstm_502_while_identity_5I
Esequential_167_lstm_502_while_sequential_167_lstm_502_strided_slice_1�
�sequential_167_lstm_502_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_502_tensorarrayunstack_tensorlistfromtensor]
Jsequential_167_lstm_502_while_lstm_cell_142_matmul_readvariableop_resource:	d�_
Lsequential_167_lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource:	2�Z
Ksequential_167_lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource:	���Bsequential_167/lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp�Asequential_167/lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp�Csequential_167/lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp�
Osequential_167/lstm_502/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
Asequential_167/lstm_502/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_167_lstm_502_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_502_tensorarrayunstack_tensorlistfromtensor_0)sequential_167_lstm_502_while_placeholderXsequential_167/lstm_502/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
Asequential_167/lstm_502/while/lstm_cell_142/MatMul/ReadVariableOpReadVariableOpLsequential_167_lstm_502_while_lstm_cell_142_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_167/lstm_502/while/lstm_cell_142/MatMulMatMulHsequential_167/lstm_502/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_167/lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_167/lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOpNsequential_167_lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
4sequential_167/lstm_502/while/lstm_cell_142/MatMul_1MatMul+sequential_167_lstm_502_while_placeholder_2Ksequential_167/lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_167/lstm_502/while/lstm_cell_142/addAddV2<sequential_167/lstm_502/while/lstm_cell_142/MatMul:product:0>sequential_167/lstm_502/while/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_167/lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOpMsequential_167_lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_167/lstm_502/while/lstm_cell_142/BiasAddBiasAdd3sequential_167/lstm_502/while/lstm_cell_142/add:z:0Jsequential_167/lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_167/lstm_502/while/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_167/lstm_502/while/lstm_cell_142/splitSplitDsequential_167/lstm_502/while/lstm_cell_142/split/split_dim:output:0<sequential_167/lstm_502/while/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
3sequential_167/lstm_502/while/lstm_cell_142/SigmoidSigmoid:sequential_167/lstm_502/while/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2�
5sequential_167/lstm_502/while/lstm_cell_142/Sigmoid_1Sigmoid:sequential_167/lstm_502/while/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
/sequential_167/lstm_502/while/lstm_cell_142/mulMul9sequential_167/lstm_502/while/lstm_cell_142/Sigmoid_1:y:0+sequential_167_lstm_502_while_placeholder_3*
T0*'
_output_shapes
:���������2�
0sequential_167/lstm_502/while/lstm_cell_142/ReluRelu:sequential_167/lstm_502/while/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
1sequential_167/lstm_502/while/lstm_cell_142/mul_1Mul7sequential_167/lstm_502/while/lstm_cell_142/Sigmoid:y:0>sequential_167/lstm_502/while/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
1sequential_167/lstm_502/while/lstm_cell_142/add_1AddV23sequential_167/lstm_502/while/lstm_cell_142/mul:z:05sequential_167/lstm_502/while/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2�
5sequential_167/lstm_502/while/lstm_cell_142/Sigmoid_2Sigmoid:sequential_167/lstm_502/while/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2�
2sequential_167/lstm_502/while/lstm_cell_142/Relu_1Relu5sequential_167/lstm_502/while/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_167/lstm_502/while/lstm_cell_142/mul_2Mul9sequential_167/lstm_502/while/lstm_cell_142/Sigmoid_2:y:0@sequential_167/lstm_502/while/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Bsequential_167/lstm_502/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_167_lstm_502_while_placeholder_1)sequential_167_lstm_502_while_placeholder5sequential_167/lstm_502/while/lstm_cell_142/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_167/lstm_502/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_167/lstm_502/while/addAddV2)sequential_167_lstm_502_while_placeholder,sequential_167/lstm_502/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_167/lstm_502/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_167/lstm_502/while/add_1AddV2Hsequential_167_lstm_502_while_sequential_167_lstm_502_while_loop_counter.sequential_167/lstm_502/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_167/lstm_502/while/IdentityIdentity'sequential_167/lstm_502/while/add_1:z:0#^sequential_167/lstm_502/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_502/while/Identity_1IdentityNsequential_167_lstm_502_while_sequential_167_lstm_502_while_maximum_iterations#^sequential_167/lstm_502/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_502/while/Identity_2Identity%sequential_167/lstm_502/while/add:z:0#^sequential_167/lstm_502/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_502/while/Identity_3IdentityRsequential_167/lstm_502/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_167/lstm_502/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_502/while/Identity_4Identity5sequential_167/lstm_502/while/lstm_cell_142/mul_2:z:0#^sequential_167/lstm_502/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_167/lstm_502/while/Identity_5Identity5sequential_167/lstm_502/while/lstm_cell_142/add_1:z:0#^sequential_167/lstm_502/while/NoOp*
T0*'
_output_shapes
:���������2�
"sequential_167/lstm_502/while/NoOpNoOpC^sequential_167/lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOpB^sequential_167/lstm_502/while/lstm_cell_142/MatMul/ReadVariableOpD^sequential_167/lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_167_lstm_502_while_identity/sequential_167/lstm_502/while/Identity:output:0"]
(sequential_167_lstm_502_while_identity_11sequential_167/lstm_502/while/Identity_1:output:0"]
(sequential_167_lstm_502_while_identity_21sequential_167/lstm_502/while/Identity_2:output:0"]
(sequential_167_lstm_502_while_identity_31sequential_167/lstm_502/while/Identity_3:output:0"]
(sequential_167_lstm_502_while_identity_41sequential_167/lstm_502/while/Identity_4:output:0"]
(sequential_167_lstm_502_while_identity_51sequential_167/lstm_502/while/Identity_5:output:0"�
Ksequential_167_lstm_502_while_lstm_cell_142_biasadd_readvariableop_resourceMsequential_167_lstm_502_while_lstm_cell_142_biasadd_readvariableop_resource_0"�
Lsequential_167_lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resourceNsequential_167_lstm_502_while_lstm_cell_142_matmul_1_readvariableop_resource_0"�
Jsequential_167_lstm_502_while_lstm_cell_142_matmul_readvariableop_resourceLsequential_167_lstm_502_while_lstm_cell_142_matmul_readvariableop_resource_0"�
Esequential_167_lstm_502_while_sequential_167_lstm_502_strided_slice_1Gsequential_167_lstm_502_while_sequential_167_lstm_502_strided_slice_1_0"�
�sequential_167_lstm_502_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_502_tensorarrayunstack_tensorlistfromtensor�sequential_167_lstm_502_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_502_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
Bsequential_167/lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOpBsequential_167/lstm_502/while/lstm_cell_142/BiasAdd/ReadVariableOp2�
Asequential_167/lstm_502/while/lstm_cell_142/MatMul/ReadVariableOpAsequential_167/lstm_502/while/lstm_cell_142/MatMul/ReadVariableOp2�
Csequential_167/lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOpCsequential_167/lstm_502/while/lstm_cell_142/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_869863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_143_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_143_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_143_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_143_matmul_readvariableop_resource:2(F
4while_lstm_cell_143_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_143_biasadd_readvariableop_resource:(��*while/lstm_cell_143/BiasAdd/ReadVariableOp�)while/lstm_cell_143/MatMul/ReadVariableOp�+while/lstm_cell_143/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_143/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_143_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_143/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_143_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_143/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_143/addAddV2$while/lstm_cell_143/MatMul:product:0&while/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_143_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_143/BiasAddBiasAddwhile/lstm_cell_143/add:z:02while/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_143/splitSplit,while/lstm_cell_143/split/split_dim:output:0$while/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_143/SigmoidSigmoid"while/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_1Sigmoid"while/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mulMul!while/lstm_cell_143/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_143/ReluRelu"while/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_1Mulwhile/lstm_cell_143/Sigmoid:y:0&while/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/add_1AddV2while/lstm_cell_143/mul:z:0while/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_2Sigmoid"while/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_143/Relu_1Reluwhile/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_2Mul!while/lstm_cell_143/Sigmoid_2:y:0(while/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_143/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_143/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_143/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_143/BiasAdd/ReadVariableOp*^while/lstm_cell_143/MatMul/ReadVariableOp,^while/lstm_cell_143/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_143_biasadd_readvariableop_resource5while_lstm_cell_143_biasadd_readvariableop_resource_0"n
4while_lstm_cell_143_matmul_1_readvariableop_resource6while_lstm_cell_143_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_143_matmul_readvariableop_resource4while_lstm_cell_143_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_143/BiasAdd/ReadVariableOp*while/lstm_cell_143/BiasAdd/ReadVariableOp2V
)while/lstm_cell_143/MatMul/ReadVariableOp)while/lstm_cell_143/MatMul/ReadVariableOp2Z
+while/lstm_cell_143/MatMul_1/ReadVariableOp+while/lstm_cell_143/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_501_layer_call_fn_868132

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
D__inference_lstm_501_layer_call_and_return_conditional_losses_866130s
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
�C
�

lstm_503_while_body_868009.
*lstm_503_while_lstm_503_while_loop_counter4
0lstm_503_while_lstm_503_while_maximum_iterations
lstm_503_while_placeholder 
lstm_503_while_placeholder_1 
lstm_503_while_placeholder_2 
lstm_503_while_placeholder_3-
)lstm_503_while_lstm_503_strided_slice_1_0i
elstm_503_while_tensorarrayv2read_tensorlistgetitem_lstm_503_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_503_while_lstm_cell_143_matmul_readvariableop_resource_0:2(Q
?lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource_0:
(L
>lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource_0:(
lstm_503_while_identity
lstm_503_while_identity_1
lstm_503_while_identity_2
lstm_503_while_identity_3
lstm_503_while_identity_4
lstm_503_while_identity_5+
'lstm_503_while_lstm_503_strided_slice_1g
clstm_503_while_tensorarrayv2read_tensorlistgetitem_lstm_503_tensorarrayunstack_tensorlistfromtensorM
;lstm_503_while_lstm_cell_143_matmul_readvariableop_resource:2(O
=lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource:
(J
<lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource:(��3lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp�2lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp�4lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp�
@lstm_503/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_503/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_503_while_tensorarrayv2read_tensorlistgetitem_lstm_503_tensorarrayunstack_tensorlistfromtensor_0lstm_503_while_placeholderIlstm_503/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_503/while/lstm_cell_143/MatMul/ReadVariableOpReadVariableOp=lstm_503_while_lstm_cell_143_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_503/while/lstm_cell_143/MatMulMatMul9lstm_503/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp?lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_503/while/lstm_cell_143/MatMul_1MatMullstm_503_while_placeholder_2<lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_503/while/lstm_cell_143/addAddV2-lstm_503/while/lstm_cell_143/MatMul:product:0/lstm_503/while/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp>lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_503/while/lstm_cell_143/BiasAddBiasAdd$lstm_503/while/lstm_cell_143/add:z:0;lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_503/while/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_503/while/lstm_cell_143/splitSplit5lstm_503/while/lstm_cell_143/split/split_dim:output:0-lstm_503/while/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_503/while/lstm_cell_143/SigmoidSigmoid+lstm_503/while/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_503/while/lstm_cell_143/Sigmoid_1Sigmoid+lstm_503/while/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_503/while/lstm_cell_143/mulMul*lstm_503/while/lstm_cell_143/Sigmoid_1:y:0lstm_503_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_503/while/lstm_cell_143/ReluRelu+lstm_503/while/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_503/while/lstm_cell_143/mul_1Mul(lstm_503/while/lstm_cell_143/Sigmoid:y:0/lstm_503/while/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_503/while/lstm_cell_143/add_1AddV2$lstm_503/while/lstm_cell_143/mul:z:0&lstm_503/while/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_503/while/lstm_cell_143/Sigmoid_2Sigmoid+lstm_503/while/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_503/while/lstm_cell_143/Relu_1Relu&lstm_503/while/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_503/while/lstm_cell_143/mul_2Mul*lstm_503/while/lstm_cell_143/Sigmoid_2:y:01lstm_503/while/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_503/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_503_while_placeholder_1lstm_503_while_placeholder&lstm_503/while/lstm_cell_143/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_503/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_503/while/addAddV2lstm_503_while_placeholderlstm_503/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_503/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_503/while/add_1AddV2*lstm_503_while_lstm_503_while_loop_counterlstm_503/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_503/while/IdentityIdentitylstm_503/while/add_1:z:0^lstm_503/while/NoOp*
T0*
_output_shapes
: �
lstm_503/while/Identity_1Identity0lstm_503_while_lstm_503_while_maximum_iterations^lstm_503/while/NoOp*
T0*
_output_shapes
: t
lstm_503/while/Identity_2Identitylstm_503/while/add:z:0^lstm_503/while/NoOp*
T0*
_output_shapes
: �
lstm_503/while/Identity_3IdentityClstm_503/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_503/while/NoOp*
T0*
_output_shapes
: �
lstm_503/while/Identity_4Identity&lstm_503/while/lstm_cell_143/mul_2:z:0^lstm_503/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_503/while/Identity_5Identity&lstm_503/while/lstm_cell_143/add_1:z:0^lstm_503/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_503/while/NoOpNoOp4^lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp3^lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp5^lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_503_while_identity lstm_503/while/Identity:output:0"?
lstm_503_while_identity_1"lstm_503/while/Identity_1:output:0"?
lstm_503_while_identity_2"lstm_503/while/Identity_2:output:0"?
lstm_503_while_identity_3"lstm_503/while/Identity_3:output:0"?
lstm_503_while_identity_4"lstm_503/while/Identity_4:output:0"?
lstm_503_while_identity_5"lstm_503/while/Identity_5:output:0"T
'lstm_503_while_lstm_503_strided_slice_1)lstm_503_while_lstm_503_strided_slice_1_0"~
<lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource>lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource_0"�
=lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource?lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource_0"|
;lstm_503_while_lstm_cell_143_matmul_readvariableop_resource=lstm_503_while_lstm_cell_143_matmul_readvariableop_resource_0"�
clstm_503_while_tensorarrayv2read_tensorlistgetitem_lstm_503_tensorarrayunstack_tensorlistfromtensorelstm_503_while_tensorarrayv2read_tensorlistgetitem_lstm_503_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp3lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp2h
2lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp2lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp2l
4lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp4lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
��
�
!__inference__wrapped_model_864931
lstm_501_inputW
Dsequential_167_lstm_501_lstm_cell_141_matmul_readvariableop_resource:	�Y
Fsequential_167_lstm_501_lstm_cell_141_matmul_1_readvariableop_resource:	d�T
Esequential_167_lstm_501_lstm_cell_141_biasadd_readvariableop_resource:	�W
Dsequential_167_lstm_502_lstm_cell_142_matmul_readvariableop_resource:	d�Y
Fsequential_167_lstm_502_lstm_cell_142_matmul_1_readvariableop_resource:	2�T
Esequential_167_lstm_502_lstm_cell_142_biasadd_readvariableop_resource:	�V
Dsequential_167_lstm_503_lstm_cell_143_matmul_readvariableop_resource:2(X
Fsequential_167_lstm_503_lstm_cell_143_matmul_1_readvariableop_resource:
(S
Esequential_167_lstm_503_lstm_cell_143_biasadd_readvariableop_resource:(I
7sequential_167_dense_167_matmul_readvariableop_resource:
F
8sequential_167_dense_167_biasadd_readvariableop_resource:
identity��/sequential_167/dense_167/BiasAdd/ReadVariableOp�.sequential_167/dense_167/MatMul/ReadVariableOp�<sequential_167/lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp�;sequential_167/lstm_501/lstm_cell_141/MatMul/ReadVariableOp�=sequential_167/lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp�sequential_167/lstm_501/while�<sequential_167/lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp�;sequential_167/lstm_502/lstm_cell_142/MatMul/ReadVariableOp�=sequential_167/lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp�sequential_167/lstm_502/while�<sequential_167/lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp�;sequential_167/lstm_503/lstm_cell_143/MatMul/ReadVariableOp�=sequential_167/lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp�sequential_167/lstm_503/while[
sequential_167/lstm_501/ShapeShapelstm_501_input*
T0*
_output_shapes
:u
+sequential_167/lstm_501/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_167/lstm_501/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_167/lstm_501/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_167/lstm_501/strided_sliceStridedSlice&sequential_167/lstm_501/Shape:output:04sequential_167/lstm_501/strided_slice/stack:output:06sequential_167/lstm_501/strided_slice/stack_1:output:06sequential_167/lstm_501/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_167/lstm_501/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_167/lstm_501/zeros/packedPack.sequential_167/lstm_501/strided_slice:output:0/sequential_167/lstm_501/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_167/lstm_501/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_167/lstm_501/zerosFill-sequential_167/lstm_501/zeros/packed:output:0,sequential_167/lstm_501/zeros/Const:output:0*
T0*'
_output_shapes
:���������dj
(sequential_167/lstm_501/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
&sequential_167/lstm_501/zeros_1/packedPack.sequential_167/lstm_501/strided_slice:output:01sequential_167/lstm_501/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_167/lstm_501/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_167/lstm_501/zeros_1Fill/sequential_167/lstm_501/zeros_1/packed:output:0.sequential_167/lstm_501/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d{
&sequential_167/lstm_501/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_167/lstm_501/transpose	Transposelstm_501_input/sequential_167/lstm_501/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
sequential_167/lstm_501/Shape_1Shape%sequential_167/lstm_501/transpose:y:0*
T0*
_output_shapes
:w
-sequential_167/lstm_501/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_167/lstm_501/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_167/lstm_501/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_167/lstm_501/strided_slice_1StridedSlice(sequential_167/lstm_501/Shape_1:output:06sequential_167/lstm_501/strided_slice_1/stack:output:08sequential_167/lstm_501/strided_slice_1/stack_1:output:08sequential_167/lstm_501/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_167/lstm_501/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_167/lstm_501/TensorArrayV2TensorListReserve<sequential_167/lstm_501/TensorArrayV2/element_shape:output:00sequential_167/lstm_501/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_167/lstm_501/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_167/lstm_501/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_167/lstm_501/transpose:y:0Vsequential_167/lstm_501/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_167/lstm_501/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_167/lstm_501/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_167/lstm_501/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_167/lstm_501/strided_slice_2StridedSlice%sequential_167/lstm_501/transpose:y:06sequential_167/lstm_501/strided_slice_2/stack:output:08sequential_167/lstm_501/strided_slice_2/stack_1:output:08sequential_167/lstm_501/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
;sequential_167/lstm_501/lstm_cell_141/MatMul/ReadVariableOpReadVariableOpDsequential_167_lstm_501_lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,sequential_167/lstm_501/lstm_cell_141/MatMulMatMul0sequential_167/lstm_501/strided_slice_2:output:0Csequential_167/lstm_501/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_167/lstm_501/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOpFsequential_167_lstm_501_lstm_cell_141_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
.sequential_167/lstm_501/lstm_cell_141/MatMul_1MatMul&sequential_167/lstm_501/zeros:output:0Esequential_167/lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_167/lstm_501/lstm_cell_141/addAddV26sequential_167/lstm_501/lstm_cell_141/MatMul:product:08sequential_167/lstm_501/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_167/lstm_501/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOpEsequential_167_lstm_501_lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_167/lstm_501/lstm_cell_141/BiasAddBiasAdd-sequential_167/lstm_501/lstm_cell_141/add:z:0Dsequential_167/lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_167/lstm_501/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_167/lstm_501/lstm_cell_141/splitSplit>sequential_167/lstm_501/lstm_cell_141/split/split_dim:output:06sequential_167/lstm_501/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_167/lstm_501/lstm_cell_141/SigmoidSigmoid4sequential_167/lstm_501/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_167/lstm_501/lstm_cell_141/Sigmoid_1Sigmoid4sequential_167/lstm_501/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_167/lstm_501/lstm_cell_141/mulMul3sequential_167/lstm_501/lstm_cell_141/Sigmoid_1:y:0(sequential_167/lstm_501/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential_167/lstm_501/lstm_cell_141/ReluRelu4sequential_167/lstm_501/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_167/lstm_501/lstm_cell_141/mul_1Mul1sequential_167/lstm_501/lstm_cell_141/Sigmoid:y:08sequential_167/lstm_501/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_167/lstm_501/lstm_cell_141/add_1AddV2-sequential_167/lstm_501/lstm_cell_141/mul:z:0/sequential_167/lstm_501/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_167/lstm_501/lstm_cell_141/Sigmoid_2Sigmoid4sequential_167/lstm_501/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_167/lstm_501/lstm_cell_141/Relu_1Relu/sequential_167/lstm_501/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_167/lstm_501/lstm_cell_141/mul_2Mul3sequential_167/lstm_501/lstm_cell_141/Sigmoid_2:y:0:sequential_167/lstm_501/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
5sequential_167/lstm_501/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'sequential_167/lstm_501/TensorArrayV2_1TensorListReserve>sequential_167/lstm_501/TensorArrayV2_1/element_shape:output:00sequential_167/lstm_501/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_167/lstm_501/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_167/lstm_501/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_167/lstm_501/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_167/lstm_501/whileWhile3sequential_167/lstm_501/while/loop_counter:output:09sequential_167/lstm_501/while/maximum_iterations:output:0%sequential_167/lstm_501/time:output:00sequential_167/lstm_501/TensorArrayV2_1:handle:0&sequential_167/lstm_501/zeros:output:0(sequential_167/lstm_501/zeros_1:output:00sequential_167/lstm_501/strided_slice_1:output:0Osequential_167/lstm_501/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_167_lstm_501_lstm_cell_141_matmul_readvariableop_resourceFsequential_167_lstm_501_lstm_cell_141_matmul_1_readvariableop_resourceEsequential_167_lstm_501_lstm_cell_141_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_167_lstm_501_while_body_864563*5
cond-R+
)sequential_167_lstm_501_while_cond_864562*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Hsequential_167/lstm_501/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
:sequential_167/lstm_501/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_167/lstm_501/while:output:3Qsequential_167/lstm_501/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0�
-sequential_167/lstm_501/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_167/lstm_501/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_167/lstm_501/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_167/lstm_501/strided_slice_3StridedSliceCsequential_167/lstm_501/TensorArrayV2Stack/TensorListStack:tensor:06sequential_167/lstm_501/strided_slice_3/stack:output:08sequential_167/lstm_501/strided_slice_3/stack_1:output:08sequential_167/lstm_501/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask}
(sequential_167/lstm_501/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_167/lstm_501/transpose_1	TransposeCsequential_167/lstm_501/TensorArrayV2Stack/TensorListStack:tensor:01sequential_167/lstm_501/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ds
sequential_167/lstm_501/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_167/lstm_502/ShapeShape'sequential_167/lstm_501/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_167/lstm_502/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_167/lstm_502/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_167/lstm_502/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_167/lstm_502/strided_sliceStridedSlice&sequential_167/lstm_502/Shape:output:04sequential_167/lstm_502/strided_slice/stack:output:06sequential_167/lstm_502/strided_slice/stack_1:output:06sequential_167/lstm_502/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_167/lstm_502/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_167/lstm_502/zeros/packedPack.sequential_167/lstm_502/strided_slice:output:0/sequential_167/lstm_502/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_167/lstm_502/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_167/lstm_502/zerosFill-sequential_167/lstm_502/zeros/packed:output:0,sequential_167/lstm_502/zeros/Const:output:0*
T0*'
_output_shapes
:���������2j
(sequential_167/lstm_502/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
&sequential_167/lstm_502/zeros_1/packedPack.sequential_167/lstm_502/strided_slice:output:01sequential_167/lstm_502/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_167/lstm_502/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_167/lstm_502/zeros_1Fill/sequential_167/lstm_502/zeros_1/packed:output:0.sequential_167/lstm_502/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2{
&sequential_167/lstm_502/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_167/lstm_502/transpose	Transpose'sequential_167/lstm_501/transpose_1:y:0/sequential_167/lstm_502/transpose/perm:output:0*
T0*+
_output_shapes
:���������dt
sequential_167/lstm_502/Shape_1Shape%sequential_167/lstm_502/transpose:y:0*
T0*
_output_shapes
:w
-sequential_167/lstm_502/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_167/lstm_502/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_167/lstm_502/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_167/lstm_502/strided_slice_1StridedSlice(sequential_167/lstm_502/Shape_1:output:06sequential_167/lstm_502/strided_slice_1/stack:output:08sequential_167/lstm_502/strided_slice_1/stack_1:output:08sequential_167/lstm_502/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_167/lstm_502/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_167/lstm_502/TensorArrayV2TensorListReserve<sequential_167/lstm_502/TensorArrayV2/element_shape:output:00sequential_167/lstm_502/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_167/lstm_502/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_167/lstm_502/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_167/lstm_502/transpose:y:0Vsequential_167/lstm_502/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_167/lstm_502/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_167/lstm_502/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_167/lstm_502/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_167/lstm_502/strided_slice_2StridedSlice%sequential_167/lstm_502/transpose:y:06sequential_167/lstm_502/strided_slice_2/stack:output:08sequential_167/lstm_502/strided_slice_2/stack_1:output:08sequential_167/lstm_502/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
;sequential_167/lstm_502/lstm_cell_142/MatMul/ReadVariableOpReadVariableOpDsequential_167_lstm_502_lstm_cell_142_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_167/lstm_502/lstm_cell_142/MatMulMatMul0sequential_167/lstm_502/strided_slice_2:output:0Csequential_167/lstm_502/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_167/lstm_502/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOpFsequential_167_lstm_502_lstm_cell_142_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
.sequential_167/lstm_502/lstm_cell_142/MatMul_1MatMul&sequential_167/lstm_502/zeros:output:0Esequential_167/lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_167/lstm_502/lstm_cell_142/addAddV26sequential_167/lstm_502/lstm_cell_142/MatMul:product:08sequential_167/lstm_502/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_167/lstm_502/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOpEsequential_167_lstm_502_lstm_cell_142_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_167/lstm_502/lstm_cell_142/BiasAddBiasAdd-sequential_167/lstm_502/lstm_cell_142/add:z:0Dsequential_167/lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_167/lstm_502/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_167/lstm_502/lstm_cell_142/splitSplit>sequential_167/lstm_502/lstm_cell_142/split/split_dim:output:06sequential_167/lstm_502/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
-sequential_167/lstm_502/lstm_cell_142/SigmoidSigmoid4sequential_167/lstm_502/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2�
/sequential_167/lstm_502/lstm_cell_142/Sigmoid_1Sigmoid4sequential_167/lstm_502/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
)sequential_167/lstm_502/lstm_cell_142/mulMul3sequential_167/lstm_502/lstm_cell_142/Sigmoid_1:y:0(sequential_167/lstm_502/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential_167/lstm_502/lstm_cell_142/ReluRelu4sequential_167/lstm_502/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
+sequential_167/lstm_502/lstm_cell_142/mul_1Mul1sequential_167/lstm_502/lstm_cell_142/Sigmoid:y:08sequential_167/lstm_502/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
+sequential_167/lstm_502/lstm_cell_142/add_1AddV2-sequential_167/lstm_502/lstm_cell_142/mul:z:0/sequential_167/lstm_502/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_167/lstm_502/lstm_cell_142/Sigmoid_2Sigmoid4sequential_167/lstm_502/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2�
,sequential_167/lstm_502/lstm_cell_142/Relu_1Relu/sequential_167/lstm_502/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_167/lstm_502/lstm_cell_142/mul_2Mul3sequential_167/lstm_502/lstm_cell_142/Sigmoid_2:y:0:sequential_167/lstm_502/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
5sequential_167/lstm_502/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'sequential_167/lstm_502/TensorArrayV2_1TensorListReserve>sequential_167/lstm_502/TensorArrayV2_1/element_shape:output:00sequential_167/lstm_502/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_167/lstm_502/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_167/lstm_502/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_167/lstm_502/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_167/lstm_502/whileWhile3sequential_167/lstm_502/while/loop_counter:output:09sequential_167/lstm_502/while/maximum_iterations:output:0%sequential_167/lstm_502/time:output:00sequential_167/lstm_502/TensorArrayV2_1:handle:0&sequential_167/lstm_502/zeros:output:0(sequential_167/lstm_502/zeros_1:output:00sequential_167/lstm_502/strided_slice_1:output:0Osequential_167/lstm_502/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_167_lstm_502_lstm_cell_142_matmul_readvariableop_resourceFsequential_167_lstm_502_lstm_cell_142_matmul_1_readvariableop_resourceEsequential_167_lstm_502_lstm_cell_142_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_167_lstm_502_while_body_864702*5
cond-R+
)sequential_167_lstm_502_while_cond_864701*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Hsequential_167/lstm_502/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
:sequential_167/lstm_502/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_167/lstm_502/while:output:3Qsequential_167/lstm_502/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0�
-sequential_167/lstm_502/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_167/lstm_502/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_167/lstm_502/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_167/lstm_502/strided_slice_3StridedSliceCsequential_167/lstm_502/TensorArrayV2Stack/TensorListStack:tensor:06sequential_167/lstm_502/strided_slice_3/stack:output:08sequential_167/lstm_502/strided_slice_3/stack_1:output:08sequential_167/lstm_502/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask}
(sequential_167/lstm_502/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_167/lstm_502/transpose_1	TransposeCsequential_167/lstm_502/TensorArrayV2Stack/TensorListStack:tensor:01sequential_167/lstm_502/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2s
sequential_167/lstm_502/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_167/lstm_503/ShapeShape'sequential_167/lstm_502/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_167/lstm_503/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_167/lstm_503/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_167/lstm_503/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_167/lstm_503/strided_sliceStridedSlice&sequential_167/lstm_503/Shape:output:04sequential_167/lstm_503/strided_slice/stack:output:06sequential_167/lstm_503/strided_slice/stack_1:output:06sequential_167/lstm_503/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_167/lstm_503/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_167/lstm_503/zeros/packedPack.sequential_167/lstm_503/strided_slice:output:0/sequential_167/lstm_503/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_167/lstm_503/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_167/lstm_503/zerosFill-sequential_167/lstm_503/zeros/packed:output:0,sequential_167/lstm_503/zeros/Const:output:0*
T0*'
_output_shapes
:���������
j
(sequential_167/lstm_503/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&sequential_167/lstm_503/zeros_1/packedPack.sequential_167/lstm_503/strided_slice:output:01sequential_167/lstm_503/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_167/lstm_503/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_167/lstm_503/zeros_1Fill/sequential_167/lstm_503/zeros_1/packed:output:0.sequential_167/lstm_503/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
{
&sequential_167/lstm_503/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_167/lstm_503/transpose	Transpose'sequential_167/lstm_502/transpose_1:y:0/sequential_167/lstm_503/transpose/perm:output:0*
T0*+
_output_shapes
:���������2t
sequential_167/lstm_503/Shape_1Shape%sequential_167/lstm_503/transpose:y:0*
T0*
_output_shapes
:w
-sequential_167/lstm_503/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_167/lstm_503/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_167/lstm_503/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_167/lstm_503/strided_slice_1StridedSlice(sequential_167/lstm_503/Shape_1:output:06sequential_167/lstm_503/strided_slice_1/stack:output:08sequential_167/lstm_503/strided_slice_1/stack_1:output:08sequential_167/lstm_503/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_167/lstm_503/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_167/lstm_503/TensorArrayV2TensorListReserve<sequential_167/lstm_503/TensorArrayV2/element_shape:output:00sequential_167/lstm_503/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_167/lstm_503/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_167/lstm_503/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_167/lstm_503/transpose:y:0Vsequential_167/lstm_503/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_167/lstm_503/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_167/lstm_503/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_167/lstm_503/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_167/lstm_503/strided_slice_2StridedSlice%sequential_167/lstm_503/transpose:y:06sequential_167/lstm_503/strided_slice_2/stack:output:08sequential_167/lstm_503/strided_slice_2/stack_1:output:08sequential_167/lstm_503/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
;sequential_167/lstm_503/lstm_cell_143/MatMul/ReadVariableOpReadVariableOpDsequential_167_lstm_503_lstm_cell_143_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
,sequential_167/lstm_503/lstm_cell_143/MatMulMatMul0sequential_167/lstm_503/strided_slice_2:output:0Csequential_167/lstm_503/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
=sequential_167/lstm_503/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOpFsequential_167_lstm_503_lstm_cell_143_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
.sequential_167/lstm_503/lstm_cell_143/MatMul_1MatMul&sequential_167/lstm_503/zeros:output:0Esequential_167/lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)sequential_167/lstm_503/lstm_cell_143/addAddV26sequential_167/lstm_503/lstm_cell_143/MatMul:product:08sequential_167/lstm_503/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
<sequential_167/lstm_503/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOpEsequential_167_lstm_503_lstm_cell_143_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
-sequential_167/lstm_503/lstm_cell_143/BiasAddBiasAdd-sequential_167/lstm_503/lstm_cell_143/add:z:0Dsequential_167/lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(w
5sequential_167/lstm_503/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_167/lstm_503/lstm_cell_143/splitSplit>sequential_167/lstm_503/lstm_cell_143/split/split_dim:output:06sequential_167/lstm_503/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
-sequential_167/lstm_503/lstm_cell_143/SigmoidSigmoid4sequential_167/lstm_503/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
�
/sequential_167/lstm_503/lstm_cell_143/Sigmoid_1Sigmoid4sequential_167/lstm_503/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
)sequential_167/lstm_503/lstm_cell_143/mulMul3sequential_167/lstm_503/lstm_cell_143/Sigmoid_1:y:0(sequential_167/lstm_503/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
*sequential_167/lstm_503/lstm_cell_143/ReluRelu4sequential_167/lstm_503/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
+sequential_167/lstm_503/lstm_cell_143/mul_1Mul1sequential_167/lstm_503/lstm_cell_143/Sigmoid:y:08sequential_167/lstm_503/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
+sequential_167/lstm_503/lstm_cell_143/add_1AddV2-sequential_167/lstm_503/lstm_cell_143/mul:z:0/sequential_167/lstm_503/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_167/lstm_503/lstm_cell_143/Sigmoid_2Sigmoid4sequential_167/lstm_503/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
�
,sequential_167/lstm_503/lstm_cell_143/Relu_1Relu/sequential_167/lstm_503/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_167/lstm_503/lstm_cell_143/mul_2Mul3sequential_167/lstm_503/lstm_cell_143/Sigmoid_2:y:0:sequential_167/lstm_503/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
5sequential_167/lstm_503/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
'sequential_167/lstm_503/TensorArrayV2_1TensorListReserve>sequential_167/lstm_503/TensorArrayV2_1/element_shape:output:00sequential_167/lstm_503/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_167/lstm_503/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_167/lstm_503/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_167/lstm_503/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_167/lstm_503/whileWhile3sequential_167/lstm_503/while/loop_counter:output:09sequential_167/lstm_503/while/maximum_iterations:output:0%sequential_167/lstm_503/time:output:00sequential_167/lstm_503/TensorArrayV2_1:handle:0&sequential_167/lstm_503/zeros:output:0(sequential_167/lstm_503/zeros_1:output:00sequential_167/lstm_503/strided_slice_1:output:0Osequential_167/lstm_503/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_167_lstm_503_lstm_cell_143_matmul_readvariableop_resourceFsequential_167_lstm_503_lstm_cell_143_matmul_1_readvariableop_resourceEsequential_167_lstm_503_lstm_cell_143_biasadd_readvariableop_resource*
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
_stateful_parallelism( *5
body-R+
)sequential_167_lstm_503_while_body_864841*5
cond-R+
)sequential_167_lstm_503_while_cond_864840*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Hsequential_167/lstm_503/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
:sequential_167/lstm_503/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_167/lstm_503/while:output:3Qsequential_167/lstm_503/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0�
-sequential_167/lstm_503/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_167/lstm_503/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_167/lstm_503/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_167/lstm_503/strided_slice_3StridedSliceCsequential_167/lstm_503/TensorArrayV2Stack/TensorListStack:tensor:06sequential_167/lstm_503/strided_slice_3/stack:output:08sequential_167/lstm_503/strided_slice_3/stack_1:output:08sequential_167/lstm_503/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask}
(sequential_167/lstm_503/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_167/lstm_503/transpose_1	TransposeCsequential_167/lstm_503/TensorArrayV2Stack/TensorListStack:tensor:01sequential_167/lstm_503/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
s
sequential_167/lstm_503/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_167/dense_167/MatMul/ReadVariableOpReadVariableOp7sequential_167_dense_167_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_167/dense_167/MatMulMatMul0sequential_167/lstm_503/strided_slice_3:output:06sequential_167/dense_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_167/dense_167/BiasAdd/ReadVariableOpReadVariableOp8sequential_167_dense_167_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_167/dense_167/BiasAddBiasAdd)sequential_167/dense_167/MatMul:product:07sequential_167/dense_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_167/dense_167/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_167/dense_167/BiasAdd/ReadVariableOp/^sequential_167/dense_167/MatMul/ReadVariableOp=^sequential_167/lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp<^sequential_167/lstm_501/lstm_cell_141/MatMul/ReadVariableOp>^sequential_167/lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp^sequential_167/lstm_501/while=^sequential_167/lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp<^sequential_167/lstm_502/lstm_cell_142/MatMul/ReadVariableOp>^sequential_167/lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp^sequential_167/lstm_502/while=^sequential_167/lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp<^sequential_167/lstm_503/lstm_cell_143/MatMul/ReadVariableOp>^sequential_167/lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp^sequential_167/lstm_503/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_167/dense_167/BiasAdd/ReadVariableOp/sequential_167/dense_167/BiasAdd/ReadVariableOp2`
.sequential_167/dense_167/MatMul/ReadVariableOp.sequential_167/dense_167/MatMul/ReadVariableOp2|
<sequential_167/lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp<sequential_167/lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp2z
;sequential_167/lstm_501/lstm_cell_141/MatMul/ReadVariableOp;sequential_167/lstm_501/lstm_cell_141/MatMul/ReadVariableOp2~
=sequential_167/lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp=sequential_167/lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp2>
sequential_167/lstm_501/whilesequential_167/lstm_501/while2|
<sequential_167/lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp<sequential_167/lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp2z
;sequential_167/lstm_502/lstm_cell_142/MatMul/ReadVariableOp;sequential_167/lstm_502/lstm_cell_142/MatMul/ReadVariableOp2~
=sequential_167/lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp=sequential_167/lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp2>
sequential_167/lstm_502/whilesequential_167/lstm_502/while2|
<sequential_167/lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp<sequential_167/lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp2z
;sequential_167/lstm_503/lstm_cell_143/MatMul/ReadVariableOp;sequential_167/lstm_503/lstm_cell_143/MatMul/ReadVariableOp2~
=sequential_167/lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp=sequential_167/lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp2>
sequential_167/lstm_503/whilesequential_167/lstm_503/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_501_input
�J
�
D__inference_lstm_503_layer_call_and_return_conditional_losses_869804

inputs>
,lstm_cell_143_matmul_readvariableop_resource:2(@
.lstm_cell_143_matmul_1_readvariableop_resource:
(;
-lstm_cell_143_biasadd_readvariableop_resource:(
identity��$lstm_cell_143/BiasAdd/ReadVariableOp�#lstm_cell_143/MatMul/ReadVariableOp�%lstm_cell_143/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_143/MatMul/ReadVariableOpReadVariableOp,lstm_cell_143_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_143/MatMulMatMulstrided_slice_2:output:0+lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_143_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_143/MatMul_1MatMulzeros:output:0-lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_143/addAddV2lstm_cell_143/MatMul:product:0 lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_143_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_143/BiasAddBiasAddlstm_cell_143/add:z:0,lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_143/splitSplit&lstm_cell_143/split/split_dim:output:0lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_143/SigmoidSigmoidlstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_1Sigmoidlstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_143/mulMullstm_cell_143/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_143/ReluRelulstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_1Mullstm_cell_143/Sigmoid:y:0 lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_143/add_1AddV2lstm_cell_143/mul:z:0lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_2Sigmoidlstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_143/Relu_1Relulstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_2Mullstm_cell_143/Sigmoid_2:y:0"lstm_cell_143/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_143_matmul_readvariableop_resource.lstm_cell_143_matmul_1_readvariableop_resource-lstm_cell_143_biasadd_readvariableop_resource*
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
while_body_869720*
condR
while_cond_869719*K
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
NoOpNoOp%^lstm_cell_143/BiasAdd/ReadVariableOp$^lstm_cell_143/MatMul/ReadVariableOp&^lstm_cell_143/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_143/BiasAdd/ReadVariableOp$lstm_cell_143/BiasAdd/ReadVariableOp2J
#lstm_cell_143/MatMul/ReadVariableOp#lstm_cell_143/MatMul/ReadVariableOp2N
%lstm_cell_143/MatMul_1/ReadVariableOp%lstm_cell_143/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
)__inference_lstm_502_layer_call_fn_868726
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_865431|
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
while_body_868818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_142_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_142_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_142_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_142_matmul_readvariableop_resource:	d�G
4while_lstm_cell_142_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_142_biasadd_readvariableop_resource:	���*while/lstm_cell_142/BiasAdd/ReadVariableOp�)while/lstm_cell_142/MatMul/ReadVariableOp�+while/lstm_cell_142/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_142/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_142_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_142/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_142_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_142/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_142/addAddV2$while/lstm_cell_142/MatMul:product:0&while/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_142_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_142/BiasAddBiasAddwhile/lstm_cell_142/add:z:02while/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_142/splitSplit,while/lstm_cell_142/split/split_dim:output:0$while/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_142/SigmoidSigmoid"while/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_1Sigmoid"while/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mulMul!while/lstm_cell_142/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_142/ReluRelu"while/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_1Mulwhile/lstm_cell_142/Sigmoid:y:0&while/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/add_1AddV2while/lstm_cell_142/mul:z:0while/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_2Sigmoid"while/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_142/Relu_1Reluwhile/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_2Mul!while/lstm_cell_142/Sigmoid_2:y:0(while/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_142/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_142/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_142/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_142/BiasAdd/ReadVariableOp*^while/lstm_cell_142/MatMul/ReadVariableOp,^while/lstm_cell_142/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_142_biasadd_readvariableop_resource5while_lstm_cell_142_biasadd_readvariableop_resource_0"n
4while_lstm_cell_142_matmul_1_readvariableop_resource6while_lstm_cell_142_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_142_matmul_readvariableop_resource4while_lstm_cell_142_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_142/BiasAdd/ReadVariableOp*while/lstm_cell_142/BiasAdd/ReadVariableOp2V
)while/lstm_cell_142/MatMul/ReadVariableOp)while/lstm_cell_142/MatMul/ReadVariableOp2Z
+while/lstm_cell_142/MatMul_1/ReadVariableOp+while/lstm_cell_142/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_141_layer_call_fn_870000

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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_865144o
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
�

�
lstm_502_while_cond_867442.
*lstm_502_while_lstm_502_while_loop_counter4
0lstm_502_while_lstm_502_while_maximum_iterations
lstm_502_while_placeholder 
lstm_502_while_placeholder_1 
lstm_502_while_placeholder_2 
lstm_502_while_placeholder_30
,lstm_502_while_less_lstm_502_strided_slice_1F
Blstm_502_while_lstm_502_while_cond_867442___redundant_placeholder0F
Blstm_502_while_lstm_502_while_cond_867442___redundant_placeholder1F
Blstm_502_while_lstm_502_while_cond_867442___redundant_placeholder2F
Blstm_502_while_lstm_502_while_cond_867442___redundant_placeholder3
lstm_502_while_identity
�
lstm_502/while/LessLesslstm_502_while_placeholder,lstm_502_while_less_lstm_502_strided_slice_1*
T0*
_output_shapes
: ]
lstm_502/while/IdentityIdentitylstm_502/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_502_while_identity lstm_502/while/Identity:output:0*(
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
while_body_869577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_143_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_143_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_143_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_143_matmul_readvariableop_resource:2(F
4while_lstm_cell_143_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_143_biasadd_readvariableop_resource:(��*while/lstm_cell_143/BiasAdd/ReadVariableOp�)while/lstm_cell_143/MatMul/ReadVariableOp�+while/lstm_cell_143/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_143/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_143_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_143/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_143_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_143/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_143/addAddV2$while/lstm_cell_143/MatMul:product:0&while/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_143_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_143/BiasAddBiasAddwhile/lstm_cell_143/add:z:02while/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_143/splitSplit,while/lstm_cell_143/split/split_dim:output:0$while/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_143/SigmoidSigmoid"while/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_1Sigmoid"while/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mulMul!while/lstm_cell_143/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_143/ReluRelu"while/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_1Mulwhile/lstm_cell_143/Sigmoid:y:0&while/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/add_1AddV2while/lstm_cell_143/mul:z:0while/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_2Sigmoid"while/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_143/Relu_1Reluwhile/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_2Mul!while/lstm_cell_143/Sigmoid_2:y:0(while/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_143/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_143/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_143/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_143/BiasAdd/ReadVariableOp*^while/lstm_cell_143/MatMul/ReadVariableOp,^while/lstm_cell_143/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_143_biasadd_readvariableop_resource5while_lstm_cell_143_biasadd_readvariableop_resource_0"n
4while_lstm_cell_143_matmul_1_readvariableop_resource6while_lstm_cell_143_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_143_matmul_readvariableop_resource4while_lstm_cell_143_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_143/BiasAdd/ReadVariableOp*while/lstm_cell_143/BiasAdd/ReadVariableOp2V
)while/lstm_cell_143/MatMul/ReadVariableOp)while/lstm_cell_143/MatMul/ReadVariableOp2Z
+while/lstm_cell_143/MatMul_1/ReadVariableOp+while/lstm_cell_143/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_868630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_868630___redundant_placeholder04
0while_while_cond_868630___redundant_placeholder14
0while_while_cond_868630___redundant_placeholder24
0while_while_cond_868630___redundant_placeholder3
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
while_body_865362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_142_865386_0:	d�/
while_lstm_cell_142_865388_0:	2�+
while_lstm_cell_142_865390_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_142_865386:	d�-
while_lstm_cell_142_865388:	2�)
while_lstm_cell_142_865390:	���+while/lstm_cell_142/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_142/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_142_865386_0while_lstm_cell_142_865388_0while_lstm_cell_142_865390_0*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_865348�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_142/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_142/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_142/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_142/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_142_865386while_lstm_cell_142_865386_0":
while_lstm_cell_142_865388while_lstm_cell_142_865388_0":
while_lstm_cell_142_865390while_lstm_cell_142_865390_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_142/StatefulPartitionedCall+while/lstm_cell_142/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�"
�
while_body_865903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_143_865927_0:2(.
while_lstm_cell_143_865929_0:
(*
while_lstm_cell_143_865931_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_143_865927:2(,
while_lstm_cell_143_865929:
((
while_lstm_cell_143_865931:(��+while/lstm_cell_143/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_143/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_143_865927_0while_lstm_cell_143_865929_0while_lstm_cell_143_865931_0*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_865844�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_143/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_143/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_143/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_143_865927while_lstm_cell_143_865927_0":
while_lstm_cell_143_865929while_lstm_cell_143_865929_0":
while_lstm_cell_143_865931while_lstm_cell_143_865931_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_143/StatefulPartitionedCall+while/lstm_cell_143/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�
J__inference_sequential_167_layer_call_and_return_conditional_losses_867156
lstm_501_input"
lstm_501_867129:	�"
lstm_501_867131:	d�
lstm_501_867133:	�"
lstm_502_867136:	d�"
lstm_502_867138:	2�
lstm_502_867140:	�!
lstm_503_867143:2(!
lstm_503_867145:
(
lstm_503_867147:("
dense_167_867150:

dense_167_867152:
identity��!dense_167/StatefulPartitionedCall� lstm_501/StatefulPartitionedCall� lstm_502/StatefulPartitionedCall� lstm_503/StatefulPartitionedCall�
 lstm_501/StatefulPartitionedCallStatefulPartitionedCalllstm_501_inputlstm_501_867129lstm_501_867131lstm_501_867133*
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_866976�
 lstm_502/StatefulPartitionedCallStatefulPartitionedCall)lstm_501/StatefulPartitionedCall:output:0lstm_502_867136lstm_502_867138lstm_502_867140*
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_866811�
 lstm_503/StatefulPartitionedCallStatefulPartitionedCall)lstm_502/StatefulPartitionedCall:output:0lstm_503_867143lstm_503_867145lstm_503_867147*
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_866646�
!dense_167/StatefulPartitionedCallStatefulPartitionedCall)lstm_503/StatefulPartitionedCall:output:0dense_167_867150dense_167_867152*
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
E__inference_dense_167_layer_call_and_return_conditional_losses_866448y
IdentityIdentity*dense_167/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_167/StatefulPartitionedCall!^lstm_501/StatefulPartitionedCall!^lstm_502/StatefulPartitionedCall!^lstm_503/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_167/StatefulPartitionedCall!dense_167/StatefulPartitionedCall2D
 lstm_501/StatefulPartitionedCall lstm_501/StatefulPartitionedCall2D
 lstm_502/StatefulPartitionedCall lstm_502/StatefulPartitionedCall2D
 lstm_503/StatefulPartitionedCall lstm_503/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_501_input
�
�
while_cond_869719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_869719___redundant_placeholder04
0while_while_cond_869719___redundant_placeholder14
0while_while_cond_869719___redundant_placeholder24
0while_while_cond_869719___redundant_placeholder3
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
while_cond_866195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_866195___redundant_placeholder04
0while_while_cond_866195___redundant_placeholder14
0while_while_cond_866195___redundant_placeholder24
0while_while_cond_866195___redundant_placeholder3
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
�T
�
)sequential_167_lstm_503_while_body_864841L
Hsequential_167_lstm_503_while_sequential_167_lstm_503_while_loop_counterR
Nsequential_167_lstm_503_while_sequential_167_lstm_503_while_maximum_iterations-
)sequential_167_lstm_503_while_placeholder/
+sequential_167_lstm_503_while_placeholder_1/
+sequential_167_lstm_503_while_placeholder_2/
+sequential_167_lstm_503_while_placeholder_3K
Gsequential_167_lstm_503_while_sequential_167_lstm_503_strided_slice_1_0�
�sequential_167_lstm_503_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_503_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_167_lstm_503_while_lstm_cell_143_matmul_readvariableop_resource_0:2(`
Nsequential_167_lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource_0:
([
Msequential_167_lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource_0:(*
&sequential_167_lstm_503_while_identity,
(sequential_167_lstm_503_while_identity_1,
(sequential_167_lstm_503_while_identity_2,
(sequential_167_lstm_503_while_identity_3,
(sequential_167_lstm_503_while_identity_4,
(sequential_167_lstm_503_while_identity_5I
Esequential_167_lstm_503_while_sequential_167_lstm_503_strided_slice_1�
�sequential_167_lstm_503_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_503_tensorarrayunstack_tensorlistfromtensor\
Jsequential_167_lstm_503_while_lstm_cell_143_matmul_readvariableop_resource:2(^
Lsequential_167_lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource:
(Y
Ksequential_167_lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource:(��Bsequential_167/lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp�Asequential_167/lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp�Csequential_167/lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp�
Osequential_167/lstm_503/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Asequential_167/lstm_503/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_167_lstm_503_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_503_tensorarrayunstack_tensorlistfromtensor_0)sequential_167_lstm_503_while_placeholderXsequential_167/lstm_503/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Asequential_167/lstm_503/while/lstm_cell_143/MatMul/ReadVariableOpReadVariableOpLsequential_167_lstm_503_while_lstm_cell_143_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
2sequential_167/lstm_503/while/lstm_cell_143/MatMulMatMulHsequential_167/lstm_503/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_167/lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_167/lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOpNsequential_167_lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
4sequential_167/lstm_503/while/lstm_cell_143/MatMul_1MatMul+sequential_167_lstm_503_while_placeholder_2Ksequential_167/lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_167/lstm_503/while/lstm_cell_143/addAddV2<sequential_167/lstm_503/while/lstm_cell_143/MatMul:product:0>sequential_167/lstm_503/while/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
Bsequential_167/lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOpMsequential_167_lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
3sequential_167/lstm_503/while/lstm_cell_143/BiasAddBiasAdd3sequential_167/lstm_503/while/lstm_cell_143/add:z:0Jsequential_167/lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(}
;sequential_167/lstm_503/while/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_167/lstm_503/while/lstm_cell_143/splitSplitDsequential_167/lstm_503/while/lstm_cell_143/split/split_dim:output:0<sequential_167/lstm_503/while/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
3sequential_167/lstm_503/while/lstm_cell_143/SigmoidSigmoid:sequential_167/lstm_503/while/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
�
5sequential_167/lstm_503/while/lstm_cell_143/Sigmoid_1Sigmoid:sequential_167/lstm_503/while/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
/sequential_167/lstm_503/while/lstm_cell_143/mulMul9sequential_167/lstm_503/while/lstm_cell_143/Sigmoid_1:y:0+sequential_167_lstm_503_while_placeholder_3*
T0*'
_output_shapes
:���������
�
0sequential_167/lstm_503/while/lstm_cell_143/ReluRelu:sequential_167/lstm_503/while/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
1sequential_167/lstm_503/while/lstm_cell_143/mul_1Mul7sequential_167/lstm_503/while/lstm_cell_143/Sigmoid:y:0>sequential_167/lstm_503/while/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
1sequential_167/lstm_503/while/lstm_cell_143/add_1AddV23sequential_167/lstm_503/while/lstm_cell_143/mul:z:05sequential_167/lstm_503/while/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
�
5sequential_167/lstm_503/while/lstm_cell_143/Sigmoid_2Sigmoid:sequential_167/lstm_503/while/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
�
2sequential_167/lstm_503/while/lstm_cell_143/Relu_1Relu5sequential_167/lstm_503/while/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_167/lstm_503/while/lstm_cell_143/mul_2Mul9sequential_167/lstm_503/while/lstm_cell_143/Sigmoid_2:y:0@sequential_167/lstm_503/while/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Bsequential_167/lstm_503/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_167_lstm_503_while_placeholder_1)sequential_167_lstm_503_while_placeholder5sequential_167/lstm_503/while/lstm_cell_143/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_167/lstm_503/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_167/lstm_503/while/addAddV2)sequential_167_lstm_503_while_placeholder,sequential_167/lstm_503/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_167/lstm_503/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_167/lstm_503/while/add_1AddV2Hsequential_167_lstm_503_while_sequential_167_lstm_503_while_loop_counter.sequential_167/lstm_503/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_167/lstm_503/while/IdentityIdentity'sequential_167/lstm_503/while/add_1:z:0#^sequential_167/lstm_503/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_503/while/Identity_1IdentityNsequential_167_lstm_503_while_sequential_167_lstm_503_while_maximum_iterations#^sequential_167/lstm_503/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_503/while/Identity_2Identity%sequential_167/lstm_503/while/add:z:0#^sequential_167/lstm_503/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_503/while/Identity_3IdentityRsequential_167/lstm_503/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_167/lstm_503/while/NoOp*
T0*
_output_shapes
: �
(sequential_167/lstm_503/while/Identity_4Identity5sequential_167/lstm_503/while/lstm_cell_143/mul_2:z:0#^sequential_167/lstm_503/while/NoOp*
T0*'
_output_shapes
:���������
�
(sequential_167/lstm_503/while/Identity_5Identity5sequential_167/lstm_503/while/lstm_cell_143/add_1:z:0#^sequential_167/lstm_503/while/NoOp*
T0*'
_output_shapes
:���������
�
"sequential_167/lstm_503/while/NoOpNoOpC^sequential_167/lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOpB^sequential_167/lstm_503/while/lstm_cell_143/MatMul/ReadVariableOpD^sequential_167/lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_167_lstm_503_while_identity/sequential_167/lstm_503/while/Identity:output:0"]
(sequential_167_lstm_503_while_identity_11sequential_167/lstm_503/while/Identity_1:output:0"]
(sequential_167_lstm_503_while_identity_21sequential_167/lstm_503/while/Identity_2:output:0"]
(sequential_167_lstm_503_while_identity_31sequential_167/lstm_503/while/Identity_3:output:0"]
(sequential_167_lstm_503_while_identity_41sequential_167/lstm_503/while/Identity_4:output:0"]
(sequential_167_lstm_503_while_identity_51sequential_167/lstm_503/while/Identity_5:output:0"�
Ksequential_167_lstm_503_while_lstm_cell_143_biasadd_readvariableop_resourceMsequential_167_lstm_503_while_lstm_cell_143_biasadd_readvariableop_resource_0"�
Lsequential_167_lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resourceNsequential_167_lstm_503_while_lstm_cell_143_matmul_1_readvariableop_resource_0"�
Jsequential_167_lstm_503_while_lstm_cell_143_matmul_readvariableop_resourceLsequential_167_lstm_503_while_lstm_cell_143_matmul_readvariableop_resource_0"�
Esequential_167_lstm_503_while_sequential_167_lstm_503_strided_slice_1Gsequential_167_lstm_503_while_sequential_167_lstm_503_strided_slice_1_0"�
�sequential_167_lstm_503_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_503_tensorarrayunstack_tensorlistfromtensor�sequential_167_lstm_503_while_tensorarrayv2read_tensorlistgetitem_sequential_167_lstm_503_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
Bsequential_167/lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOpBsequential_167/lstm_503/while/lstm_cell_143/BiasAdd/ReadVariableOp2�
Asequential_167/lstm_503/while/lstm_cell_143/MatMul/ReadVariableOpAsequential_167/lstm_503/while/lstm_cell_143/MatMul/ReadVariableOp2�
Csequential_167/lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOpCsequential_167/lstm_503/while/lstm_cell_143/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_866430

inputs>
,lstm_cell_143_matmul_readvariableop_resource:2(@
.lstm_cell_143_matmul_1_readvariableop_resource:
(;
-lstm_cell_143_biasadd_readvariableop_resource:(
identity��$lstm_cell_143/BiasAdd/ReadVariableOp�#lstm_cell_143/MatMul/ReadVariableOp�%lstm_cell_143/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_143/MatMul/ReadVariableOpReadVariableOp,lstm_cell_143_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_143/MatMulMatMulstrided_slice_2:output:0+lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_143_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_143/MatMul_1MatMulzeros:output:0-lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_143/addAddV2lstm_cell_143/MatMul:product:0 lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_143_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_143/BiasAddBiasAddlstm_cell_143/add:z:0,lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_143/splitSplit&lstm_cell_143/split/split_dim:output:0lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_143/SigmoidSigmoidlstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_1Sigmoidlstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_143/mulMullstm_cell_143/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_143/ReluRelulstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_1Mullstm_cell_143/Sigmoid:y:0 lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_143/add_1AddV2lstm_cell_143/mul:z:0lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_2Sigmoidlstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_143/Relu_1Relulstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_2Mullstm_cell_143/Sigmoid_2:y:0"lstm_cell_143/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_143_matmul_readvariableop_resource.lstm_cell_143_matmul_1_readvariableop_resource-lstm_cell_143_biasadd_readvariableop_resource*
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
while_body_866346*
condR
while_cond_866345*K
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
NoOpNoOp%^lstm_cell_143/BiasAdd/ReadVariableOp$^lstm_cell_143/MatMul/ReadVariableOp&^lstm_cell_143/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_143/BiasAdd/ReadVariableOp$lstm_cell_143/BiasAdd/ReadVariableOp2J
#lstm_cell_143/MatMul/ReadVariableOp#lstm_cell_143/MatMul/ReadVariableOp2N
%lstm_cell_143/MatMul_1/ReadVariableOp%lstm_cell_143/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�8
�
D__inference_lstm_503_layer_call_and_return_conditional_losses_865781

inputs&
lstm_cell_143_865699:2(&
lstm_cell_143_865701:
("
lstm_cell_143_865703:(
identity��%lstm_cell_143/StatefulPartitionedCall�while;
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
%lstm_cell_143/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_143_865699lstm_cell_143_865701lstm_cell_143_865703*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_865698n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_143_865699lstm_cell_143_865701lstm_cell_143_865703*
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
while_body_865712*
condR
while_cond_865711*K
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
NoOpNoOp&^lstm_cell_143/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_143/StatefulPartitionedCall%lstm_cell_143/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�8
�
D__inference_lstm_503_layer_call_and_return_conditional_losses_865972

inputs&
lstm_cell_143_865890:2(&
lstm_cell_143_865892:
("
lstm_cell_143_865894:(
identity��%lstm_cell_143/StatefulPartitionedCall�while;
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
%lstm_cell_143/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_143_865890lstm_cell_143_865892lstm_cell_143_865894*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_865844n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_143_865890lstm_cell_143_865892lstm_cell_143_865894*
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
while_body_865903*
condR
while_cond_865902*K
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
NoOpNoOp&^lstm_cell_143/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_143/StatefulPartitionedCall%lstm_cell_143/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�8
�
while_body_866196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_142_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_142_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_142_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_142_matmul_readvariableop_resource:	d�G
4while_lstm_cell_142_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_142_biasadd_readvariableop_resource:	���*while/lstm_cell_142/BiasAdd/ReadVariableOp�)while/lstm_cell_142/MatMul/ReadVariableOp�+while/lstm_cell_142/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_142/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_142_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_142/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_142_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_142/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_142/addAddV2$while/lstm_cell_142/MatMul:product:0&while/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_142_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_142/BiasAddBiasAddwhile/lstm_cell_142/add:z:02while/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_142/splitSplit,while/lstm_cell_142/split/split_dim:output:0$while/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_142/SigmoidSigmoid"while/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_1Sigmoid"while/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mulMul!while/lstm_cell_142/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_142/ReluRelu"while/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_1Mulwhile/lstm_cell_142/Sigmoid:y:0&while/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/add_1AddV2while/lstm_cell_142/mul:z:0while/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_142/Sigmoid_2Sigmoid"while/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_142/Relu_1Reluwhile/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_142/mul_2Mul!while/lstm_cell_142/Sigmoid_2:y:0(while/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_142/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_142/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_142/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_142/BiasAdd/ReadVariableOp*^while/lstm_cell_142/MatMul/ReadVariableOp,^while/lstm_cell_142/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_142_biasadd_readvariableop_resource5while_lstm_cell_142_biasadd_readvariableop_resource_0"n
4while_lstm_cell_142_matmul_1_readvariableop_resource6while_lstm_cell_142_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_142_matmul_readvariableop_resource4while_lstm_cell_142_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_142/BiasAdd/ReadVariableOp*while/lstm_cell_142/BiasAdd/ReadVariableOp2V
)while/lstm_cell_142/MatMul/ReadVariableOp)while/lstm_cell_142/MatMul/ReadVariableOp2Z
+while/lstm_cell_142/MatMul_1/ReadVariableOp+while/lstm_cell_142/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_865081

inputs'
lstm_cell_141_864999:	�'
lstm_cell_141_865001:	d�#
lstm_cell_141_865003:	�
identity��%lstm_cell_141/StatefulPartitionedCall�while;
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
%lstm_cell_141/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_141_864999lstm_cell_141_865001lstm_cell_141_865003*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_864998n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_141_864999lstm_cell_141_865001lstm_cell_141_865003*
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
while_body_865012*
condR
while_cond_865011*K
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
NoOpNoOp&^lstm_cell_141/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_141/StatefulPartitionedCall%lstm_cell_141/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
)sequential_167_lstm_503_while_cond_864840L
Hsequential_167_lstm_503_while_sequential_167_lstm_503_while_loop_counterR
Nsequential_167_lstm_503_while_sequential_167_lstm_503_while_maximum_iterations-
)sequential_167_lstm_503_while_placeholder/
+sequential_167_lstm_503_while_placeholder_1/
+sequential_167_lstm_503_while_placeholder_2/
+sequential_167_lstm_503_while_placeholder_3N
Jsequential_167_lstm_503_while_less_sequential_167_lstm_503_strided_slice_1d
`sequential_167_lstm_503_while_sequential_167_lstm_503_while_cond_864840___redundant_placeholder0d
`sequential_167_lstm_503_while_sequential_167_lstm_503_while_cond_864840___redundant_placeholder1d
`sequential_167_lstm_503_while_sequential_167_lstm_503_while_cond_864840___redundant_placeholder2d
`sequential_167_lstm_503_while_sequential_167_lstm_503_while_cond_864840___redundant_placeholder3*
&sequential_167_lstm_503_while_identity
�
"sequential_167/lstm_503/while/LessLess)sequential_167_lstm_503_while_placeholderJsequential_167_lstm_503_while_less_sequential_167_lstm_503_strided_slice_1*
T0*
_output_shapes
: {
&sequential_167/lstm_503/while/IdentityIdentity&sequential_167/lstm_503/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_167_lstm_503_while_identity/sequential_167/lstm_503/while/Identity:output:0*(
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
while_body_868345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_141_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_141_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_141_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_141_matmul_readvariableop_resource:	�G
4while_lstm_cell_141_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_141_biasadd_readvariableop_resource:	���*while/lstm_cell_141/BiasAdd/ReadVariableOp�)while/lstm_cell_141/MatMul/ReadVariableOp�+while/lstm_cell_141/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_141/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_141_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_141/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_141/addAddV2$while/lstm_cell_141/MatMul:product:0&while/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_141/BiasAddBiasAddwhile/lstm_cell_141/add:z:02while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_141/splitSplit,while/lstm_cell_141/split/split_dim:output:0$while/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_141/SigmoidSigmoid"while/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_1Sigmoid"while/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mulMul!while/lstm_cell_141/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_141/ReluRelu"while/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_1Mulwhile/lstm_cell_141/Sigmoid:y:0&while/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/add_1AddV2while/lstm_cell_141/mul:z:0while/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_141/Sigmoid_2Sigmoid"while/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_141/Relu_1Reluwhile/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_141/mul_2Mul!while/lstm_cell_141/Sigmoid_2:y:0(while/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_141/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_141/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_141/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp,^while/lstm_cell_141/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_141_biasadd_readvariableop_resource5while_lstm_cell_141_biasadd_readvariableop_resource_0"n
4while_lstm_cell_141_matmul_1_readvariableop_resource6while_lstm_cell_141_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_141_matmul_readvariableop_resource4while_lstm_cell_141_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_141/BiasAdd/ReadVariableOp*while/lstm_cell_141/BiasAdd/ReadVariableOp2V
)while/lstm_cell_141/MatMul/ReadVariableOp)while/lstm_cell_141/MatMul/ReadVariableOp2Z
+while/lstm_cell_141/MatMul_1/ReadVariableOp+while/lstm_cell_141/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
��
�
J__inference_sequential_167_layer_call_and_return_conditional_losses_867672

inputsH
5lstm_501_lstm_cell_141_matmul_readvariableop_resource:	�J
7lstm_501_lstm_cell_141_matmul_1_readvariableop_resource:	d�E
6lstm_501_lstm_cell_141_biasadd_readvariableop_resource:	�H
5lstm_502_lstm_cell_142_matmul_readvariableop_resource:	d�J
7lstm_502_lstm_cell_142_matmul_1_readvariableop_resource:	2�E
6lstm_502_lstm_cell_142_biasadd_readvariableop_resource:	�G
5lstm_503_lstm_cell_143_matmul_readvariableop_resource:2(I
7lstm_503_lstm_cell_143_matmul_1_readvariableop_resource:
(D
6lstm_503_lstm_cell_143_biasadd_readvariableop_resource:(:
(dense_167_matmul_readvariableop_resource:
7
)dense_167_biasadd_readvariableop_resource:
identity�� dense_167/BiasAdd/ReadVariableOp�dense_167/MatMul/ReadVariableOp�-lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp�,lstm_501/lstm_cell_141/MatMul/ReadVariableOp�.lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp�lstm_501/while�-lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp�,lstm_502/lstm_cell_142/MatMul/ReadVariableOp�.lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp�lstm_502/while�-lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp�,lstm_503/lstm_cell_143/MatMul/ReadVariableOp�.lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp�lstm_503/whileD
lstm_501/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_501/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_501/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_501/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_501/strided_sliceStridedSlicelstm_501/Shape:output:0%lstm_501/strided_slice/stack:output:0'lstm_501/strided_slice/stack_1:output:0'lstm_501/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_501/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_501/zeros/packedPacklstm_501/strided_slice:output:0 lstm_501/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_501/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_501/zerosFilllstm_501/zeros/packed:output:0lstm_501/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_501/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_501/zeros_1/packedPacklstm_501/strided_slice:output:0"lstm_501/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_501/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_501/zeros_1Fill lstm_501/zeros_1/packed:output:0lstm_501/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_501/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_501/transpose	Transposeinputs lstm_501/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_501/Shape_1Shapelstm_501/transpose:y:0*
T0*
_output_shapes
:h
lstm_501/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_501/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_501/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_501/strided_slice_1StridedSlicelstm_501/Shape_1:output:0'lstm_501/strided_slice_1/stack:output:0)lstm_501/strided_slice_1/stack_1:output:0)lstm_501/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_501/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_501/TensorArrayV2TensorListReserve-lstm_501/TensorArrayV2/element_shape:output:0!lstm_501/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_501/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_501/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_501/transpose:y:0Glstm_501/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_501/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_501/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_501/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_501/strided_slice_2StridedSlicelstm_501/transpose:y:0'lstm_501/strided_slice_2/stack:output:0)lstm_501/strided_slice_2/stack_1:output:0)lstm_501/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_501/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp5lstm_501_lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_501/lstm_cell_141/MatMulMatMul!lstm_501/strided_slice_2:output:04lstm_501/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_501/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp7lstm_501_lstm_cell_141_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_501/lstm_cell_141/MatMul_1MatMullstm_501/zeros:output:06lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_501/lstm_cell_141/addAddV2'lstm_501/lstm_cell_141/MatMul:product:0)lstm_501/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_501/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp6lstm_501_lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_501/lstm_cell_141/BiasAddBiasAddlstm_501/lstm_cell_141/add:z:05lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_501/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_501/lstm_cell_141/splitSplit/lstm_501/lstm_cell_141/split/split_dim:output:0'lstm_501/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_501/lstm_cell_141/SigmoidSigmoid%lstm_501/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_501/lstm_cell_141/Sigmoid_1Sigmoid%lstm_501/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_501/lstm_cell_141/mulMul$lstm_501/lstm_cell_141/Sigmoid_1:y:0lstm_501/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_501/lstm_cell_141/ReluRelu%lstm_501/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_501/lstm_cell_141/mul_1Mul"lstm_501/lstm_cell_141/Sigmoid:y:0)lstm_501/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_501/lstm_cell_141/add_1AddV2lstm_501/lstm_cell_141/mul:z:0 lstm_501/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_501/lstm_cell_141/Sigmoid_2Sigmoid%lstm_501/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_501/lstm_cell_141/Relu_1Relu lstm_501/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_501/lstm_cell_141/mul_2Mul$lstm_501/lstm_cell_141/Sigmoid_2:y:0+lstm_501/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_501/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_501/TensorArrayV2_1TensorListReserve/lstm_501/TensorArrayV2_1/element_shape:output:0!lstm_501/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_501/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_501/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_501/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_501/whileWhile$lstm_501/while/loop_counter:output:0*lstm_501/while/maximum_iterations:output:0lstm_501/time:output:0!lstm_501/TensorArrayV2_1:handle:0lstm_501/zeros:output:0lstm_501/zeros_1:output:0!lstm_501/strided_slice_1:output:0@lstm_501/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_501_lstm_cell_141_matmul_readvariableop_resource7lstm_501_lstm_cell_141_matmul_1_readvariableop_resource6lstm_501_lstm_cell_141_biasadd_readvariableop_resource*
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
lstm_501_while_body_867304*&
condR
lstm_501_while_cond_867303*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_501/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_501/TensorArrayV2Stack/TensorListStackTensorListStacklstm_501/while:output:3Blstm_501/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_501/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_501/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_501/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_501/strided_slice_3StridedSlice4lstm_501/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_501/strided_slice_3/stack:output:0)lstm_501/strided_slice_3/stack_1:output:0)lstm_501/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_501/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_501/transpose_1	Transpose4lstm_501/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_501/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_501/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_502/ShapeShapelstm_501/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_502/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_502/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_502/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_502/strided_sliceStridedSlicelstm_502/Shape:output:0%lstm_502/strided_slice/stack:output:0'lstm_502/strided_slice/stack_1:output:0'lstm_502/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_502/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_502/zeros/packedPacklstm_502/strided_slice:output:0 lstm_502/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_502/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_502/zerosFilllstm_502/zeros/packed:output:0lstm_502/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_502/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_502/zeros_1/packedPacklstm_502/strided_slice:output:0"lstm_502/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_502/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_502/zeros_1Fill lstm_502/zeros_1/packed:output:0lstm_502/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_502/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_502/transpose	Transposelstm_501/transpose_1:y:0 lstm_502/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_502/Shape_1Shapelstm_502/transpose:y:0*
T0*
_output_shapes
:h
lstm_502/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_502/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_502/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_502/strided_slice_1StridedSlicelstm_502/Shape_1:output:0'lstm_502/strided_slice_1/stack:output:0)lstm_502/strided_slice_1/stack_1:output:0)lstm_502/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_502/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_502/TensorArrayV2TensorListReserve-lstm_502/TensorArrayV2/element_shape:output:0!lstm_502/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_502/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_502/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_502/transpose:y:0Glstm_502/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_502/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_502/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_502/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_502/strided_slice_2StridedSlicelstm_502/transpose:y:0'lstm_502/strided_slice_2/stack:output:0)lstm_502/strided_slice_2/stack_1:output:0)lstm_502/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_502/lstm_cell_142/MatMul/ReadVariableOpReadVariableOp5lstm_502_lstm_cell_142_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_502/lstm_cell_142/MatMulMatMul!lstm_502/strided_slice_2:output:04lstm_502/lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_502/lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp7lstm_502_lstm_cell_142_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_502/lstm_cell_142/MatMul_1MatMullstm_502/zeros:output:06lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_502/lstm_cell_142/addAddV2'lstm_502/lstm_cell_142/MatMul:product:0)lstm_502/lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_502/lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp6lstm_502_lstm_cell_142_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_502/lstm_cell_142/BiasAddBiasAddlstm_502/lstm_cell_142/add:z:05lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_502/lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_502/lstm_cell_142/splitSplit/lstm_502/lstm_cell_142/split/split_dim:output:0'lstm_502/lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_502/lstm_cell_142/SigmoidSigmoid%lstm_502/lstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_502/lstm_cell_142/Sigmoid_1Sigmoid%lstm_502/lstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_502/lstm_cell_142/mulMul$lstm_502/lstm_cell_142/Sigmoid_1:y:0lstm_502/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_502/lstm_cell_142/ReluRelu%lstm_502/lstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_502/lstm_cell_142/mul_1Mul"lstm_502/lstm_cell_142/Sigmoid:y:0)lstm_502/lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_502/lstm_cell_142/add_1AddV2lstm_502/lstm_cell_142/mul:z:0 lstm_502/lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_502/lstm_cell_142/Sigmoid_2Sigmoid%lstm_502/lstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_502/lstm_cell_142/Relu_1Relu lstm_502/lstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_502/lstm_cell_142/mul_2Mul$lstm_502/lstm_cell_142/Sigmoid_2:y:0+lstm_502/lstm_cell_142/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_502/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_502/TensorArrayV2_1TensorListReserve/lstm_502/TensorArrayV2_1/element_shape:output:0!lstm_502/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_502/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_502/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_502/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_502/whileWhile$lstm_502/while/loop_counter:output:0*lstm_502/while/maximum_iterations:output:0lstm_502/time:output:0!lstm_502/TensorArrayV2_1:handle:0lstm_502/zeros:output:0lstm_502/zeros_1:output:0!lstm_502/strided_slice_1:output:0@lstm_502/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_502_lstm_cell_142_matmul_readvariableop_resource7lstm_502_lstm_cell_142_matmul_1_readvariableop_resource6lstm_502_lstm_cell_142_biasadd_readvariableop_resource*
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
lstm_502_while_body_867443*&
condR
lstm_502_while_cond_867442*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_502/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_502/TensorArrayV2Stack/TensorListStackTensorListStacklstm_502/while:output:3Blstm_502/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_502/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_502/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_502/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_502/strided_slice_3StridedSlice4lstm_502/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_502/strided_slice_3/stack:output:0)lstm_502/strided_slice_3/stack_1:output:0)lstm_502/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_502/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_502/transpose_1	Transpose4lstm_502/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_502/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_502/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_503/ShapeShapelstm_502/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_503/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_503/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_503/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_503/strided_sliceStridedSlicelstm_503/Shape:output:0%lstm_503/strided_slice/stack:output:0'lstm_503/strided_slice/stack_1:output:0'lstm_503/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_503/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_503/zeros/packedPacklstm_503/strided_slice:output:0 lstm_503/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_503/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_503/zerosFilllstm_503/zeros/packed:output:0lstm_503/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_503/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_503/zeros_1/packedPacklstm_503/strided_slice:output:0"lstm_503/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_503/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_503/zeros_1Fill lstm_503/zeros_1/packed:output:0lstm_503/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_503/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_503/transpose	Transposelstm_502/transpose_1:y:0 lstm_503/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_503/Shape_1Shapelstm_503/transpose:y:0*
T0*
_output_shapes
:h
lstm_503/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_503/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_503/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_503/strided_slice_1StridedSlicelstm_503/Shape_1:output:0'lstm_503/strided_slice_1/stack:output:0)lstm_503/strided_slice_1/stack_1:output:0)lstm_503/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_503/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_503/TensorArrayV2TensorListReserve-lstm_503/TensorArrayV2/element_shape:output:0!lstm_503/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_503/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_503/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_503/transpose:y:0Glstm_503/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_503/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_503/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_503/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_503/strided_slice_2StridedSlicelstm_503/transpose:y:0'lstm_503/strided_slice_2/stack:output:0)lstm_503/strided_slice_2/stack_1:output:0)lstm_503/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_503/lstm_cell_143/MatMul/ReadVariableOpReadVariableOp5lstm_503_lstm_cell_143_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_503/lstm_cell_143/MatMulMatMul!lstm_503/strided_slice_2:output:04lstm_503/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_503/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp7lstm_503_lstm_cell_143_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_503/lstm_cell_143/MatMul_1MatMullstm_503/zeros:output:06lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_503/lstm_cell_143/addAddV2'lstm_503/lstm_cell_143/MatMul:product:0)lstm_503/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_503/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp6lstm_503_lstm_cell_143_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_503/lstm_cell_143/BiasAddBiasAddlstm_503/lstm_cell_143/add:z:05lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_503/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_503/lstm_cell_143/splitSplit/lstm_503/lstm_cell_143/split/split_dim:output:0'lstm_503/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_503/lstm_cell_143/SigmoidSigmoid%lstm_503/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_503/lstm_cell_143/Sigmoid_1Sigmoid%lstm_503/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_503/lstm_cell_143/mulMul$lstm_503/lstm_cell_143/Sigmoid_1:y:0lstm_503/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_503/lstm_cell_143/ReluRelu%lstm_503/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_503/lstm_cell_143/mul_1Mul"lstm_503/lstm_cell_143/Sigmoid:y:0)lstm_503/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_503/lstm_cell_143/add_1AddV2lstm_503/lstm_cell_143/mul:z:0 lstm_503/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_503/lstm_cell_143/Sigmoid_2Sigmoid%lstm_503/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_503/lstm_cell_143/Relu_1Relu lstm_503/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_503/lstm_cell_143/mul_2Mul$lstm_503/lstm_cell_143/Sigmoid_2:y:0+lstm_503/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_503/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_503/TensorArrayV2_1TensorListReserve/lstm_503/TensorArrayV2_1/element_shape:output:0!lstm_503/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_503/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_503/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_503/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_503/whileWhile$lstm_503/while/loop_counter:output:0*lstm_503/while/maximum_iterations:output:0lstm_503/time:output:0!lstm_503/TensorArrayV2_1:handle:0lstm_503/zeros:output:0lstm_503/zeros_1:output:0!lstm_503/strided_slice_1:output:0@lstm_503/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_503_lstm_cell_143_matmul_readvariableop_resource7lstm_503_lstm_cell_143_matmul_1_readvariableop_resource6lstm_503_lstm_cell_143_biasadd_readvariableop_resource*
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
lstm_503_while_body_867582*&
condR
lstm_503_while_cond_867581*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_503/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_503/TensorArrayV2Stack/TensorListStackTensorListStacklstm_503/while:output:3Blstm_503/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_503/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_503/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_503/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_503/strided_slice_3StridedSlice4lstm_503/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_503/strided_slice_3/stack:output:0)lstm_503/strided_slice_3/stack_1:output:0)lstm_503/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_503/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_503/transpose_1	Transpose4lstm_503/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_503/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_503/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_167/MatMul/ReadVariableOpReadVariableOp(dense_167_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_167/MatMulMatMul!lstm_503/strided_slice_3:output:0'dense_167/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_167/BiasAdd/ReadVariableOpReadVariableOp)dense_167_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_167/BiasAddBiasAdddense_167/MatMul:product:0(dense_167/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_167/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_167/BiasAdd/ReadVariableOp ^dense_167/MatMul/ReadVariableOp.^lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp-^lstm_501/lstm_cell_141/MatMul/ReadVariableOp/^lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp^lstm_501/while.^lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp-^lstm_502/lstm_cell_142/MatMul/ReadVariableOp/^lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp^lstm_502/while.^lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp-^lstm_503/lstm_cell_143/MatMul/ReadVariableOp/^lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp^lstm_503/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_167/BiasAdd/ReadVariableOp dense_167/BiasAdd/ReadVariableOp2B
dense_167/MatMul/ReadVariableOpdense_167/MatMul/ReadVariableOp2^
-lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp-lstm_501/lstm_cell_141/BiasAdd/ReadVariableOp2\
,lstm_501/lstm_cell_141/MatMul/ReadVariableOp,lstm_501/lstm_cell_141/MatMul/ReadVariableOp2`
.lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp.lstm_501/lstm_cell_141/MatMul_1/ReadVariableOp2 
lstm_501/whilelstm_501/while2^
-lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp-lstm_502/lstm_cell_142/BiasAdd/ReadVariableOp2\
,lstm_502/lstm_cell_142/MatMul/ReadVariableOp,lstm_502/lstm_cell_142/MatMul/ReadVariableOp2`
.lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp.lstm_502/lstm_cell_142/MatMul_1/ReadVariableOp2 
lstm_502/whilelstm_502/while2^
-lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp-lstm_503/lstm_cell_143/BiasAdd/ReadVariableOp2\
,lstm_503/lstm_cell_143/MatMul/ReadVariableOp,lstm_503/lstm_cell_143/MatMul/ReadVariableOp2`
.lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp.lstm_503/lstm_cell_143/MatMul_1/ReadVariableOp2 
lstm_503/whilelstm_503/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_870260

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
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_864998

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
�
)__inference_lstm_501_layer_call_fn_868143

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
D__inference_lstm_501_layer_call_and_return_conditional_losses_866976s
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_869661
inputs_0>
,lstm_cell_143_matmul_readvariableop_resource:2(@
.lstm_cell_143_matmul_1_readvariableop_resource:
(;
-lstm_cell_143_biasadd_readvariableop_resource:(
identity��$lstm_cell_143/BiasAdd/ReadVariableOp�#lstm_cell_143/MatMul/ReadVariableOp�%lstm_cell_143/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_143/MatMul/ReadVariableOpReadVariableOp,lstm_cell_143_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_143/MatMulMatMulstrided_slice_2:output:0+lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_143_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_143/MatMul_1MatMulzeros:output:0-lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_143/addAddV2lstm_cell_143/MatMul:product:0 lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_143_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_143/BiasAddBiasAddlstm_cell_143/add:z:0,lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_143/splitSplit&lstm_cell_143/split/split_dim:output:0lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_143/SigmoidSigmoidlstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_1Sigmoidlstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_143/mulMullstm_cell_143/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_143/ReluRelulstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_1Mullstm_cell_143/Sigmoid:y:0 lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_143/add_1AddV2lstm_cell_143/mul:z:0lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_2Sigmoidlstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_143/Relu_1Relulstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_2Mullstm_cell_143/Sigmoid_2:y:0"lstm_cell_143/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_143_matmul_readvariableop_resource.lstm_cell_143_matmul_1_readvariableop_resource-lstm_cell_143_biasadd_readvariableop_resource*
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
while_body_869577*
condR
while_cond_869576*K
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
NoOpNoOp%^lstm_cell_143/BiasAdd/ReadVariableOp$^lstm_cell_143/MatMul/ReadVariableOp&^lstm_cell_143/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_143/BiasAdd/ReadVariableOp$lstm_cell_143/BiasAdd/ReadVariableOp2J
#lstm_cell_143/MatMul/ReadVariableOp#lstm_cell_143/MatMul/ReadVariableOp2N
%lstm_cell_143/MatMul_1/ReadVariableOp%lstm_cell_143/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�8
�
while_body_869720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_143_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_143_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_143_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_143_matmul_readvariableop_resource:2(F
4while_lstm_cell_143_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_143_biasadd_readvariableop_resource:(��*while/lstm_cell_143/BiasAdd/ReadVariableOp�)while/lstm_cell_143/MatMul/ReadVariableOp�+while/lstm_cell_143/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_143/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_143_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_143/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_143_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_143/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_143/addAddV2$while/lstm_cell_143/MatMul:product:0&while/lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_143_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_143/BiasAddBiasAddwhile/lstm_cell_143/add:z:02while/lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_143/splitSplit,while/lstm_cell_143/split/split_dim:output:0$while/lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_143/SigmoidSigmoid"while/lstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_1Sigmoid"while/lstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mulMul!while/lstm_cell_143/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_143/ReluRelu"while/lstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_1Mulwhile/lstm_cell_143/Sigmoid:y:0&while/lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/add_1AddV2while/lstm_cell_143/mul:z:0while/lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_143/Sigmoid_2Sigmoid"while/lstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_143/Relu_1Reluwhile/lstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_143/mul_2Mul!while/lstm_cell_143/Sigmoid_2:y:0(while/lstm_cell_143/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_143/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_143/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_143/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_143/BiasAdd/ReadVariableOp*^while/lstm_cell_143/MatMul/ReadVariableOp,^while/lstm_cell_143/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_143_biasadd_readvariableop_resource5while_lstm_cell_143_biasadd_readvariableop_resource_0"n
4while_lstm_cell_143_matmul_1_readvariableop_resource6while_lstm_cell_143_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_143_matmul_readvariableop_resource4while_lstm_cell_143_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_143/BiasAdd/ReadVariableOp*while/lstm_cell_143/BiasAdd/ReadVariableOp2V
)while/lstm_cell_143/MatMul/ReadVariableOp)while/lstm_cell_143/MatMul/ReadVariableOp2Z
+while/lstm_cell_143/MatMul_1/ReadVariableOp+while/lstm_cell_143/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_502_layer_call_fn_868759

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
D__inference_lstm_502_layer_call_and_return_conditional_losses_866811s
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
�K
�
D__inference_lstm_502_layer_call_and_return_conditional_losses_869045
inputs_0?
,lstm_cell_142_matmul_readvariableop_resource:	d�A
.lstm_cell_142_matmul_1_readvariableop_resource:	2�<
-lstm_cell_142_biasadd_readvariableop_resource:	�
identity��$lstm_cell_142/BiasAdd/ReadVariableOp�#lstm_cell_142/MatMul/ReadVariableOp�%lstm_cell_142/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_142/MatMul/ReadVariableOpReadVariableOp,lstm_cell_142_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_142/MatMulMatMulstrided_slice_2:output:0+lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_142_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_142/MatMul_1MatMulzeros:output:0-lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_142/addAddV2lstm_cell_142/MatMul:product:0 lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_142_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_142/BiasAddBiasAddlstm_cell_142/add:z:0,lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_142/splitSplit&lstm_cell_142/split/split_dim:output:0lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_142/SigmoidSigmoidlstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_1Sigmoidlstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_142/mulMullstm_cell_142/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_142/ReluRelulstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_1Mullstm_cell_142/Sigmoid:y:0 lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_142/add_1AddV2lstm_cell_142/mul:z:0lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_2Sigmoidlstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_142/Relu_1Relulstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_2Mullstm_cell_142/Sigmoid_2:y:0"lstm_cell_142/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_142_matmul_readvariableop_resource.lstm_cell_142_matmul_1_readvariableop_resource-lstm_cell_142_biasadd_readvariableop_resource*
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
while_body_868961*
condR
while_cond_868960*K
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
NoOpNoOp%^lstm_cell_142/BiasAdd/ReadVariableOp$^lstm_cell_142/MatMul/ReadVariableOp&^lstm_cell_142/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_142/BiasAdd/ReadVariableOp$lstm_cell_142/BiasAdd/ReadVariableOp2J
#lstm_cell_142/MatMul/ReadVariableOp#lstm_cell_142/MatMul/ReadVariableOp2N
%lstm_cell_142/MatMul_1/ReadVariableOp%lstm_cell_142/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
J__inference_sequential_167_layer_call_and_return_conditional_losses_867044

inputs"
lstm_501_867017:	�"
lstm_501_867019:	d�
lstm_501_867021:	�"
lstm_502_867024:	d�"
lstm_502_867026:	2�
lstm_502_867028:	�!
lstm_503_867031:2(!
lstm_503_867033:
(
lstm_503_867035:("
dense_167_867038:

dense_167_867040:
identity��!dense_167/StatefulPartitionedCall� lstm_501/StatefulPartitionedCall� lstm_502/StatefulPartitionedCall� lstm_503/StatefulPartitionedCall�
 lstm_501/StatefulPartitionedCallStatefulPartitionedCallinputslstm_501_867017lstm_501_867019lstm_501_867021*
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_866976�
 lstm_502/StatefulPartitionedCallStatefulPartitionedCall)lstm_501/StatefulPartitionedCall:output:0lstm_502_867024lstm_502_867026lstm_502_867028*
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_866811�
 lstm_503/StatefulPartitionedCallStatefulPartitionedCall)lstm_502/StatefulPartitionedCall:output:0lstm_503_867031lstm_503_867033lstm_503_867035*
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_866646�
!dense_167/StatefulPartitionedCallStatefulPartitionedCall)lstm_503/StatefulPartitionedCall:output:0dense_167_867038dense_167_867040*
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
E__inference_dense_167_layer_call_and_return_conditional_losses_866448y
IdentityIdentity*dense_167/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_167/StatefulPartitionedCall!^lstm_501/StatefulPartitionedCall!^lstm_502/StatefulPartitionedCall!^lstm_503/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_167/StatefulPartitionedCall!dense_167/StatefulPartitionedCall2D
 lstm_501/StatefulPartitionedCall lstm_501/StatefulPartitionedCall2D
 lstm_502/StatefulPartitionedCall lstm_502/StatefulPartitionedCall2D
 lstm_503/StatefulPartitionedCall lstm_503/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_868487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_868487___redundant_placeholder04
0while_while_cond_868487___redundant_placeholder14
0while_while_cond_868487___redundant_placeholder24
0while_while_cond_868487___redundant_placeholder3
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
while_body_865203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_141_865227_0:	�/
while_lstm_cell_141_865229_0:	d�+
while_lstm_cell_141_865231_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_141_865227:	�-
while_lstm_cell_141_865229:	d�)
while_lstm_cell_141_865231:	���+while/lstm_cell_141/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_141/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_141_865227_0while_lstm_cell_141_865229_0while_lstm_cell_141_865231_0*
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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_865144�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_141/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_141/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_141/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_141/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_141_865227while_lstm_cell_141_865227_0":
while_lstm_cell_141_865229while_lstm_cell_141_865229_0":
while_lstm_cell_141_865231while_lstm_cell_141_865231_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_141/StatefulPartitionedCall+while/lstm_cell_141/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_501_while_body_867731.
*lstm_501_while_lstm_501_while_loop_counter4
0lstm_501_while_lstm_501_while_maximum_iterations
lstm_501_while_placeholder 
lstm_501_while_placeholder_1 
lstm_501_while_placeholder_2 
lstm_501_while_placeholder_3-
)lstm_501_while_lstm_501_strided_slice_1_0i
elstm_501_while_tensorarrayv2read_tensorlistgetitem_lstm_501_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_501_while_lstm_cell_141_matmul_readvariableop_resource_0:	�R
?lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource_0:	d�M
>lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource_0:	�
lstm_501_while_identity
lstm_501_while_identity_1
lstm_501_while_identity_2
lstm_501_while_identity_3
lstm_501_while_identity_4
lstm_501_while_identity_5+
'lstm_501_while_lstm_501_strided_slice_1g
clstm_501_while_tensorarrayv2read_tensorlistgetitem_lstm_501_tensorarrayunstack_tensorlistfromtensorN
;lstm_501_while_lstm_cell_141_matmul_readvariableop_resource:	�P
=lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource:	d�K
<lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource:	���3lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp�2lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp�4lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp�
@lstm_501/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_501/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_501_while_tensorarrayv2read_tensorlistgetitem_lstm_501_tensorarrayunstack_tensorlistfromtensor_0lstm_501_while_placeholderIlstm_501/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_501/while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp=lstm_501_while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_501/while/lstm_cell_141/MatMulMatMul9lstm_501/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp?lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_501/while/lstm_cell_141/MatMul_1MatMullstm_501_while_placeholder_2<lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_501/while/lstm_cell_141/addAddV2-lstm_501/while/lstm_cell_141/MatMul:product:0/lstm_501/while/lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp>lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_501/while/lstm_cell_141/BiasAddBiasAdd$lstm_501/while/lstm_cell_141/add:z:0;lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_501/while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_501/while/lstm_cell_141/splitSplit5lstm_501/while/lstm_cell_141/split/split_dim:output:0-lstm_501/while/lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_501/while/lstm_cell_141/SigmoidSigmoid+lstm_501/while/lstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_501/while/lstm_cell_141/Sigmoid_1Sigmoid+lstm_501/while/lstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_501/while/lstm_cell_141/mulMul*lstm_501/while/lstm_cell_141/Sigmoid_1:y:0lstm_501_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_501/while/lstm_cell_141/ReluRelu+lstm_501/while/lstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_501/while/lstm_cell_141/mul_1Mul(lstm_501/while/lstm_cell_141/Sigmoid:y:0/lstm_501/while/lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_501/while/lstm_cell_141/add_1AddV2$lstm_501/while/lstm_cell_141/mul:z:0&lstm_501/while/lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_501/while/lstm_cell_141/Sigmoid_2Sigmoid+lstm_501/while/lstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_501/while/lstm_cell_141/Relu_1Relu&lstm_501/while/lstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_501/while/lstm_cell_141/mul_2Mul*lstm_501/while/lstm_cell_141/Sigmoid_2:y:01lstm_501/while/lstm_cell_141/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_501/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_501_while_placeholder_1lstm_501_while_placeholder&lstm_501/while/lstm_cell_141/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_501/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_501/while/addAddV2lstm_501_while_placeholderlstm_501/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_501/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_501/while/add_1AddV2*lstm_501_while_lstm_501_while_loop_counterlstm_501/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_501/while/IdentityIdentitylstm_501/while/add_1:z:0^lstm_501/while/NoOp*
T0*
_output_shapes
: �
lstm_501/while/Identity_1Identity0lstm_501_while_lstm_501_while_maximum_iterations^lstm_501/while/NoOp*
T0*
_output_shapes
: t
lstm_501/while/Identity_2Identitylstm_501/while/add:z:0^lstm_501/while/NoOp*
T0*
_output_shapes
: �
lstm_501/while/Identity_3IdentityClstm_501/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_501/while/NoOp*
T0*
_output_shapes
: �
lstm_501/while/Identity_4Identity&lstm_501/while/lstm_cell_141/mul_2:z:0^lstm_501/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_501/while/Identity_5Identity&lstm_501/while/lstm_cell_141/add_1:z:0^lstm_501/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_501/while/NoOpNoOp4^lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp3^lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp5^lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_501_while_identity lstm_501/while/Identity:output:0"?
lstm_501_while_identity_1"lstm_501/while/Identity_1:output:0"?
lstm_501_while_identity_2"lstm_501/while/Identity_2:output:0"?
lstm_501_while_identity_3"lstm_501/while/Identity_3:output:0"?
lstm_501_while_identity_4"lstm_501/while/Identity_4:output:0"?
lstm_501_while_identity_5"lstm_501/while/Identity_5:output:0"T
'lstm_501_while_lstm_501_strided_slice_1)lstm_501_while_lstm_501_strided_slice_1_0"~
<lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource>lstm_501_while_lstm_cell_141_biasadd_readvariableop_resource_0"�
=lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource?lstm_501_while_lstm_cell_141_matmul_1_readvariableop_resource_0"|
;lstm_501_while_lstm_cell_141_matmul_readvariableop_resource=lstm_501_while_lstm_cell_141_matmul_readvariableop_resource_0"�
clstm_501_while_tensorarrayv2read_tensorlistgetitem_lstm_501_tensorarrayunstack_tensorlistfromtensorelstm_501_while_tensorarrayv2read_tensorlistgetitem_lstm_501_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp3lstm_501/while/lstm_cell_141/BiasAdd/ReadVariableOp2h
2lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp2lstm_501/while/lstm_cell_141/MatMul/ReadVariableOp2l
4lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp4lstm_501/while/lstm_cell_141/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_869518
inputs_0>
,lstm_cell_143_matmul_readvariableop_resource:2(@
.lstm_cell_143_matmul_1_readvariableop_resource:
(;
-lstm_cell_143_biasadd_readvariableop_resource:(
identity��$lstm_cell_143/BiasAdd/ReadVariableOp�#lstm_cell_143/MatMul/ReadVariableOp�%lstm_cell_143/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_143/MatMul/ReadVariableOpReadVariableOp,lstm_cell_143_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_143/MatMulMatMulstrided_slice_2:output:0+lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_143_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_143/MatMul_1MatMulzeros:output:0-lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_143/addAddV2lstm_cell_143/MatMul:product:0 lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_143_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_143/BiasAddBiasAddlstm_cell_143/add:z:0,lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_143/splitSplit&lstm_cell_143/split/split_dim:output:0lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_143/SigmoidSigmoidlstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_1Sigmoidlstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_143/mulMullstm_cell_143/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_143/ReluRelulstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_1Mullstm_cell_143/Sigmoid:y:0 lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_143/add_1AddV2lstm_cell_143/mul:z:0lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_2Sigmoidlstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_143/Relu_1Relulstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_2Mullstm_cell_143/Sigmoid_2:y:0"lstm_cell_143/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_143_matmul_readvariableop_resource.lstm_cell_143_matmul_1_readvariableop_resource-lstm_cell_143_biasadd_readvariableop_resource*
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
while_body_869434*
condR
while_cond_869433*K
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
NoOpNoOp%^lstm_cell_143/BiasAdd/ReadVariableOp$^lstm_cell_143/MatMul/ReadVariableOp&^lstm_cell_143/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_143/BiasAdd/ReadVariableOp$lstm_cell_143/BiasAdd/ReadVariableOp2J
#lstm_cell_143/MatMul/ReadVariableOp#lstm_cell_143/MatMul/ReadVariableOp2N
%lstm_cell_143/MatMul_1/ReadVariableOp%lstm_cell_143/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
"__inference__traced_restore_870533
file_prefix3
!assignvariableop_dense_167_kernel:
/
!assignvariableop_1_dense_167_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_501_lstm_cell_501_kernel:	�M
:assignvariableop_8_lstm_501_lstm_cell_501_recurrent_kernel:	d�=
.assignvariableop_9_lstm_501_lstm_cell_501_bias:	�D
1assignvariableop_10_lstm_502_lstm_cell_502_kernel:	d�N
;assignvariableop_11_lstm_502_lstm_cell_502_recurrent_kernel:	2�>
/assignvariableop_12_lstm_502_lstm_cell_502_bias:	�C
1assignvariableop_13_lstm_503_lstm_cell_503_kernel:2(M
;assignvariableop_14_lstm_503_lstm_cell_503_recurrent_kernel:
(=
/assignvariableop_15_lstm_503_lstm_cell_503_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_167_kernel_m:
7
)assignvariableop_19_adam_dense_167_bias_m:K
8assignvariableop_20_adam_lstm_501_lstm_cell_501_kernel_m:	�U
Bassignvariableop_21_adam_lstm_501_lstm_cell_501_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_501_lstm_cell_501_bias_m:	�K
8assignvariableop_23_adam_lstm_502_lstm_cell_502_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_502_lstm_cell_502_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_502_lstm_cell_502_bias_m:	�J
8assignvariableop_26_adam_lstm_503_lstm_cell_503_kernel_m:2(T
Bassignvariableop_27_adam_lstm_503_lstm_cell_503_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_503_lstm_cell_503_bias_m:(=
+assignvariableop_29_adam_dense_167_kernel_v:
7
)assignvariableop_30_adam_dense_167_bias_v:K
8assignvariableop_31_adam_lstm_501_lstm_cell_501_kernel_v:	�U
Bassignvariableop_32_adam_lstm_501_lstm_cell_501_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_501_lstm_cell_501_bias_v:	�K
8assignvariableop_34_adam_lstm_502_lstm_cell_502_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_502_lstm_cell_502_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_502_lstm_cell_502_bias_v:	�J
8assignvariableop_37_adam_lstm_503_lstm_cell_503_kernel_v:2(T
Bassignvariableop_38_adam_lstm_503_lstm_cell_503_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_503_lstm_cell_503_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_167_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_167_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_501_lstm_cell_501_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_501_lstm_cell_501_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_501_lstm_cell_501_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_502_lstm_cell_502_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_502_lstm_cell_502_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_502_lstm_cell_502_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_503_lstm_cell_503_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_503_lstm_cell_503_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_503_lstm_cell_503_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_167_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_167_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_501_lstm_cell_501_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_501_lstm_cell_501_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_501_lstm_cell_501_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_502_lstm_cell_502_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_502_lstm_cell_502_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_502_lstm_cell_502_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_503_lstm_cell_503_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_503_lstm_cell_503_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_503_lstm_cell_503_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_167_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_167_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_501_lstm_cell_501_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_501_lstm_cell_501_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_501_lstm_cell_501_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_502_lstm_cell_502_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_502_lstm_cell_502_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_502_lstm_cell_502_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_503_lstm_cell_503_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_503_lstm_cell_503_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_503_lstm_cell_503_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_866726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_866726___redundant_placeholder04
0while_while_cond_866726___redundant_placeholder14
0while_while_cond_866726___redundant_placeholder24
0while_while_cond_866726___redundant_placeholder3
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
)__inference_lstm_503_layer_call_fn_869375

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
D__inference_lstm_503_layer_call_and_return_conditional_losses_866646o
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
�J
�
D__inference_lstm_503_layer_call_and_return_conditional_losses_869947

inputs>
,lstm_cell_143_matmul_readvariableop_resource:2(@
.lstm_cell_143_matmul_1_readvariableop_resource:
(;
-lstm_cell_143_biasadd_readvariableop_resource:(
identity��$lstm_cell_143/BiasAdd/ReadVariableOp�#lstm_cell_143/MatMul/ReadVariableOp�%lstm_cell_143/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_143/MatMul/ReadVariableOpReadVariableOp,lstm_cell_143_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_143/MatMulMatMulstrided_slice_2:output:0+lstm_cell_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_143/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_143_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_143/MatMul_1MatMulzeros:output:0-lstm_cell_143/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_143/addAddV2lstm_cell_143/MatMul:product:0 lstm_cell_143/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_143/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_143_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_143/BiasAddBiasAddlstm_cell_143/add:z:0,lstm_cell_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_143/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_143/splitSplit&lstm_cell_143/split/split_dim:output:0lstm_cell_143/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_143/SigmoidSigmoidlstm_cell_143/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_1Sigmoidlstm_cell_143/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_143/mulMullstm_cell_143/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_143/ReluRelulstm_cell_143/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_1Mullstm_cell_143/Sigmoid:y:0 lstm_cell_143/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_143/add_1AddV2lstm_cell_143/mul:z:0lstm_cell_143/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_143/Sigmoid_2Sigmoidlstm_cell_143/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_143/Relu_1Relulstm_cell_143/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_143/mul_2Mullstm_cell_143/Sigmoid_2:y:0"lstm_cell_143/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_143_matmul_readvariableop_resource.lstm_cell_143_matmul_1_readvariableop_resource-lstm_cell_143_biasadd_readvariableop_resource*
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
while_body_869863*
condR
while_cond_869862*K
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
NoOpNoOp%^lstm_cell_143/BiasAdd/ReadVariableOp$^lstm_cell_143/MatMul/ReadVariableOp&^lstm_cell_143/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_143/BiasAdd/ReadVariableOp$lstm_cell_143/BiasAdd/ReadVariableOp2J
#lstm_cell_143/MatMul/ReadVariableOp#lstm_cell_143/MatMul/ReadVariableOp2N
%lstm_cell_143/MatMul_1/ReadVariableOp%lstm_cell_143/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_865144

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
�
.__inference_lstm_cell_142_layer_call_fn_870098

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
GPU 2J 8� *R
fMRK
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_865494o
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
while_cond_866891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_866891___redundant_placeholder04
0while_while_cond_866891___redundant_placeholder14
0while_while_cond_866891___redundant_placeholder24
0while_while_cond_866891___redundant_placeholder3
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_868902
inputs_0?
,lstm_cell_142_matmul_readvariableop_resource:	d�A
.lstm_cell_142_matmul_1_readvariableop_resource:	2�<
-lstm_cell_142_biasadd_readvariableop_resource:	�
identity��$lstm_cell_142/BiasAdd/ReadVariableOp�#lstm_cell_142/MatMul/ReadVariableOp�%lstm_cell_142/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_142/MatMul/ReadVariableOpReadVariableOp,lstm_cell_142_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_142/MatMulMatMulstrided_slice_2:output:0+lstm_cell_142/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_142/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_142_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_142/MatMul_1MatMulzeros:output:0-lstm_cell_142/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_142/addAddV2lstm_cell_142/MatMul:product:0 lstm_cell_142/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_142/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_142_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_142/BiasAddBiasAddlstm_cell_142/add:z:0,lstm_cell_142/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_142/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_142/splitSplit&lstm_cell_142/split/split_dim:output:0lstm_cell_142/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_142/SigmoidSigmoidlstm_cell_142/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_1Sigmoidlstm_cell_142/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_142/mulMullstm_cell_142/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_142/ReluRelulstm_cell_142/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_1Mullstm_cell_142/Sigmoid:y:0 lstm_cell_142/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_142/add_1AddV2lstm_cell_142/mul:z:0lstm_cell_142/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_142/Sigmoid_2Sigmoidlstm_cell_142/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_142/Relu_1Relulstm_cell_142/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_142/mul_2Mullstm_cell_142/Sigmoid_2:y:0"lstm_cell_142/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_142_matmul_readvariableop_resource.lstm_cell_142_matmul_1_readvariableop_resource-lstm_cell_142_biasadd_readvariableop_resource*
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
while_body_868818*
condR
while_cond_868817*K
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
NoOpNoOp%^lstm_cell_142/BiasAdd/ReadVariableOp$^lstm_cell_142/MatMul/ReadVariableOp&^lstm_cell_142/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_142/BiasAdd/ReadVariableOp$lstm_cell_142/BiasAdd/ReadVariableOp2J
#lstm_cell_142/MatMul/ReadVariableOp#lstm_cell_142/MatMul/ReadVariableOp2N
%lstm_cell_142/MatMul_1/ReadVariableOp%lstm_cell_142/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
)__inference_lstm_503_layer_call_fn_869364

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
D__inference_lstm_503_layer_call_and_return_conditional_losses_866430o
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
while_cond_865552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865552___redundant_placeholder04
0while_while_cond_865552___redundant_placeholder14
0while_while_cond_865552___redundant_placeholder24
0while_while_cond_865552___redundant_placeholder3
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_866130

inputs?
,lstm_cell_141_matmul_readvariableop_resource:	�A
.lstm_cell_141_matmul_1_readvariableop_resource:	d�<
-lstm_cell_141_biasadd_readvariableop_resource:	�
identity��$lstm_cell_141/BiasAdd/ReadVariableOp�#lstm_cell_141/MatMul/ReadVariableOp�%lstm_cell_141/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_141/MatMul/ReadVariableOpReadVariableOp,lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_141/MatMulMatMulstrided_slice_2:output:0+lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_141/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_141_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_141/MatMul_1MatMulzeros:output:0-lstm_cell_141/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_141/addAddV2lstm_cell_141/MatMul:product:0 lstm_cell_141/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_141/BiasAddBiasAddlstm_cell_141/add:z:0,lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_141/splitSplit&lstm_cell_141/split/split_dim:output:0lstm_cell_141/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_141/SigmoidSigmoidlstm_cell_141/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_1Sigmoidlstm_cell_141/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_141/mulMullstm_cell_141/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_141/ReluRelulstm_cell_141/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_1Mullstm_cell_141/Sigmoid:y:0 lstm_cell_141/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_141/add_1AddV2lstm_cell_141/mul:z:0lstm_cell_141/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_141/Sigmoid_2Sigmoidlstm_cell_141/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_141/Relu_1Relulstm_cell_141/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_141/mul_2Mullstm_cell_141/Sigmoid_2:y:0"lstm_cell_141/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_141_matmul_readvariableop_resource.lstm_cell_141_matmul_1_readvariableop_resource-lstm_cell_141_biasadd_readvariableop_resource*
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
while_body_866046*
condR
while_cond_866045*K
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
NoOpNoOp%^lstm_cell_141/BiasAdd/ReadVariableOp$^lstm_cell_141/MatMul/ReadVariableOp&^lstm_cell_141/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_141/BiasAdd/ReadVariableOp$lstm_cell_141/BiasAdd/ReadVariableOp2J
#lstm_cell_141/MatMul/ReadVariableOp#lstm_cell_141/MatMul/ReadVariableOp2N
%lstm_cell_141/MatMul_1/ReadVariableOp%lstm_cell_141/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
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
lstm_501_input;
 serving_default_lstm_501_input:0���������=
	dense_1670
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
2dense_167/kernel
:2dense_167/bias
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
0:.	�2lstm_501/lstm_cell_501/kernel
::8	d�2'lstm_501/lstm_cell_501/recurrent_kernel
*:(�2lstm_501/lstm_cell_501/bias
0:.	d�2lstm_502/lstm_cell_502/kernel
::8	2�2'lstm_502/lstm_cell_502/recurrent_kernel
*:(�2lstm_502/lstm_cell_502/bias
/:-2(2lstm_503/lstm_cell_503/kernel
9:7
(2'lstm_503/lstm_cell_503/recurrent_kernel
):'(2lstm_503/lstm_cell_503/bias
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
2Adam/dense_167/kernel/m
!:2Adam/dense_167/bias/m
5:3	�2$Adam/lstm_501/lstm_cell_501/kernel/m
?:=	d�2.Adam/lstm_501/lstm_cell_501/recurrent_kernel/m
/:-�2"Adam/lstm_501/lstm_cell_501/bias/m
5:3	d�2$Adam/lstm_502/lstm_cell_502/kernel/m
?:=	2�2.Adam/lstm_502/lstm_cell_502/recurrent_kernel/m
/:-�2"Adam/lstm_502/lstm_cell_502/bias/m
4:22(2$Adam/lstm_503/lstm_cell_503/kernel/m
>:<
(2.Adam/lstm_503/lstm_cell_503/recurrent_kernel/m
.:,(2"Adam/lstm_503/lstm_cell_503/bias/m
':%
2Adam/dense_167/kernel/v
!:2Adam/dense_167/bias/v
5:3	�2$Adam/lstm_501/lstm_cell_501/kernel/v
?:=	d�2.Adam/lstm_501/lstm_cell_501/recurrent_kernel/v
/:-�2"Adam/lstm_501/lstm_cell_501/bias/v
5:3	d�2$Adam/lstm_502/lstm_cell_502/kernel/v
?:=	2�2.Adam/lstm_502/lstm_cell_502/recurrent_kernel/v
/:-�2"Adam/lstm_502/lstm_cell_502/bias/v
4:22(2$Adam/lstm_503/lstm_cell_503/kernel/v
>:<
(2.Adam/lstm_503/lstm_cell_503/recurrent_kernel/v
.:,(2"Adam/lstm_503/lstm_cell_503/bias/v
�2�
/__inference_sequential_167_layer_call_fn_866480
/__inference_sequential_167_layer_call_fn_867218
/__inference_sequential_167_layer_call_fn_867245
/__inference_sequential_167_layer_call_fn_867096�
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
J__inference_sequential_167_layer_call_and_return_conditional_losses_867672
J__inference_sequential_167_layer_call_and_return_conditional_losses_868099
J__inference_sequential_167_layer_call_and_return_conditional_losses_867126
J__inference_sequential_167_layer_call_and_return_conditional_losses_867156�
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
!__inference__wrapped_model_864931lstm_501_input"�
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
)__inference_lstm_501_layer_call_fn_868110
)__inference_lstm_501_layer_call_fn_868121
)__inference_lstm_501_layer_call_fn_868132
)__inference_lstm_501_layer_call_fn_868143�
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_868286
D__inference_lstm_501_layer_call_and_return_conditional_losses_868429
D__inference_lstm_501_layer_call_and_return_conditional_losses_868572
D__inference_lstm_501_layer_call_and_return_conditional_losses_868715�
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
)__inference_lstm_502_layer_call_fn_868726
)__inference_lstm_502_layer_call_fn_868737
)__inference_lstm_502_layer_call_fn_868748
)__inference_lstm_502_layer_call_fn_868759�
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_868902
D__inference_lstm_502_layer_call_and_return_conditional_losses_869045
D__inference_lstm_502_layer_call_and_return_conditional_losses_869188
D__inference_lstm_502_layer_call_and_return_conditional_losses_869331�
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
)__inference_lstm_503_layer_call_fn_869342
)__inference_lstm_503_layer_call_fn_869353
)__inference_lstm_503_layer_call_fn_869364
)__inference_lstm_503_layer_call_fn_869375�
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_869518
D__inference_lstm_503_layer_call_and_return_conditional_losses_869661
D__inference_lstm_503_layer_call_and_return_conditional_losses_869804
D__inference_lstm_503_layer_call_and_return_conditional_losses_869947�
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
*__inference_dense_167_layer_call_fn_869956�
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
E__inference_dense_167_layer_call_and_return_conditional_losses_869966�
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
$__inference_signature_wrapper_867191lstm_501_input"�
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
.__inference_lstm_cell_141_layer_call_fn_869983
.__inference_lstm_cell_141_layer_call_fn_870000�
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
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_870032
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_870064�
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
.__inference_lstm_cell_142_layer_call_fn_870081
.__inference_lstm_cell_142_layer_call_fn_870098�
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
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_870130
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_870162�
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
.__inference_lstm_cell_143_layer_call_fn_870179
.__inference_lstm_cell_143_layer_call_fn_870196�
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
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_870228
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_870260�
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
!__inference__wrapped_model_864931�-./012345!";�8
1�.
,�)
lstm_501_input���������
� "5�2
0
	dense_167#� 
	dense_167����������
E__inference_dense_167_layer_call_and_return_conditional_losses_869966\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� }
*__inference_dense_167_layer_call_fn_869956O!"/�,
%�"
 �
inputs���������

� "�����������
D__inference_lstm_501_layer_call_and_return_conditional_losses_868286�-./O�L
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_868429�-./O�L
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_868572q-./?�<
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
D__inference_lstm_501_layer_call_and_return_conditional_losses_868715q-./?�<
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
)__inference_lstm_501_layer_call_fn_868110}-./O�L
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
)__inference_lstm_501_layer_call_fn_868121}-./O�L
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
)__inference_lstm_501_layer_call_fn_868132d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
)__inference_lstm_501_layer_call_fn_868143d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
D__inference_lstm_502_layer_call_and_return_conditional_losses_868902�012O�L
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_869045�012O�L
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_869188q012?�<
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
D__inference_lstm_502_layer_call_and_return_conditional_losses_869331q012?�<
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
)__inference_lstm_502_layer_call_fn_868726}012O�L
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
)__inference_lstm_502_layer_call_fn_868737}012O�L
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
)__inference_lstm_502_layer_call_fn_868748d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
)__inference_lstm_502_layer_call_fn_868759d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
D__inference_lstm_503_layer_call_and_return_conditional_losses_869518}345O�L
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_869661}345O�L
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_869804m345?�<
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
D__inference_lstm_503_layer_call_and_return_conditional_losses_869947m345?�<
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
)__inference_lstm_503_layer_call_fn_869342p345O�L
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
)__inference_lstm_503_layer_call_fn_869353p345O�L
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
)__inference_lstm_503_layer_call_fn_869364`345?�<
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
)__inference_lstm_503_layer_call_fn_869375`345?�<
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
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_870032�-./��}
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
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_870064�-./��}
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
.__inference_lstm_cell_141_layer_call_fn_869983�-./��}
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
.__inference_lstm_cell_141_layer_call_fn_870000�-./��}
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
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_870130�012��}
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
I__inference_lstm_cell_142_layer_call_and_return_conditional_losses_870162�012��}
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
.__inference_lstm_cell_142_layer_call_fn_870081�012��}
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
.__inference_lstm_cell_142_layer_call_fn_870098�012��}
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
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_870228�345��}
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
I__inference_lstm_cell_143_layer_call_and_return_conditional_losses_870260�345��}
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
.__inference_lstm_cell_143_layer_call_fn_870179�345��}
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
.__inference_lstm_cell_143_layer_call_fn_870196�345��}
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
J__inference_sequential_167_layer_call_and_return_conditional_losses_867126y-./012345!"C�@
9�6
,�)
lstm_501_input���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_167_layer_call_and_return_conditional_losses_867156y-./012345!"C�@
9�6
,�)
lstm_501_input���������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_167_layer_call_and_return_conditional_losses_867672q-./012345!";�8
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
J__inference_sequential_167_layer_call_and_return_conditional_losses_868099q-./012345!";�8
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
/__inference_sequential_167_layer_call_fn_866480l-./012345!"C�@
9�6
,�)
lstm_501_input���������
p 

 
� "�����������
/__inference_sequential_167_layer_call_fn_867096l-./012345!"C�@
9�6
,�)
lstm_501_input���������
p

 
� "�����������
/__inference_sequential_167_layer_call_fn_867218d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
/__inference_sequential_167_layer_call_fn_867245d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_867191�-./012345!"M�J
� 
C�@
>
lstm_501_input,�)
lstm_501_input���������"5�2
0
	dense_167#� 
	dense_167���������
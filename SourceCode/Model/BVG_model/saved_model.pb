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
dense_212/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_212/kernel
u
$dense_212/kernel/Read/ReadVariableOpReadVariableOpdense_212/kernel*
_output_shapes

:
*
dtype0
t
dense_212/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_212/bias
m
"dense_212/bias/Read/ReadVariableOpReadVariableOpdense_212/bias*
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
lstm_636/lstm_cell_636/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_636/lstm_cell_636/kernel
�
1lstm_636/lstm_cell_636/kernel/Read/ReadVariableOpReadVariableOplstm_636/lstm_cell_636/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_636/lstm_cell_636/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_636/lstm_cell_636/recurrent_kernel
�
;lstm_636/lstm_cell_636/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_636/lstm_cell_636/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_636/lstm_cell_636/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_636/lstm_cell_636/bias
�
/lstm_636/lstm_cell_636/bias/Read/ReadVariableOpReadVariableOplstm_636/lstm_cell_636/bias*
_output_shapes	
:�*
dtype0
�
lstm_637/lstm_cell_637/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_637/lstm_cell_637/kernel
�
1lstm_637/lstm_cell_637/kernel/Read/ReadVariableOpReadVariableOplstm_637/lstm_cell_637/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_637/lstm_cell_637/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_637/lstm_cell_637/recurrent_kernel
�
;lstm_637/lstm_cell_637/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_637/lstm_cell_637/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_637/lstm_cell_637/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_637/lstm_cell_637/bias
�
/lstm_637/lstm_cell_637/bias/Read/ReadVariableOpReadVariableOplstm_637/lstm_cell_637/bias*
_output_shapes	
:�*
dtype0
�
lstm_638/lstm_cell_638/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_638/lstm_cell_638/kernel
�
1lstm_638/lstm_cell_638/kernel/Read/ReadVariableOpReadVariableOplstm_638/lstm_cell_638/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_638/lstm_cell_638/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_638/lstm_cell_638/recurrent_kernel
�
;lstm_638/lstm_cell_638/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_638/lstm_cell_638/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_638/lstm_cell_638/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_638/lstm_cell_638/bias
�
/lstm_638/lstm_cell_638/bias/Read/ReadVariableOpReadVariableOplstm_638/lstm_cell_638/bias*
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
Adam/dense_212/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_212/kernel/m
�
+Adam/dense_212/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_212/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_212/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_212/bias/m
{
)Adam/dense_212/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_212/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_636/lstm_cell_636/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_636/lstm_cell_636/kernel/m
�
8Adam/lstm_636/lstm_cell_636/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_636/lstm_cell_636/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_636/lstm_cell_636/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_636/lstm_cell_636/recurrent_kernel/m
�
BAdam/lstm_636/lstm_cell_636/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_636/lstm_cell_636/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_636/lstm_cell_636/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_636/lstm_cell_636/bias/m
�
6Adam/lstm_636/lstm_cell_636/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_636/lstm_cell_636/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_637/lstm_cell_637/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_637/lstm_cell_637/kernel/m
�
8Adam/lstm_637/lstm_cell_637/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_637/lstm_cell_637/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_637/lstm_cell_637/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_637/lstm_cell_637/recurrent_kernel/m
�
BAdam/lstm_637/lstm_cell_637/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_637/lstm_cell_637/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_637/lstm_cell_637/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_637/lstm_cell_637/bias/m
�
6Adam/lstm_637/lstm_cell_637/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_637/lstm_cell_637/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_638/lstm_cell_638/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_638/lstm_cell_638/kernel/m
�
8Adam/lstm_638/lstm_cell_638/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_638/lstm_cell_638/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_638/lstm_cell_638/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_638/lstm_cell_638/recurrent_kernel/m
�
BAdam/lstm_638/lstm_cell_638/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_638/lstm_cell_638/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_638/lstm_cell_638/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_638/lstm_cell_638/bias/m
�
6Adam/lstm_638/lstm_cell_638/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_638/lstm_cell_638/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_212/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_212/kernel/v
�
+Adam/dense_212/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_212/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_212/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_212/bias/v
{
)Adam/dense_212/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_212/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_636/lstm_cell_636/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_636/lstm_cell_636/kernel/v
�
8Adam/lstm_636/lstm_cell_636/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_636/lstm_cell_636/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_636/lstm_cell_636/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_636/lstm_cell_636/recurrent_kernel/v
�
BAdam/lstm_636/lstm_cell_636/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_636/lstm_cell_636/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_636/lstm_cell_636/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_636/lstm_cell_636/bias/v
�
6Adam/lstm_636/lstm_cell_636/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_636/lstm_cell_636/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_637/lstm_cell_637/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_637/lstm_cell_637/kernel/v
�
8Adam/lstm_637/lstm_cell_637/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_637/lstm_cell_637/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_637/lstm_cell_637/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_637/lstm_cell_637/recurrent_kernel/v
�
BAdam/lstm_637/lstm_cell_637/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_637/lstm_cell_637/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_637/lstm_cell_637/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_637/lstm_cell_637/bias/v
�
6Adam/lstm_637/lstm_cell_637/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_637/lstm_cell_637/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_638/lstm_cell_638/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_638/lstm_cell_638/kernel/v
�
8Adam/lstm_638/lstm_cell_638/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_638/lstm_cell_638/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_638/lstm_cell_638/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_638/lstm_cell_638/recurrent_kernel/v
�
BAdam/lstm_638/lstm_cell_638/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_638/lstm_cell_638/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_638/lstm_cell_638/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_638/lstm_cell_638/bias/v
�
6Adam/lstm_638/lstm_cell_638/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_638/lstm_cell_638/bias/v*
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
VARIABLE_VALUEdense_212/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_212/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_636/lstm_cell_636/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_636/lstm_cell_636/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_636/lstm_cell_636/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_637/lstm_cell_637/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_637/lstm_cell_637/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_637/lstm_cell_637/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_638/lstm_cell_638/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_638/lstm_cell_638/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_638/lstm_cell_638/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_212/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_212/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_636/lstm_cell_636/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_636/lstm_cell_636/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_636/lstm_cell_636/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_637/lstm_cell_637/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_637/lstm_cell_637/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_637/lstm_cell_637/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_638/lstm_cell_638/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_638/lstm_cell_638/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_638/lstm_cell_638/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_212/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_212/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_636/lstm_cell_636/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_636/lstm_cell_636/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_636/lstm_cell_636/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_637/lstm_cell_637/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_637/lstm_cell_637/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_637/lstm_cell_637/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_638/lstm_cell_638/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_638/lstm_cell_638/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_638/lstm_cell_638/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_636_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_636_inputlstm_636/lstm_cell_636/kernel'lstm_636/lstm_cell_636/recurrent_kernellstm_636/lstm_cell_636/biaslstm_637/lstm_cell_637/kernel'lstm_637/lstm_cell_637/recurrent_kernellstm_637/lstm_cell_637/biaslstm_638/lstm_cell_638/kernel'lstm_638/lstm_cell_638/recurrent_kernellstm_638/lstm_cell_638/biasdense_212/kerneldense_212/bias*
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
%__inference_signature_wrapper_3680500
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_212/kernel/Read/ReadVariableOp"dense_212/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_636/lstm_cell_636/kernel/Read/ReadVariableOp;lstm_636/lstm_cell_636/recurrent_kernel/Read/ReadVariableOp/lstm_636/lstm_cell_636/bias/Read/ReadVariableOp1lstm_637/lstm_cell_637/kernel/Read/ReadVariableOp;lstm_637/lstm_cell_637/recurrent_kernel/Read/ReadVariableOp/lstm_637/lstm_cell_637/bias/Read/ReadVariableOp1lstm_638/lstm_cell_638/kernel/Read/ReadVariableOp;lstm_638/lstm_cell_638/recurrent_kernel/Read/ReadVariableOp/lstm_638/lstm_cell_638/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_212/kernel/m/Read/ReadVariableOp)Adam/dense_212/bias/m/Read/ReadVariableOp8Adam/lstm_636/lstm_cell_636/kernel/m/Read/ReadVariableOpBAdam/lstm_636/lstm_cell_636/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_636/lstm_cell_636/bias/m/Read/ReadVariableOp8Adam/lstm_637/lstm_cell_637/kernel/m/Read/ReadVariableOpBAdam/lstm_637/lstm_cell_637/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_637/lstm_cell_637/bias/m/Read/ReadVariableOp8Adam/lstm_638/lstm_cell_638/kernel/m/Read/ReadVariableOpBAdam/lstm_638/lstm_cell_638/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_638/lstm_cell_638/bias/m/Read/ReadVariableOp+Adam/dense_212/kernel/v/Read/ReadVariableOp)Adam/dense_212/bias/v/Read/ReadVariableOp8Adam/lstm_636/lstm_cell_636/kernel/v/Read/ReadVariableOpBAdam/lstm_636/lstm_cell_636/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_636/lstm_cell_636/bias/v/Read/ReadVariableOp8Adam/lstm_637/lstm_cell_637/kernel/v/Read/ReadVariableOpBAdam/lstm_637/lstm_cell_637/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_637/lstm_cell_637/bias/v/Read/ReadVariableOp8Adam/lstm_638/lstm_cell_638/kernel/v/Read/ReadVariableOpBAdam/lstm_638/lstm_cell_638/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_638/lstm_cell_638/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3683712
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_212/kerneldense_212/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_636/lstm_cell_636/kernel'lstm_636/lstm_cell_636/recurrent_kernellstm_636/lstm_cell_636/biaslstm_637/lstm_cell_637/kernel'lstm_637/lstm_cell_637/recurrent_kernellstm_637/lstm_cell_637/biaslstm_638/lstm_cell_638/kernel'lstm_638/lstm_cell_638/recurrent_kernellstm_638/lstm_cell_638/biastotalcountAdam/dense_212/kernel/mAdam/dense_212/bias/m$Adam/lstm_636/lstm_cell_636/kernel/m.Adam/lstm_636/lstm_cell_636/recurrent_kernel/m"Adam/lstm_636/lstm_cell_636/bias/m$Adam/lstm_637/lstm_cell_637/kernel/m.Adam/lstm_637/lstm_cell_637/recurrent_kernel/m"Adam/lstm_637/lstm_cell_637/bias/m$Adam/lstm_638/lstm_cell_638/kernel/m.Adam/lstm_638/lstm_cell_638/recurrent_kernel/m"Adam/lstm_638/lstm_cell_638/bias/mAdam/dense_212/kernel/vAdam/dense_212/bias/v$Adam/lstm_636/lstm_cell_636/kernel/v.Adam/lstm_636/lstm_cell_636/recurrent_kernel/v"Adam/lstm_636/lstm_cell_636/bias/v$Adam/lstm_637/lstm_cell_637/kernel/v.Adam/lstm_637/lstm_cell_637/recurrent_kernel/v"Adam/lstm_637/lstm_cell_637/bias/v$Adam/lstm_638/lstm_cell_638/kernel/v.Adam/lstm_638/lstm_cell_638/recurrent_kernel/v"Adam/lstm_638/lstm_cell_638/bias/v*4
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
#__inference__traced_restore_3683842��+
�
�
/__inference_lstm_cell_608_layer_call_fn_3683505

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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3679153o
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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3681408

inputsH
5lstm_636_lstm_cell_606_matmul_readvariableop_resource:	�J
7lstm_636_lstm_cell_606_matmul_1_readvariableop_resource:	d�E
6lstm_636_lstm_cell_606_biasadd_readvariableop_resource:	�H
5lstm_637_lstm_cell_607_matmul_readvariableop_resource:	d�J
7lstm_637_lstm_cell_607_matmul_1_readvariableop_resource:	2�E
6lstm_637_lstm_cell_607_biasadd_readvariableop_resource:	�G
5lstm_638_lstm_cell_608_matmul_readvariableop_resource:2(I
7lstm_638_lstm_cell_608_matmul_1_readvariableop_resource:
(D
6lstm_638_lstm_cell_608_biasadd_readvariableop_resource:(:
(dense_212_matmul_readvariableop_resource:
7
)dense_212_biasadd_readvariableop_resource:
identity�� dense_212/BiasAdd/ReadVariableOp�dense_212/MatMul/ReadVariableOp�-lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp�,lstm_636/lstm_cell_606/MatMul/ReadVariableOp�.lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp�lstm_636/while�-lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp�,lstm_637/lstm_cell_607/MatMul/ReadVariableOp�.lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp�lstm_637/while�-lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp�,lstm_638/lstm_cell_608/MatMul/ReadVariableOp�.lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp�lstm_638/whileD
lstm_636/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_636/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_636/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_636/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_636/strided_sliceStridedSlicelstm_636/Shape:output:0%lstm_636/strided_slice/stack:output:0'lstm_636/strided_slice/stack_1:output:0'lstm_636/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_636/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_636/zeros/packedPacklstm_636/strided_slice:output:0 lstm_636/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_636/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_636/zerosFilllstm_636/zeros/packed:output:0lstm_636/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_636/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_636/zeros_1/packedPacklstm_636/strided_slice:output:0"lstm_636/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_636/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_636/zeros_1Fill lstm_636/zeros_1/packed:output:0lstm_636/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_636/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_636/transpose	Transposeinputs lstm_636/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_636/Shape_1Shapelstm_636/transpose:y:0*
T0*
_output_shapes
:h
lstm_636/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_636/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_636/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_636/strided_slice_1StridedSlicelstm_636/Shape_1:output:0'lstm_636/strided_slice_1/stack:output:0)lstm_636/strided_slice_1/stack_1:output:0)lstm_636/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_636/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_636/TensorArrayV2TensorListReserve-lstm_636/TensorArrayV2/element_shape:output:0!lstm_636/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_636/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_636/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_636/transpose:y:0Glstm_636/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_636/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_636/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_636/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_636/strided_slice_2StridedSlicelstm_636/transpose:y:0'lstm_636/strided_slice_2/stack:output:0)lstm_636/strided_slice_2/stack_1:output:0)lstm_636/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_636/lstm_cell_606/MatMul/ReadVariableOpReadVariableOp5lstm_636_lstm_cell_606_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_636/lstm_cell_606/MatMulMatMul!lstm_636/strided_slice_2:output:04lstm_636/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_636/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp7lstm_636_lstm_cell_606_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_636/lstm_cell_606/MatMul_1MatMullstm_636/zeros:output:06lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_636/lstm_cell_606/addAddV2'lstm_636/lstm_cell_606/MatMul:product:0)lstm_636/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_636/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp6lstm_636_lstm_cell_606_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_636/lstm_cell_606/BiasAddBiasAddlstm_636/lstm_cell_606/add:z:05lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_636/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_636/lstm_cell_606/splitSplit/lstm_636/lstm_cell_606/split/split_dim:output:0'lstm_636/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_636/lstm_cell_606/SigmoidSigmoid%lstm_636/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_636/lstm_cell_606/Sigmoid_1Sigmoid%lstm_636/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_636/lstm_cell_606/mulMul$lstm_636/lstm_cell_606/Sigmoid_1:y:0lstm_636/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_636/lstm_cell_606/ReluRelu%lstm_636/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_636/lstm_cell_606/mul_1Mul"lstm_636/lstm_cell_606/Sigmoid:y:0)lstm_636/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_636/lstm_cell_606/add_1AddV2lstm_636/lstm_cell_606/mul:z:0 lstm_636/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_636/lstm_cell_606/Sigmoid_2Sigmoid%lstm_636/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_636/lstm_cell_606/Relu_1Relu lstm_636/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_636/lstm_cell_606/mul_2Mul$lstm_636/lstm_cell_606/Sigmoid_2:y:0+lstm_636/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_636/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_636/TensorArrayV2_1TensorListReserve/lstm_636/TensorArrayV2_1/element_shape:output:0!lstm_636/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_636/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_636/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_636/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_636/whileWhile$lstm_636/while/loop_counter:output:0*lstm_636/while/maximum_iterations:output:0lstm_636/time:output:0!lstm_636/TensorArrayV2_1:handle:0lstm_636/zeros:output:0lstm_636/zeros_1:output:0!lstm_636/strided_slice_1:output:0@lstm_636/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_636_lstm_cell_606_matmul_readvariableop_resource7lstm_636_lstm_cell_606_matmul_1_readvariableop_resource6lstm_636_lstm_cell_606_biasadd_readvariableop_resource*
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
lstm_636_while_body_3681040*'
condR
lstm_636_while_cond_3681039*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_636/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_636/TensorArrayV2Stack/TensorListStackTensorListStacklstm_636/while:output:3Blstm_636/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_636/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_636/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_636/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_636/strided_slice_3StridedSlice4lstm_636/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_636/strided_slice_3/stack:output:0)lstm_636/strided_slice_3/stack_1:output:0)lstm_636/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_636/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_636/transpose_1	Transpose4lstm_636/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_636/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_636/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_637/ShapeShapelstm_636/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_637/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_637/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_637/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_637/strided_sliceStridedSlicelstm_637/Shape:output:0%lstm_637/strided_slice/stack:output:0'lstm_637/strided_slice/stack_1:output:0'lstm_637/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_637/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_637/zeros/packedPacklstm_637/strided_slice:output:0 lstm_637/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_637/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_637/zerosFilllstm_637/zeros/packed:output:0lstm_637/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_637/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_637/zeros_1/packedPacklstm_637/strided_slice:output:0"lstm_637/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_637/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_637/zeros_1Fill lstm_637/zeros_1/packed:output:0lstm_637/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_637/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_637/transpose	Transposelstm_636/transpose_1:y:0 lstm_637/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_637/Shape_1Shapelstm_637/transpose:y:0*
T0*
_output_shapes
:h
lstm_637/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_637/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_637/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_637/strided_slice_1StridedSlicelstm_637/Shape_1:output:0'lstm_637/strided_slice_1/stack:output:0)lstm_637/strided_slice_1/stack_1:output:0)lstm_637/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_637/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_637/TensorArrayV2TensorListReserve-lstm_637/TensorArrayV2/element_shape:output:0!lstm_637/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_637/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_637/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_637/transpose:y:0Glstm_637/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_637/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_637/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_637/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_637/strided_slice_2StridedSlicelstm_637/transpose:y:0'lstm_637/strided_slice_2/stack:output:0)lstm_637/strided_slice_2/stack_1:output:0)lstm_637/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_637/lstm_cell_607/MatMul/ReadVariableOpReadVariableOp5lstm_637_lstm_cell_607_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_637/lstm_cell_607/MatMulMatMul!lstm_637/strided_slice_2:output:04lstm_637/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_637/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp7lstm_637_lstm_cell_607_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_637/lstm_cell_607/MatMul_1MatMullstm_637/zeros:output:06lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_637/lstm_cell_607/addAddV2'lstm_637/lstm_cell_607/MatMul:product:0)lstm_637/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_637/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp6lstm_637_lstm_cell_607_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_637/lstm_cell_607/BiasAddBiasAddlstm_637/lstm_cell_607/add:z:05lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_637/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_637/lstm_cell_607/splitSplit/lstm_637/lstm_cell_607/split/split_dim:output:0'lstm_637/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_637/lstm_cell_607/SigmoidSigmoid%lstm_637/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_637/lstm_cell_607/Sigmoid_1Sigmoid%lstm_637/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_637/lstm_cell_607/mulMul$lstm_637/lstm_cell_607/Sigmoid_1:y:0lstm_637/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_637/lstm_cell_607/ReluRelu%lstm_637/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_637/lstm_cell_607/mul_1Mul"lstm_637/lstm_cell_607/Sigmoid:y:0)lstm_637/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_637/lstm_cell_607/add_1AddV2lstm_637/lstm_cell_607/mul:z:0 lstm_637/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_637/lstm_cell_607/Sigmoid_2Sigmoid%lstm_637/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_637/lstm_cell_607/Relu_1Relu lstm_637/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_637/lstm_cell_607/mul_2Mul$lstm_637/lstm_cell_607/Sigmoid_2:y:0+lstm_637/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_637/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_637/TensorArrayV2_1TensorListReserve/lstm_637/TensorArrayV2_1/element_shape:output:0!lstm_637/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_637/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_637/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_637/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_637/whileWhile$lstm_637/while/loop_counter:output:0*lstm_637/while/maximum_iterations:output:0lstm_637/time:output:0!lstm_637/TensorArrayV2_1:handle:0lstm_637/zeros:output:0lstm_637/zeros_1:output:0!lstm_637/strided_slice_1:output:0@lstm_637/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_637_lstm_cell_607_matmul_readvariableop_resource7lstm_637_lstm_cell_607_matmul_1_readvariableop_resource6lstm_637_lstm_cell_607_biasadd_readvariableop_resource*
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
lstm_637_while_body_3681179*'
condR
lstm_637_while_cond_3681178*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_637/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_637/TensorArrayV2Stack/TensorListStackTensorListStacklstm_637/while:output:3Blstm_637/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_637/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_637/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_637/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_637/strided_slice_3StridedSlice4lstm_637/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_637/strided_slice_3/stack:output:0)lstm_637/strided_slice_3/stack_1:output:0)lstm_637/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_637/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_637/transpose_1	Transpose4lstm_637/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_637/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_637/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_638/ShapeShapelstm_637/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_638/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_638/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_638/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_638/strided_sliceStridedSlicelstm_638/Shape:output:0%lstm_638/strided_slice/stack:output:0'lstm_638/strided_slice/stack_1:output:0'lstm_638/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_638/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_638/zeros/packedPacklstm_638/strided_slice:output:0 lstm_638/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_638/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_638/zerosFilllstm_638/zeros/packed:output:0lstm_638/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_638/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_638/zeros_1/packedPacklstm_638/strided_slice:output:0"lstm_638/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_638/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_638/zeros_1Fill lstm_638/zeros_1/packed:output:0lstm_638/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_638/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_638/transpose	Transposelstm_637/transpose_1:y:0 lstm_638/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_638/Shape_1Shapelstm_638/transpose:y:0*
T0*
_output_shapes
:h
lstm_638/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_638/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_638/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_638/strided_slice_1StridedSlicelstm_638/Shape_1:output:0'lstm_638/strided_slice_1/stack:output:0)lstm_638/strided_slice_1/stack_1:output:0)lstm_638/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_638/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_638/TensorArrayV2TensorListReserve-lstm_638/TensorArrayV2/element_shape:output:0!lstm_638/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_638/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_638/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_638/transpose:y:0Glstm_638/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_638/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_638/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_638/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_638/strided_slice_2StridedSlicelstm_638/transpose:y:0'lstm_638/strided_slice_2/stack:output:0)lstm_638/strided_slice_2/stack_1:output:0)lstm_638/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_638/lstm_cell_608/MatMul/ReadVariableOpReadVariableOp5lstm_638_lstm_cell_608_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_638/lstm_cell_608/MatMulMatMul!lstm_638/strided_slice_2:output:04lstm_638/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_638/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp7lstm_638_lstm_cell_608_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_638/lstm_cell_608/MatMul_1MatMullstm_638/zeros:output:06lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_638/lstm_cell_608/addAddV2'lstm_638/lstm_cell_608/MatMul:product:0)lstm_638/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_638/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp6lstm_638_lstm_cell_608_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_638/lstm_cell_608/BiasAddBiasAddlstm_638/lstm_cell_608/add:z:05lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_638/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_638/lstm_cell_608/splitSplit/lstm_638/lstm_cell_608/split/split_dim:output:0'lstm_638/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_638/lstm_cell_608/SigmoidSigmoid%lstm_638/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_638/lstm_cell_608/Sigmoid_1Sigmoid%lstm_638/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_638/lstm_cell_608/mulMul$lstm_638/lstm_cell_608/Sigmoid_1:y:0lstm_638/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_638/lstm_cell_608/ReluRelu%lstm_638/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_638/lstm_cell_608/mul_1Mul"lstm_638/lstm_cell_608/Sigmoid:y:0)lstm_638/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_638/lstm_cell_608/add_1AddV2lstm_638/lstm_cell_608/mul:z:0 lstm_638/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_638/lstm_cell_608/Sigmoid_2Sigmoid%lstm_638/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_638/lstm_cell_608/Relu_1Relu lstm_638/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_638/lstm_cell_608/mul_2Mul$lstm_638/lstm_cell_608/Sigmoid_2:y:0+lstm_638/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_638/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_638/TensorArrayV2_1TensorListReserve/lstm_638/TensorArrayV2_1/element_shape:output:0!lstm_638/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_638/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_638/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_638/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_638/whileWhile$lstm_638/while/loop_counter:output:0*lstm_638/while/maximum_iterations:output:0lstm_638/time:output:0!lstm_638/TensorArrayV2_1:handle:0lstm_638/zeros:output:0lstm_638/zeros_1:output:0!lstm_638/strided_slice_1:output:0@lstm_638/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_638_lstm_cell_608_matmul_readvariableop_resource7lstm_638_lstm_cell_608_matmul_1_readvariableop_resource6lstm_638_lstm_cell_608_biasadd_readvariableop_resource*
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
lstm_638_while_body_3681318*'
condR
lstm_638_while_cond_3681317*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_638/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_638/TensorArrayV2Stack/TensorListStackTensorListStacklstm_638/while:output:3Blstm_638/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_638/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_638/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_638/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_638/strided_slice_3StridedSlice4lstm_638/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_638/strided_slice_3/stack:output:0)lstm_638/strided_slice_3/stack_1:output:0)lstm_638/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_638/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_638/transpose_1	Transpose4lstm_638/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_638/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_638/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_212/MatMul/ReadVariableOpReadVariableOp(dense_212_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_212/MatMulMatMul!lstm_638/strided_slice_3:output:0'dense_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_212/BiasAdd/ReadVariableOpReadVariableOp)dense_212_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_212/BiasAddBiasAdddense_212/MatMul:product:0(dense_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_212/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_212/BiasAdd/ReadVariableOp ^dense_212/MatMul/ReadVariableOp.^lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp-^lstm_636/lstm_cell_606/MatMul/ReadVariableOp/^lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp^lstm_636/while.^lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp-^lstm_637/lstm_cell_607/MatMul/ReadVariableOp/^lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp^lstm_637/while.^lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp-^lstm_638/lstm_cell_608/MatMul/ReadVariableOp/^lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp^lstm_638/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_212/BiasAdd/ReadVariableOp dense_212/BiasAdd/ReadVariableOp2B
dense_212/MatMul/ReadVariableOpdense_212/MatMul/ReadVariableOp2^
-lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp-lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp2\
,lstm_636/lstm_cell_606/MatMul/ReadVariableOp,lstm_636/lstm_cell_606/MatMul/ReadVariableOp2`
.lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp.lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp2 
lstm_636/whilelstm_636/while2^
-lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp-lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp2\
,lstm_637/lstm_cell_607/MatMul/ReadVariableOp,lstm_637/lstm_cell_607/MatMul/ReadVariableOp2`
.lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp.lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp2 
lstm_637/whilelstm_637/while2^
-lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp-lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp2\
,lstm_638/lstm_cell_608/MatMul/ReadVariableOp,lstm_638/lstm_cell_608/MatMul/ReadVariableOp2`
.lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp.lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp2 
lstm_638/whilelstm_638/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_3683842
file_prefix3
!assignvariableop_dense_212_kernel:
/
!assignvariableop_1_dense_212_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_636_lstm_cell_636_kernel:	�M
:assignvariableop_8_lstm_636_lstm_cell_636_recurrent_kernel:	d�=
.assignvariableop_9_lstm_636_lstm_cell_636_bias:	�D
1assignvariableop_10_lstm_637_lstm_cell_637_kernel:	d�N
;assignvariableop_11_lstm_637_lstm_cell_637_recurrent_kernel:	2�>
/assignvariableop_12_lstm_637_lstm_cell_637_bias:	�C
1assignvariableop_13_lstm_638_lstm_cell_638_kernel:2(M
;assignvariableop_14_lstm_638_lstm_cell_638_recurrent_kernel:
(=
/assignvariableop_15_lstm_638_lstm_cell_638_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_212_kernel_m:
7
)assignvariableop_19_adam_dense_212_bias_m:K
8assignvariableop_20_adam_lstm_636_lstm_cell_636_kernel_m:	�U
Bassignvariableop_21_adam_lstm_636_lstm_cell_636_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_636_lstm_cell_636_bias_m:	�K
8assignvariableop_23_adam_lstm_637_lstm_cell_637_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_637_lstm_cell_637_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_637_lstm_cell_637_bias_m:	�J
8assignvariableop_26_adam_lstm_638_lstm_cell_638_kernel_m:2(T
Bassignvariableop_27_adam_lstm_638_lstm_cell_638_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_638_lstm_cell_638_bias_m:(=
+assignvariableop_29_adam_dense_212_kernel_v:
7
)assignvariableop_30_adam_dense_212_bias_v:K
8assignvariableop_31_adam_lstm_636_lstm_cell_636_kernel_v:	�U
Bassignvariableop_32_adam_lstm_636_lstm_cell_636_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_636_lstm_cell_636_bias_v:	�K
8assignvariableop_34_adam_lstm_637_lstm_cell_637_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_637_lstm_cell_637_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_637_lstm_cell_637_bias_v:	�J
8assignvariableop_37_adam_lstm_638_lstm_cell_638_kernel_v:2(T
Bassignvariableop_38_adam_lstm_638_lstm_cell_638_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_638_lstm_cell_638_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_212_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_212_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_636_lstm_cell_636_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_636_lstm_cell_636_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_636_lstm_cell_636_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_637_lstm_cell_637_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_637_lstm_cell_637_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_637_lstm_cell_637_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_638_lstm_cell_638_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_638_lstm_cell_638_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_638_lstm_cell_638_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_212_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_212_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_636_lstm_cell_636_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_636_lstm_cell_636_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_636_lstm_cell_636_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_637_lstm_cell_637_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_637_lstm_cell_637_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_637_lstm_cell_637_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_638_lstm_cell_638_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_638_lstm_cell_638_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_638_lstm_cell_638_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_212_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_212_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_636_lstm_cell_636_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_636_lstm_cell_636_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_636_lstm_cell_636_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_637_lstm_cell_637_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_637_lstm_cell_637_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_637_lstm_cell_637_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_638_lstm_cell_638_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_638_lstm_cell_638_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_638_lstm_cell_638_bias_vIdentity_39:output:0"/device:CPU:0*
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
�J
�
E__inference_lstm_638_layer_call_and_return_conditional_losses_3683113

inputs>
,lstm_cell_608_matmul_readvariableop_resource:2(@
.lstm_cell_608_matmul_1_readvariableop_resource:
(;
-lstm_cell_608_biasadd_readvariableop_resource:(
identity��$lstm_cell_608/BiasAdd/ReadVariableOp�#lstm_cell_608/MatMul/ReadVariableOp�%lstm_cell_608/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_608/MatMul/ReadVariableOpReadVariableOp,lstm_cell_608_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_608/MatMulMatMulstrided_slice_2:output:0+lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_608_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_608/MatMul_1MatMulzeros:output:0-lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_608/addAddV2lstm_cell_608/MatMul:product:0 lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_608_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_608/BiasAddBiasAddlstm_cell_608/add:z:0,lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_608/splitSplit&lstm_cell_608/split/split_dim:output:0lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_608/SigmoidSigmoidlstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_1Sigmoidlstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_608/mulMullstm_cell_608/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_608/ReluRelulstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_1Mullstm_cell_608/Sigmoid:y:0 lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_608/add_1AddV2lstm_cell_608/mul:z:0lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_2Sigmoidlstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_608/Relu_1Relulstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_2Mullstm_cell_608/Sigmoid_2:y:0"lstm_cell_608/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_608_matmul_readvariableop_resource.lstm_cell_608_matmul_1_readvariableop_resource-lstm_cell_608_biasadd_readvariableop_resource*
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
while_body_3683029*
condR
while_cond_3683028*K
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
NoOpNoOp%^lstm_cell_608/BiasAdd/ReadVariableOp$^lstm_cell_608/MatMul/ReadVariableOp&^lstm_cell_608/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_608/BiasAdd/ReadVariableOp$lstm_cell_608/BiasAdd/ReadVariableOp2J
#lstm_cell_608/MatMul/ReadVariableOp#lstm_cell_608/MatMul/ReadVariableOp2N
%lstm_cell_608/MatMul_1/ReadVariableOp%lstm_cell_608/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_3683171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3683171___redundant_placeholder05
1while_while_cond_3683171___redundant_placeholder15
1while_while_cond_3683171___redundant_placeholder25
1while_while_cond_3683171___redundant_placeholder3
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
*__inference_lstm_636_layer_call_fn_3681441

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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3679439s
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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3679153

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
while_cond_3681796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3681796___redundant_placeholder05
1while_while_cond_3681796___redundant_placeholder15
1while_while_cond_3681796___redundant_placeholder25
1while_while_cond_3681796___redundant_placeholder3
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
�
F__inference_dense_212_layer_call_and_return_conditional_losses_3683275

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
�#
�
while_body_3678512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_606_3678536_0:	�0
while_lstm_cell_606_3678538_0:	d�,
while_lstm_cell_606_3678540_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_606_3678536:	�.
while_lstm_cell_606_3678538:	d�*
while_lstm_cell_606_3678540:	���+while/lstm_cell_606/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_606/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_606_3678536_0while_lstm_cell_606_3678538_0while_lstm_cell_606_3678540_0*
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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3678453�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_606/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_606/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_606/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_606/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_606_3678536while_lstm_cell_606_3678536_0"<
while_lstm_cell_606_3678538while_lstm_cell_606_3678538_0"<
while_lstm_cell_606_3678540while_lstm_cell_606_3678540_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_606/StatefulPartitionedCall+while/lstm_cell_606/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_637_layer_call_fn_3682035
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3678740|
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
�J
�
E__inference_lstm_638_layer_call_and_return_conditional_losses_3683256

inputs>
,lstm_cell_608_matmul_readvariableop_resource:2(@
.lstm_cell_608_matmul_1_readvariableop_resource:
(;
-lstm_cell_608_biasadd_readvariableop_resource:(
identity��$lstm_cell_608/BiasAdd/ReadVariableOp�#lstm_cell_608/MatMul/ReadVariableOp�%lstm_cell_608/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_608/MatMul/ReadVariableOpReadVariableOp,lstm_cell_608_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_608/MatMulMatMulstrided_slice_2:output:0+lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_608_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_608/MatMul_1MatMulzeros:output:0-lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_608/addAddV2lstm_cell_608/MatMul:product:0 lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_608_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_608/BiasAddBiasAddlstm_cell_608/add:z:0,lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_608/splitSplit&lstm_cell_608/split/split_dim:output:0lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_608/SigmoidSigmoidlstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_1Sigmoidlstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_608/mulMullstm_cell_608/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_608/ReluRelulstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_1Mullstm_cell_608/Sigmoid:y:0 lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_608/add_1AddV2lstm_cell_608/mul:z:0lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_2Sigmoidlstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_608/Relu_1Relulstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_2Mullstm_cell_608/Sigmoid_2:y:0"lstm_cell_608/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_608_matmul_readvariableop_resource.lstm_cell_608_matmul_1_readvariableop_resource-lstm_cell_608_biasadd_readvariableop_resource*
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
while_body_3683172*
condR
while_cond_3683171*K
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
NoOpNoOp%^lstm_cell_608/BiasAdd/ReadVariableOp$^lstm_cell_608/MatMul/ReadVariableOp&^lstm_cell_608/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_608/BiasAdd/ReadVariableOp$lstm_cell_608/BiasAdd/ReadVariableOp2J
#lstm_cell_608/MatMul/ReadVariableOp#lstm_cell_608/MatMul/ReadVariableOp2N
%lstm_cell_608/MatMul_1/ReadVariableOp%lstm_cell_608/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_3679020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3679020___redundant_placeholder05
1while_while_cond_3679020___redundant_placeholder15
1while_while_cond_3679020___redundant_placeholder25
1while_while_cond_3679020___redundant_placeholder3
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
�
�
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3679007

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
/__inference_lstm_cell_607_layer_call_fn_3683407

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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3678803o
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
while_body_3679212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_608_3679236_0:2(/
while_lstm_cell_608_3679238_0:
(+
while_lstm_cell_608_3679240_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_608_3679236:2(-
while_lstm_cell_608_3679238:
()
while_lstm_cell_608_3679240:(��+while/lstm_cell_608/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_608/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_608_3679236_0while_lstm_cell_608_3679238_0while_lstm_cell_608_3679240_0*
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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3679153�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_608/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_608/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_608/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_608/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_608_3679236while_lstm_cell_608_3679236_0"<
while_lstm_cell_608_3679238while_lstm_cell_608_3679238_0"<
while_lstm_cell_608_3679240while_lstm_cell_608_3679240_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_608/StatefulPartitionedCall+while/lstm_cell_608/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_212_lstm_636_while_body_3677872L
Hsequential_212_lstm_636_while_sequential_212_lstm_636_while_loop_counterR
Nsequential_212_lstm_636_while_sequential_212_lstm_636_while_maximum_iterations-
)sequential_212_lstm_636_while_placeholder/
+sequential_212_lstm_636_while_placeholder_1/
+sequential_212_lstm_636_while_placeholder_2/
+sequential_212_lstm_636_while_placeholder_3K
Gsequential_212_lstm_636_while_sequential_212_lstm_636_strided_slice_1_0�
�sequential_212_lstm_636_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_636_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_212_lstm_636_while_lstm_cell_606_matmul_readvariableop_resource_0:	�a
Nsequential_212_lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource_0:	d�\
Msequential_212_lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource_0:	�*
&sequential_212_lstm_636_while_identity,
(sequential_212_lstm_636_while_identity_1,
(sequential_212_lstm_636_while_identity_2,
(sequential_212_lstm_636_while_identity_3,
(sequential_212_lstm_636_while_identity_4,
(sequential_212_lstm_636_while_identity_5I
Esequential_212_lstm_636_while_sequential_212_lstm_636_strided_slice_1�
�sequential_212_lstm_636_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_636_tensorarrayunstack_tensorlistfromtensor]
Jsequential_212_lstm_636_while_lstm_cell_606_matmul_readvariableop_resource:	�_
Lsequential_212_lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource:	d�Z
Ksequential_212_lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource:	���Bsequential_212/lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp�Asequential_212/lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp�Csequential_212/lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp�
Osequential_212/lstm_636/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_212/lstm_636/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_212_lstm_636_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_636_tensorarrayunstack_tensorlistfromtensor_0)sequential_212_lstm_636_while_placeholderXsequential_212/lstm_636/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Asequential_212/lstm_636/while/lstm_cell_606/MatMul/ReadVariableOpReadVariableOpLsequential_212_lstm_636_while_lstm_cell_606_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
2sequential_212/lstm_636/while/lstm_cell_606/MatMulMatMulHsequential_212/lstm_636/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_212/lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_212/lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOpNsequential_212_lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
4sequential_212/lstm_636/while/lstm_cell_606/MatMul_1MatMul+sequential_212_lstm_636_while_placeholder_2Ksequential_212/lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_212/lstm_636/while/lstm_cell_606/addAddV2<sequential_212/lstm_636/while/lstm_cell_606/MatMul:product:0>sequential_212/lstm_636/while/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_212/lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOpMsequential_212_lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_212/lstm_636/while/lstm_cell_606/BiasAddBiasAdd3sequential_212/lstm_636/while/lstm_cell_606/add:z:0Jsequential_212/lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_212/lstm_636/while/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_212/lstm_636/while/lstm_cell_606/splitSplitDsequential_212/lstm_636/while/lstm_cell_606/split/split_dim:output:0<sequential_212/lstm_636/while/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
3sequential_212/lstm_636/while/lstm_cell_606/SigmoidSigmoid:sequential_212/lstm_636/while/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d�
5sequential_212/lstm_636/while/lstm_cell_606/Sigmoid_1Sigmoid:sequential_212/lstm_636/while/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
/sequential_212/lstm_636/while/lstm_cell_606/mulMul9sequential_212/lstm_636/while/lstm_cell_606/Sigmoid_1:y:0+sequential_212_lstm_636_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential_212/lstm_636/while/lstm_cell_606/ReluRelu:sequential_212/lstm_636/while/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
1sequential_212/lstm_636/while/lstm_cell_606/mul_1Mul7sequential_212/lstm_636/while/lstm_cell_606/Sigmoid:y:0>sequential_212/lstm_636/while/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
1sequential_212/lstm_636/while/lstm_cell_606/add_1AddV23sequential_212/lstm_636/while/lstm_cell_606/mul:z:05sequential_212/lstm_636/while/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d�
5sequential_212/lstm_636/while/lstm_cell_606/Sigmoid_2Sigmoid:sequential_212/lstm_636/while/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������d�
2sequential_212/lstm_636/while/lstm_cell_606/Relu_1Relu5sequential_212/lstm_636/while/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
1sequential_212/lstm_636/while/lstm_cell_606/mul_2Mul9sequential_212/lstm_636/while/lstm_cell_606/Sigmoid_2:y:0@sequential_212/lstm_636/while/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Bsequential_212/lstm_636/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_212_lstm_636_while_placeholder_1)sequential_212_lstm_636_while_placeholder5sequential_212/lstm_636/while/lstm_cell_606/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_212/lstm_636/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_212/lstm_636/while/addAddV2)sequential_212_lstm_636_while_placeholder,sequential_212/lstm_636/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_212/lstm_636/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_212/lstm_636/while/add_1AddV2Hsequential_212_lstm_636_while_sequential_212_lstm_636_while_loop_counter.sequential_212/lstm_636/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_212/lstm_636/while/IdentityIdentity'sequential_212/lstm_636/while/add_1:z:0#^sequential_212/lstm_636/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_636/while/Identity_1IdentityNsequential_212_lstm_636_while_sequential_212_lstm_636_while_maximum_iterations#^sequential_212/lstm_636/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_636/while/Identity_2Identity%sequential_212/lstm_636/while/add:z:0#^sequential_212/lstm_636/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_636/while/Identity_3IdentityRsequential_212/lstm_636/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_212/lstm_636/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_636/while/Identity_4Identity5sequential_212/lstm_636/while/lstm_cell_606/mul_2:z:0#^sequential_212/lstm_636/while/NoOp*
T0*'
_output_shapes
:���������d�
(sequential_212/lstm_636/while/Identity_5Identity5sequential_212/lstm_636/while/lstm_cell_606/add_1:z:0#^sequential_212/lstm_636/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential_212/lstm_636/while/NoOpNoOpC^sequential_212/lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOpB^sequential_212/lstm_636/while/lstm_cell_606/MatMul/ReadVariableOpD^sequential_212/lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_212_lstm_636_while_identity/sequential_212/lstm_636/while/Identity:output:0"]
(sequential_212_lstm_636_while_identity_11sequential_212/lstm_636/while/Identity_1:output:0"]
(sequential_212_lstm_636_while_identity_21sequential_212/lstm_636/while/Identity_2:output:0"]
(sequential_212_lstm_636_while_identity_31sequential_212/lstm_636/while/Identity_3:output:0"]
(sequential_212_lstm_636_while_identity_41sequential_212/lstm_636/while/Identity_4:output:0"]
(sequential_212_lstm_636_while_identity_51sequential_212/lstm_636/while/Identity_5:output:0"�
Ksequential_212_lstm_636_while_lstm_cell_606_biasadd_readvariableop_resourceMsequential_212_lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource_0"�
Lsequential_212_lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resourceNsequential_212_lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource_0"�
Jsequential_212_lstm_636_while_lstm_cell_606_matmul_readvariableop_resourceLsequential_212_lstm_636_while_lstm_cell_606_matmul_readvariableop_resource_0"�
Esequential_212_lstm_636_while_sequential_212_lstm_636_strided_slice_1Gsequential_212_lstm_636_while_sequential_212_lstm_636_strided_slice_1_0"�
�sequential_212_lstm_636_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_636_tensorarrayunstack_tensorlistfromtensor�sequential_212_lstm_636_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_636_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
Bsequential_212/lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOpBsequential_212/lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp2�
Asequential_212/lstm_636/while/lstm_cell_606/MatMul/ReadVariableOpAsequential_212/lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp2�
Csequential_212/lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOpCsequential_212/lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3680200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3680200___redundant_placeholder05
1while_while_cond_3680200___redundant_placeholder15
1while_while_cond_3680200___redundant_placeholder25
1while_while_cond_3680200___redundant_placeholder3
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
while_body_3682743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_608_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_608_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_608_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_608_matmul_readvariableop_resource:2(F
4while_lstm_cell_608_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_608_biasadd_readvariableop_resource:(��*while/lstm_cell_608/BiasAdd/ReadVariableOp�)while/lstm_cell_608/MatMul/ReadVariableOp�+while/lstm_cell_608/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_608/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_608_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_608/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_608_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_608/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_608/addAddV2$while/lstm_cell_608/MatMul:product:0&while/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_608_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_608/BiasAddBiasAddwhile/lstm_cell_608/add:z:02while/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_608/splitSplit,while/lstm_cell_608/split/split_dim:output:0$while/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_608/SigmoidSigmoid"while/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_1Sigmoid"while/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mulMul!while/lstm_cell_608/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_608/ReluRelu"while/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_1Mulwhile/lstm_cell_608/Sigmoid:y:0&while/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/add_1AddV2while/lstm_cell_608/mul:z:0while/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_2Sigmoid"while/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_608/Relu_1Reluwhile/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_2Mul!while/lstm_cell_608/Sigmoid_2:y:0(while/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_608/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_608/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_608/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_608/BiasAdd/ReadVariableOp*^while/lstm_cell_608/MatMul/ReadVariableOp,^while/lstm_cell_608/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_608_biasadd_readvariableop_resource5while_lstm_cell_608_biasadd_readvariableop_resource_0"n
4while_lstm_cell_608_matmul_1_readvariableop_resource6while_lstm_cell_608_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_608_matmul_readvariableop_resource4while_lstm_cell_608_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_608/BiasAdd/ReadVariableOp*while/lstm_cell_608/BiasAdd/ReadVariableOp2V
)while/lstm_cell_608/MatMul/ReadVariableOp)while/lstm_cell_608/MatMul/ReadVariableOp2Z
+while/lstm_cell_608/MatMul_1/ReadVariableOp+while/lstm_cell_608/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_607_layer_call_fn_3683390

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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3678657o
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
�
E__inference_lstm_637_layer_call_and_return_conditional_losses_3678931

inputs(
lstm_cell_607_3678849:	d�(
lstm_cell_607_3678851:	2�$
lstm_cell_607_3678853:	�
identity��%lstm_cell_607/StatefulPartitionedCall�while;
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
%lstm_cell_607/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_607_3678849lstm_cell_607_3678851lstm_cell_607_3678853*
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3678803n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_607_3678849lstm_cell_607_3678851lstm_cell_607_3678853*
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
while_body_3678862*
condR
while_cond_3678861*K
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
NoOpNoOp&^lstm_cell_607/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_607/StatefulPartitionedCall%lstm_cell_607/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
while_cond_3679211
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3679211___redundant_placeholder05
1while_while_cond_3679211___redundant_placeholder15
1while_while_cond_3679211___redundant_placeholder25
1while_while_cond_3679211___redundant_placeholder3
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
*sequential_212_lstm_637_while_cond_3678010L
Hsequential_212_lstm_637_while_sequential_212_lstm_637_while_loop_counterR
Nsequential_212_lstm_637_while_sequential_212_lstm_637_while_maximum_iterations-
)sequential_212_lstm_637_while_placeholder/
+sequential_212_lstm_637_while_placeholder_1/
+sequential_212_lstm_637_while_placeholder_2/
+sequential_212_lstm_637_while_placeholder_3N
Jsequential_212_lstm_637_while_less_sequential_212_lstm_637_strided_slice_1e
asequential_212_lstm_637_while_sequential_212_lstm_637_while_cond_3678010___redundant_placeholder0e
asequential_212_lstm_637_while_sequential_212_lstm_637_while_cond_3678010___redundant_placeholder1e
asequential_212_lstm_637_while_sequential_212_lstm_637_while_cond_3678010___redundant_placeholder2e
asequential_212_lstm_637_while_sequential_212_lstm_637_while_cond_3678010___redundant_placeholder3*
&sequential_212_lstm_637_while_identity
�
"sequential_212/lstm_637/while/LessLess)sequential_212_lstm_637_while_placeholderJsequential_212_lstm_637_while_less_sequential_212_lstm_637_strided_slice_1*
T0*
_output_shapes
: {
&sequential_212/lstm_637/while/IdentityIdentity&sequential_212/lstm_637/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_212_lstm_637_while_identity/sequential_212/lstm_637/while/Identity:output:0*(
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
while_cond_3678670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3678670___redundant_placeholder05
1while_while_cond_3678670___redundant_placeholder15
1while_while_cond_3678670___redundant_placeholder25
1while_while_cond_3678670___redundant_placeholder3
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
while_body_3678671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_607_3678695_0:	d�0
while_lstm_cell_607_3678697_0:	2�,
while_lstm_cell_607_3678699_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_607_3678695:	d�.
while_lstm_cell_607_3678697:	2�*
while_lstm_cell_607_3678699:	���+while/lstm_cell_607/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_607/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_607_3678695_0while_lstm_cell_607_3678697_0while_lstm_cell_607_3678699_0*
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3678657�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_607/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_607/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_607/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_607/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_607_3678695while_lstm_cell_607_3678695_0"<
while_lstm_cell_607_3678697while_lstm_cell_607_3678697_0"<
while_lstm_cell_607_3678699while_lstm_cell_607_3678699_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_607/StatefulPartitionedCall+while/lstm_cell_607/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�
�
+__inference_dense_212_layer_call_fn_3683265

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
F__inference_dense_212_layer_call_and_return_conditional_losses_3679757o
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
�

�
0__inference_sequential_212_layer_call_fn_3680527

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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3679764o
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3678390

inputs(
lstm_cell_606_3678308:	�(
lstm_cell_606_3678310:	d�$
lstm_cell_606_3678312:	�
identity��%lstm_cell_606/StatefulPartitionedCall�while;
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
%lstm_cell_606/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_606_3678308lstm_cell_606_3678310lstm_cell_606_3678312*
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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3678307n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_606_3678308lstm_cell_606_3678310lstm_cell_606_3678312*
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
while_body_3678321*
condR
while_cond_3678320*K
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
NoOpNoOp&^lstm_cell_606/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_606/StatefulPartitionedCall%lstm_cell_606/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�#
�
while_body_3678862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_607_3678886_0:	d�0
while_lstm_cell_607_3678888_0:	2�,
while_lstm_cell_607_3678890_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_607_3678886:	d�.
while_lstm_cell_607_3678888:	2�*
while_lstm_cell_607_3678890:	���+while/lstm_cell_607/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_607/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_607_3678886_0while_lstm_cell_607_3678888_0while_lstm_cell_607_3678890_0*
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3678803�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_607/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_607/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_607/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_607/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_607_3678886while_lstm_cell_607_3678886_0"<
while_lstm_cell_607_3678888while_lstm_cell_607_3678888_0"<
while_lstm_cell_607_3678890while_lstm_cell_607_3678890_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_607/StatefulPartitionedCall+while/lstm_cell_607/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3681881

inputs?
,lstm_cell_606_matmul_readvariableop_resource:	�A
.lstm_cell_606_matmul_1_readvariableop_resource:	d�<
-lstm_cell_606_biasadd_readvariableop_resource:	�
identity��$lstm_cell_606/BiasAdd/ReadVariableOp�#lstm_cell_606/MatMul/ReadVariableOp�%lstm_cell_606/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_606/MatMul/ReadVariableOpReadVariableOp,lstm_cell_606_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_606/MatMulMatMulstrided_slice_2:output:0+lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_606_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_606/MatMul_1MatMulzeros:output:0-lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_606/addAddV2lstm_cell_606/MatMul:product:0 lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_606_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_606/BiasAddBiasAddlstm_cell_606/add:z:0,lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_606/splitSplit&lstm_cell_606/split/split_dim:output:0lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_606/SigmoidSigmoidlstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_1Sigmoidlstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_606/mulMullstm_cell_606/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_606/ReluRelulstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_1Mullstm_cell_606/Sigmoid:y:0 lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_606/add_1AddV2lstm_cell_606/mul:z:0lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_2Sigmoidlstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_606/Relu_1Relulstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_2Mullstm_cell_606/Sigmoid_2:y:0"lstm_cell_606/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_606_matmul_readvariableop_resource.lstm_cell_606_matmul_1_readvariableop_resource-lstm_cell_606_biasadd_readvariableop_resource*
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
while_body_3681797*
condR
while_cond_3681796*K
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
NoOpNoOp%^lstm_cell_606/BiasAdd/ReadVariableOp$^lstm_cell_606/MatMul/ReadVariableOp&^lstm_cell_606/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_606/BiasAdd/ReadVariableOp$lstm_cell_606/BiasAdd/ReadVariableOp2J
#lstm_cell_606/MatMul/ReadVariableOp#lstm_cell_606/MatMul/ReadVariableOp2N
%lstm_cell_606/MatMul_1/ReadVariableOp%lstm_cell_606/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_637_layer_call_fn_3682046
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3678931|
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

�
0__inference_sequential_212_layer_call_fn_3680405
lstm_636_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_636_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680353o
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
_user_specified_namelstm_636_input
�

�
lstm_638_while_cond_3680890.
*lstm_638_while_lstm_638_while_loop_counter4
0lstm_638_while_lstm_638_while_maximum_iterations
lstm_638_while_placeholder 
lstm_638_while_placeholder_1 
lstm_638_while_placeholder_2 
lstm_638_while_placeholder_30
,lstm_638_while_less_lstm_638_strided_slice_1G
Clstm_638_while_lstm_638_while_cond_3680890___redundant_placeholder0G
Clstm_638_while_lstm_638_while_cond_3680890___redundant_placeholder1G
Clstm_638_while_lstm_638_while_cond_3680890___redundant_placeholder2G
Clstm_638_while_lstm_638_while_cond_3680890___redundant_placeholder3
lstm_638_while_identity
�
lstm_638/while/LessLesslstm_638_while_placeholder,lstm_638_while_less_lstm_638_strided_slice_1*
T0*
_output_shapes
: ]
lstm_638/while/IdentityIdentitylstm_638/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_638_while_identity lstm_638/while/Identity:output:0*(
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3683471

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
�W
�
 __inference__traced_save_3683712
file_prefix/
+savev2_dense_212_kernel_read_readvariableop-
)savev2_dense_212_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_636_lstm_cell_636_kernel_read_readvariableopF
Bsavev2_lstm_636_lstm_cell_636_recurrent_kernel_read_readvariableop:
6savev2_lstm_636_lstm_cell_636_bias_read_readvariableop<
8savev2_lstm_637_lstm_cell_637_kernel_read_readvariableopF
Bsavev2_lstm_637_lstm_cell_637_recurrent_kernel_read_readvariableop:
6savev2_lstm_637_lstm_cell_637_bias_read_readvariableop<
8savev2_lstm_638_lstm_cell_638_kernel_read_readvariableopF
Bsavev2_lstm_638_lstm_cell_638_recurrent_kernel_read_readvariableop:
6savev2_lstm_638_lstm_cell_638_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_212_kernel_m_read_readvariableop4
0savev2_adam_dense_212_bias_m_read_readvariableopC
?savev2_adam_lstm_636_lstm_cell_636_kernel_m_read_readvariableopM
Isavev2_adam_lstm_636_lstm_cell_636_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_636_lstm_cell_636_bias_m_read_readvariableopC
?savev2_adam_lstm_637_lstm_cell_637_kernel_m_read_readvariableopM
Isavev2_adam_lstm_637_lstm_cell_637_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_637_lstm_cell_637_bias_m_read_readvariableopC
?savev2_adam_lstm_638_lstm_cell_638_kernel_m_read_readvariableopM
Isavev2_adam_lstm_638_lstm_cell_638_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_638_lstm_cell_638_bias_m_read_readvariableop6
2savev2_adam_dense_212_kernel_v_read_readvariableop4
0savev2_adam_dense_212_bias_v_read_readvariableopC
?savev2_adam_lstm_636_lstm_cell_636_kernel_v_read_readvariableopM
Isavev2_adam_lstm_636_lstm_cell_636_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_636_lstm_cell_636_bias_v_read_readvariableopC
?savev2_adam_lstm_637_lstm_cell_637_kernel_v_read_readvariableopM
Isavev2_adam_lstm_637_lstm_cell_637_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_637_lstm_cell_637_bias_v_read_readvariableopC
?savev2_adam_lstm_638_lstm_cell_638_kernel_v_read_readvariableopM
Isavev2_adam_lstm_638_lstm_cell_638_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_638_lstm_cell_638_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_212_kernel_read_readvariableop)savev2_dense_212_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_636_lstm_cell_636_kernel_read_readvariableopBsavev2_lstm_636_lstm_cell_636_recurrent_kernel_read_readvariableop6savev2_lstm_636_lstm_cell_636_bias_read_readvariableop8savev2_lstm_637_lstm_cell_637_kernel_read_readvariableopBsavev2_lstm_637_lstm_cell_637_recurrent_kernel_read_readvariableop6savev2_lstm_637_lstm_cell_637_bias_read_readvariableop8savev2_lstm_638_lstm_cell_638_kernel_read_readvariableopBsavev2_lstm_638_lstm_cell_638_recurrent_kernel_read_readvariableop6savev2_lstm_638_lstm_cell_638_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_212_kernel_m_read_readvariableop0savev2_adam_dense_212_bias_m_read_readvariableop?savev2_adam_lstm_636_lstm_cell_636_kernel_m_read_readvariableopIsavev2_adam_lstm_636_lstm_cell_636_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_636_lstm_cell_636_bias_m_read_readvariableop?savev2_adam_lstm_637_lstm_cell_637_kernel_m_read_readvariableopIsavev2_adam_lstm_637_lstm_cell_637_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_637_lstm_cell_637_bias_m_read_readvariableop?savev2_adam_lstm_638_lstm_cell_638_kernel_m_read_readvariableopIsavev2_adam_lstm_638_lstm_cell_638_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_638_lstm_cell_638_bias_m_read_readvariableop2savev2_adam_dense_212_kernel_v_read_readvariableop0savev2_adam_dense_212_bias_v_read_readvariableop?savev2_adam_lstm_636_lstm_cell_636_kernel_v_read_readvariableopIsavev2_adam_lstm_636_lstm_cell_636_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_636_lstm_cell_636_bias_v_read_readvariableop?savev2_adam_lstm_637_lstm_cell_637_kernel_v_read_readvariableopIsavev2_adam_lstm_637_lstm_cell_637_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_637_lstm_cell_637_bias_v_read_readvariableop?savev2_adam_lstm_638_lstm_cell_638_kernel_v_read_readvariableopIsavev2_adam_lstm_638_lstm_cell_638_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_638_lstm_cell_638_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_3682413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_607_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_607_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_607_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_607_matmul_readvariableop_resource:	d�G
4while_lstm_cell_607_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_607_biasadd_readvariableop_resource:	���*while/lstm_cell_607/BiasAdd/ReadVariableOp�)while/lstm_cell_607/MatMul/ReadVariableOp�+while/lstm_cell_607/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_607/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_607_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_607/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_607_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_607/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_607/addAddV2$while/lstm_cell_607/MatMul:product:0&while/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_607_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_607/BiasAddBiasAddwhile/lstm_cell_607/add:z:02while/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_607/splitSplit,while/lstm_cell_607/split/split_dim:output:0$while/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_607/SigmoidSigmoid"while/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_1Sigmoid"while/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mulMul!while/lstm_cell_607/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_607/ReluRelu"while/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_1Mulwhile/lstm_cell_607/Sigmoid:y:0&while/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/add_1AddV2while/lstm_cell_607/mul:z:0while/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_2Sigmoid"while/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_607/Relu_1Reluwhile/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_2Mul!while/lstm_cell_607/Sigmoid_2:y:0(while/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_607/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_607/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_607/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_607/BiasAdd/ReadVariableOp*^while/lstm_cell_607/MatMul/ReadVariableOp,^while/lstm_cell_607/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_607_biasadd_readvariableop_resource5while_lstm_cell_607_biasadd_readvariableop_resource_0"n
4while_lstm_cell_607_matmul_1_readvariableop_resource6while_lstm_cell_607_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_607_matmul_readvariableop_resource4while_lstm_cell_607_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_607/BiasAdd/ReadVariableOp*while/lstm_cell_607/BiasAdd/ReadVariableOp2V
)while/lstm_cell_607/MatMul/ReadVariableOp)while/lstm_cell_607/MatMul/ReadVariableOp2Z
+while/lstm_cell_607/MatMul_1/ReadVariableOp+while/lstm_cell_607/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3682556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_607_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_607_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_607_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_607_matmul_readvariableop_resource:	d�G
4while_lstm_cell_607_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_607_biasadd_readvariableop_resource:	���*while/lstm_cell_607/BiasAdd/ReadVariableOp�)while/lstm_cell_607/MatMul/ReadVariableOp�+while/lstm_cell_607/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_607/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_607_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_607/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_607_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_607/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_607/addAddV2$while/lstm_cell_607/MatMul:product:0&while/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_607_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_607/BiasAddBiasAddwhile/lstm_cell_607/add:z:02while/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_607/splitSplit,while/lstm_cell_607/split/split_dim:output:0$while/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_607/SigmoidSigmoid"while/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_1Sigmoid"while/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mulMul!while/lstm_cell_607/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_607/ReluRelu"while/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_1Mulwhile/lstm_cell_607/Sigmoid:y:0&while/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/add_1AddV2while/lstm_cell_607/mul:z:0while/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_2Sigmoid"while/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_607/Relu_1Reluwhile/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_2Mul!while/lstm_cell_607/Sigmoid_2:y:0(while/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_607/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_607/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_607/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_607/BiasAdd/ReadVariableOp*^while/lstm_cell_607/MatMul/ReadVariableOp,^while/lstm_cell_607/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_607_biasadd_readvariableop_resource5while_lstm_cell_607_biasadd_readvariableop_resource_0"n
4while_lstm_cell_607_matmul_1_readvariableop_resource6while_lstm_cell_607_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_607_matmul_readvariableop_resource4while_lstm_cell_607_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_607/BiasAdd/ReadVariableOp*while/lstm_cell_607/BiasAdd/ReadVariableOp2V
)while/lstm_cell_607/MatMul/ReadVariableOp)while/lstm_cell_607/MatMul/ReadVariableOp2Z
+while/lstm_cell_607/MatMul_1/ReadVariableOp+while/lstm_cell_607/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3680035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3680035___redundant_placeholder05
1while_while_cond_3680035___redundant_placeholder15
1while_while_cond_3680035___redundant_placeholder25
1while_while_cond_3680035___redundant_placeholder3
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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680981

inputsH
5lstm_636_lstm_cell_606_matmul_readvariableop_resource:	�J
7lstm_636_lstm_cell_606_matmul_1_readvariableop_resource:	d�E
6lstm_636_lstm_cell_606_biasadd_readvariableop_resource:	�H
5lstm_637_lstm_cell_607_matmul_readvariableop_resource:	d�J
7lstm_637_lstm_cell_607_matmul_1_readvariableop_resource:	2�E
6lstm_637_lstm_cell_607_biasadd_readvariableop_resource:	�G
5lstm_638_lstm_cell_608_matmul_readvariableop_resource:2(I
7lstm_638_lstm_cell_608_matmul_1_readvariableop_resource:
(D
6lstm_638_lstm_cell_608_biasadd_readvariableop_resource:(:
(dense_212_matmul_readvariableop_resource:
7
)dense_212_biasadd_readvariableop_resource:
identity�� dense_212/BiasAdd/ReadVariableOp�dense_212/MatMul/ReadVariableOp�-lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp�,lstm_636/lstm_cell_606/MatMul/ReadVariableOp�.lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp�lstm_636/while�-lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp�,lstm_637/lstm_cell_607/MatMul/ReadVariableOp�.lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp�lstm_637/while�-lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp�,lstm_638/lstm_cell_608/MatMul/ReadVariableOp�.lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp�lstm_638/whileD
lstm_636/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_636/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_636/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_636/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_636/strided_sliceStridedSlicelstm_636/Shape:output:0%lstm_636/strided_slice/stack:output:0'lstm_636/strided_slice/stack_1:output:0'lstm_636/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_636/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_636/zeros/packedPacklstm_636/strided_slice:output:0 lstm_636/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_636/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_636/zerosFilllstm_636/zeros/packed:output:0lstm_636/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_636/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_636/zeros_1/packedPacklstm_636/strided_slice:output:0"lstm_636/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_636/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_636/zeros_1Fill lstm_636/zeros_1/packed:output:0lstm_636/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_636/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_636/transpose	Transposeinputs lstm_636/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_636/Shape_1Shapelstm_636/transpose:y:0*
T0*
_output_shapes
:h
lstm_636/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_636/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_636/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_636/strided_slice_1StridedSlicelstm_636/Shape_1:output:0'lstm_636/strided_slice_1/stack:output:0)lstm_636/strided_slice_1/stack_1:output:0)lstm_636/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_636/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_636/TensorArrayV2TensorListReserve-lstm_636/TensorArrayV2/element_shape:output:0!lstm_636/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_636/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_636/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_636/transpose:y:0Glstm_636/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_636/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_636/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_636/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_636/strided_slice_2StridedSlicelstm_636/transpose:y:0'lstm_636/strided_slice_2/stack:output:0)lstm_636/strided_slice_2/stack_1:output:0)lstm_636/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_636/lstm_cell_606/MatMul/ReadVariableOpReadVariableOp5lstm_636_lstm_cell_606_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_636/lstm_cell_606/MatMulMatMul!lstm_636/strided_slice_2:output:04lstm_636/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_636/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp7lstm_636_lstm_cell_606_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_636/lstm_cell_606/MatMul_1MatMullstm_636/zeros:output:06lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_636/lstm_cell_606/addAddV2'lstm_636/lstm_cell_606/MatMul:product:0)lstm_636/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_636/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp6lstm_636_lstm_cell_606_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_636/lstm_cell_606/BiasAddBiasAddlstm_636/lstm_cell_606/add:z:05lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_636/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_636/lstm_cell_606/splitSplit/lstm_636/lstm_cell_606/split/split_dim:output:0'lstm_636/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_636/lstm_cell_606/SigmoidSigmoid%lstm_636/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_636/lstm_cell_606/Sigmoid_1Sigmoid%lstm_636/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_636/lstm_cell_606/mulMul$lstm_636/lstm_cell_606/Sigmoid_1:y:0lstm_636/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_636/lstm_cell_606/ReluRelu%lstm_636/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_636/lstm_cell_606/mul_1Mul"lstm_636/lstm_cell_606/Sigmoid:y:0)lstm_636/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_636/lstm_cell_606/add_1AddV2lstm_636/lstm_cell_606/mul:z:0 lstm_636/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_636/lstm_cell_606/Sigmoid_2Sigmoid%lstm_636/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_636/lstm_cell_606/Relu_1Relu lstm_636/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_636/lstm_cell_606/mul_2Mul$lstm_636/lstm_cell_606/Sigmoid_2:y:0+lstm_636/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_636/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_636/TensorArrayV2_1TensorListReserve/lstm_636/TensorArrayV2_1/element_shape:output:0!lstm_636/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_636/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_636/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_636/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_636/whileWhile$lstm_636/while/loop_counter:output:0*lstm_636/while/maximum_iterations:output:0lstm_636/time:output:0!lstm_636/TensorArrayV2_1:handle:0lstm_636/zeros:output:0lstm_636/zeros_1:output:0!lstm_636/strided_slice_1:output:0@lstm_636/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_636_lstm_cell_606_matmul_readvariableop_resource7lstm_636_lstm_cell_606_matmul_1_readvariableop_resource6lstm_636_lstm_cell_606_biasadd_readvariableop_resource*
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
lstm_636_while_body_3680613*'
condR
lstm_636_while_cond_3680612*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_636/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_636/TensorArrayV2Stack/TensorListStackTensorListStacklstm_636/while:output:3Blstm_636/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_636/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_636/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_636/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_636/strided_slice_3StridedSlice4lstm_636/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_636/strided_slice_3/stack:output:0)lstm_636/strided_slice_3/stack_1:output:0)lstm_636/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_636/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_636/transpose_1	Transpose4lstm_636/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_636/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_636/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_637/ShapeShapelstm_636/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_637/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_637/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_637/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_637/strided_sliceStridedSlicelstm_637/Shape:output:0%lstm_637/strided_slice/stack:output:0'lstm_637/strided_slice/stack_1:output:0'lstm_637/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_637/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_637/zeros/packedPacklstm_637/strided_slice:output:0 lstm_637/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_637/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_637/zerosFilllstm_637/zeros/packed:output:0lstm_637/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_637/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_637/zeros_1/packedPacklstm_637/strided_slice:output:0"lstm_637/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_637/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_637/zeros_1Fill lstm_637/zeros_1/packed:output:0lstm_637/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_637/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_637/transpose	Transposelstm_636/transpose_1:y:0 lstm_637/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_637/Shape_1Shapelstm_637/transpose:y:0*
T0*
_output_shapes
:h
lstm_637/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_637/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_637/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_637/strided_slice_1StridedSlicelstm_637/Shape_1:output:0'lstm_637/strided_slice_1/stack:output:0)lstm_637/strided_slice_1/stack_1:output:0)lstm_637/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_637/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_637/TensorArrayV2TensorListReserve-lstm_637/TensorArrayV2/element_shape:output:0!lstm_637/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_637/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_637/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_637/transpose:y:0Glstm_637/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_637/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_637/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_637/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_637/strided_slice_2StridedSlicelstm_637/transpose:y:0'lstm_637/strided_slice_2/stack:output:0)lstm_637/strided_slice_2/stack_1:output:0)lstm_637/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_637/lstm_cell_607/MatMul/ReadVariableOpReadVariableOp5lstm_637_lstm_cell_607_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_637/lstm_cell_607/MatMulMatMul!lstm_637/strided_slice_2:output:04lstm_637/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_637/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp7lstm_637_lstm_cell_607_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_637/lstm_cell_607/MatMul_1MatMullstm_637/zeros:output:06lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_637/lstm_cell_607/addAddV2'lstm_637/lstm_cell_607/MatMul:product:0)lstm_637/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_637/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp6lstm_637_lstm_cell_607_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_637/lstm_cell_607/BiasAddBiasAddlstm_637/lstm_cell_607/add:z:05lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_637/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_637/lstm_cell_607/splitSplit/lstm_637/lstm_cell_607/split/split_dim:output:0'lstm_637/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_637/lstm_cell_607/SigmoidSigmoid%lstm_637/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_637/lstm_cell_607/Sigmoid_1Sigmoid%lstm_637/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_637/lstm_cell_607/mulMul$lstm_637/lstm_cell_607/Sigmoid_1:y:0lstm_637/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_637/lstm_cell_607/ReluRelu%lstm_637/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_637/lstm_cell_607/mul_1Mul"lstm_637/lstm_cell_607/Sigmoid:y:0)lstm_637/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_637/lstm_cell_607/add_1AddV2lstm_637/lstm_cell_607/mul:z:0 lstm_637/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_637/lstm_cell_607/Sigmoid_2Sigmoid%lstm_637/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_637/lstm_cell_607/Relu_1Relu lstm_637/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_637/lstm_cell_607/mul_2Mul$lstm_637/lstm_cell_607/Sigmoid_2:y:0+lstm_637/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_637/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_637/TensorArrayV2_1TensorListReserve/lstm_637/TensorArrayV2_1/element_shape:output:0!lstm_637/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_637/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_637/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_637/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_637/whileWhile$lstm_637/while/loop_counter:output:0*lstm_637/while/maximum_iterations:output:0lstm_637/time:output:0!lstm_637/TensorArrayV2_1:handle:0lstm_637/zeros:output:0lstm_637/zeros_1:output:0!lstm_637/strided_slice_1:output:0@lstm_637/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_637_lstm_cell_607_matmul_readvariableop_resource7lstm_637_lstm_cell_607_matmul_1_readvariableop_resource6lstm_637_lstm_cell_607_biasadd_readvariableop_resource*
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
lstm_637_while_body_3680752*'
condR
lstm_637_while_cond_3680751*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_637/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_637/TensorArrayV2Stack/TensorListStackTensorListStacklstm_637/while:output:3Blstm_637/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_637/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_637/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_637/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_637/strided_slice_3StridedSlice4lstm_637/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_637/strided_slice_3/stack:output:0)lstm_637/strided_slice_3/stack_1:output:0)lstm_637/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_637/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_637/transpose_1	Transpose4lstm_637/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_637/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_637/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_638/ShapeShapelstm_637/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_638/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_638/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_638/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_638/strided_sliceStridedSlicelstm_638/Shape:output:0%lstm_638/strided_slice/stack:output:0'lstm_638/strided_slice/stack_1:output:0'lstm_638/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_638/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_638/zeros/packedPacklstm_638/strided_slice:output:0 lstm_638/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_638/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_638/zerosFilllstm_638/zeros/packed:output:0lstm_638/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_638/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_638/zeros_1/packedPacklstm_638/strided_slice:output:0"lstm_638/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_638/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_638/zeros_1Fill lstm_638/zeros_1/packed:output:0lstm_638/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_638/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_638/transpose	Transposelstm_637/transpose_1:y:0 lstm_638/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_638/Shape_1Shapelstm_638/transpose:y:0*
T0*
_output_shapes
:h
lstm_638/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_638/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_638/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_638/strided_slice_1StridedSlicelstm_638/Shape_1:output:0'lstm_638/strided_slice_1/stack:output:0)lstm_638/strided_slice_1/stack_1:output:0)lstm_638/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_638/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_638/TensorArrayV2TensorListReserve-lstm_638/TensorArrayV2/element_shape:output:0!lstm_638/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_638/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_638/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_638/transpose:y:0Glstm_638/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_638/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_638/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_638/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_638/strided_slice_2StridedSlicelstm_638/transpose:y:0'lstm_638/strided_slice_2/stack:output:0)lstm_638/strided_slice_2/stack_1:output:0)lstm_638/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_638/lstm_cell_608/MatMul/ReadVariableOpReadVariableOp5lstm_638_lstm_cell_608_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_638/lstm_cell_608/MatMulMatMul!lstm_638/strided_slice_2:output:04lstm_638/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_638/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp7lstm_638_lstm_cell_608_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_638/lstm_cell_608/MatMul_1MatMullstm_638/zeros:output:06lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_638/lstm_cell_608/addAddV2'lstm_638/lstm_cell_608/MatMul:product:0)lstm_638/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_638/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp6lstm_638_lstm_cell_608_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_638/lstm_cell_608/BiasAddBiasAddlstm_638/lstm_cell_608/add:z:05lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_638/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_638/lstm_cell_608/splitSplit/lstm_638/lstm_cell_608/split/split_dim:output:0'lstm_638/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_638/lstm_cell_608/SigmoidSigmoid%lstm_638/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_638/lstm_cell_608/Sigmoid_1Sigmoid%lstm_638/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_638/lstm_cell_608/mulMul$lstm_638/lstm_cell_608/Sigmoid_1:y:0lstm_638/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_638/lstm_cell_608/ReluRelu%lstm_638/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_638/lstm_cell_608/mul_1Mul"lstm_638/lstm_cell_608/Sigmoid:y:0)lstm_638/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_638/lstm_cell_608/add_1AddV2lstm_638/lstm_cell_608/mul:z:0 lstm_638/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_638/lstm_cell_608/Sigmoid_2Sigmoid%lstm_638/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_638/lstm_cell_608/Relu_1Relu lstm_638/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_638/lstm_cell_608/mul_2Mul$lstm_638/lstm_cell_608/Sigmoid_2:y:0+lstm_638/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_638/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_638/TensorArrayV2_1TensorListReserve/lstm_638/TensorArrayV2_1/element_shape:output:0!lstm_638/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_638/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_638/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_638/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_638/whileWhile$lstm_638/while/loop_counter:output:0*lstm_638/while/maximum_iterations:output:0lstm_638/time:output:0!lstm_638/TensorArrayV2_1:handle:0lstm_638/zeros:output:0lstm_638/zeros_1:output:0!lstm_638/strided_slice_1:output:0@lstm_638/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_638_lstm_cell_608_matmul_readvariableop_resource7lstm_638_lstm_cell_608_matmul_1_readvariableop_resource6lstm_638_lstm_cell_608_biasadd_readvariableop_resource*
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
lstm_638_while_body_3680891*'
condR
lstm_638_while_cond_3680890*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_638/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_638/TensorArrayV2Stack/TensorListStackTensorListStacklstm_638/while:output:3Blstm_638/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_638/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_638/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_638/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_638/strided_slice_3StridedSlice4lstm_638/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_638/strided_slice_3/stack:output:0)lstm_638/strided_slice_3/stack_1:output:0)lstm_638/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_638/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_638/transpose_1	Transpose4lstm_638/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_638/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_638/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_212/MatMul/ReadVariableOpReadVariableOp(dense_212_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_212/MatMulMatMul!lstm_638/strided_slice_3:output:0'dense_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_212/BiasAdd/ReadVariableOpReadVariableOp)dense_212_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_212/BiasAddBiasAdddense_212/MatMul:product:0(dense_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_212/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_212/BiasAdd/ReadVariableOp ^dense_212/MatMul/ReadVariableOp.^lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp-^lstm_636/lstm_cell_606/MatMul/ReadVariableOp/^lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp^lstm_636/while.^lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp-^lstm_637/lstm_cell_607/MatMul/ReadVariableOp/^lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp^lstm_637/while.^lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp-^lstm_638/lstm_cell_608/MatMul/ReadVariableOp/^lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp^lstm_638/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_212/BiasAdd/ReadVariableOp dense_212/BiasAdd/ReadVariableOp2B
dense_212/MatMul/ReadVariableOpdense_212/MatMul/ReadVariableOp2^
-lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp-lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp2\
,lstm_636/lstm_cell_606/MatMul/ReadVariableOp,lstm_636/lstm_cell_606/MatMul/ReadVariableOp2`
.lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp.lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp2 
lstm_636/whilelstm_636/while2^
-lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp-lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp2\
,lstm_637/lstm_cell_607/MatMul/ReadVariableOp,lstm_637/lstm_cell_607/MatMul/ReadVariableOp2`
.lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp.lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp2 
lstm_637/whilelstm_637/while2^
-lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp-lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp2\
,lstm_638/lstm_cell_608/MatMul/ReadVariableOp,lstm_638/lstm_cell_608/MatMul/ReadVariableOp2`
.lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp.lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp2 
lstm_638/whilelstm_638/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
E__inference_lstm_636_layer_call_and_return_conditional_losses_3680285

inputs?
,lstm_cell_606_matmul_readvariableop_resource:	�A
.lstm_cell_606_matmul_1_readvariableop_resource:	d�<
-lstm_cell_606_biasadd_readvariableop_resource:	�
identity��$lstm_cell_606/BiasAdd/ReadVariableOp�#lstm_cell_606/MatMul/ReadVariableOp�%lstm_cell_606/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_606/MatMul/ReadVariableOpReadVariableOp,lstm_cell_606_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_606/MatMulMatMulstrided_slice_2:output:0+lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_606_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_606/MatMul_1MatMulzeros:output:0-lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_606/addAddV2lstm_cell_606/MatMul:product:0 lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_606_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_606/BiasAddBiasAddlstm_cell_606/add:z:0,lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_606/splitSplit&lstm_cell_606/split/split_dim:output:0lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_606/SigmoidSigmoidlstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_1Sigmoidlstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_606/mulMullstm_cell_606/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_606/ReluRelulstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_1Mullstm_cell_606/Sigmoid:y:0 lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_606/add_1AddV2lstm_cell_606/mul:z:0lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_2Sigmoidlstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_606/Relu_1Relulstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_2Mullstm_cell_606/Sigmoid_2:y:0"lstm_cell_606/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_606_matmul_readvariableop_resource.lstm_cell_606_matmul_1_readvariableop_resource-lstm_cell_606_biasadd_readvariableop_resource*
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
while_body_3680201*
condR
while_cond_3680200*K
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
NoOpNoOp%^lstm_cell_606/BiasAdd/ReadVariableOp$^lstm_cell_606/MatMul/ReadVariableOp&^lstm_cell_606/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_606/BiasAdd/ReadVariableOp$lstm_cell_606/BiasAdd/ReadVariableOp2J
#lstm_cell_606/MatMul/ReadVariableOp#lstm_cell_606/MatMul/ReadVariableOp2N
%lstm_cell_606/MatMul_1/ReadVariableOp%lstm_cell_606/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_3680036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_607_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_607_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_607_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_607_matmul_readvariableop_resource:	d�G
4while_lstm_cell_607_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_607_biasadd_readvariableop_resource:	���*while/lstm_cell_607/BiasAdd/ReadVariableOp�)while/lstm_cell_607/MatMul/ReadVariableOp�+while/lstm_cell_607/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_607/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_607_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_607/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_607_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_607/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_607/addAddV2$while/lstm_cell_607/MatMul:product:0&while/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_607_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_607/BiasAddBiasAddwhile/lstm_cell_607/add:z:02while/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_607/splitSplit,while/lstm_cell_607/split/split_dim:output:0$while/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_607/SigmoidSigmoid"while/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_1Sigmoid"while/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mulMul!while/lstm_cell_607/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_607/ReluRelu"while/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_1Mulwhile/lstm_cell_607/Sigmoid:y:0&while/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/add_1AddV2while/lstm_cell_607/mul:z:0while/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_2Sigmoid"while/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_607/Relu_1Reluwhile/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_2Mul!while/lstm_cell_607/Sigmoid_2:y:0(while/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_607/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_607/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_607/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_607/BiasAdd/ReadVariableOp*^while/lstm_cell_607/MatMul/ReadVariableOp,^while/lstm_cell_607/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_607_biasadd_readvariableop_resource5while_lstm_cell_607_biasadd_readvariableop_resource_0"n
4while_lstm_cell_607_matmul_1_readvariableop_resource6while_lstm_cell_607_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_607_matmul_readvariableop_resource4while_lstm_cell_607_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_607/BiasAdd/ReadVariableOp*while/lstm_cell_607/BiasAdd/ReadVariableOp2V
)while/lstm_cell_607/MatMul/ReadVariableOp)while/lstm_cell_607/MatMul/ReadVariableOp2Z
+while/lstm_cell_607/MatMul_1/ReadVariableOp+while/lstm_cell_607/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_636_while_cond_3681039.
*lstm_636_while_lstm_636_while_loop_counter4
0lstm_636_while_lstm_636_while_maximum_iterations
lstm_636_while_placeholder 
lstm_636_while_placeholder_1 
lstm_636_while_placeholder_2 
lstm_636_while_placeholder_30
,lstm_636_while_less_lstm_636_strided_slice_1G
Clstm_636_while_lstm_636_while_cond_3681039___redundant_placeholder0G
Clstm_636_while_lstm_636_while_cond_3681039___redundant_placeholder1G
Clstm_636_while_lstm_636_while_cond_3681039___redundant_placeholder2G
Clstm_636_while_lstm_636_while_cond_3681039___redundant_placeholder3
lstm_636_while_identity
�
lstm_636/while/LessLesslstm_636_while_placeholder,lstm_636_while_less_lstm_636_strided_slice_1*
T0*
_output_shapes
: ]
lstm_636/while/IdentityIdentitylstm_636/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_636_while_identity lstm_636/while/Identity:output:0*(
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3678740

inputs(
lstm_cell_607_3678658:	d�(
lstm_cell_607_3678660:	2�$
lstm_cell_607_3678662:	�
identity��%lstm_cell_607/StatefulPartitionedCall�while;
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
%lstm_cell_607/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_607_3678658lstm_cell_607_3678660lstm_cell_607_3678662*
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3678657n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_607_3678658lstm_cell_607_3678660lstm_cell_607_3678662*
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
while_body_3678671*
condR
while_cond_3678670*K
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
NoOpNoOp&^lstm_cell_607/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_607/StatefulPartitionedCall%lstm_cell_607/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_606_layer_call_fn_3683309

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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3678453o
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3682970
inputs_0>
,lstm_cell_608_matmul_readvariableop_resource:2(@
.lstm_cell_608_matmul_1_readvariableop_resource:
(;
-lstm_cell_608_biasadd_readvariableop_resource:(
identity��$lstm_cell_608/BiasAdd/ReadVariableOp�#lstm_cell_608/MatMul/ReadVariableOp�%lstm_cell_608/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_608/MatMul/ReadVariableOpReadVariableOp,lstm_cell_608_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_608/MatMulMatMulstrided_slice_2:output:0+lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_608_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_608/MatMul_1MatMulzeros:output:0-lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_608/addAddV2lstm_cell_608/MatMul:product:0 lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_608_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_608/BiasAddBiasAddlstm_cell_608/add:z:0,lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_608/splitSplit&lstm_cell_608/split/split_dim:output:0lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_608/SigmoidSigmoidlstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_1Sigmoidlstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_608/mulMullstm_cell_608/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_608/ReluRelulstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_1Mullstm_cell_608/Sigmoid:y:0 lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_608/add_1AddV2lstm_cell_608/mul:z:0lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_2Sigmoidlstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_608/Relu_1Relulstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_2Mullstm_cell_608/Sigmoid_2:y:0"lstm_cell_608/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_608_matmul_readvariableop_resource.lstm_cell_608_matmul_1_readvariableop_resource-lstm_cell_608_biasadd_readvariableop_resource*
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
while_body_3682886*
condR
while_cond_3682885*K
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
NoOpNoOp%^lstm_cell_608/BiasAdd/ReadVariableOp$^lstm_cell_608/MatMul/ReadVariableOp&^lstm_cell_608/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_608/BiasAdd/ReadVariableOp$lstm_cell_608/BiasAdd/ReadVariableOp2J
#lstm_cell_608/MatMul/ReadVariableOp#lstm_cell_608/MatMul/ReadVariableOp2N
%lstm_cell_608/MatMul_1/ReadVariableOp%lstm_cell_608/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
��
�
"__inference__wrapped_model_3678240
lstm_636_inputW
Dsequential_212_lstm_636_lstm_cell_606_matmul_readvariableop_resource:	�Y
Fsequential_212_lstm_636_lstm_cell_606_matmul_1_readvariableop_resource:	d�T
Esequential_212_lstm_636_lstm_cell_606_biasadd_readvariableop_resource:	�W
Dsequential_212_lstm_637_lstm_cell_607_matmul_readvariableop_resource:	d�Y
Fsequential_212_lstm_637_lstm_cell_607_matmul_1_readvariableop_resource:	2�T
Esequential_212_lstm_637_lstm_cell_607_biasadd_readvariableop_resource:	�V
Dsequential_212_lstm_638_lstm_cell_608_matmul_readvariableop_resource:2(X
Fsequential_212_lstm_638_lstm_cell_608_matmul_1_readvariableop_resource:
(S
Esequential_212_lstm_638_lstm_cell_608_biasadd_readvariableop_resource:(I
7sequential_212_dense_212_matmul_readvariableop_resource:
F
8sequential_212_dense_212_biasadd_readvariableop_resource:
identity��/sequential_212/dense_212/BiasAdd/ReadVariableOp�.sequential_212/dense_212/MatMul/ReadVariableOp�<sequential_212/lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp�;sequential_212/lstm_636/lstm_cell_606/MatMul/ReadVariableOp�=sequential_212/lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp�sequential_212/lstm_636/while�<sequential_212/lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp�;sequential_212/lstm_637/lstm_cell_607/MatMul/ReadVariableOp�=sequential_212/lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp�sequential_212/lstm_637/while�<sequential_212/lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp�;sequential_212/lstm_638/lstm_cell_608/MatMul/ReadVariableOp�=sequential_212/lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp�sequential_212/lstm_638/while[
sequential_212/lstm_636/ShapeShapelstm_636_input*
T0*
_output_shapes
:u
+sequential_212/lstm_636/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_212/lstm_636/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_212/lstm_636/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_212/lstm_636/strided_sliceStridedSlice&sequential_212/lstm_636/Shape:output:04sequential_212/lstm_636/strided_slice/stack:output:06sequential_212/lstm_636/strided_slice/stack_1:output:06sequential_212/lstm_636/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_212/lstm_636/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_212/lstm_636/zeros/packedPack.sequential_212/lstm_636/strided_slice:output:0/sequential_212/lstm_636/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_212/lstm_636/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_212/lstm_636/zerosFill-sequential_212/lstm_636/zeros/packed:output:0,sequential_212/lstm_636/zeros/Const:output:0*
T0*'
_output_shapes
:���������dj
(sequential_212/lstm_636/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
&sequential_212/lstm_636/zeros_1/packedPack.sequential_212/lstm_636/strided_slice:output:01sequential_212/lstm_636/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_212/lstm_636/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_212/lstm_636/zeros_1Fill/sequential_212/lstm_636/zeros_1/packed:output:0.sequential_212/lstm_636/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d{
&sequential_212/lstm_636/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_212/lstm_636/transpose	Transposelstm_636_input/sequential_212/lstm_636/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
sequential_212/lstm_636/Shape_1Shape%sequential_212/lstm_636/transpose:y:0*
T0*
_output_shapes
:w
-sequential_212/lstm_636/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_212/lstm_636/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_212/lstm_636/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_212/lstm_636/strided_slice_1StridedSlice(sequential_212/lstm_636/Shape_1:output:06sequential_212/lstm_636/strided_slice_1/stack:output:08sequential_212/lstm_636/strided_slice_1/stack_1:output:08sequential_212/lstm_636/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_212/lstm_636/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_212/lstm_636/TensorArrayV2TensorListReserve<sequential_212/lstm_636/TensorArrayV2/element_shape:output:00sequential_212/lstm_636/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_212/lstm_636/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_212/lstm_636/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_212/lstm_636/transpose:y:0Vsequential_212/lstm_636/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_212/lstm_636/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_212/lstm_636/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_212/lstm_636/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_212/lstm_636/strided_slice_2StridedSlice%sequential_212/lstm_636/transpose:y:06sequential_212/lstm_636/strided_slice_2/stack:output:08sequential_212/lstm_636/strided_slice_2/stack_1:output:08sequential_212/lstm_636/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
;sequential_212/lstm_636/lstm_cell_606/MatMul/ReadVariableOpReadVariableOpDsequential_212_lstm_636_lstm_cell_606_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,sequential_212/lstm_636/lstm_cell_606/MatMulMatMul0sequential_212/lstm_636/strided_slice_2:output:0Csequential_212/lstm_636/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_212/lstm_636/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOpFsequential_212_lstm_636_lstm_cell_606_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
.sequential_212/lstm_636/lstm_cell_606/MatMul_1MatMul&sequential_212/lstm_636/zeros:output:0Esequential_212/lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_212/lstm_636/lstm_cell_606/addAddV26sequential_212/lstm_636/lstm_cell_606/MatMul:product:08sequential_212/lstm_636/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_212/lstm_636/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOpEsequential_212_lstm_636_lstm_cell_606_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_212/lstm_636/lstm_cell_606/BiasAddBiasAdd-sequential_212/lstm_636/lstm_cell_606/add:z:0Dsequential_212/lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_212/lstm_636/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_212/lstm_636/lstm_cell_606/splitSplit>sequential_212/lstm_636/lstm_cell_606/split/split_dim:output:06sequential_212/lstm_636/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_212/lstm_636/lstm_cell_606/SigmoidSigmoid4sequential_212/lstm_636/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_212/lstm_636/lstm_cell_606/Sigmoid_1Sigmoid4sequential_212/lstm_636/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_212/lstm_636/lstm_cell_606/mulMul3sequential_212/lstm_636/lstm_cell_606/Sigmoid_1:y:0(sequential_212/lstm_636/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential_212/lstm_636/lstm_cell_606/ReluRelu4sequential_212/lstm_636/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_212/lstm_636/lstm_cell_606/mul_1Mul1sequential_212/lstm_636/lstm_cell_606/Sigmoid:y:08sequential_212/lstm_636/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_212/lstm_636/lstm_cell_606/add_1AddV2-sequential_212/lstm_636/lstm_cell_606/mul:z:0/sequential_212/lstm_636/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_212/lstm_636/lstm_cell_606/Sigmoid_2Sigmoid4sequential_212/lstm_636/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_212/lstm_636/lstm_cell_606/Relu_1Relu/sequential_212/lstm_636/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_212/lstm_636/lstm_cell_606/mul_2Mul3sequential_212/lstm_636/lstm_cell_606/Sigmoid_2:y:0:sequential_212/lstm_636/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
5sequential_212/lstm_636/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'sequential_212/lstm_636/TensorArrayV2_1TensorListReserve>sequential_212/lstm_636/TensorArrayV2_1/element_shape:output:00sequential_212/lstm_636/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_212/lstm_636/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_212/lstm_636/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_212/lstm_636/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_212/lstm_636/whileWhile3sequential_212/lstm_636/while/loop_counter:output:09sequential_212/lstm_636/while/maximum_iterations:output:0%sequential_212/lstm_636/time:output:00sequential_212/lstm_636/TensorArrayV2_1:handle:0&sequential_212/lstm_636/zeros:output:0(sequential_212/lstm_636/zeros_1:output:00sequential_212/lstm_636/strided_slice_1:output:0Osequential_212/lstm_636/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_212_lstm_636_lstm_cell_606_matmul_readvariableop_resourceFsequential_212_lstm_636_lstm_cell_606_matmul_1_readvariableop_resourceEsequential_212_lstm_636_lstm_cell_606_biasadd_readvariableop_resource*
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
*sequential_212_lstm_636_while_body_3677872*6
cond.R,
*sequential_212_lstm_636_while_cond_3677871*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Hsequential_212/lstm_636/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
:sequential_212/lstm_636/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_212/lstm_636/while:output:3Qsequential_212/lstm_636/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0�
-sequential_212/lstm_636/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_212/lstm_636/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_212/lstm_636/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_212/lstm_636/strided_slice_3StridedSliceCsequential_212/lstm_636/TensorArrayV2Stack/TensorListStack:tensor:06sequential_212/lstm_636/strided_slice_3/stack:output:08sequential_212/lstm_636/strided_slice_3/stack_1:output:08sequential_212/lstm_636/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask}
(sequential_212/lstm_636/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_212/lstm_636/transpose_1	TransposeCsequential_212/lstm_636/TensorArrayV2Stack/TensorListStack:tensor:01sequential_212/lstm_636/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ds
sequential_212/lstm_636/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_212/lstm_637/ShapeShape'sequential_212/lstm_636/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_212/lstm_637/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_212/lstm_637/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_212/lstm_637/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_212/lstm_637/strided_sliceStridedSlice&sequential_212/lstm_637/Shape:output:04sequential_212/lstm_637/strided_slice/stack:output:06sequential_212/lstm_637/strided_slice/stack_1:output:06sequential_212/lstm_637/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_212/lstm_637/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_212/lstm_637/zeros/packedPack.sequential_212/lstm_637/strided_slice:output:0/sequential_212/lstm_637/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_212/lstm_637/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_212/lstm_637/zerosFill-sequential_212/lstm_637/zeros/packed:output:0,sequential_212/lstm_637/zeros/Const:output:0*
T0*'
_output_shapes
:���������2j
(sequential_212/lstm_637/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
&sequential_212/lstm_637/zeros_1/packedPack.sequential_212/lstm_637/strided_slice:output:01sequential_212/lstm_637/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_212/lstm_637/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_212/lstm_637/zeros_1Fill/sequential_212/lstm_637/zeros_1/packed:output:0.sequential_212/lstm_637/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2{
&sequential_212/lstm_637/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_212/lstm_637/transpose	Transpose'sequential_212/lstm_636/transpose_1:y:0/sequential_212/lstm_637/transpose/perm:output:0*
T0*+
_output_shapes
:���������dt
sequential_212/lstm_637/Shape_1Shape%sequential_212/lstm_637/transpose:y:0*
T0*
_output_shapes
:w
-sequential_212/lstm_637/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_212/lstm_637/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_212/lstm_637/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_212/lstm_637/strided_slice_1StridedSlice(sequential_212/lstm_637/Shape_1:output:06sequential_212/lstm_637/strided_slice_1/stack:output:08sequential_212/lstm_637/strided_slice_1/stack_1:output:08sequential_212/lstm_637/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_212/lstm_637/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_212/lstm_637/TensorArrayV2TensorListReserve<sequential_212/lstm_637/TensorArrayV2/element_shape:output:00sequential_212/lstm_637/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_212/lstm_637/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_212/lstm_637/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_212/lstm_637/transpose:y:0Vsequential_212/lstm_637/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_212/lstm_637/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_212/lstm_637/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_212/lstm_637/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_212/lstm_637/strided_slice_2StridedSlice%sequential_212/lstm_637/transpose:y:06sequential_212/lstm_637/strided_slice_2/stack:output:08sequential_212/lstm_637/strided_slice_2/stack_1:output:08sequential_212/lstm_637/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
;sequential_212/lstm_637/lstm_cell_607/MatMul/ReadVariableOpReadVariableOpDsequential_212_lstm_637_lstm_cell_607_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_212/lstm_637/lstm_cell_607/MatMulMatMul0sequential_212/lstm_637/strided_slice_2:output:0Csequential_212/lstm_637/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_212/lstm_637/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOpFsequential_212_lstm_637_lstm_cell_607_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
.sequential_212/lstm_637/lstm_cell_607/MatMul_1MatMul&sequential_212/lstm_637/zeros:output:0Esequential_212/lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_212/lstm_637/lstm_cell_607/addAddV26sequential_212/lstm_637/lstm_cell_607/MatMul:product:08sequential_212/lstm_637/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_212/lstm_637/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOpEsequential_212_lstm_637_lstm_cell_607_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_212/lstm_637/lstm_cell_607/BiasAddBiasAdd-sequential_212/lstm_637/lstm_cell_607/add:z:0Dsequential_212/lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_212/lstm_637/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_212/lstm_637/lstm_cell_607/splitSplit>sequential_212/lstm_637/lstm_cell_607/split/split_dim:output:06sequential_212/lstm_637/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
-sequential_212/lstm_637/lstm_cell_607/SigmoidSigmoid4sequential_212/lstm_637/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2�
/sequential_212/lstm_637/lstm_cell_607/Sigmoid_1Sigmoid4sequential_212/lstm_637/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
)sequential_212/lstm_637/lstm_cell_607/mulMul3sequential_212/lstm_637/lstm_cell_607/Sigmoid_1:y:0(sequential_212/lstm_637/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential_212/lstm_637/lstm_cell_607/ReluRelu4sequential_212/lstm_637/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
+sequential_212/lstm_637/lstm_cell_607/mul_1Mul1sequential_212/lstm_637/lstm_cell_607/Sigmoid:y:08sequential_212/lstm_637/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
+sequential_212/lstm_637/lstm_cell_607/add_1AddV2-sequential_212/lstm_637/lstm_cell_607/mul:z:0/sequential_212/lstm_637/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_212/lstm_637/lstm_cell_607/Sigmoid_2Sigmoid4sequential_212/lstm_637/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2�
,sequential_212/lstm_637/lstm_cell_607/Relu_1Relu/sequential_212/lstm_637/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_212/lstm_637/lstm_cell_607/mul_2Mul3sequential_212/lstm_637/lstm_cell_607/Sigmoid_2:y:0:sequential_212/lstm_637/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
5sequential_212/lstm_637/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'sequential_212/lstm_637/TensorArrayV2_1TensorListReserve>sequential_212/lstm_637/TensorArrayV2_1/element_shape:output:00sequential_212/lstm_637/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_212/lstm_637/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_212/lstm_637/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_212/lstm_637/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_212/lstm_637/whileWhile3sequential_212/lstm_637/while/loop_counter:output:09sequential_212/lstm_637/while/maximum_iterations:output:0%sequential_212/lstm_637/time:output:00sequential_212/lstm_637/TensorArrayV2_1:handle:0&sequential_212/lstm_637/zeros:output:0(sequential_212/lstm_637/zeros_1:output:00sequential_212/lstm_637/strided_slice_1:output:0Osequential_212/lstm_637/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_212_lstm_637_lstm_cell_607_matmul_readvariableop_resourceFsequential_212_lstm_637_lstm_cell_607_matmul_1_readvariableop_resourceEsequential_212_lstm_637_lstm_cell_607_biasadd_readvariableop_resource*
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
*sequential_212_lstm_637_while_body_3678011*6
cond.R,
*sequential_212_lstm_637_while_cond_3678010*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Hsequential_212/lstm_637/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
:sequential_212/lstm_637/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_212/lstm_637/while:output:3Qsequential_212/lstm_637/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0�
-sequential_212/lstm_637/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_212/lstm_637/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_212/lstm_637/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_212/lstm_637/strided_slice_3StridedSliceCsequential_212/lstm_637/TensorArrayV2Stack/TensorListStack:tensor:06sequential_212/lstm_637/strided_slice_3/stack:output:08sequential_212/lstm_637/strided_slice_3/stack_1:output:08sequential_212/lstm_637/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask}
(sequential_212/lstm_637/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_212/lstm_637/transpose_1	TransposeCsequential_212/lstm_637/TensorArrayV2Stack/TensorListStack:tensor:01sequential_212/lstm_637/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2s
sequential_212/lstm_637/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_212/lstm_638/ShapeShape'sequential_212/lstm_637/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_212/lstm_638/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_212/lstm_638/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_212/lstm_638/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_212/lstm_638/strided_sliceStridedSlice&sequential_212/lstm_638/Shape:output:04sequential_212/lstm_638/strided_slice/stack:output:06sequential_212/lstm_638/strided_slice/stack_1:output:06sequential_212/lstm_638/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_212/lstm_638/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_212/lstm_638/zeros/packedPack.sequential_212/lstm_638/strided_slice:output:0/sequential_212/lstm_638/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_212/lstm_638/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_212/lstm_638/zerosFill-sequential_212/lstm_638/zeros/packed:output:0,sequential_212/lstm_638/zeros/Const:output:0*
T0*'
_output_shapes
:���������
j
(sequential_212/lstm_638/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&sequential_212/lstm_638/zeros_1/packedPack.sequential_212/lstm_638/strided_slice:output:01sequential_212/lstm_638/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_212/lstm_638/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_212/lstm_638/zeros_1Fill/sequential_212/lstm_638/zeros_1/packed:output:0.sequential_212/lstm_638/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
{
&sequential_212/lstm_638/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_212/lstm_638/transpose	Transpose'sequential_212/lstm_637/transpose_1:y:0/sequential_212/lstm_638/transpose/perm:output:0*
T0*+
_output_shapes
:���������2t
sequential_212/lstm_638/Shape_1Shape%sequential_212/lstm_638/transpose:y:0*
T0*
_output_shapes
:w
-sequential_212/lstm_638/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_212/lstm_638/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_212/lstm_638/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_212/lstm_638/strided_slice_1StridedSlice(sequential_212/lstm_638/Shape_1:output:06sequential_212/lstm_638/strided_slice_1/stack:output:08sequential_212/lstm_638/strided_slice_1/stack_1:output:08sequential_212/lstm_638/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_212/lstm_638/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_212/lstm_638/TensorArrayV2TensorListReserve<sequential_212/lstm_638/TensorArrayV2/element_shape:output:00sequential_212/lstm_638/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_212/lstm_638/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_212/lstm_638/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_212/lstm_638/transpose:y:0Vsequential_212/lstm_638/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_212/lstm_638/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_212/lstm_638/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_212/lstm_638/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_212/lstm_638/strided_slice_2StridedSlice%sequential_212/lstm_638/transpose:y:06sequential_212/lstm_638/strided_slice_2/stack:output:08sequential_212/lstm_638/strided_slice_2/stack_1:output:08sequential_212/lstm_638/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
;sequential_212/lstm_638/lstm_cell_608/MatMul/ReadVariableOpReadVariableOpDsequential_212_lstm_638_lstm_cell_608_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
,sequential_212/lstm_638/lstm_cell_608/MatMulMatMul0sequential_212/lstm_638/strided_slice_2:output:0Csequential_212/lstm_638/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
=sequential_212/lstm_638/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOpFsequential_212_lstm_638_lstm_cell_608_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
.sequential_212/lstm_638/lstm_cell_608/MatMul_1MatMul&sequential_212/lstm_638/zeros:output:0Esequential_212/lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)sequential_212/lstm_638/lstm_cell_608/addAddV26sequential_212/lstm_638/lstm_cell_608/MatMul:product:08sequential_212/lstm_638/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
<sequential_212/lstm_638/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOpEsequential_212_lstm_638_lstm_cell_608_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
-sequential_212/lstm_638/lstm_cell_608/BiasAddBiasAdd-sequential_212/lstm_638/lstm_cell_608/add:z:0Dsequential_212/lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(w
5sequential_212/lstm_638/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_212/lstm_638/lstm_cell_608/splitSplit>sequential_212/lstm_638/lstm_cell_608/split/split_dim:output:06sequential_212/lstm_638/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
-sequential_212/lstm_638/lstm_cell_608/SigmoidSigmoid4sequential_212/lstm_638/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
�
/sequential_212/lstm_638/lstm_cell_608/Sigmoid_1Sigmoid4sequential_212/lstm_638/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
)sequential_212/lstm_638/lstm_cell_608/mulMul3sequential_212/lstm_638/lstm_cell_608/Sigmoid_1:y:0(sequential_212/lstm_638/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
*sequential_212/lstm_638/lstm_cell_608/ReluRelu4sequential_212/lstm_638/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
+sequential_212/lstm_638/lstm_cell_608/mul_1Mul1sequential_212/lstm_638/lstm_cell_608/Sigmoid:y:08sequential_212/lstm_638/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
+sequential_212/lstm_638/lstm_cell_608/add_1AddV2-sequential_212/lstm_638/lstm_cell_608/mul:z:0/sequential_212/lstm_638/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_212/lstm_638/lstm_cell_608/Sigmoid_2Sigmoid4sequential_212/lstm_638/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
�
,sequential_212/lstm_638/lstm_cell_608/Relu_1Relu/sequential_212/lstm_638/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_212/lstm_638/lstm_cell_608/mul_2Mul3sequential_212/lstm_638/lstm_cell_608/Sigmoid_2:y:0:sequential_212/lstm_638/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
5sequential_212/lstm_638/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
'sequential_212/lstm_638/TensorArrayV2_1TensorListReserve>sequential_212/lstm_638/TensorArrayV2_1/element_shape:output:00sequential_212/lstm_638/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_212/lstm_638/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_212/lstm_638/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_212/lstm_638/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_212/lstm_638/whileWhile3sequential_212/lstm_638/while/loop_counter:output:09sequential_212/lstm_638/while/maximum_iterations:output:0%sequential_212/lstm_638/time:output:00sequential_212/lstm_638/TensorArrayV2_1:handle:0&sequential_212/lstm_638/zeros:output:0(sequential_212/lstm_638/zeros_1:output:00sequential_212/lstm_638/strided_slice_1:output:0Osequential_212/lstm_638/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_212_lstm_638_lstm_cell_608_matmul_readvariableop_resourceFsequential_212_lstm_638_lstm_cell_608_matmul_1_readvariableop_resourceEsequential_212_lstm_638_lstm_cell_608_biasadd_readvariableop_resource*
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
*sequential_212_lstm_638_while_body_3678150*6
cond.R,
*sequential_212_lstm_638_while_cond_3678149*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Hsequential_212/lstm_638/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
:sequential_212/lstm_638/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_212/lstm_638/while:output:3Qsequential_212/lstm_638/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0�
-sequential_212/lstm_638/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_212/lstm_638/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_212/lstm_638/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_212/lstm_638/strided_slice_3StridedSliceCsequential_212/lstm_638/TensorArrayV2Stack/TensorListStack:tensor:06sequential_212/lstm_638/strided_slice_3/stack:output:08sequential_212/lstm_638/strided_slice_3/stack_1:output:08sequential_212/lstm_638/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask}
(sequential_212/lstm_638/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_212/lstm_638/transpose_1	TransposeCsequential_212/lstm_638/TensorArrayV2Stack/TensorListStack:tensor:01sequential_212/lstm_638/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
s
sequential_212/lstm_638/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_212/dense_212/MatMul/ReadVariableOpReadVariableOp7sequential_212_dense_212_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_212/dense_212/MatMulMatMul0sequential_212/lstm_638/strided_slice_3:output:06sequential_212/dense_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_212/dense_212/BiasAdd/ReadVariableOpReadVariableOp8sequential_212_dense_212_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_212/dense_212/BiasAddBiasAdd)sequential_212/dense_212/MatMul:product:07sequential_212/dense_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_212/dense_212/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_212/dense_212/BiasAdd/ReadVariableOp/^sequential_212/dense_212/MatMul/ReadVariableOp=^sequential_212/lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp<^sequential_212/lstm_636/lstm_cell_606/MatMul/ReadVariableOp>^sequential_212/lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp^sequential_212/lstm_636/while=^sequential_212/lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp<^sequential_212/lstm_637/lstm_cell_607/MatMul/ReadVariableOp>^sequential_212/lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp^sequential_212/lstm_637/while=^sequential_212/lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp<^sequential_212/lstm_638/lstm_cell_608/MatMul/ReadVariableOp>^sequential_212/lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp^sequential_212/lstm_638/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_212/dense_212/BiasAdd/ReadVariableOp/sequential_212/dense_212/BiasAdd/ReadVariableOp2`
.sequential_212/dense_212/MatMul/ReadVariableOp.sequential_212/dense_212/MatMul/ReadVariableOp2|
<sequential_212/lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp<sequential_212/lstm_636/lstm_cell_606/BiasAdd/ReadVariableOp2z
;sequential_212/lstm_636/lstm_cell_606/MatMul/ReadVariableOp;sequential_212/lstm_636/lstm_cell_606/MatMul/ReadVariableOp2~
=sequential_212/lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp=sequential_212/lstm_636/lstm_cell_606/MatMul_1/ReadVariableOp2>
sequential_212/lstm_636/whilesequential_212/lstm_636/while2|
<sequential_212/lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp<sequential_212/lstm_637/lstm_cell_607/BiasAdd/ReadVariableOp2z
;sequential_212/lstm_637/lstm_cell_607/MatMul/ReadVariableOp;sequential_212/lstm_637/lstm_cell_607/MatMul/ReadVariableOp2~
=sequential_212/lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp=sequential_212/lstm_637/lstm_cell_607/MatMul_1/ReadVariableOp2>
sequential_212/lstm_637/whilesequential_212/lstm_637/while2|
<sequential_212/lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp<sequential_212/lstm_638/lstm_cell_608/BiasAdd/ReadVariableOp2z
;sequential_212/lstm_638/lstm_cell_608/MatMul/ReadVariableOp;sequential_212/lstm_638/lstm_cell_608/MatMul/ReadVariableOp2~
=sequential_212/lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp=sequential_212/lstm_638/lstm_cell_608/MatMul_1/ReadVariableOp2>
sequential_212/lstm_638/whilesequential_212/lstm_638/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_636_input
�J
�
E__inference_lstm_636_layer_call_and_return_conditional_losses_3679439

inputs?
,lstm_cell_606_matmul_readvariableop_resource:	�A
.lstm_cell_606_matmul_1_readvariableop_resource:	d�<
-lstm_cell_606_biasadd_readvariableop_resource:	�
identity��$lstm_cell_606/BiasAdd/ReadVariableOp�#lstm_cell_606/MatMul/ReadVariableOp�%lstm_cell_606/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_606/MatMul/ReadVariableOpReadVariableOp,lstm_cell_606_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_606/MatMulMatMulstrided_slice_2:output:0+lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_606_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_606/MatMul_1MatMulzeros:output:0-lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_606/addAddV2lstm_cell_606/MatMul:product:0 lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_606_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_606/BiasAddBiasAddlstm_cell_606/add:z:0,lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_606/splitSplit&lstm_cell_606/split/split_dim:output:0lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_606/SigmoidSigmoidlstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_1Sigmoidlstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_606/mulMullstm_cell_606/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_606/ReluRelulstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_1Mullstm_cell_606/Sigmoid:y:0 lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_606/add_1AddV2lstm_cell_606/mul:z:0lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_2Sigmoidlstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_606/Relu_1Relulstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_2Mullstm_cell_606/Sigmoid_2:y:0"lstm_cell_606/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_606_matmul_readvariableop_resource.lstm_cell_606_matmul_1_readvariableop_resource-lstm_cell_606_biasadd_readvariableop_resource*
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
while_body_3679355*
condR
while_cond_3679354*K
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
NoOpNoOp%^lstm_cell_606/BiasAdd/ReadVariableOp$^lstm_cell_606/MatMul/ReadVariableOp&^lstm_cell_606/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_606/BiasAdd/ReadVariableOp$lstm_cell_606/BiasAdd/ReadVariableOp2J
#lstm_cell_606/MatMul/ReadVariableOp#lstm_cell_606/MatMul/ReadVariableOp2N
%lstm_cell_606/MatMul_1/ReadVariableOp%lstm_cell_606/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�#
�
while_body_3679021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_608_3679045_0:2(/
while_lstm_cell_608_3679047_0:
(+
while_lstm_cell_608_3679049_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_608_3679045:2(-
while_lstm_cell_608_3679047:
()
while_lstm_cell_608_3679049:(��+while/lstm_cell_608/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_608/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_608_3679045_0while_lstm_cell_608_3679047_0while_lstm_cell_608_3679049_0*
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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3679007�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_608/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_608/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_608/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_608/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_608_3679045while_lstm_cell_608_3679045_0"<
while_lstm_cell_608_3679047while_lstm_cell_608_3679047_0"<
while_lstm_cell_608_3679049while_lstm_cell_608_3679049_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_608/StatefulPartitionedCall+while/lstm_cell_608/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3681940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_606_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_606_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_606_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_606_matmul_readvariableop_resource:	�G
4while_lstm_cell_606_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_606_biasadd_readvariableop_resource:	���*while/lstm_cell_606/BiasAdd/ReadVariableOp�)while/lstm_cell_606/MatMul/ReadVariableOp�+while/lstm_cell_606/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_606/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_606_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_606/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_606_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_606/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_606/addAddV2$while/lstm_cell_606/MatMul:product:0&while/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_606_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_606/BiasAddBiasAddwhile/lstm_cell_606/add:z:02while/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_606/splitSplit,while/lstm_cell_606/split/split_dim:output:0$while/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_606/SigmoidSigmoid"while/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_1Sigmoid"while/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mulMul!while/lstm_cell_606/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_606/ReluRelu"while/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_1Mulwhile/lstm_cell_606/Sigmoid:y:0&while/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/add_1AddV2while/lstm_cell_606/mul:z:0while/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_2Sigmoid"while/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_606/Relu_1Reluwhile/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_2Mul!while/lstm_cell_606/Sigmoid_2:y:0(while/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_606/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_606/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_606/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_606/BiasAdd/ReadVariableOp*^while/lstm_cell_606/MatMul/ReadVariableOp,^while/lstm_cell_606/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_606_biasadd_readvariableop_resource5while_lstm_cell_606_biasadd_readvariableop_resource_0"n
4while_lstm_cell_606_matmul_1_readvariableop_resource6while_lstm_cell_606_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_606_matmul_readvariableop_resource4while_lstm_cell_606_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_606/BiasAdd/ReadVariableOp*while/lstm_cell_606/BiasAdd/ReadVariableOp2V
)while/lstm_cell_606/MatMul/ReadVariableOp)while/lstm_cell_606/MatMul/ReadVariableOp2Z
+while/lstm_cell_606/MatMul_1/ReadVariableOp+while/lstm_cell_606/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3680201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_606_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_606_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_606_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_606_matmul_readvariableop_resource:	�G
4while_lstm_cell_606_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_606_biasadd_readvariableop_resource:	���*while/lstm_cell_606/BiasAdd/ReadVariableOp�)while/lstm_cell_606/MatMul/ReadVariableOp�+while/lstm_cell_606/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_606/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_606_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_606/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_606_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_606/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_606/addAddV2$while/lstm_cell_606/MatMul:product:0&while/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_606_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_606/BiasAddBiasAddwhile/lstm_cell_606/add:z:02while/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_606/splitSplit,while/lstm_cell_606/split/split_dim:output:0$while/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_606/SigmoidSigmoid"while/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_1Sigmoid"while/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mulMul!while/lstm_cell_606/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_606/ReluRelu"while/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_1Mulwhile/lstm_cell_606/Sigmoid:y:0&while/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/add_1AddV2while/lstm_cell_606/mul:z:0while/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_2Sigmoid"while/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_606/Relu_1Reluwhile/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_2Mul!while/lstm_cell_606/Sigmoid_2:y:0(while/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_606/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_606/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_606/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_606/BiasAdd/ReadVariableOp*^while/lstm_cell_606/MatMul/ReadVariableOp,^while/lstm_cell_606/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_606_biasadd_readvariableop_resource5while_lstm_cell_606_biasadd_readvariableop_resource_0"n
4while_lstm_cell_606_matmul_1_readvariableop_resource6while_lstm_cell_606_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_606_matmul_readvariableop_resource4while_lstm_cell_606_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_606/BiasAdd/ReadVariableOp*while/lstm_cell_606/BiasAdd/ReadVariableOp2V
)while/lstm_cell_606/MatMul/ReadVariableOp)while/lstm_cell_606/MatMul/ReadVariableOp2Z
+while/lstm_cell_606/MatMul_1/ReadVariableOp+while/lstm_cell_606/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3682127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_607_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_607_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_607_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_607_matmul_readvariableop_resource:	d�G
4while_lstm_cell_607_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_607_biasadd_readvariableop_resource:	���*while/lstm_cell_607/BiasAdd/ReadVariableOp�)while/lstm_cell_607/MatMul/ReadVariableOp�+while/lstm_cell_607/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_607/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_607_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_607/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_607_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_607/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_607/addAddV2$while/lstm_cell_607/MatMul:product:0&while/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_607_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_607/BiasAddBiasAddwhile/lstm_cell_607/add:z:02while/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_607/splitSplit,while/lstm_cell_607/split/split_dim:output:0$while/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_607/SigmoidSigmoid"while/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_1Sigmoid"while/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mulMul!while/lstm_cell_607/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_607/ReluRelu"while/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_1Mulwhile/lstm_cell_607/Sigmoid:y:0&while/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/add_1AddV2while/lstm_cell_607/mul:z:0while/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_2Sigmoid"while/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_607/Relu_1Reluwhile/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_2Mul!while/lstm_cell_607/Sigmoid_2:y:0(while/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_607/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_607/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_607/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_607/BiasAdd/ReadVariableOp*^while/lstm_cell_607/MatMul/ReadVariableOp,^while/lstm_cell_607/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_607_biasadd_readvariableop_resource5while_lstm_cell_607_biasadd_readvariableop_resource_0"n
4while_lstm_cell_607_matmul_1_readvariableop_resource6while_lstm_cell_607_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_607_matmul_readvariableop_resource4while_lstm_cell_607_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_607/BiasAdd/ReadVariableOp*while/lstm_cell_607/BiasAdd/ReadVariableOp2V
)while/lstm_cell_607/MatMul/ReadVariableOp)while/lstm_cell_607/MatMul/ReadVariableOp2Z
+while/lstm_cell_607/MatMul_1/ReadVariableOp+while/lstm_cell_607/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
�C
�

lstm_636_while_body_3681040.
*lstm_636_while_lstm_636_while_loop_counter4
0lstm_636_while_lstm_636_while_maximum_iterations
lstm_636_while_placeholder 
lstm_636_while_placeholder_1 
lstm_636_while_placeholder_2 
lstm_636_while_placeholder_3-
)lstm_636_while_lstm_636_strided_slice_1_0i
elstm_636_while_tensorarrayv2read_tensorlistgetitem_lstm_636_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_636_while_lstm_cell_606_matmul_readvariableop_resource_0:	�R
?lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource_0:	d�M
>lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource_0:	�
lstm_636_while_identity
lstm_636_while_identity_1
lstm_636_while_identity_2
lstm_636_while_identity_3
lstm_636_while_identity_4
lstm_636_while_identity_5+
'lstm_636_while_lstm_636_strided_slice_1g
clstm_636_while_tensorarrayv2read_tensorlistgetitem_lstm_636_tensorarrayunstack_tensorlistfromtensorN
;lstm_636_while_lstm_cell_606_matmul_readvariableop_resource:	�P
=lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource:	d�K
<lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource:	���3lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp�2lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp�4lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp�
@lstm_636/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_636/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_636_while_tensorarrayv2read_tensorlistgetitem_lstm_636_tensorarrayunstack_tensorlistfromtensor_0lstm_636_while_placeholderIlstm_636/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_636/while/lstm_cell_606/MatMul/ReadVariableOpReadVariableOp=lstm_636_while_lstm_cell_606_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_636/while/lstm_cell_606/MatMulMatMul9lstm_636/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp?lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_636/while/lstm_cell_606/MatMul_1MatMullstm_636_while_placeholder_2<lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_636/while/lstm_cell_606/addAddV2-lstm_636/while/lstm_cell_606/MatMul:product:0/lstm_636/while/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp>lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_636/while/lstm_cell_606/BiasAddBiasAdd$lstm_636/while/lstm_cell_606/add:z:0;lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_636/while/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_636/while/lstm_cell_606/splitSplit5lstm_636/while/lstm_cell_606/split/split_dim:output:0-lstm_636/while/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_636/while/lstm_cell_606/SigmoidSigmoid+lstm_636/while/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_636/while/lstm_cell_606/Sigmoid_1Sigmoid+lstm_636/while/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_636/while/lstm_cell_606/mulMul*lstm_636/while/lstm_cell_606/Sigmoid_1:y:0lstm_636_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_636/while/lstm_cell_606/ReluRelu+lstm_636/while/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_636/while/lstm_cell_606/mul_1Mul(lstm_636/while/lstm_cell_606/Sigmoid:y:0/lstm_636/while/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_636/while/lstm_cell_606/add_1AddV2$lstm_636/while/lstm_cell_606/mul:z:0&lstm_636/while/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_636/while/lstm_cell_606/Sigmoid_2Sigmoid+lstm_636/while/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_636/while/lstm_cell_606/Relu_1Relu&lstm_636/while/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_636/while/lstm_cell_606/mul_2Mul*lstm_636/while/lstm_cell_606/Sigmoid_2:y:01lstm_636/while/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_636/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_636_while_placeholder_1lstm_636_while_placeholder&lstm_636/while/lstm_cell_606/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_636/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_636/while/addAddV2lstm_636_while_placeholderlstm_636/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_636/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_636/while/add_1AddV2*lstm_636_while_lstm_636_while_loop_counterlstm_636/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_636/while/IdentityIdentitylstm_636/while/add_1:z:0^lstm_636/while/NoOp*
T0*
_output_shapes
: �
lstm_636/while/Identity_1Identity0lstm_636_while_lstm_636_while_maximum_iterations^lstm_636/while/NoOp*
T0*
_output_shapes
: t
lstm_636/while/Identity_2Identitylstm_636/while/add:z:0^lstm_636/while/NoOp*
T0*
_output_shapes
: �
lstm_636/while/Identity_3IdentityClstm_636/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_636/while/NoOp*
T0*
_output_shapes
: �
lstm_636/while/Identity_4Identity&lstm_636/while/lstm_cell_606/mul_2:z:0^lstm_636/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_636/while/Identity_5Identity&lstm_636/while/lstm_cell_606/add_1:z:0^lstm_636/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_636/while/NoOpNoOp4^lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp3^lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp5^lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_636_while_identity lstm_636/while/Identity:output:0"?
lstm_636_while_identity_1"lstm_636/while/Identity_1:output:0"?
lstm_636_while_identity_2"lstm_636/while/Identity_2:output:0"?
lstm_636_while_identity_3"lstm_636/while/Identity_3:output:0"?
lstm_636_while_identity_4"lstm_636/while/Identity_4:output:0"?
lstm_636_while_identity_5"lstm_636/while/Identity_5:output:0"T
'lstm_636_while_lstm_636_strided_slice_1)lstm_636_while_lstm_636_strided_slice_1_0"~
<lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource>lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource_0"�
=lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource?lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource_0"|
;lstm_636_while_lstm_cell_606_matmul_readvariableop_resource=lstm_636_while_lstm_cell_606_matmul_readvariableop_resource_0"�
clstm_636_while_tensorarrayv2read_tensorlistgetitem_lstm_636_tensorarrayunstack_tensorlistfromtensorelstm_636_while_tensorarrayv2read_tensorlistgetitem_lstm_636_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp3lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp2h
2lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp2lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp2l
4lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp4lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3678307

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
lstm_636_while_cond_3680612.
*lstm_636_while_lstm_636_while_loop_counter4
0lstm_636_while_lstm_636_while_maximum_iterations
lstm_636_while_placeholder 
lstm_636_while_placeholder_1 
lstm_636_while_placeholder_2 
lstm_636_while_placeholder_30
,lstm_636_while_less_lstm_636_strided_slice_1G
Clstm_636_while_lstm_636_while_cond_3680612___redundant_placeholder0G
Clstm_636_while_lstm_636_while_cond_3680612___redundant_placeholder1G
Clstm_636_while_lstm_636_while_cond_3680612___redundant_placeholder2G
Clstm_636_while_lstm_636_while_cond_3680612___redundant_placeholder3
lstm_636_while_identity
�
lstm_636/while/LessLesslstm_636_while_placeholder,lstm_636_while_less_lstm_636_strided_slice_1*
T0*
_output_shapes
: ]
lstm_636/while/IdentityIdentitylstm_636/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_636_while_identity lstm_636/while/Identity:output:0*(
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
�T
�
*sequential_212_lstm_638_while_body_3678150L
Hsequential_212_lstm_638_while_sequential_212_lstm_638_while_loop_counterR
Nsequential_212_lstm_638_while_sequential_212_lstm_638_while_maximum_iterations-
)sequential_212_lstm_638_while_placeholder/
+sequential_212_lstm_638_while_placeholder_1/
+sequential_212_lstm_638_while_placeholder_2/
+sequential_212_lstm_638_while_placeholder_3K
Gsequential_212_lstm_638_while_sequential_212_lstm_638_strided_slice_1_0�
�sequential_212_lstm_638_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_638_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_212_lstm_638_while_lstm_cell_608_matmul_readvariableop_resource_0:2(`
Nsequential_212_lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource_0:
([
Msequential_212_lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource_0:(*
&sequential_212_lstm_638_while_identity,
(sequential_212_lstm_638_while_identity_1,
(sequential_212_lstm_638_while_identity_2,
(sequential_212_lstm_638_while_identity_3,
(sequential_212_lstm_638_while_identity_4,
(sequential_212_lstm_638_while_identity_5I
Esequential_212_lstm_638_while_sequential_212_lstm_638_strided_slice_1�
�sequential_212_lstm_638_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_638_tensorarrayunstack_tensorlistfromtensor\
Jsequential_212_lstm_638_while_lstm_cell_608_matmul_readvariableop_resource:2(^
Lsequential_212_lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource:
(Y
Ksequential_212_lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource:(��Bsequential_212/lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp�Asequential_212/lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp�Csequential_212/lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp�
Osequential_212/lstm_638/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Asequential_212/lstm_638/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_212_lstm_638_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_638_tensorarrayunstack_tensorlistfromtensor_0)sequential_212_lstm_638_while_placeholderXsequential_212/lstm_638/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Asequential_212/lstm_638/while/lstm_cell_608/MatMul/ReadVariableOpReadVariableOpLsequential_212_lstm_638_while_lstm_cell_608_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
2sequential_212/lstm_638/while/lstm_cell_608/MatMulMatMulHsequential_212/lstm_638/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_212/lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_212/lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOpNsequential_212_lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
4sequential_212/lstm_638/while/lstm_cell_608/MatMul_1MatMul+sequential_212_lstm_638_while_placeholder_2Ksequential_212/lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_212/lstm_638/while/lstm_cell_608/addAddV2<sequential_212/lstm_638/while/lstm_cell_608/MatMul:product:0>sequential_212/lstm_638/while/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
Bsequential_212/lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOpMsequential_212_lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
3sequential_212/lstm_638/while/lstm_cell_608/BiasAddBiasAdd3sequential_212/lstm_638/while/lstm_cell_608/add:z:0Jsequential_212/lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(}
;sequential_212/lstm_638/while/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_212/lstm_638/while/lstm_cell_608/splitSplitDsequential_212/lstm_638/while/lstm_cell_608/split/split_dim:output:0<sequential_212/lstm_638/while/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
3sequential_212/lstm_638/while/lstm_cell_608/SigmoidSigmoid:sequential_212/lstm_638/while/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
�
5sequential_212/lstm_638/while/lstm_cell_608/Sigmoid_1Sigmoid:sequential_212/lstm_638/while/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
/sequential_212/lstm_638/while/lstm_cell_608/mulMul9sequential_212/lstm_638/while/lstm_cell_608/Sigmoid_1:y:0+sequential_212_lstm_638_while_placeholder_3*
T0*'
_output_shapes
:���������
�
0sequential_212/lstm_638/while/lstm_cell_608/ReluRelu:sequential_212/lstm_638/while/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
1sequential_212/lstm_638/while/lstm_cell_608/mul_1Mul7sequential_212/lstm_638/while/lstm_cell_608/Sigmoid:y:0>sequential_212/lstm_638/while/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
1sequential_212/lstm_638/while/lstm_cell_608/add_1AddV23sequential_212/lstm_638/while/lstm_cell_608/mul:z:05sequential_212/lstm_638/while/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
�
5sequential_212/lstm_638/while/lstm_cell_608/Sigmoid_2Sigmoid:sequential_212/lstm_638/while/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
�
2sequential_212/lstm_638/while/lstm_cell_608/Relu_1Relu5sequential_212/lstm_638/while/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_212/lstm_638/while/lstm_cell_608/mul_2Mul9sequential_212/lstm_638/while/lstm_cell_608/Sigmoid_2:y:0@sequential_212/lstm_638/while/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Bsequential_212/lstm_638/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_212_lstm_638_while_placeholder_1)sequential_212_lstm_638_while_placeholder5sequential_212/lstm_638/while/lstm_cell_608/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_212/lstm_638/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_212/lstm_638/while/addAddV2)sequential_212_lstm_638_while_placeholder,sequential_212/lstm_638/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_212/lstm_638/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_212/lstm_638/while/add_1AddV2Hsequential_212_lstm_638_while_sequential_212_lstm_638_while_loop_counter.sequential_212/lstm_638/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_212/lstm_638/while/IdentityIdentity'sequential_212/lstm_638/while/add_1:z:0#^sequential_212/lstm_638/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_638/while/Identity_1IdentityNsequential_212_lstm_638_while_sequential_212_lstm_638_while_maximum_iterations#^sequential_212/lstm_638/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_638/while/Identity_2Identity%sequential_212/lstm_638/while/add:z:0#^sequential_212/lstm_638/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_638/while/Identity_3IdentityRsequential_212/lstm_638/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_212/lstm_638/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_638/while/Identity_4Identity5sequential_212/lstm_638/while/lstm_cell_608/mul_2:z:0#^sequential_212/lstm_638/while/NoOp*
T0*'
_output_shapes
:���������
�
(sequential_212/lstm_638/while/Identity_5Identity5sequential_212/lstm_638/while/lstm_cell_608/add_1:z:0#^sequential_212/lstm_638/while/NoOp*
T0*'
_output_shapes
:���������
�
"sequential_212/lstm_638/while/NoOpNoOpC^sequential_212/lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOpB^sequential_212/lstm_638/while/lstm_cell_608/MatMul/ReadVariableOpD^sequential_212/lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_212_lstm_638_while_identity/sequential_212/lstm_638/while/Identity:output:0"]
(sequential_212_lstm_638_while_identity_11sequential_212/lstm_638/while/Identity_1:output:0"]
(sequential_212_lstm_638_while_identity_21sequential_212/lstm_638/while/Identity_2:output:0"]
(sequential_212_lstm_638_while_identity_31sequential_212/lstm_638/while/Identity_3:output:0"]
(sequential_212_lstm_638_while_identity_41sequential_212/lstm_638/while/Identity_4:output:0"]
(sequential_212_lstm_638_while_identity_51sequential_212/lstm_638/while/Identity_5:output:0"�
Ksequential_212_lstm_638_while_lstm_cell_608_biasadd_readvariableop_resourceMsequential_212_lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource_0"�
Lsequential_212_lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resourceNsequential_212_lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource_0"�
Jsequential_212_lstm_638_while_lstm_cell_608_matmul_readvariableop_resourceLsequential_212_lstm_638_while_lstm_cell_608_matmul_readvariableop_resource_0"�
Esequential_212_lstm_638_while_sequential_212_lstm_638_strided_slice_1Gsequential_212_lstm_638_while_sequential_212_lstm_638_strided_slice_1_0"�
�sequential_212_lstm_638_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_638_tensorarrayunstack_tensorlistfromtensor�sequential_212_lstm_638_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_638_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
Bsequential_212/lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOpBsequential_212/lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp2�
Asequential_212/lstm_638/while/lstm_cell_608/MatMul/ReadVariableOpAsequential_212/lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp2�
Csequential_212/lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOpCsequential_212/lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_637_while_cond_3681178.
*lstm_637_while_lstm_637_while_loop_counter4
0lstm_637_while_lstm_637_while_maximum_iterations
lstm_637_while_placeholder 
lstm_637_while_placeholder_1 
lstm_637_while_placeholder_2 
lstm_637_while_placeholder_30
,lstm_637_while_less_lstm_637_strided_slice_1G
Clstm_637_while_lstm_637_while_cond_3681178___redundant_placeholder0G
Clstm_637_while_lstm_637_while_cond_3681178___redundant_placeholder1G
Clstm_637_while_lstm_637_while_cond_3681178___redundant_placeholder2G
Clstm_637_while_lstm_637_while_cond_3681178___redundant_placeholder3
lstm_637_while_identity
�
lstm_637/while/LessLesslstm_637_while_placeholder,lstm_637_while_less_lstm_637_strided_slice_1*
T0*
_output_shapes
: ]
lstm_637/while/IdentityIdentitylstm_637/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_637_while_identity lstm_637/while/Identity:output:0*(
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
while_body_3681654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_606_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_606_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_606_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_606_matmul_readvariableop_resource:	�G
4while_lstm_cell_606_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_606_biasadd_readvariableop_resource:	���*while/lstm_cell_606/BiasAdd/ReadVariableOp�)while/lstm_cell_606/MatMul/ReadVariableOp�+while/lstm_cell_606/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_606/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_606_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_606/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_606_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_606/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_606/addAddV2$while/lstm_cell_606/MatMul:product:0&while/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_606_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_606/BiasAddBiasAddwhile/lstm_cell_606/add:z:02while/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_606/splitSplit,while/lstm_cell_606/split/split_dim:output:0$while/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_606/SigmoidSigmoid"while/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_1Sigmoid"while/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mulMul!while/lstm_cell_606/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_606/ReluRelu"while/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_1Mulwhile/lstm_cell_606/Sigmoid:y:0&while/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/add_1AddV2while/lstm_cell_606/mul:z:0while/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_2Sigmoid"while/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_606/Relu_1Reluwhile/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_2Mul!while/lstm_cell_606/Sigmoid_2:y:0(while/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_606/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_606/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_606/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_606/BiasAdd/ReadVariableOp*^while/lstm_cell_606/MatMul/ReadVariableOp,^while/lstm_cell_606/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_606_biasadd_readvariableop_resource5while_lstm_cell_606_biasadd_readvariableop_resource_0"n
4while_lstm_cell_606_matmul_1_readvariableop_resource6while_lstm_cell_606_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_606_matmul_readvariableop_resource4while_lstm_cell_606_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_606/BiasAdd/ReadVariableOp*while/lstm_cell_606/BiasAdd/ReadVariableOp2V
)while/lstm_cell_606/MatMul/ReadVariableOp)while/lstm_cell_606/MatMul/ReadVariableOp2Z
+while/lstm_cell_606/MatMul_1/ReadVariableOp+while/lstm_cell_606/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679090

inputs'
lstm_cell_608_3679008:2('
lstm_cell_608_3679010:
(#
lstm_cell_608_3679012:(
identity��%lstm_cell_608/StatefulPartitionedCall�while;
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
%lstm_cell_608/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_608_3679008lstm_cell_608_3679010lstm_cell_608_3679012*
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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3679007n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_608_3679008lstm_cell_608_3679010lstm_cell_608_3679012*
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
while_body_3679021*
condR
while_cond_3679020*K
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
NoOpNoOp&^lstm_cell_608/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_608/StatefulPartitionedCall%lstm_cell_608/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
while_cond_3682126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3682126___redundant_placeholder05
1while_while_cond_3682126___redundant_placeholder15
1while_while_cond_3682126___redundant_placeholder25
1while_while_cond_3682126___redundant_placeholder3
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682640

inputs?
,lstm_cell_607_matmul_readvariableop_resource:	d�A
.lstm_cell_607_matmul_1_readvariableop_resource:	2�<
-lstm_cell_607_biasadd_readvariableop_resource:	�
identity��$lstm_cell_607/BiasAdd/ReadVariableOp�#lstm_cell_607/MatMul/ReadVariableOp�%lstm_cell_607/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_607/MatMul/ReadVariableOpReadVariableOp,lstm_cell_607_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_607/MatMulMatMulstrided_slice_2:output:0+lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_607_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_607/MatMul_1MatMulzeros:output:0-lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_607/addAddV2lstm_cell_607/MatMul:product:0 lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_607_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_607/BiasAddBiasAddlstm_cell_607/add:z:0,lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_607/splitSplit&lstm_cell_607/split/split_dim:output:0lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_607/SigmoidSigmoidlstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_1Sigmoidlstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_607/mulMullstm_cell_607/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_607/ReluRelulstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_1Mullstm_cell_607/Sigmoid:y:0 lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_607/add_1AddV2lstm_cell_607/mul:z:0lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_2Sigmoidlstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_607/Relu_1Relulstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_2Mullstm_cell_607/Sigmoid_2:y:0"lstm_cell_607/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_607_matmul_readvariableop_resource.lstm_cell_607_matmul_1_readvariableop_resource-lstm_cell_607_biasadd_readvariableop_resource*
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
while_body_3682556*
condR
while_cond_3682555*K
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
NoOpNoOp%^lstm_cell_607/BiasAdd/ReadVariableOp$^lstm_cell_607/MatMul/ReadVariableOp&^lstm_cell_607/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_607/BiasAdd/ReadVariableOp$lstm_cell_607/BiasAdd/ReadVariableOp2J
#lstm_cell_607/MatMul/ReadVariableOp#lstm_cell_607/MatMul/ReadVariableOp2N
%lstm_cell_607/MatMul_1/ReadVariableOp%lstm_cell_607/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
*__inference_lstm_638_layer_call_fn_3682651
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679090o
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
�C
�

lstm_638_while_body_3681318.
*lstm_638_while_lstm_638_while_loop_counter4
0lstm_638_while_lstm_638_while_maximum_iterations
lstm_638_while_placeholder 
lstm_638_while_placeholder_1 
lstm_638_while_placeholder_2 
lstm_638_while_placeholder_3-
)lstm_638_while_lstm_638_strided_slice_1_0i
elstm_638_while_tensorarrayv2read_tensorlistgetitem_lstm_638_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_638_while_lstm_cell_608_matmul_readvariableop_resource_0:2(Q
?lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource_0:
(L
>lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource_0:(
lstm_638_while_identity
lstm_638_while_identity_1
lstm_638_while_identity_2
lstm_638_while_identity_3
lstm_638_while_identity_4
lstm_638_while_identity_5+
'lstm_638_while_lstm_638_strided_slice_1g
clstm_638_while_tensorarrayv2read_tensorlistgetitem_lstm_638_tensorarrayunstack_tensorlistfromtensorM
;lstm_638_while_lstm_cell_608_matmul_readvariableop_resource:2(O
=lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource:
(J
<lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource:(��3lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp�2lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp�4lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp�
@lstm_638/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_638/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_638_while_tensorarrayv2read_tensorlistgetitem_lstm_638_tensorarrayunstack_tensorlistfromtensor_0lstm_638_while_placeholderIlstm_638/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_638/while/lstm_cell_608/MatMul/ReadVariableOpReadVariableOp=lstm_638_while_lstm_cell_608_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_638/while/lstm_cell_608/MatMulMatMul9lstm_638/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp?lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_638/while/lstm_cell_608/MatMul_1MatMullstm_638_while_placeholder_2<lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_638/while/lstm_cell_608/addAddV2-lstm_638/while/lstm_cell_608/MatMul:product:0/lstm_638/while/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp>lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_638/while/lstm_cell_608/BiasAddBiasAdd$lstm_638/while/lstm_cell_608/add:z:0;lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_638/while/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_638/while/lstm_cell_608/splitSplit5lstm_638/while/lstm_cell_608/split/split_dim:output:0-lstm_638/while/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_638/while/lstm_cell_608/SigmoidSigmoid+lstm_638/while/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_638/while/lstm_cell_608/Sigmoid_1Sigmoid+lstm_638/while/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_638/while/lstm_cell_608/mulMul*lstm_638/while/lstm_cell_608/Sigmoid_1:y:0lstm_638_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_638/while/lstm_cell_608/ReluRelu+lstm_638/while/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_638/while/lstm_cell_608/mul_1Mul(lstm_638/while/lstm_cell_608/Sigmoid:y:0/lstm_638/while/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_638/while/lstm_cell_608/add_1AddV2$lstm_638/while/lstm_cell_608/mul:z:0&lstm_638/while/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_638/while/lstm_cell_608/Sigmoid_2Sigmoid+lstm_638/while/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_638/while/lstm_cell_608/Relu_1Relu&lstm_638/while/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_638/while/lstm_cell_608/mul_2Mul*lstm_638/while/lstm_cell_608/Sigmoid_2:y:01lstm_638/while/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_638/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_638_while_placeholder_1lstm_638_while_placeholder&lstm_638/while/lstm_cell_608/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_638/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_638/while/addAddV2lstm_638_while_placeholderlstm_638/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_638/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_638/while/add_1AddV2*lstm_638_while_lstm_638_while_loop_counterlstm_638/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_638/while/IdentityIdentitylstm_638/while/add_1:z:0^lstm_638/while/NoOp*
T0*
_output_shapes
: �
lstm_638/while/Identity_1Identity0lstm_638_while_lstm_638_while_maximum_iterations^lstm_638/while/NoOp*
T0*
_output_shapes
: t
lstm_638/while/Identity_2Identitylstm_638/while/add:z:0^lstm_638/while/NoOp*
T0*
_output_shapes
: �
lstm_638/while/Identity_3IdentityClstm_638/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_638/while/NoOp*
T0*
_output_shapes
: �
lstm_638/while/Identity_4Identity&lstm_638/while/lstm_cell_608/mul_2:z:0^lstm_638/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_638/while/Identity_5Identity&lstm_638/while/lstm_cell_608/add_1:z:0^lstm_638/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_638/while/NoOpNoOp4^lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp3^lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp5^lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_638_while_identity lstm_638/while/Identity:output:0"?
lstm_638_while_identity_1"lstm_638/while/Identity_1:output:0"?
lstm_638_while_identity_2"lstm_638/while/Identity_2:output:0"?
lstm_638_while_identity_3"lstm_638/while/Identity_3:output:0"?
lstm_638_while_identity_4"lstm_638/while/Identity_4:output:0"?
lstm_638_while_identity_5"lstm_638/while/Identity_5:output:0"T
'lstm_638_while_lstm_638_strided_slice_1)lstm_638_while_lstm_638_strided_slice_1_0"~
<lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource>lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource_0"�
=lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource?lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource_0"|
;lstm_638_while_lstm_cell_608_matmul_readvariableop_resource=lstm_638_while_lstm_cell_608_matmul_readvariableop_resource_0"�
clstm_638_while_tensorarrayv2read_tensorlistgetitem_lstm_638_tensorarrayunstack_tensorlistfromtensorelstm_638_while_tensorarrayv2read_tensorlistgetitem_lstm_638_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp3lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp2h
2lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp2lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp2l
4lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp4lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680353

inputs#
lstm_636_3680326:	�#
lstm_636_3680328:	d�
lstm_636_3680330:	�#
lstm_637_3680333:	d�#
lstm_637_3680335:	2�
lstm_637_3680337:	�"
lstm_638_3680340:2("
lstm_638_3680342:
(
lstm_638_3680344:(#
dense_212_3680347:

dense_212_3680349:
identity��!dense_212/StatefulPartitionedCall� lstm_636/StatefulPartitionedCall� lstm_637/StatefulPartitionedCall� lstm_638/StatefulPartitionedCall�
 lstm_636/StatefulPartitionedCallStatefulPartitionedCallinputslstm_636_3680326lstm_636_3680328lstm_636_3680330*
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3680285�
 lstm_637/StatefulPartitionedCallStatefulPartitionedCall)lstm_636/StatefulPartitionedCall:output:0lstm_637_3680333lstm_637_3680335lstm_637_3680337*
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3680120�
 lstm_638/StatefulPartitionedCallStatefulPartitionedCall)lstm_637/StatefulPartitionedCall:output:0lstm_638_3680340lstm_638_3680342lstm_638_3680344*
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679955�
!dense_212/StatefulPartitionedCallStatefulPartitionedCall)lstm_638/StatefulPartitionedCall:output:0dense_212_3680347dense_212_3680349*
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
F__inference_dense_212_layer_call_and_return_conditional_losses_3679757y
IdentityIdentity*dense_212/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_212/StatefulPartitionedCall!^lstm_636/StatefulPartitionedCall!^lstm_637/StatefulPartitionedCall!^lstm_638/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_212/StatefulPartitionedCall!dense_212/StatefulPartitionedCall2D
 lstm_636/StatefulPartitionedCall lstm_636/StatefulPartitionedCall2D
 lstm_637/StatefulPartitionedCall lstm_637/StatefulPartitionedCall2D
 lstm_638/StatefulPartitionedCall lstm_638/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_638_layer_call_fn_3682684

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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679955o
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
�
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679281

inputs'
lstm_cell_608_3679199:2('
lstm_cell_608_3679201:
(#
lstm_cell_608_3679203:(
identity��%lstm_cell_608/StatefulPartitionedCall�while;
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
%lstm_cell_608/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_608_3679199lstm_cell_608_3679201lstm_cell_608_3679203*
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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3679153n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_608_3679199lstm_cell_608_3679201lstm_cell_608_3679203*
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
while_body_3679212*
condR
while_cond_3679211*K
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
NoOpNoOp&^lstm_cell_608/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_608/StatefulPartitionedCall%lstm_cell_608/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
*sequential_212_lstm_636_while_cond_3677871L
Hsequential_212_lstm_636_while_sequential_212_lstm_636_while_loop_counterR
Nsequential_212_lstm_636_while_sequential_212_lstm_636_while_maximum_iterations-
)sequential_212_lstm_636_while_placeholder/
+sequential_212_lstm_636_while_placeholder_1/
+sequential_212_lstm_636_while_placeholder_2/
+sequential_212_lstm_636_while_placeholder_3N
Jsequential_212_lstm_636_while_less_sequential_212_lstm_636_strided_slice_1e
asequential_212_lstm_636_while_sequential_212_lstm_636_while_cond_3677871___redundant_placeholder0e
asequential_212_lstm_636_while_sequential_212_lstm_636_while_cond_3677871___redundant_placeholder1e
asequential_212_lstm_636_while_sequential_212_lstm_636_while_cond_3677871___redundant_placeholder2e
asequential_212_lstm_636_while_sequential_212_lstm_636_while_cond_3677871___redundant_placeholder3*
&sequential_212_lstm_636_while_identity
�
"sequential_212/lstm_636/while/LessLess)sequential_212_lstm_636_while_placeholderJsequential_212_lstm_636_while_less_sequential_212_lstm_636_strided_slice_1*
T0*
_output_shapes
: {
&sequential_212/lstm_636/while/IdentityIdentity&sequential_212/lstm_636/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_212_lstm_636_while_identity/sequential_212/lstm_636/while/Identity:output:0*(
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3681738
inputs_0?
,lstm_cell_606_matmul_readvariableop_resource:	�A
.lstm_cell_606_matmul_1_readvariableop_resource:	d�<
-lstm_cell_606_biasadd_readvariableop_resource:	�
identity��$lstm_cell_606/BiasAdd/ReadVariableOp�#lstm_cell_606/MatMul/ReadVariableOp�%lstm_cell_606/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_606/MatMul/ReadVariableOpReadVariableOp,lstm_cell_606_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_606/MatMulMatMulstrided_slice_2:output:0+lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_606_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_606/MatMul_1MatMulzeros:output:0-lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_606/addAddV2lstm_cell_606/MatMul:product:0 lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_606_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_606/BiasAddBiasAddlstm_cell_606/add:z:0,lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_606/splitSplit&lstm_cell_606/split/split_dim:output:0lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_606/SigmoidSigmoidlstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_1Sigmoidlstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_606/mulMullstm_cell_606/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_606/ReluRelulstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_1Mullstm_cell_606/Sigmoid:y:0 lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_606/add_1AddV2lstm_cell_606/mul:z:0lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_2Sigmoidlstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_606/Relu_1Relulstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_2Mullstm_cell_606/Sigmoid_2:y:0"lstm_cell_606/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_606_matmul_readvariableop_resource.lstm_cell_606_matmul_1_readvariableop_resource-lstm_cell_606_biasadd_readvariableop_resource*
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
while_body_3681654*
condR
while_cond_3681653*K
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
NoOpNoOp%^lstm_cell_606/BiasAdd/ReadVariableOp$^lstm_cell_606/MatMul/ReadVariableOp&^lstm_cell_606/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_606/BiasAdd/ReadVariableOp$lstm_cell_606/BiasAdd/ReadVariableOp2J
#lstm_cell_606/MatMul/ReadVariableOp#lstm_cell_606/MatMul/ReadVariableOp2N
%lstm_cell_606/MatMul_1/ReadVariableOp%lstm_cell_606/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�

�
0__inference_sequential_212_layer_call_fn_3680554

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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680353o
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3678657

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
while_cond_3679654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3679654___redundant_placeholder05
1while_while_cond_3679654___redundant_placeholder15
1while_while_cond_3679654___redundant_placeholder25
1while_while_cond_3679654___redundant_placeholder3
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
*__inference_lstm_637_layer_call_fn_3682057

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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3679589s
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
�
/__inference_lstm_cell_608_layer_call_fn_3683488

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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3679007o
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
*__inference_lstm_636_layer_call_fn_3681430
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3678581|
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
�
�
*__inference_lstm_638_layer_call_fn_3682673

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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679739o
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
�
�
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680465
lstm_636_input#
lstm_636_3680438:	�#
lstm_636_3680440:	d�
lstm_636_3680442:	�#
lstm_637_3680445:	d�#
lstm_637_3680447:	2�
lstm_637_3680449:	�"
lstm_638_3680452:2("
lstm_638_3680454:
(
lstm_638_3680456:(#
dense_212_3680459:

dense_212_3680461:
identity��!dense_212/StatefulPartitionedCall� lstm_636/StatefulPartitionedCall� lstm_637/StatefulPartitionedCall� lstm_638/StatefulPartitionedCall�
 lstm_636/StatefulPartitionedCallStatefulPartitionedCalllstm_636_inputlstm_636_3680438lstm_636_3680440lstm_636_3680442*
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3680285�
 lstm_637/StatefulPartitionedCallStatefulPartitionedCall)lstm_636/StatefulPartitionedCall:output:0lstm_637_3680445lstm_637_3680447lstm_637_3680449*
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3680120�
 lstm_638/StatefulPartitionedCallStatefulPartitionedCall)lstm_637/StatefulPartitionedCall:output:0lstm_638_3680452lstm_638_3680454lstm_638_3680456*
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679955�
!dense_212/StatefulPartitionedCallStatefulPartitionedCall)lstm_638/StatefulPartitionedCall:output:0dense_212_3680459dense_212_3680461*
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
F__inference_dense_212_layer_call_and_return_conditional_losses_3679757y
IdentityIdentity*dense_212/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_212/StatefulPartitionedCall!^lstm_636/StatefulPartitionedCall!^lstm_637/StatefulPartitionedCall!^lstm_638/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_212/StatefulPartitionedCall!dense_212/StatefulPartitionedCall2D
 lstm_636/StatefulPartitionedCall lstm_636/StatefulPartitionedCall2D
 lstm_637/StatefulPartitionedCall lstm_637/StatefulPartitionedCall2D
 lstm_638/StatefulPartitionedCall lstm_638/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_636_input
�

�
%__inference_signature_wrapper_3680500
lstm_636_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_636_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3678240o
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
_user_specified_namelstm_636_input
�8
�
while_body_3679355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_606_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_606_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_606_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_606_matmul_readvariableop_resource:	�G
4while_lstm_cell_606_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_606_biasadd_readvariableop_resource:	���*while/lstm_cell_606/BiasAdd/ReadVariableOp�)while/lstm_cell_606/MatMul/ReadVariableOp�+while/lstm_cell_606/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_606/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_606_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_606/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_606_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_606/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_606/addAddV2$while/lstm_cell_606/MatMul:product:0&while/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_606_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_606/BiasAddBiasAddwhile/lstm_cell_606/add:z:02while/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_606/splitSplit,while/lstm_cell_606/split/split_dim:output:0$while/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_606/SigmoidSigmoid"while/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_1Sigmoid"while/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mulMul!while/lstm_cell_606/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_606/ReluRelu"while/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_1Mulwhile/lstm_cell_606/Sigmoid:y:0&while/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/add_1AddV2while/lstm_cell_606/mul:z:0while/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_2Sigmoid"while/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_606/Relu_1Reluwhile/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_2Mul!while/lstm_cell_606/Sigmoid_2:y:0(while/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_606/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_606/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_606/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_606/BiasAdd/ReadVariableOp*^while/lstm_cell_606/MatMul/ReadVariableOp,^while/lstm_cell_606/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_606_biasadd_readvariableop_resource5while_lstm_cell_606_biasadd_readvariableop_resource_0"n
4while_lstm_cell_606_matmul_1_readvariableop_resource6while_lstm_cell_606_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_606_matmul_readvariableop_resource4while_lstm_cell_606_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_606/BiasAdd/ReadVariableOp*while/lstm_cell_606/BiasAdd/ReadVariableOp2V
)while/lstm_cell_606/MatMul/ReadVariableOp)while/lstm_cell_606/MatMul/ReadVariableOp2Z
+while/lstm_cell_606/MatMul_1/ReadVariableOp+while/lstm_cell_606/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3679764

inputs#
lstm_636_3679440:	�#
lstm_636_3679442:	d�
lstm_636_3679444:	�#
lstm_637_3679590:	d�#
lstm_637_3679592:	2�
lstm_637_3679594:	�"
lstm_638_3679740:2("
lstm_638_3679742:
(
lstm_638_3679744:(#
dense_212_3679758:

dense_212_3679760:
identity��!dense_212/StatefulPartitionedCall� lstm_636/StatefulPartitionedCall� lstm_637/StatefulPartitionedCall� lstm_638/StatefulPartitionedCall�
 lstm_636/StatefulPartitionedCallStatefulPartitionedCallinputslstm_636_3679440lstm_636_3679442lstm_636_3679444*
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3679439�
 lstm_637/StatefulPartitionedCallStatefulPartitionedCall)lstm_636/StatefulPartitionedCall:output:0lstm_637_3679590lstm_637_3679592lstm_637_3679594*
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3679589�
 lstm_638/StatefulPartitionedCallStatefulPartitionedCall)lstm_637/StatefulPartitionedCall:output:0lstm_638_3679740lstm_638_3679742lstm_638_3679744*
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679739�
!dense_212/StatefulPartitionedCallStatefulPartitionedCall)lstm_638/StatefulPartitionedCall:output:0dense_212_3679758dense_212_3679760*
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
F__inference_dense_212_layer_call_and_return_conditional_losses_3679757y
IdentityIdentity*dense_212/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_212/StatefulPartitionedCall!^lstm_636/StatefulPartitionedCall!^lstm_637/StatefulPartitionedCall!^lstm_638/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_212/StatefulPartitionedCall!dense_212/StatefulPartitionedCall2D
 lstm_636/StatefulPartitionedCall lstm_636/StatefulPartitionedCall2D
 lstm_637/StatefulPartitionedCall lstm_637/StatefulPartitionedCall2D
 lstm_638/StatefulPartitionedCall lstm_638/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_3683172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_608_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_608_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_608_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_608_matmul_readvariableop_resource:2(F
4while_lstm_cell_608_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_608_biasadd_readvariableop_resource:(��*while/lstm_cell_608/BiasAdd/ReadVariableOp�)while/lstm_cell_608/MatMul/ReadVariableOp�+while/lstm_cell_608/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_608/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_608_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_608/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_608_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_608/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_608/addAddV2$while/lstm_cell_608/MatMul:product:0&while/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_608_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_608/BiasAddBiasAddwhile/lstm_cell_608/add:z:02while/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_608/splitSplit,while/lstm_cell_608/split/split_dim:output:0$while/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_608/SigmoidSigmoid"while/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_1Sigmoid"while/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mulMul!while/lstm_cell_608/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_608/ReluRelu"while/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_1Mulwhile/lstm_cell_608/Sigmoid:y:0&while/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/add_1AddV2while/lstm_cell_608/mul:z:0while/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_2Sigmoid"while/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_608/Relu_1Reluwhile/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_2Mul!while/lstm_cell_608/Sigmoid_2:y:0(while/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_608/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_608/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_608/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_608/BiasAdd/ReadVariableOp*^while/lstm_cell_608/MatMul/ReadVariableOp,^while/lstm_cell_608/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_608_biasadd_readvariableop_resource5while_lstm_cell_608_biasadd_readvariableop_resource_0"n
4while_lstm_cell_608_matmul_1_readvariableop_resource6while_lstm_cell_608_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_608_matmul_readvariableop_resource4while_lstm_cell_608_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_608/BiasAdd/ReadVariableOp*while/lstm_cell_608/BiasAdd/ReadVariableOp2V
)while/lstm_cell_608/MatMul/ReadVariableOp)while/lstm_cell_608/MatMul/ReadVariableOp2Z
+while/lstm_cell_608/MatMul_1/ReadVariableOp+while/lstm_cell_608/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3683537

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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682497

inputs?
,lstm_cell_607_matmul_readvariableop_resource:	d�A
.lstm_cell_607_matmul_1_readvariableop_resource:	2�<
-lstm_cell_607_biasadd_readvariableop_resource:	�
identity��$lstm_cell_607/BiasAdd/ReadVariableOp�#lstm_cell_607/MatMul/ReadVariableOp�%lstm_cell_607/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_607/MatMul/ReadVariableOpReadVariableOp,lstm_cell_607_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_607/MatMulMatMulstrided_slice_2:output:0+lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_607_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_607/MatMul_1MatMulzeros:output:0-lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_607/addAddV2lstm_cell_607/MatMul:product:0 lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_607_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_607/BiasAddBiasAddlstm_cell_607/add:z:0,lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_607/splitSplit&lstm_cell_607/split/split_dim:output:0lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_607/SigmoidSigmoidlstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_1Sigmoidlstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_607/mulMullstm_cell_607/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_607/ReluRelulstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_1Mullstm_cell_607/Sigmoid:y:0 lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_607/add_1AddV2lstm_cell_607/mul:z:0lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_2Sigmoidlstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_607/Relu_1Relulstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_2Mullstm_cell_607/Sigmoid_2:y:0"lstm_cell_607/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_607_matmul_readvariableop_resource.lstm_cell_607_matmul_1_readvariableop_resource-lstm_cell_607_biasadd_readvariableop_resource*
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
while_body_3682413*
condR
while_cond_3682412*K
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
NoOpNoOp%^lstm_cell_607/BiasAdd/ReadVariableOp$^lstm_cell_607/MatMul/ReadVariableOp&^lstm_cell_607/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_607/BiasAdd/ReadVariableOp$lstm_cell_607/BiasAdd/ReadVariableOp2J
#lstm_cell_607/MatMul/ReadVariableOp#lstm_cell_607/MatMul/ReadVariableOp2N
%lstm_cell_607/MatMul_1/ReadVariableOp%lstm_cell_607/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
while_body_3679655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_608_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_608_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_608_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_608_matmul_readvariableop_resource:2(F
4while_lstm_cell_608_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_608_biasadd_readvariableop_resource:(��*while/lstm_cell_608/BiasAdd/ReadVariableOp�)while/lstm_cell_608/MatMul/ReadVariableOp�+while/lstm_cell_608/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_608/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_608_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_608/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_608_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_608/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_608/addAddV2$while/lstm_cell_608/MatMul:product:0&while/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_608_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_608/BiasAddBiasAddwhile/lstm_cell_608/add:z:02while/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_608/splitSplit,while/lstm_cell_608/split/split_dim:output:0$while/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_608/SigmoidSigmoid"while/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_1Sigmoid"while/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mulMul!while/lstm_cell_608/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_608/ReluRelu"while/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_1Mulwhile/lstm_cell_608/Sigmoid:y:0&while/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/add_1AddV2while/lstm_cell_608/mul:z:0while/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_2Sigmoid"while/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_608/Relu_1Reluwhile/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_2Mul!while/lstm_cell_608/Sigmoid_2:y:0(while/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_608/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_608/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_608/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_608/BiasAdd/ReadVariableOp*^while/lstm_cell_608/MatMul/ReadVariableOp,^while/lstm_cell_608/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_608_biasadd_readvariableop_resource5while_lstm_cell_608_biasadd_readvariableop_resource_0"n
4while_lstm_cell_608_matmul_1_readvariableop_resource6while_lstm_cell_608_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_608_matmul_readvariableop_resource4while_lstm_cell_608_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_608/BiasAdd/ReadVariableOp*while/lstm_cell_608/BiasAdd/ReadVariableOp2V
)while/lstm_cell_608/MatMul/ReadVariableOp)while/lstm_cell_608/MatMul/ReadVariableOp2Z
+while/lstm_cell_608/MatMul_1/ReadVariableOp+while/lstm_cell_608/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3678803

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
while_cond_3679354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3679354___redundant_placeholder05
1while_while_cond_3679354___redundant_placeholder15
1while_while_cond_3679354___redundant_placeholder25
1while_while_cond_3679354___redundant_placeholder3
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

lstm_638_while_body_3680891.
*lstm_638_while_lstm_638_while_loop_counter4
0lstm_638_while_lstm_638_while_maximum_iterations
lstm_638_while_placeholder 
lstm_638_while_placeholder_1 
lstm_638_while_placeholder_2 
lstm_638_while_placeholder_3-
)lstm_638_while_lstm_638_strided_slice_1_0i
elstm_638_while_tensorarrayv2read_tensorlistgetitem_lstm_638_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_638_while_lstm_cell_608_matmul_readvariableop_resource_0:2(Q
?lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource_0:
(L
>lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource_0:(
lstm_638_while_identity
lstm_638_while_identity_1
lstm_638_while_identity_2
lstm_638_while_identity_3
lstm_638_while_identity_4
lstm_638_while_identity_5+
'lstm_638_while_lstm_638_strided_slice_1g
clstm_638_while_tensorarrayv2read_tensorlistgetitem_lstm_638_tensorarrayunstack_tensorlistfromtensorM
;lstm_638_while_lstm_cell_608_matmul_readvariableop_resource:2(O
=lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource:
(J
<lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource:(��3lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp�2lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp�4lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp�
@lstm_638/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_638/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_638_while_tensorarrayv2read_tensorlistgetitem_lstm_638_tensorarrayunstack_tensorlistfromtensor_0lstm_638_while_placeholderIlstm_638/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_638/while/lstm_cell_608/MatMul/ReadVariableOpReadVariableOp=lstm_638_while_lstm_cell_608_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_638/while/lstm_cell_608/MatMulMatMul9lstm_638/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp?lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_638/while/lstm_cell_608/MatMul_1MatMullstm_638_while_placeholder_2<lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_638/while/lstm_cell_608/addAddV2-lstm_638/while/lstm_cell_608/MatMul:product:0/lstm_638/while/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp>lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_638/while/lstm_cell_608/BiasAddBiasAdd$lstm_638/while/lstm_cell_608/add:z:0;lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_638/while/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_638/while/lstm_cell_608/splitSplit5lstm_638/while/lstm_cell_608/split/split_dim:output:0-lstm_638/while/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_638/while/lstm_cell_608/SigmoidSigmoid+lstm_638/while/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_638/while/lstm_cell_608/Sigmoid_1Sigmoid+lstm_638/while/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_638/while/lstm_cell_608/mulMul*lstm_638/while/lstm_cell_608/Sigmoid_1:y:0lstm_638_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_638/while/lstm_cell_608/ReluRelu+lstm_638/while/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_638/while/lstm_cell_608/mul_1Mul(lstm_638/while/lstm_cell_608/Sigmoid:y:0/lstm_638/while/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_638/while/lstm_cell_608/add_1AddV2$lstm_638/while/lstm_cell_608/mul:z:0&lstm_638/while/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_638/while/lstm_cell_608/Sigmoid_2Sigmoid+lstm_638/while/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_638/while/lstm_cell_608/Relu_1Relu&lstm_638/while/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_638/while/lstm_cell_608/mul_2Mul*lstm_638/while/lstm_cell_608/Sigmoid_2:y:01lstm_638/while/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_638/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_638_while_placeholder_1lstm_638_while_placeholder&lstm_638/while/lstm_cell_608/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_638/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_638/while/addAddV2lstm_638_while_placeholderlstm_638/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_638/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_638/while/add_1AddV2*lstm_638_while_lstm_638_while_loop_counterlstm_638/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_638/while/IdentityIdentitylstm_638/while/add_1:z:0^lstm_638/while/NoOp*
T0*
_output_shapes
: �
lstm_638/while/Identity_1Identity0lstm_638_while_lstm_638_while_maximum_iterations^lstm_638/while/NoOp*
T0*
_output_shapes
: t
lstm_638/while/Identity_2Identitylstm_638/while/add:z:0^lstm_638/while/NoOp*
T0*
_output_shapes
: �
lstm_638/while/Identity_3IdentityClstm_638/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_638/while/NoOp*
T0*
_output_shapes
: �
lstm_638/while/Identity_4Identity&lstm_638/while/lstm_cell_608/mul_2:z:0^lstm_638/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_638/while/Identity_5Identity&lstm_638/while/lstm_cell_608/add_1:z:0^lstm_638/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_638/while/NoOpNoOp4^lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp3^lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp5^lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_638_while_identity lstm_638/while/Identity:output:0"?
lstm_638_while_identity_1"lstm_638/while/Identity_1:output:0"?
lstm_638_while_identity_2"lstm_638/while/Identity_2:output:0"?
lstm_638_while_identity_3"lstm_638/while/Identity_3:output:0"?
lstm_638_while_identity_4"lstm_638/while/Identity_4:output:0"?
lstm_638_while_identity_5"lstm_638/while/Identity_5:output:0"T
'lstm_638_while_lstm_638_strided_slice_1)lstm_638_while_lstm_638_strided_slice_1_0"~
<lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource>lstm_638_while_lstm_cell_608_biasadd_readvariableop_resource_0"�
=lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource?lstm_638_while_lstm_cell_608_matmul_1_readvariableop_resource_0"|
;lstm_638_while_lstm_cell_608_matmul_readvariableop_resource=lstm_638_while_lstm_cell_608_matmul_readvariableop_resource_0"�
clstm_638_while_tensorarrayv2read_tensorlistgetitem_lstm_638_tensorarrayunstack_tensorlistfromtensorelstm_638_while_tensorarrayv2read_tensorlistgetitem_lstm_638_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp3lstm_638/while/lstm_cell_608/BiasAdd/ReadVariableOp2h
2lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp2lstm_638/while/lstm_cell_608/MatMul/ReadVariableOp2l
4lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp4lstm_638/while/lstm_cell_608/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3682412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3682412___redundant_placeholder05
1while_while_cond_3682412___redundant_placeholder15
1while_while_cond_3682412___redundant_placeholder25
1while_while_cond_3682412___redundant_placeholder3
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
while_cond_3678320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3678320___redundant_placeholder05
1while_while_cond_3678320___redundant_placeholder15
1while_while_cond_3678320___redundant_placeholder25
1while_while_cond_3678320___redundant_placeholder3
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3682024

inputs?
,lstm_cell_606_matmul_readvariableop_resource:	�A
.lstm_cell_606_matmul_1_readvariableop_resource:	d�<
-lstm_cell_606_biasadd_readvariableop_resource:	�
identity��$lstm_cell_606/BiasAdd/ReadVariableOp�#lstm_cell_606/MatMul/ReadVariableOp�%lstm_cell_606/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_606/MatMul/ReadVariableOpReadVariableOp,lstm_cell_606_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_606/MatMulMatMulstrided_slice_2:output:0+lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_606_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_606/MatMul_1MatMulzeros:output:0-lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_606/addAddV2lstm_cell_606/MatMul:product:0 lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_606_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_606/BiasAddBiasAddlstm_cell_606/add:z:0,lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_606/splitSplit&lstm_cell_606/split/split_dim:output:0lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_606/SigmoidSigmoidlstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_1Sigmoidlstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_606/mulMullstm_cell_606/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_606/ReluRelulstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_1Mullstm_cell_606/Sigmoid:y:0 lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_606/add_1AddV2lstm_cell_606/mul:z:0lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_2Sigmoidlstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_606/Relu_1Relulstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_2Mullstm_cell_606/Sigmoid_2:y:0"lstm_cell_606/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_606_matmul_readvariableop_resource.lstm_cell_606_matmul_1_readvariableop_resource-lstm_cell_606_biasadd_readvariableop_resource*
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
while_body_3681940*
condR
while_cond_3681939*K
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
NoOpNoOp%^lstm_cell_606/BiasAdd/ReadVariableOp$^lstm_cell_606/MatMul/ReadVariableOp&^lstm_cell_606/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_606/BiasAdd/ReadVariableOp$lstm_cell_606/BiasAdd/ReadVariableOp2J
#lstm_cell_606/MatMul/ReadVariableOp#lstm_cell_606/MatMul/ReadVariableOp2N
%lstm_cell_606/MatMul_1/ReadVariableOp%lstm_cell_606/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_3682555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3682555___redundant_placeholder05
1while_while_cond_3682555___redundant_placeholder15
1while_while_cond_3682555___redundant_placeholder25
1while_while_cond_3682555___redundant_placeholder3
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

lstm_637_while_body_3680752.
*lstm_637_while_lstm_637_while_loop_counter4
0lstm_637_while_lstm_637_while_maximum_iterations
lstm_637_while_placeholder 
lstm_637_while_placeholder_1 
lstm_637_while_placeholder_2 
lstm_637_while_placeholder_3-
)lstm_637_while_lstm_637_strided_slice_1_0i
elstm_637_while_tensorarrayv2read_tensorlistgetitem_lstm_637_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_637_while_lstm_cell_607_matmul_readvariableop_resource_0:	d�R
?lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource_0:	2�M
>lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource_0:	�
lstm_637_while_identity
lstm_637_while_identity_1
lstm_637_while_identity_2
lstm_637_while_identity_3
lstm_637_while_identity_4
lstm_637_while_identity_5+
'lstm_637_while_lstm_637_strided_slice_1g
clstm_637_while_tensorarrayv2read_tensorlistgetitem_lstm_637_tensorarrayunstack_tensorlistfromtensorN
;lstm_637_while_lstm_cell_607_matmul_readvariableop_resource:	d�P
=lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource:	2�K
<lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource:	���3lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp�2lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp�4lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp�
@lstm_637/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_637/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_637_while_tensorarrayv2read_tensorlistgetitem_lstm_637_tensorarrayunstack_tensorlistfromtensor_0lstm_637_while_placeholderIlstm_637/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_637/while/lstm_cell_607/MatMul/ReadVariableOpReadVariableOp=lstm_637_while_lstm_cell_607_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_637/while/lstm_cell_607/MatMulMatMul9lstm_637/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp?lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_637/while/lstm_cell_607/MatMul_1MatMullstm_637_while_placeholder_2<lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_637/while/lstm_cell_607/addAddV2-lstm_637/while/lstm_cell_607/MatMul:product:0/lstm_637/while/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp>lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_637/while/lstm_cell_607/BiasAddBiasAdd$lstm_637/while/lstm_cell_607/add:z:0;lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_637/while/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_637/while/lstm_cell_607/splitSplit5lstm_637/while/lstm_cell_607/split/split_dim:output:0-lstm_637/while/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_637/while/lstm_cell_607/SigmoidSigmoid+lstm_637/while/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_637/while/lstm_cell_607/Sigmoid_1Sigmoid+lstm_637/while/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_637/while/lstm_cell_607/mulMul*lstm_637/while/lstm_cell_607/Sigmoid_1:y:0lstm_637_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_637/while/lstm_cell_607/ReluRelu+lstm_637/while/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_637/while/lstm_cell_607/mul_1Mul(lstm_637/while/lstm_cell_607/Sigmoid:y:0/lstm_637/while/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_637/while/lstm_cell_607/add_1AddV2$lstm_637/while/lstm_cell_607/mul:z:0&lstm_637/while/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_637/while/lstm_cell_607/Sigmoid_2Sigmoid+lstm_637/while/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_637/while/lstm_cell_607/Relu_1Relu&lstm_637/while/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_637/while/lstm_cell_607/mul_2Mul*lstm_637/while/lstm_cell_607/Sigmoid_2:y:01lstm_637/while/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_637/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_637_while_placeholder_1lstm_637_while_placeholder&lstm_637/while/lstm_cell_607/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_637/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_637/while/addAddV2lstm_637_while_placeholderlstm_637/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_637/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_637/while/add_1AddV2*lstm_637_while_lstm_637_while_loop_counterlstm_637/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_637/while/IdentityIdentitylstm_637/while/add_1:z:0^lstm_637/while/NoOp*
T0*
_output_shapes
: �
lstm_637/while/Identity_1Identity0lstm_637_while_lstm_637_while_maximum_iterations^lstm_637/while/NoOp*
T0*
_output_shapes
: t
lstm_637/while/Identity_2Identitylstm_637/while/add:z:0^lstm_637/while/NoOp*
T0*
_output_shapes
: �
lstm_637/while/Identity_3IdentityClstm_637/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_637/while/NoOp*
T0*
_output_shapes
: �
lstm_637/while/Identity_4Identity&lstm_637/while/lstm_cell_607/mul_2:z:0^lstm_637/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_637/while/Identity_5Identity&lstm_637/while/lstm_cell_607/add_1:z:0^lstm_637/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_637/while/NoOpNoOp4^lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp3^lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp5^lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_637_while_identity lstm_637/while/Identity:output:0"?
lstm_637_while_identity_1"lstm_637/while/Identity_1:output:0"?
lstm_637_while_identity_2"lstm_637/while/Identity_2:output:0"?
lstm_637_while_identity_3"lstm_637/while/Identity_3:output:0"?
lstm_637_while_identity_4"lstm_637/while/Identity_4:output:0"?
lstm_637_while_identity_5"lstm_637/while/Identity_5:output:0"T
'lstm_637_while_lstm_637_strided_slice_1)lstm_637_while_lstm_637_strided_slice_1_0"~
<lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource>lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource_0"�
=lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource?lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource_0"|
;lstm_637_while_lstm_cell_607_matmul_readvariableop_resource=lstm_637_while_lstm_cell_607_matmul_readvariableop_resource_0"�
clstm_637_while_tensorarrayv2read_tensorlistgetitem_lstm_637_tensorarrayunstack_tensorlistfromtensorelstm_637_while_tensorarrayv2read_tensorlistgetitem_lstm_637_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp3lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp2h
2lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp2lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp2l
4lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp4lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_606_layer_call_fn_3683292

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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3678307o
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682211
inputs_0?
,lstm_cell_607_matmul_readvariableop_resource:	d�A
.lstm_cell_607_matmul_1_readvariableop_resource:	2�<
-lstm_cell_607_biasadd_readvariableop_resource:	�
identity��$lstm_cell_607/BiasAdd/ReadVariableOp�#lstm_cell_607/MatMul/ReadVariableOp�%lstm_cell_607/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_607/MatMul/ReadVariableOpReadVariableOp,lstm_cell_607_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_607/MatMulMatMulstrided_slice_2:output:0+lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_607_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_607/MatMul_1MatMulzeros:output:0-lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_607/addAddV2lstm_cell_607/MatMul:product:0 lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_607_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_607/BiasAddBiasAddlstm_cell_607/add:z:0,lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_607/splitSplit&lstm_cell_607/split/split_dim:output:0lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_607/SigmoidSigmoidlstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_1Sigmoidlstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_607/mulMullstm_cell_607/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_607/ReluRelulstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_1Mullstm_cell_607/Sigmoid:y:0 lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_607/add_1AddV2lstm_cell_607/mul:z:0lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_2Sigmoidlstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_607/Relu_1Relulstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_2Mullstm_cell_607/Sigmoid_2:y:0"lstm_cell_607/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_607_matmul_readvariableop_resource.lstm_cell_607_matmul_1_readvariableop_resource-lstm_cell_607_biasadd_readvariableop_resource*
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
while_body_3682127*
condR
while_cond_3682126*K
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
NoOpNoOp%^lstm_cell_607/BiasAdd/ReadVariableOp$^lstm_cell_607/MatMul/ReadVariableOp&^lstm_cell_607/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_607/BiasAdd/ReadVariableOp$lstm_cell_607/BiasAdd/ReadVariableOp2J
#lstm_cell_607/MatMul/ReadVariableOp#lstm_cell_607/MatMul/ReadVariableOp2N
%lstm_cell_607/MatMul_1/ReadVariableOp%lstm_cell_607/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�8
�
E__inference_lstm_636_layer_call_and_return_conditional_losses_3678581

inputs(
lstm_cell_606_3678499:	�(
lstm_cell_606_3678501:	d�$
lstm_cell_606_3678503:	�
identity��%lstm_cell_606/StatefulPartitionedCall�while;
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
%lstm_cell_606/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_606_3678499lstm_cell_606_3678501lstm_cell_606_3678503*
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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3678453n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_606_3678499lstm_cell_606_3678501lstm_cell_606_3678503*
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
while_body_3678512*
condR
while_cond_3678511*K
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
NoOpNoOp&^lstm_cell_606/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_606/StatefulPartitionedCall%lstm_cell_606/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�

�
0__inference_sequential_212_layer_call_fn_3679789
lstm_636_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_636_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3679764o
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
_user_specified_namelstm_636_input
�
�
*sequential_212_lstm_638_while_cond_3678149L
Hsequential_212_lstm_638_while_sequential_212_lstm_638_while_loop_counterR
Nsequential_212_lstm_638_while_sequential_212_lstm_638_while_maximum_iterations-
)sequential_212_lstm_638_while_placeholder/
+sequential_212_lstm_638_while_placeholder_1/
+sequential_212_lstm_638_while_placeholder_2/
+sequential_212_lstm_638_while_placeholder_3N
Jsequential_212_lstm_638_while_less_sequential_212_lstm_638_strided_slice_1e
asequential_212_lstm_638_while_sequential_212_lstm_638_while_cond_3678149___redundant_placeholder0e
asequential_212_lstm_638_while_sequential_212_lstm_638_while_cond_3678149___redundant_placeholder1e
asequential_212_lstm_638_while_sequential_212_lstm_638_while_cond_3678149___redundant_placeholder2e
asequential_212_lstm_638_while_sequential_212_lstm_638_while_cond_3678149___redundant_placeholder3*
&sequential_212_lstm_638_while_identity
�
"sequential_212/lstm_638/while/LessLess)sequential_212_lstm_638_while_placeholderJsequential_212_lstm_638_while_less_sequential_212_lstm_638_strided_slice_1*
T0*
_output_shapes
: {
&sequential_212/lstm_638/while/IdentityIdentity&sequential_212/lstm_638/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_212_lstm_638_while_identity/sequential_212/lstm_638/while/Identity:output:0*(
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679955

inputs>
,lstm_cell_608_matmul_readvariableop_resource:2(@
.lstm_cell_608_matmul_1_readvariableop_resource:
(;
-lstm_cell_608_biasadd_readvariableop_resource:(
identity��$lstm_cell_608/BiasAdd/ReadVariableOp�#lstm_cell_608/MatMul/ReadVariableOp�%lstm_cell_608/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_608/MatMul/ReadVariableOpReadVariableOp,lstm_cell_608_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_608/MatMulMatMulstrided_slice_2:output:0+lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_608_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_608/MatMul_1MatMulzeros:output:0-lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_608/addAddV2lstm_cell_608/MatMul:product:0 lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_608_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_608/BiasAddBiasAddlstm_cell_608/add:z:0,lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_608/splitSplit&lstm_cell_608/split/split_dim:output:0lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_608/SigmoidSigmoidlstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_1Sigmoidlstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_608/mulMullstm_cell_608/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_608/ReluRelulstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_1Mullstm_cell_608/Sigmoid:y:0 lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_608/add_1AddV2lstm_cell_608/mul:z:0lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_2Sigmoidlstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_608/Relu_1Relulstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_2Mullstm_cell_608/Sigmoid_2:y:0"lstm_cell_608/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_608_matmul_readvariableop_resource.lstm_cell_608_matmul_1_readvariableop_resource-lstm_cell_608_biasadd_readvariableop_resource*
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
while_body_3679871*
condR
while_cond_3679870*K
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
NoOpNoOp%^lstm_cell_608/BiasAdd/ReadVariableOp$^lstm_cell_608/MatMul/ReadVariableOp&^lstm_cell_608/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_608/BiasAdd/ReadVariableOp$lstm_cell_608/BiasAdd/ReadVariableOp2J
#lstm_cell_608/MatMul/ReadVariableOp#lstm_cell_608/MatMul/ReadVariableOp2N
%lstm_cell_608/MatMul_1/ReadVariableOp%lstm_cell_608/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3683569

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
*__inference_lstm_637_layer_call_fn_3682068

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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3680120s
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
*__inference_lstm_638_layer_call_fn_3682662
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679281o
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
while_cond_3678511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3678511___redundant_placeholder05
1while_while_cond_3678511___redundant_placeholder15
1while_while_cond_3678511___redundant_placeholder25
1while_while_cond_3678511___redundant_placeholder3
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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3683341

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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3680120

inputs?
,lstm_cell_607_matmul_readvariableop_resource:	d�A
.lstm_cell_607_matmul_1_readvariableop_resource:	2�<
-lstm_cell_607_biasadd_readvariableop_resource:	�
identity��$lstm_cell_607/BiasAdd/ReadVariableOp�#lstm_cell_607/MatMul/ReadVariableOp�%lstm_cell_607/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_607/MatMul/ReadVariableOpReadVariableOp,lstm_cell_607_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_607/MatMulMatMulstrided_slice_2:output:0+lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_607_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_607/MatMul_1MatMulzeros:output:0-lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_607/addAddV2lstm_cell_607/MatMul:product:0 lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_607_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_607/BiasAddBiasAddlstm_cell_607/add:z:0,lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_607/splitSplit&lstm_cell_607/split/split_dim:output:0lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_607/SigmoidSigmoidlstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_1Sigmoidlstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_607/mulMullstm_cell_607/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_607/ReluRelulstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_1Mullstm_cell_607/Sigmoid:y:0 lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_607/add_1AddV2lstm_cell_607/mul:z:0lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_2Sigmoidlstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_607/Relu_1Relulstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_2Mullstm_cell_607/Sigmoid_2:y:0"lstm_cell_607/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_607_matmul_readvariableop_resource.lstm_cell_607_matmul_1_readvariableop_resource-lstm_cell_607_biasadd_readvariableop_resource*
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
while_body_3680036*
condR
while_cond_3680035*K
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
NoOpNoOp%^lstm_cell_607/BiasAdd/ReadVariableOp$^lstm_cell_607/MatMul/ReadVariableOp&^lstm_cell_607/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_607/BiasAdd/ReadVariableOp$lstm_cell_607/BiasAdd/ReadVariableOp2J
#lstm_cell_607/MatMul/ReadVariableOp#lstm_cell_607/MatMul/ReadVariableOp2N
%lstm_cell_607/MatMul_1/ReadVariableOp%lstm_cell_607/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3683373

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
lstm_638_while_cond_3681317.
*lstm_638_while_lstm_638_while_loop_counter4
0lstm_638_while_lstm_638_while_maximum_iterations
lstm_638_while_placeholder 
lstm_638_while_placeholder_1 
lstm_638_while_placeholder_2 
lstm_638_while_placeholder_30
,lstm_638_while_less_lstm_638_strided_slice_1G
Clstm_638_while_lstm_638_while_cond_3681317___redundant_placeholder0G
Clstm_638_while_lstm_638_while_cond_3681317___redundant_placeholder1G
Clstm_638_while_lstm_638_while_cond_3681317___redundant_placeholder2G
Clstm_638_while_lstm_638_while_cond_3681317___redundant_placeholder3
lstm_638_while_identity
�
lstm_638/while/LessLesslstm_638_while_placeholder,lstm_638_while_less_lstm_638_strided_slice_1*
T0*
_output_shapes
: ]
lstm_638/while/IdentityIdentitylstm_638/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_638_while_identity lstm_638/while/Identity:output:0*(
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

lstm_637_while_body_3681179.
*lstm_637_while_lstm_637_while_loop_counter4
0lstm_637_while_lstm_637_while_maximum_iterations
lstm_637_while_placeholder 
lstm_637_while_placeholder_1 
lstm_637_while_placeholder_2 
lstm_637_while_placeholder_3-
)lstm_637_while_lstm_637_strided_slice_1_0i
elstm_637_while_tensorarrayv2read_tensorlistgetitem_lstm_637_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_637_while_lstm_cell_607_matmul_readvariableop_resource_0:	d�R
?lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource_0:	2�M
>lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource_0:	�
lstm_637_while_identity
lstm_637_while_identity_1
lstm_637_while_identity_2
lstm_637_while_identity_3
lstm_637_while_identity_4
lstm_637_while_identity_5+
'lstm_637_while_lstm_637_strided_slice_1g
clstm_637_while_tensorarrayv2read_tensorlistgetitem_lstm_637_tensorarrayunstack_tensorlistfromtensorN
;lstm_637_while_lstm_cell_607_matmul_readvariableop_resource:	d�P
=lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource:	2�K
<lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource:	���3lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp�2lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp�4lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp�
@lstm_637/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_637/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_637_while_tensorarrayv2read_tensorlistgetitem_lstm_637_tensorarrayunstack_tensorlistfromtensor_0lstm_637_while_placeholderIlstm_637/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_637/while/lstm_cell_607/MatMul/ReadVariableOpReadVariableOp=lstm_637_while_lstm_cell_607_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_637/while/lstm_cell_607/MatMulMatMul9lstm_637/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp?lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_637/while/lstm_cell_607/MatMul_1MatMullstm_637_while_placeholder_2<lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_637/while/lstm_cell_607/addAddV2-lstm_637/while/lstm_cell_607/MatMul:product:0/lstm_637/while/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp>lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_637/while/lstm_cell_607/BiasAddBiasAdd$lstm_637/while/lstm_cell_607/add:z:0;lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_637/while/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_637/while/lstm_cell_607/splitSplit5lstm_637/while/lstm_cell_607/split/split_dim:output:0-lstm_637/while/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_637/while/lstm_cell_607/SigmoidSigmoid+lstm_637/while/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_637/while/lstm_cell_607/Sigmoid_1Sigmoid+lstm_637/while/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_637/while/lstm_cell_607/mulMul*lstm_637/while/lstm_cell_607/Sigmoid_1:y:0lstm_637_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_637/while/lstm_cell_607/ReluRelu+lstm_637/while/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_637/while/lstm_cell_607/mul_1Mul(lstm_637/while/lstm_cell_607/Sigmoid:y:0/lstm_637/while/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_637/while/lstm_cell_607/add_1AddV2$lstm_637/while/lstm_cell_607/mul:z:0&lstm_637/while/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_637/while/lstm_cell_607/Sigmoid_2Sigmoid+lstm_637/while/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_637/while/lstm_cell_607/Relu_1Relu&lstm_637/while/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_637/while/lstm_cell_607/mul_2Mul*lstm_637/while/lstm_cell_607/Sigmoid_2:y:01lstm_637/while/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_637/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_637_while_placeholder_1lstm_637_while_placeholder&lstm_637/while/lstm_cell_607/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_637/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_637/while/addAddV2lstm_637_while_placeholderlstm_637/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_637/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_637/while/add_1AddV2*lstm_637_while_lstm_637_while_loop_counterlstm_637/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_637/while/IdentityIdentitylstm_637/while/add_1:z:0^lstm_637/while/NoOp*
T0*
_output_shapes
: �
lstm_637/while/Identity_1Identity0lstm_637_while_lstm_637_while_maximum_iterations^lstm_637/while/NoOp*
T0*
_output_shapes
: t
lstm_637/while/Identity_2Identitylstm_637/while/add:z:0^lstm_637/while/NoOp*
T0*
_output_shapes
: �
lstm_637/while/Identity_3IdentityClstm_637/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_637/while/NoOp*
T0*
_output_shapes
: �
lstm_637/while/Identity_4Identity&lstm_637/while/lstm_cell_607/mul_2:z:0^lstm_637/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_637/while/Identity_5Identity&lstm_637/while/lstm_cell_607/add_1:z:0^lstm_637/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_637/while/NoOpNoOp4^lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp3^lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp5^lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_637_while_identity lstm_637/while/Identity:output:0"?
lstm_637_while_identity_1"lstm_637/while/Identity_1:output:0"?
lstm_637_while_identity_2"lstm_637/while/Identity_2:output:0"?
lstm_637_while_identity_3"lstm_637/while/Identity_3:output:0"?
lstm_637_while_identity_4"lstm_637/while/Identity_4:output:0"?
lstm_637_while_identity_5"lstm_637/while/Identity_5:output:0"T
'lstm_637_while_lstm_637_strided_slice_1)lstm_637_while_lstm_637_strided_slice_1_0"~
<lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource>lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource_0"�
=lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource?lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource_0"|
;lstm_637_while_lstm_cell_607_matmul_readvariableop_resource=lstm_637_while_lstm_cell_607_matmul_readvariableop_resource_0"�
clstm_637_while_tensorarrayv2read_tensorlistgetitem_lstm_637_tensorarrayunstack_tensorlistfromtensorelstm_637_while_tensorarrayv2read_tensorlistgetitem_lstm_637_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp3lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp2h
2lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp2lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp2l
4lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp4lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682354
inputs_0?
,lstm_cell_607_matmul_readvariableop_resource:	d�A
.lstm_cell_607_matmul_1_readvariableop_resource:	2�<
-lstm_cell_607_biasadd_readvariableop_resource:	�
identity��$lstm_cell_607/BiasAdd/ReadVariableOp�#lstm_cell_607/MatMul/ReadVariableOp�%lstm_cell_607/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_607/MatMul/ReadVariableOpReadVariableOp,lstm_cell_607_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_607/MatMulMatMulstrided_slice_2:output:0+lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_607_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_607/MatMul_1MatMulzeros:output:0-lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_607/addAddV2lstm_cell_607/MatMul:product:0 lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_607_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_607/BiasAddBiasAddlstm_cell_607/add:z:0,lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_607/splitSplit&lstm_cell_607/split/split_dim:output:0lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_607/SigmoidSigmoidlstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_1Sigmoidlstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_607/mulMullstm_cell_607/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_607/ReluRelulstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_1Mullstm_cell_607/Sigmoid:y:0 lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_607/add_1AddV2lstm_cell_607/mul:z:0lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_2Sigmoidlstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_607/Relu_1Relulstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_2Mullstm_cell_607/Sigmoid_2:y:0"lstm_cell_607/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_607_matmul_readvariableop_resource.lstm_cell_607_matmul_1_readvariableop_resource-lstm_cell_607_biasadd_readvariableop_resource*
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
while_body_3682270*
condR
while_cond_3682269*K
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
NoOpNoOp%^lstm_cell_607/BiasAdd/ReadVariableOp$^lstm_cell_607/MatMul/ReadVariableOp&^lstm_cell_607/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_607/BiasAdd/ReadVariableOp$lstm_cell_607/BiasAdd/ReadVariableOp2J
#lstm_cell_607/MatMul/ReadVariableOp#lstm_cell_607/MatMul/ReadVariableOp2N
%lstm_cell_607/MatMul_1/ReadVariableOp%lstm_cell_607/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�8
�
while_body_3682270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_607_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_607_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_607_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_607_matmul_readvariableop_resource:	d�G
4while_lstm_cell_607_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_607_biasadd_readvariableop_resource:	���*while/lstm_cell_607/BiasAdd/ReadVariableOp�)while/lstm_cell_607/MatMul/ReadVariableOp�+while/lstm_cell_607/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_607/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_607_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_607/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_607_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_607/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_607/addAddV2$while/lstm_cell_607/MatMul:product:0&while/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_607_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_607/BiasAddBiasAddwhile/lstm_cell_607/add:z:02while/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_607/splitSplit,while/lstm_cell_607/split/split_dim:output:0$while/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_607/SigmoidSigmoid"while/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_1Sigmoid"while/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mulMul!while/lstm_cell_607/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_607/ReluRelu"while/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_1Mulwhile/lstm_cell_607/Sigmoid:y:0&while/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/add_1AddV2while/lstm_cell_607/mul:z:0while/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_2Sigmoid"while/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_607/Relu_1Reluwhile/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_2Mul!while/lstm_cell_607/Sigmoid_2:y:0(while/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_607/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_607/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_607/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_607/BiasAdd/ReadVariableOp*^while/lstm_cell_607/MatMul/ReadVariableOp,^while/lstm_cell_607/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_607_biasadd_readvariableop_resource5while_lstm_cell_607_biasadd_readvariableop_resource_0"n
4while_lstm_cell_607_matmul_1_readvariableop_resource6while_lstm_cell_607_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_607_matmul_readvariableop_resource4while_lstm_cell_607_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_607/BiasAdd/ReadVariableOp*while/lstm_cell_607/BiasAdd/ReadVariableOp2V
)while/lstm_cell_607/MatMul/ReadVariableOp)while/lstm_cell_607/MatMul/ReadVariableOp2Z
+while/lstm_cell_607/MatMul_1/ReadVariableOp+while/lstm_cell_607/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3683439

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
while_body_3679871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_608_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_608_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_608_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_608_matmul_readvariableop_resource:2(F
4while_lstm_cell_608_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_608_biasadd_readvariableop_resource:(��*while/lstm_cell_608/BiasAdd/ReadVariableOp�)while/lstm_cell_608/MatMul/ReadVariableOp�+while/lstm_cell_608/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_608/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_608_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_608/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_608_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_608/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_608/addAddV2$while/lstm_cell_608/MatMul:product:0&while/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_608_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_608/BiasAddBiasAddwhile/lstm_cell_608/add:z:02while/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_608/splitSplit,while/lstm_cell_608/split/split_dim:output:0$while/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_608/SigmoidSigmoid"while/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_1Sigmoid"while/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mulMul!while/lstm_cell_608/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_608/ReluRelu"while/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_1Mulwhile/lstm_cell_608/Sigmoid:y:0&while/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/add_1AddV2while/lstm_cell_608/mul:z:0while/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_2Sigmoid"while/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_608/Relu_1Reluwhile/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_2Mul!while/lstm_cell_608/Sigmoid_2:y:0(while/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_608/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_608/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_608/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_608/BiasAdd/ReadVariableOp*^while/lstm_cell_608/MatMul/ReadVariableOp,^while/lstm_cell_608/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_608_biasadd_readvariableop_resource5while_lstm_cell_608_biasadd_readvariableop_resource_0"n
4while_lstm_cell_608_matmul_1_readvariableop_resource6while_lstm_cell_608_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_608_matmul_readvariableop_resource4while_lstm_cell_608_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_608/BiasAdd/ReadVariableOp*while/lstm_cell_608/BiasAdd/ReadVariableOp2V
)while/lstm_cell_608/MatMul/ReadVariableOp)while/lstm_cell_608/MatMul/ReadVariableOp2Z
+while/lstm_cell_608/MatMul_1/ReadVariableOp+while/lstm_cell_608/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3681797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_606_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_606_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_606_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_606_matmul_readvariableop_resource:	�G
4while_lstm_cell_606_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_606_biasadd_readvariableop_resource:	���*while/lstm_cell_606/BiasAdd/ReadVariableOp�)while/lstm_cell_606/MatMul/ReadVariableOp�+while/lstm_cell_606/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_606/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_606_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_606/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_606_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_606/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_606/addAddV2$while/lstm_cell_606/MatMul:product:0&while/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_606_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_606/BiasAddBiasAddwhile/lstm_cell_606/add:z:02while/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_606/splitSplit,while/lstm_cell_606/split/split_dim:output:0$while/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_606/SigmoidSigmoid"while/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_1Sigmoid"while/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mulMul!while/lstm_cell_606/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_606/ReluRelu"while/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_1Mulwhile/lstm_cell_606/Sigmoid:y:0&while/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/add_1AddV2while/lstm_cell_606/mul:z:0while/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_2Sigmoid"while/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_606/Relu_1Reluwhile/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_2Mul!while/lstm_cell_606/Sigmoid_2:y:0(while/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_606/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_606/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_606/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_606/BiasAdd/ReadVariableOp*^while/lstm_cell_606/MatMul/ReadVariableOp,^while/lstm_cell_606/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_606_biasadd_readvariableop_resource5while_lstm_cell_606_biasadd_readvariableop_resource_0"n
4while_lstm_cell_606_matmul_1_readvariableop_resource6while_lstm_cell_606_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_606_matmul_readvariableop_resource4while_lstm_cell_606_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_606/BiasAdd/ReadVariableOp*while/lstm_cell_606/BiasAdd/ReadVariableOp2V
)while/lstm_cell_606/MatMul/ReadVariableOp)while/lstm_cell_606/MatMul/ReadVariableOp2Z
+while/lstm_cell_606/MatMul_1/ReadVariableOp+while/lstm_cell_606/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_636_layer_call_fn_3681419
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3678390|
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
�#
�
while_body_3678321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_606_3678345_0:	�0
while_lstm_cell_606_3678347_0:	d�,
while_lstm_cell_606_3678349_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_606_3678345:	�.
while_lstm_cell_606_3678347:	d�*
while_lstm_cell_606_3678349:	���+while/lstm_cell_606/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_606/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_606_3678345_0while_lstm_cell_606_3678347_0while_lstm_cell_606_3678349_0*
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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3678307�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_606/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_606/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_606/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_606/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_606_3678345while_lstm_cell_606_3678345_0"<
while_lstm_cell_606_3678347while_lstm_cell_606_3678347_0"<
while_lstm_cell_606_3678349while_lstm_cell_606_3678349_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_606/StatefulPartitionedCall+while/lstm_cell_606/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3679589

inputs?
,lstm_cell_607_matmul_readvariableop_resource:	d�A
.lstm_cell_607_matmul_1_readvariableop_resource:	2�<
-lstm_cell_607_biasadd_readvariableop_resource:	�
identity��$lstm_cell_607/BiasAdd/ReadVariableOp�#lstm_cell_607/MatMul/ReadVariableOp�%lstm_cell_607/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_607/MatMul/ReadVariableOpReadVariableOp,lstm_cell_607_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_607/MatMulMatMulstrided_slice_2:output:0+lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_607_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_607/MatMul_1MatMulzeros:output:0-lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_607/addAddV2lstm_cell_607/MatMul:product:0 lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_607_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_607/BiasAddBiasAddlstm_cell_607/add:z:0,lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_607/splitSplit&lstm_cell_607/split/split_dim:output:0lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_607/SigmoidSigmoidlstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_1Sigmoidlstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_607/mulMullstm_cell_607/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_607/ReluRelulstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_1Mullstm_cell_607/Sigmoid:y:0 lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_607/add_1AddV2lstm_cell_607/mul:z:0lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_607/Sigmoid_2Sigmoidlstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_607/Relu_1Relulstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_607/mul_2Mullstm_cell_607/Sigmoid_2:y:0"lstm_cell_607/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_607_matmul_readvariableop_resource.lstm_cell_607_matmul_1_readvariableop_resource-lstm_cell_607_biasadd_readvariableop_resource*
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
while_body_3679505*
condR
while_cond_3679504*K
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
NoOpNoOp%^lstm_cell_607/BiasAdd/ReadVariableOp$^lstm_cell_607/MatMul/ReadVariableOp&^lstm_cell_607/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_607/BiasAdd/ReadVariableOp$lstm_cell_607/BiasAdd/ReadVariableOp2J
#lstm_cell_607/MatMul/ReadVariableOp#lstm_cell_607/MatMul/ReadVariableOp2N
%lstm_cell_607/MatMul_1/ReadVariableOp%lstm_cell_607/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_3682269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3682269___redundant_placeholder05
1while_while_cond_3682269___redundant_placeholder15
1while_while_cond_3682269___redundant_placeholder25
1while_while_cond_3682269___redundant_placeholder3
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
while_body_3679505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_607_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_607_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_607_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_607_matmul_readvariableop_resource:	d�G
4while_lstm_cell_607_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_607_biasadd_readvariableop_resource:	���*while/lstm_cell_607/BiasAdd/ReadVariableOp�)while/lstm_cell_607/MatMul/ReadVariableOp�+while/lstm_cell_607/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_607/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_607_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_607/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_607_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_607/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_607/addAddV2$while/lstm_cell_607/MatMul:product:0&while/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_607_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_607/BiasAddBiasAddwhile/lstm_cell_607/add:z:02while/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_607/splitSplit,while/lstm_cell_607/split/split_dim:output:0$while/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_607/SigmoidSigmoid"while/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_1Sigmoid"while/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mulMul!while/lstm_cell_607/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_607/ReluRelu"while/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_1Mulwhile/lstm_cell_607/Sigmoid:y:0&while/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/add_1AddV2while/lstm_cell_607/mul:z:0while/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_607/Sigmoid_2Sigmoid"while/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_607/Relu_1Reluwhile/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_607/mul_2Mul!while/lstm_cell_607/Sigmoid_2:y:0(while/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_607/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_607/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_607/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_607/BiasAdd/ReadVariableOp*^while/lstm_cell_607/MatMul/ReadVariableOp,^while/lstm_cell_607/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_607_biasadd_readvariableop_resource5while_lstm_cell_607_biasadd_readvariableop_resource_0"n
4while_lstm_cell_607_matmul_1_readvariableop_resource6while_lstm_cell_607_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_607_matmul_readvariableop_resource4while_lstm_cell_607_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_607/BiasAdd/ReadVariableOp*while/lstm_cell_607/BiasAdd/ReadVariableOp2V
)while/lstm_cell_607/MatMul/ReadVariableOp)while/lstm_cell_607/MatMul/ReadVariableOp2Z
+while/lstm_cell_607/MatMul_1/ReadVariableOp+while/lstm_cell_607/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3682886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_608_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_608_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_608_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_608_matmul_readvariableop_resource:2(F
4while_lstm_cell_608_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_608_biasadd_readvariableop_resource:(��*while/lstm_cell_608/BiasAdd/ReadVariableOp�)while/lstm_cell_608/MatMul/ReadVariableOp�+while/lstm_cell_608/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_608/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_608_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_608/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_608_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_608/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_608/addAddV2$while/lstm_cell_608/MatMul:product:0&while/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_608_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_608/BiasAddBiasAddwhile/lstm_cell_608/add:z:02while/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_608/splitSplit,while/lstm_cell_608/split/split_dim:output:0$while/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_608/SigmoidSigmoid"while/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_1Sigmoid"while/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mulMul!while/lstm_cell_608/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_608/ReluRelu"while/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_1Mulwhile/lstm_cell_608/Sigmoid:y:0&while/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/add_1AddV2while/lstm_cell_608/mul:z:0while/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_2Sigmoid"while/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_608/Relu_1Reluwhile/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_2Mul!while/lstm_cell_608/Sigmoid_2:y:0(while/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_608/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_608/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_608/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_608/BiasAdd/ReadVariableOp*^while/lstm_cell_608/MatMul/ReadVariableOp,^while/lstm_cell_608/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_608_biasadd_readvariableop_resource5while_lstm_cell_608_biasadd_readvariableop_resource_0"n
4while_lstm_cell_608_matmul_1_readvariableop_resource6while_lstm_cell_608_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_608_matmul_readvariableop_resource4while_lstm_cell_608_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_608/BiasAdd/ReadVariableOp*while/lstm_cell_608/BiasAdd/ReadVariableOp2V
)while/lstm_cell_608/MatMul/ReadVariableOp)while/lstm_cell_608/MatMul/ReadVariableOp2Z
+while/lstm_cell_608/MatMul_1/ReadVariableOp+while/lstm_cell_608/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3679870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3679870___redundant_placeholder05
1while_while_cond_3679870___redundant_placeholder15
1while_while_cond_3679870___redundant_placeholder25
1while_while_cond_3679870___redundant_placeholder3
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
while_cond_3681939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3681939___redundant_placeholder05
1while_while_cond_3681939___redundant_placeholder15
1while_while_cond_3681939___redundant_placeholder25
1while_while_cond_3681939___redundant_placeholder3
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
while_body_3681511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_606_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_606_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_606_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_606_matmul_readvariableop_resource:	�G
4while_lstm_cell_606_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_606_biasadd_readvariableop_resource:	���*while/lstm_cell_606/BiasAdd/ReadVariableOp�)while/lstm_cell_606/MatMul/ReadVariableOp�+while/lstm_cell_606/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_606/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_606_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_606/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_606_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_606/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_606/addAddV2$while/lstm_cell_606/MatMul:product:0&while/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_606_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_606/BiasAddBiasAddwhile/lstm_cell_606/add:z:02while/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_606/splitSplit,while/lstm_cell_606/split/split_dim:output:0$while/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_606/SigmoidSigmoid"while/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_1Sigmoid"while/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mulMul!while/lstm_cell_606/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_606/ReluRelu"while/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_1Mulwhile/lstm_cell_606/Sigmoid:y:0&while/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/add_1AddV2while/lstm_cell_606/mul:z:0while/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_606/Sigmoid_2Sigmoid"while/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_606/Relu_1Reluwhile/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_606/mul_2Mul!while/lstm_cell_606/Sigmoid_2:y:0(while/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_606/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_606/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_606/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_606/BiasAdd/ReadVariableOp*^while/lstm_cell_606/MatMul/ReadVariableOp,^while/lstm_cell_606/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_606_biasadd_readvariableop_resource5while_lstm_cell_606_biasadd_readvariableop_resource_0"n
4while_lstm_cell_606_matmul_1_readvariableop_resource6while_lstm_cell_606_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_606_matmul_readvariableop_resource4while_lstm_cell_606_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_606/BiasAdd/ReadVariableOp*while/lstm_cell_606/BiasAdd/ReadVariableOp2V
)while/lstm_cell_606/MatMul/ReadVariableOp)while/lstm_cell_606/MatMul/ReadVariableOp2Z
+while/lstm_cell_606/MatMul_1/ReadVariableOp+while/lstm_cell_606/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3682827
inputs_0>
,lstm_cell_608_matmul_readvariableop_resource:2(@
.lstm_cell_608_matmul_1_readvariableop_resource:
(;
-lstm_cell_608_biasadd_readvariableop_resource:(
identity��$lstm_cell_608/BiasAdd/ReadVariableOp�#lstm_cell_608/MatMul/ReadVariableOp�%lstm_cell_608/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_608/MatMul/ReadVariableOpReadVariableOp,lstm_cell_608_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_608/MatMulMatMulstrided_slice_2:output:0+lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_608_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_608/MatMul_1MatMulzeros:output:0-lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_608/addAddV2lstm_cell_608/MatMul:product:0 lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_608_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_608/BiasAddBiasAddlstm_cell_608/add:z:0,lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_608/splitSplit&lstm_cell_608/split/split_dim:output:0lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_608/SigmoidSigmoidlstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_1Sigmoidlstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_608/mulMullstm_cell_608/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_608/ReluRelulstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_1Mullstm_cell_608/Sigmoid:y:0 lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_608/add_1AddV2lstm_cell_608/mul:z:0lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_2Sigmoidlstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_608/Relu_1Relulstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_2Mullstm_cell_608/Sigmoid_2:y:0"lstm_cell_608/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_608_matmul_readvariableop_resource.lstm_cell_608_matmul_1_readvariableop_resource-lstm_cell_608_biasadd_readvariableop_resource*
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
while_body_3682743*
condR
while_cond_3682742*K
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
NoOpNoOp%^lstm_cell_608/BiasAdd/ReadVariableOp$^lstm_cell_608/MatMul/ReadVariableOp&^lstm_cell_608/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_608/BiasAdd/ReadVariableOp$lstm_cell_608/BiasAdd/ReadVariableOp2J
#lstm_cell_608/MatMul/ReadVariableOp#lstm_cell_608/MatMul/ReadVariableOp2N
%lstm_cell_608/MatMul_1/ReadVariableOp%lstm_cell_608/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680435
lstm_636_input#
lstm_636_3680408:	�#
lstm_636_3680410:	d�
lstm_636_3680412:	�#
lstm_637_3680415:	d�#
lstm_637_3680417:	2�
lstm_637_3680419:	�"
lstm_638_3680422:2("
lstm_638_3680424:
(
lstm_638_3680426:(#
dense_212_3680429:

dense_212_3680431:
identity��!dense_212/StatefulPartitionedCall� lstm_636/StatefulPartitionedCall� lstm_637/StatefulPartitionedCall� lstm_638/StatefulPartitionedCall�
 lstm_636/StatefulPartitionedCallStatefulPartitionedCalllstm_636_inputlstm_636_3680408lstm_636_3680410lstm_636_3680412*
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3679439�
 lstm_637/StatefulPartitionedCallStatefulPartitionedCall)lstm_636/StatefulPartitionedCall:output:0lstm_637_3680415lstm_637_3680417lstm_637_3680419*
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3679589�
 lstm_638/StatefulPartitionedCallStatefulPartitionedCall)lstm_637/StatefulPartitionedCall:output:0lstm_638_3680422lstm_638_3680424lstm_638_3680426*
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679739�
!dense_212/StatefulPartitionedCallStatefulPartitionedCall)lstm_638/StatefulPartitionedCall:output:0dense_212_3680429dense_212_3680431*
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
F__inference_dense_212_layer_call_and_return_conditional_losses_3679757y
IdentityIdentity*dense_212/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_212/StatefulPartitionedCall!^lstm_636/StatefulPartitionedCall!^lstm_637/StatefulPartitionedCall!^lstm_638/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_212/StatefulPartitionedCall!dense_212/StatefulPartitionedCall2D
 lstm_636/StatefulPartitionedCall lstm_636/StatefulPartitionedCall2D
 lstm_637/StatefulPartitionedCall lstm_637/StatefulPartitionedCall2D
 lstm_638/StatefulPartitionedCall lstm_638/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_636_input
�
�
while_cond_3678861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3678861___redundant_placeholder05
1while_while_cond_3678861___redundant_placeholder15
1while_while_cond_3678861___redundant_placeholder25
1while_while_cond_3678861___redundant_placeholder3
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
F__inference_dense_212_layer_call_and_return_conditional_losses_3679757

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

�
lstm_637_while_cond_3680751.
*lstm_637_while_lstm_637_while_loop_counter4
0lstm_637_while_lstm_637_while_maximum_iterations
lstm_637_while_placeholder 
lstm_637_while_placeholder_1 
lstm_637_while_placeholder_2 
lstm_637_while_placeholder_30
,lstm_637_while_less_lstm_637_strided_slice_1G
Clstm_637_while_lstm_637_while_cond_3680751___redundant_placeholder0G
Clstm_637_while_lstm_637_while_cond_3680751___redundant_placeholder1G
Clstm_637_while_lstm_637_while_cond_3680751___redundant_placeholder2G
Clstm_637_while_lstm_637_while_cond_3680751___redundant_placeholder3
lstm_637_while_identity
�
lstm_637/while/LessLesslstm_637_while_placeholder,lstm_637_while_less_lstm_637_strided_slice_1*
T0*
_output_shapes
: ]
lstm_637/while/IdentityIdentitylstm_637/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_637_while_identity lstm_637/while/Identity:output:0*(
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
while_cond_3683028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3683028___redundant_placeholder05
1while_while_cond_3683028___redundant_placeholder15
1while_while_cond_3683028___redundant_placeholder25
1while_while_cond_3683028___redundant_placeholder3
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
while_cond_3679504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3679504___redundant_placeholder05
1while_while_cond_3679504___redundant_placeholder15
1while_while_cond_3679504___redundant_placeholder25
1while_while_cond_3679504___redundant_placeholder3
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
while_body_3683029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_608_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_608_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_608_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_608_matmul_readvariableop_resource:2(F
4while_lstm_cell_608_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_608_biasadd_readvariableop_resource:(��*while/lstm_cell_608/BiasAdd/ReadVariableOp�)while/lstm_cell_608/MatMul/ReadVariableOp�+while/lstm_cell_608/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_608/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_608_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_608/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_608_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_608/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_608/addAddV2$while/lstm_cell_608/MatMul:product:0&while/lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_608_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_608/BiasAddBiasAddwhile/lstm_cell_608/add:z:02while/lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_608/splitSplit,while/lstm_cell_608/split/split_dim:output:0$while/lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_608/SigmoidSigmoid"while/lstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_1Sigmoid"while/lstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mulMul!while/lstm_cell_608/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_608/ReluRelu"while/lstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_1Mulwhile/lstm_cell_608/Sigmoid:y:0&while/lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/add_1AddV2while/lstm_cell_608/mul:z:0while/lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_608/Sigmoid_2Sigmoid"while/lstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_608/Relu_1Reluwhile/lstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_608/mul_2Mul!while/lstm_cell_608/Sigmoid_2:y:0(while/lstm_cell_608/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_608/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_608/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_608/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_608/BiasAdd/ReadVariableOp*^while/lstm_cell_608/MatMul/ReadVariableOp,^while/lstm_cell_608/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_608_biasadd_readvariableop_resource5while_lstm_cell_608_biasadd_readvariableop_resource_0"n
4while_lstm_cell_608_matmul_1_readvariableop_resource6while_lstm_cell_608_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_608_matmul_readvariableop_resource4while_lstm_cell_608_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_608/BiasAdd/ReadVariableOp*while/lstm_cell_608/BiasAdd/ReadVariableOp2V
)while/lstm_cell_608/MatMul/ReadVariableOp)while/lstm_cell_608/MatMul/ReadVariableOp2Z
+while/lstm_cell_608/MatMul_1/ReadVariableOp+while/lstm_cell_608/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3678453

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
�C
�

lstm_636_while_body_3680613.
*lstm_636_while_lstm_636_while_loop_counter4
0lstm_636_while_lstm_636_while_maximum_iterations
lstm_636_while_placeholder 
lstm_636_while_placeholder_1 
lstm_636_while_placeholder_2 
lstm_636_while_placeholder_3-
)lstm_636_while_lstm_636_strided_slice_1_0i
elstm_636_while_tensorarrayv2read_tensorlistgetitem_lstm_636_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_636_while_lstm_cell_606_matmul_readvariableop_resource_0:	�R
?lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource_0:	d�M
>lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource_0:	�
lstm_636_while_identity
lstm_636_while_identity_1
lstm_636_while_identity_2
lstm_636_while_identity_3
lstm_636_while_identity_4
lstm_636_while_identity_5+
'lstm_636_while_lstm_636_strided_slice_1g
clstm_636_while_tensorarrayv2read_tensorlistgetitem_lstm_636_tensorarrayunstack_tensorlistfromtensorN
;lstm_636_while_lstm_cell_606_matmul_readvariableop_resource:	�P
=lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource:	d�K
<lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource:	���3lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp�2lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp�4lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp�
@lstm_636/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_636/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_636_while_tensorarrayv2read_tensorlistgetitem_lstm_636_tensorarrayunstack_tensorlistfromtensor_0lstm_636_while_placeholderIlstm_636/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_636/while/lstm_cell_606/MatMul/ReadVariableOpReadVariableOp=lstm_636_while_lstm_cell_606_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_636/while/lstm_cell_606/MatMulMatMul9lstm_636/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp?lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_636/while/lstm_cell_606/MatMul_1MatMullstm_636_while_placeholder_2<lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_636/while/lstm_cell_606/addAddV2-lstm_636/while/lstm_cell_606/MatMul:product:0/lstm_636/while/lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp>lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_636/while/lstm_cell_606/BiasAddBiasAdd$lstm_636/while/lstm_cell_606/add:z:0;lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_636/while/lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_636/while/lstm_cell_606/splitSplit5lstm_636/while/lstm_cell_606/split/split_dim:output:0-lstm_636/while/lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_636/while/lstm_cell_606/SigmoidSigmoid+lstm_636/while/lstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_636/while/lstm_cell_606/Sigmoid_1Sigmoid+lstm_636/while/lstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_636/while/lstm_cell_606/mulMul*lstm_636/while/lstm_cell_606/Sigmoid_1:y:0lstm_636_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_636/while/lstm_cell_606/ReluRelu+lstm_636/while/lstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_636/while/lstm_cell_606/mul_1Mul(lstm_636/while/lstm_cell_606/Sigmoid:y:0/lstm_636/while/lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_636/while/lstm_cell_606/add_1AddV2$lstm_636/while/lstm_cell_606/mul:z:0&lstm_636/while/lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_636/while/lstm_cell_606/Sigmoid_2Sigmoid+lstm_636/while/lstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_636/while/lstm_cell_606/Relu_1Relu&lstm_636/while/lstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_636/while/lstm_cell_606/mul_2Mul*lstm_636/while/lstm_cell_606/Sigmoid_2:y:01lstm_636/while/lstm_cell_606/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_636/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_636_while_placeholder_1lstm_636_while_placeholder&lstm_636/while/lstm_cell_606/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_636/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_636/while/addAddV2lstm_636_while_placeholderlstm_636/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_636/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_636/while/add_1AddV2*lstm_636_while_lstm_636_while_loop_counterlstm_636/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_636/while/IdentityIdentitylstm_636/while/add_1:z:0^lstm_636/while/NoOp*
T0*
_output_shapes
: �
lstm_636/while/Identity_1Identity0lstm_636_while_lstm_636_while_maximum_iterations^lstm_636/while/NoOp*
T0*
_output_shapes
: t
lstm_636/while/Identity_2Identitylstm_636/while/add:z:0^lstm_636/while/NoOp*
T0*
_output_shapes
: �
lstm_636/while/Identity_3IdentityClstm_636/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_636/while/NoOp*
T0*
_output_shapes
: �
lstm_636/while/Identity_4Identity&lstm_636/while/lstm_cell_606/mul_2:z:0^lstm_636/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_636/while/Identity_5Identity&lstm_636/while/lstm_cell_606/add_1:z:0^lstm_636/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_636/while/NoOpNoOp4^lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp3^lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp5^lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_636_while_identity lstm_636/while/Identity:output:0"?
lstm_636_while_identity_1"lstm_636/while/Identity_1:output:0"?
lstm_636_while_identity_2"lstm_636/while/Identity_2:output:0"?
lstm_636_while_identity_3"lstm_636/while/Identity_3:output:0"?
lstm_636_while_identity_4"lstm_636/while/Identity_4:output:0"?
lstm_636_while_identity_5"lstm_636/while/Identity_5:output:0"T
'lstm_636_while_lstm_636_strided_slice_1)lstm_636_while_lstm_636_strided_slice_1_0"~
<lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource>lstm_636_while_lstm_cell_606_biasadd_readvariableop_resource_0"�
=lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource?lstm_636_while_lstm_cell_606_matmul_1_readvariableop_resource_0"|
;lstm_636_while_lstm_cell_606_matmul_readvariableop_resource=lstm_636_while_lstm_cell_606_matmul_readvariableop_resource_0"�
clstm_636_while_tensorarrayv2read_tensorlistgetitem_lstm_636_tensorarrayunstack_tensorlistfromtensorelstm_636_while_tensorarrayv2read_tensorlistgetitem_lstm_636_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp3lstm_636/while/lstm_cell_606/BiasAdd/ReadVariableOp2h
2lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp2lstm_636/while/lstm_cell_606/MatMul/ReadVariableOp2l
4lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp4lstm_636/while/lstm_cell_606/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3679739

inputs>
,lstm_cell_608_matmul_readvariableop_resource:2(@
.lstm_cell_608_matmul_1_readvariableop_resource:
(;
-lstm_cell_608_biasadd_readvariableop_resource:(
identity��$lstm_cell_608/BiasAdd/ReadVariableOp�#lstm_cell_608/MatMul/ReadVariableOp�%lstm_cell_608/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_608/MatMul/ReadVariableOpReadVariableOp,lstm_cell_608_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_608/MatMulMatMulstrided_slice_2:output:0+lstm_cell_608/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_608/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_608_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_608/MatMul_1MatMulzeros:output:0-lstm_cell_608/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_608/addAddV2lstm_cell_608/MatMul:product:0 lstm_cell_608/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_608/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_608_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_608/BiasAddBiasAddlstm_cell_608/add:z:0,lstm_cell_608/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_608/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_608/splitSplit&lstm_cell_608/split/split_dim:output:0lstm_cell_608/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_608/SigmoidSigmoidlstm_cell_608/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_1Sigmoidlstm_cell_608/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_608/mulMullstm_cell_608/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_608/ReluRelulstm_cell_608/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_1Mullstm_cell_608/Sigmoid:y:0 lstm_cell_608/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_608/add_1AddV2lstm_cell_608/mul:z:0lstm_cell_608/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_608/Sigmoid_2Sigmoidlstm_cell_608/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_608/Relu_1Relulstm_cell_608/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_608/mul_2Mullstm_cell_608/Sigmoid_2:y:0"lstm_cell_608/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_608_matmul_readvariableop_resource.lstm_cell_608_matmul_1_readvariableop_resource-lstm_cell_608_biasadd_readvariableop_resource*
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
while_body_3679655*
condR
while_cond_3679654*K
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
NoOpNoOp%^lstm_cell_608/BiasAdd/ReadVariableOp$^lstm_cell_608/MatMul/ReadVariableOp&^lstm_cell_608/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_608/BiasAdd/ReadVariableOp$lstm_cell_608/BiasAdd/ReadVariableOp2J
#lstm_cell_608/MatMul/ReadVariableOp#lstm_cell_608/MatMul/ReadVariableOp2N
%lstm_cell_608/MatMul_1/ReadVariableOp%lstm_cell_608/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�K
�
E__inference_lstm_636_layer_call_and_return_conditional_losses_3681595
inputs_0?
,lstm_cell_606_matmul_readvariableop_resource:	�A
.lstm_cell_606_matmul_1_readvariableop_resource:	d�<
-lstm_cell_606_biasadd_readvariableop_resource:	�
identity��$lstm_cell_606/BiasAdd/ReadVariableOp�#lstm_cell_606/MatMul/ReadVariableOp�%lstm_cell_606/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_606/MatMul/ReadVariableOpReadVariableOp,lstm_cell_606_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_606/MatMulMatMulstrided_slice_2:output:0+lstm_cell_606/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_606/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_606_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_606/MatMul_1MatMulzeros:output:0-lstm_cell_606/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_606/addAddV2lstm_cell_606/MatMul:product:0 lstm_cell_606/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_606/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_606_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_606/BiasAddBiasAddlstm_cell_606/add:z:0,lstm_cell_606/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_606/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_606/splitSplit&lstm_cell_606/split/split_dim:output:0lstm_cell_606/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_606/SigmoidSigmoidlstm_cell_606/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_1Sigmoidlstm_cell_606/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_606/mulMullstm_cell_606/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_606/ReluRelulstm_cell_606/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_1Mullstm_cell_606/Sigmoid:y:0 lstm_cell_606/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_606/add_1AddV2lstm_cell_606/mul:z:0lstm_cell_606/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_606/Sigmoid_2Sigmoidlstm_cell_606/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_606/Relu_1Relulstm_cell_606/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_606/mul_2Mullstm_cell_606/Sigmoid_2:y:0"lstm_cell_606/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_606_matmul_readvariableop_resource.lstm_cell_606_matmul_1_readvariableop_resource-lstm_cell_606_biasadd_readvariableop_resource*
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
while_body_3681511*
condR
while_cond_3681510*K
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
NoOpNoOp%^lstm_cell_606/BiasAdd/ReadVariableOp$^lstm_cell_606/MatMul/ReadVariableOp&^lstm_cell_606/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_606/BiasAdd/ReadVariableOp$lstm_cell_606/BiasAdd/ReadVariableOp2J
#lstm_cell_606/MatMul/ReadVariableOp#lstm_cell_606/MatMul/ReadVariableOp2N
%lstm_cell_606/MatMul_1/ReadVariableOp%lstm_cell_606/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
*__inference_lstm_636_layer_call_fn_3681452

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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3680285s
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
while_cond_3681510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3681510___redundant_placeholder05
1while_while_cond_3681510___redundant_placeholder15
1while_while_cond_3681510___redundant_placeholder25
1while_while_cond_3681510___redundant_placeholder3
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
while_cond_3682885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3682885___redundant_placeholder05
1while_while_cond_3682885___redundant_placeholder15
1while_while_cond_3682885___redundant_placeholder25
1while_while_cond_3682885___redundant_placeholder3
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
while_cond_3681653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3681653___redundant_placeholder05
1while_while_cond_3681653___redundant_placeholder15
1while_while_cond_3681653___redundant_placeholder25
1while_while_cond_3681653___redundant_placeholder3
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
while_cond_3682742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3682742___redundant_placeholder05
1while_while_cond_3682742___redundant_placeholder15
1while_while_cond_3682742___redundant_placeholder25
1while_while_cond_3682742___redundant_placeholder3
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
*sequential_212_lstm_637_while_body_3678011L
Hsequential_212_lstm_637_while_sequential_212_lstm_637_while_loop_counterR
Nsequential_212_lstm_637_while_sequential_212_lstm_637_while_maximum_iterations-
)sequential_212_lstm_637_while_placeholder/
+sequential_212_lstm_637_while_placeholder_1/
+sequential_212_lstm_637_while_placeholder_2/
+sequential_212_lstm_637_while_placeholder_3K
Gsequential_212_lstm_637_while_sequential_212_lstm_637_strided_slice_1_0�
�sequential_212_lstm_637_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_637_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_212_lstm_637_while_lstm_cell_607_matmul_readvariableop_resource_0:	d�a
Nsequential_212_lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource_0:	2�\
Msequential_212_lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource_0:	�*
&sequential_212_lstm_637_while_identity,
(sequential_212_lstm_637_while_identity_1,
(sequential_212_lstm_637_while_identity_2,
(sequential_212_lstm_637_while_identity_3,
(sequential_212_lstm_637_while_identity_4,
(sequential_212_lstm_637_while_identity_5I
Esequential_212_lstm_637_while_sequential_212_lstm_637_strided_slice_1�
�sequential_212_lstm_637_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_637_tensorarrayunstack_tensorlistfromtensor]
Jsequential_212_lstm_637_while_lstm_cell_607_matmul_readvariableop_resource:	d�_
Lsequential_212_lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource:	2�Z
Ksequential_212_lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource:	���Bsequential_212/lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp�Asequential_212/lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp�Csequential_212/lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp�
Osequential_212/lstm_637/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
Asequential_212/lstm_637/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_212_lstm_637_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_637_tensorarrayunstack_tensorlistfromtensor_0)sequential_212_lstm_637_while_placeholderXsequential_212/lstm_637/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
Asequential_212/lstm_637/while/lstm_cell_607/MatMul/ReadVariableOpReadVariableOpLsequential_212_lstm_637_while_lstm_cell_607_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_212/lstm_637/while/lstm_cell_607/MatMulMatMulHsequential_212/lstm_637/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_212/lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_212/lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOpReadVariableOpNsequential_212_lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
4sequential_212/lstm_637/while/lstm_cell_607/MatMul_1MatMul+sequential_212_lstm_637_while_placeholder_2Ksequential_212/lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_212/lstm_637/while/lstm_cell_607/addAddV2<sequential_212/lstm_637/while/lstm_cell_607/MatMul:product:0>sequential_212/lstm_637/while/lstm_cell_607/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_212/lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOpReadVariableOpMsequential_212_lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_212/lstm_637/while/lstm_cell_607/BiasAddBiasAdd3sequential_212/lstm_637/while/lstm_cell_607/add:z:0Jsequential_212/lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_212/lstm_637/while/lstm_cell_607/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_212/lstm_637/while/lstm_cell_607/splitSplitDsequential_212/lstm_637/while/lstm_cell_607/split/split_dim:output:0<sequential_212/lstm_637/while/lstm_cell_607/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
3sequential_212/lstm_637/while/lstm_cell_607/SigmoidSigmoid:sequential_212/lstm_637/while/lstm_cell_607/split:output:0*
T0*'
_output_shapes
:���������2�
5sequential_212/lstm_637/while/lstm_cell_607/Sigmoid_1Sigmoid:sequential_212/lstm_637/while/lstm_cell_607/split:output:1*
T0*'
_output_shapes
:���������2�
/sequential_212/lstm_637/while/lstm_cell_607/mulMul9sequential_212/lstm_637/while/lstm_cell_607/Sigmoid_1:y:0+sequential_212_lstm_637_while_placeholder_3*
T0*'
_output_shapes
:���������2�
0sequential_212/lstm_637/while/lstm_cell_607/ReluRelu:sequential_212/lstm_637/while/lstm_cell_607/split:output:2*
T0*'
_output_shapes
:���������2�
1sequential_212/lstm_637/while/lstm_cell_607/mul_1Mul7sequential_212/lstm_637/while/lstm_cell_607/Sigmoid:y:0>sequential_212/lstm_637/while/lstm_cell_607/Relu:activations:0*
T0*'
_output_shapes
:���������2�
1sequential_212/lstm_637/while/lstm_cell_607/add_1AddV23sequential_212/lstm_637/while/lstm_cell_607/mul:z:05sequential_212/lstm_637/while/lstm_cell_607/mul_1:z:0*
T0*'
_output_shapes
:���������2�
5sequential_212/lstm_637/while/lstm_cell_607/Sigmoid_2Sigmoid:sequential_212/lstm_637/while/lstm_cell_607/split:output:3*
T0*'
_output_shapes
:���������2�
2sequential_212/lstm_637/while/lstm_cell_607/Relu_1Relu5sequential_212/lstm_637/while/lstm_cell_607/add_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_212/lstm_637/while/lstm_cell_607/mul_2Mul9sequential_212/lstm_637/while/lstm_cell_607/Sigmoid_2:y:0@sequential_212/lstm_637/while/lstm_cell_607/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Bsequential_212/lstm_637/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_212_lstm_637_while_placeholder_1)sequential_212_lstm_637_while_placeholder5sequential_212/lstm_637/while/lstm_cell_607/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_212/lstm_637/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_212/lstm_637/while/addAddV2)sequential_212_lstm_637_while_placeholder,sequential_212/lstm_637/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_212/lstm_637/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_212/lstm_637/while/add_1AddV2Hsequential_212_lstm_637_while_sequential_212_lstm_637_while_loop_counter.sequential_212/lstm_637/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_212/lstm_637/while/IdentityIdentity'sequential_212/lstm_637/while/add_1:z:0#^sequential_212/lstm_637/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_637/while/Identity_1IdentityNsequential_212_lstm_637_while_sequential_212_lstm_637_while_maximum_iterations#^sequential_212/lstm_637/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_637/while/Identity_2Identity%sequential_212/lstm_637/while/add:z:0#^sequential_212/lstm_637/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_637/while/Identity_3IdentityRsequential_212/lstm_637/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_212/lstm_637/while/NoOp*
T0*
_output_shapes
: �
(sequential_212/lstm_637/while/Identity_4Identity5sequential_212/lstm_637/while/lstm_cell_607/mul_2:z:0#^sequential_212/lstm_637/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_212/lstm_637/while/Identity_5Identity5sequential_212/lstm_637/while/lstm_cell_607/add_1:z:0#^sequential_212/lstm_637/while/NoOp*
T0*'
_output_shapes
:���������2�
"sequential_212/lstm_637/while/NoOpNoOpC^sequential_212/lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOpB^sequential_212/lstm_637/while/lstm_cell_607/MatMul/ReadVariableOpD^sequential_212/lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_212_lstm_637_while_identity/sequential_212/lstm_637/while/Identity:output:0"]
(sequential_212_lstm_637_while_identity_11sequential_212/lstm_637/while/Identity_1:output:0"]
(sequential_212_lstm_637_while_identity_21sequential_212/lstm_637/while/Identity_2:output:0"]
(sequential_212_lstm_637_while_identity_31sequential_212/lstm_637/while/Identity_3:output:0"]
(sequential_212_lstm_637_while_identity_41sequential_212/lstm_637/while/Identity_4:output:0"]
(sequential_212_lstm_637_while_identity_51sequential_212/lstm_637/while/Identity_5:output:0"�
Ksequential_212_lstm_637_while_lstm_cell_607_biasadd_readvariableop_resourceMsequential_212_lstm_637_while_lstm_cell_607_biasadd_readvariableop_resource_0"�
Lsequential_212_lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resourceNsequential_212_lstm_637_while_lstm_cell_607_matmul_1_readvariableop_resource_0"�
Jsequential_212_lstm_637_while_lstm_cell_607_matmul_readvariableop_resourceLsequential_212_lstm_637_while_lstm_cell_607_matmul_readvariableop_resource_0"�
Esequential_212_lstm_637_while_sequential_212_lstm_637_strided_slice_1Gsequential_212_lstm_637_while_sequential_212_lstm_637_strided_slice_1_0"�
�sequential_212_lstm_637_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_637_tensorarrayunstack_tensorlistfromtensor�sequential_212_lstm_637_while_tensorarrayv2read_tensorlistgetitem_sequential_212_lstm_637_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
Bsequential_212/lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOpBsequential_212/lstm_637/while/lstm_cell_607/BiasAdd/ReadVariableOp2�
Asequential_212/lstm_637/while/lstm_cell_607/MatMul/ReadVariableOpAsequential_212/lstm_637/while/lstm_cell_607/MatMul/ReadVariableOp2�
Csequential_212/lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOpCsequential_212/lstm_637/while/lstm_cell_607/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_636_input;
 serving_default_lstm_636_input:0���������=
	dense_2120
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
2dense_212/kernel
:2dense_212/bias
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
0:.	�2lstm_636/lstm_cell_636/kernel
::8	d�2'lstm_636/lstm_cell_636/recurrent_kernel
*:(�2lstm_636/lstm_cell_636/bias
0:.	d�2lstm_637/lstm_cell_637/kernel
::8	2�2'lstm_637/lstm_cell_637/recurrent_kernel
*:(�2lstm_637/lstm_cell_637/bias
/:-2(2lstm_638/lstm_cell_638/kernel
9:7
(2'lstm_638/lstm_cell_638/recurrent_kernel
):'(2lstm_638/lstm_cell_638/bias
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
2Adam/dense_212/kernel/m
!:2Adam/dense_212/bias/m
5:3	�2$Adam/lstm_636/lstm_cell_636/kernel/m
?:=	d�2.Adam/lstm_636/lstm_cell_636/recurrent_kernel/m
/:-�2"Adam/lstm_636/lstm_cell_636/bias/m
5:3	d�2$Adam/lstm_637/lstm_cell_637/kernel/m
?:=	2�2.Adam/lstm_637/lstm_cell_637/recurrent_kernel/m
/:-�2"Adam/lstm_637/lstm_cell_637/bias/m
4:22(2$Adam/lstm_638/lstm_cell_638/kernel/m
>:<
(2.Adam/lstm_638/lstm_cell_638/recurrent_kernel/m
.:,(2"Adam/lstm_638/lstm_cell_638/bias/m
':%
2Adam/dense_212/kernel/v
!:2Adam/dense_212/bias/v
5:3	�2$Adam/lstm_636/lstm_cell_636/kernel/v
?:=	d�2.Adam/lstm_636/lstm_cell_636/recurrent_kernel/v
/:-�2"Adam/lstm_636/lstm_cell_636/bias/v
5:3	d�2$Adam/lstm_637/lstm_cell_637/kernel/v
?:=	2�2.Adam/lstm_637/lstm_cell_637/recurrent_kernel/v
/:-�2"Adam/lstm_637/lstm_cell_637/bias/v
4:22(2$Adam/lstm_638/lstm_cell_638/kernel/v
>:<
(2.Adam/lstm_638/lstm_cell_638/recurrent_kernel/v
.:,(2"Adam/lstm_638/lstm_cell_638/bias/v
�2�
0__inference_sequential_212_layer_call_fn_3679789
0__inference_sequential_212_layer_call_fn_3680527
0__inference_sequential_212_layer_call_fn_3680554
0__inference_sequential_212_layer_call_fn_3680405�
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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680981
K__inference_sequential_212_layer_call_and_return_conditional_losses_3681408
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680435
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680465�
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
"__inference__wrapped_model_3678240lstm_636_input"�
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
*__inference_lstm_636_layer_call_fn_3681419
*__inference_lstm_636_layer_call_fn_3681430
*__inference_lstm_636_layer_call_fn_3681441
*__inference_lstm_636_layer_call_fn_3681452�
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3681595
E__inference_lstm_636_layer_call_and_return_conditional_losses_3681738
E__inference_lstm_636_layer_call_and_return_conditional_losses_3681881
E__inference_lstm_636_layer_call_and_return_conditional_losses_3682024�
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
*__inference_lstm_637_layer_call_fn_3682035
*__inference_lstm_637_layer_call_fn_3682046
*__inference_lstm_637_layer_call_fn_3682057
*__inference_lstm_637_layer_call_fn_3682068�
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682211
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682354
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682497
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682640�
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
*__inference_lstm_638_layer_call_fn_3682651
*__inference_lstm_638_layer_call_fn_3682662
*__inference_lstm_638_layer_call_fn_3682673
*__inference_lstm_638_layer_call_fn_3682684�
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3682827
E__inference_lstm_638_layer_call_and_return_conditional_losses_3682970
E__inference_lstm_638_layer_call_and_return_conditional_losses_3683113
E__inference_lstm_638_layer_call_and_return_conditional_losses_3683256�
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
+__inference_dense_212_layer_call_fn_3683265�
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
F__inference_dense_212_layer_call_and_return_conditional_losses_3683275�
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
%__inference_signature_wrapper_3680500lstm_636_input"�
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
/__inference_lstm_cell_606_layer_call_fn_3683292
/__inference_lstm_cell_606_layer_call_fn_3683309�
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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3683341
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3683373�
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
/__inference_lstm_cell_607_layer_call_fn_3683390
/__inference_lstm_cell_607_layer_call_fn_3683407�
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3683439
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3683471�
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
/__inference_lstm_cell_608_layer_call_fn_3683488
/__inference_lstm_cell_608_layer_call_fn_3683505�
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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3683537
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3683569�
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
"__inference__wrapped_model_3678240�-./012345!";�8
1�.
,�)
lstm_636_input���������
� "5�2
0
	dense_212#� 
	dense_212����������
F__inference_dense_212_layer_call_and_return_conditional_losses_3683275\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� ~
+__inference_dense_212_layer_call_fn_3683265O!"/�,
%�"
 �
inputs���������

� "�����������
E__inference_lstm_636_layer_call_and_return_conditional_losses_3681595�-./O�L
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3681738�-./O�L
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3681881q-./?�<
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
E__inference_lstm_636_layer_call_and_return_conditional_losses_3682024q-./?�<
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
*__inference_lstm_636_layer_call_fn_3681419}-./O�L
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
*__inference_lstm_636_layer_call_fn_3681430}-./O�L
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
*__inference_lstm_636_layer_call_fn_3681441d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
*__inference_lstm_636_layer_call_fn_3681452d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682211�012O�L
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682354�012O�L
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682497q012?�<
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
E__inference_lstm_637_layer_call_and_return_conditional_losses_3682640q012?�<
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
*__inference_lstm_637_layer_call_fn_3682035}012O�L
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
*__inference_lstm_637_layer_call_fn_3682046}012O�L
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
*__inference_lstm_637_layer_call_fn_3682057d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
*__inference_lstm_637_layer_call_fn_3682068d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
E__inference_lstm_638_layer_call_and_return_conditional_losses_3682827}345O�L
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3682970}345O�L
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3683113m345?�<
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
E__inference_lstm_638_layer_call_and_return_conditional_losses_3683256m345?�<
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
*__inference_lstm_638_layer_call_fn_3682651p345O�L
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
*__inference_lstm_638_layer_call_fn_3682662p345O�L
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
*__inference_lstm_638_layer_call_fn_3682673`345?�<
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
*__inference_lstm_638_layer_call_fn_3682684`345?�<
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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3683341�-./��}
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
J__inference_lstm_cell_606_layer_call_and_return_conditional_losses_3683373�-./��}
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
/__inference_lstm_cell_606_layer_call_fn_3683292�-./��}
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
/__inference_lstm_cell_606_layer_call_fn_3683309�-./��}
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3683439�012��}
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
J__inference_lstm_cell_607_layer_call_and_return_conditional_losses_3683471�012��}
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
/__inference_lstm_cell_607_layer_call_fn_3683390�012��}
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
/__inference_lstm_cell_607_layer_call_fn_3683407�012��}
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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3683537�345��}
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
J__inference_lstm_cell_608_layer_call_and_return_conditional_losses_3683569�345��}
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
/__inference_lstm_cell_608_layer_call_fn_3683488�345��}
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
/__inference_lstm_cell_608_layer_call_fn_3683505�345��}
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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680435y-./012345!"C�@
9�6
,�)
lstm_636_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680465y-./012345!"C�@
9�6
,�)
lstm_636_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_212_layer_call_and_return_conditional_losses_3680981q-./012345!";�8
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
K__inference_sequential_212_layer_call_and_return_conditional_losses_3681408q-./012345!";�8
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
0__inference_sequential_212_layer_call_fn_3679789l-./012345!"C�@
9�6
,�)
lstm_636_input���������
p 

 
� "�����������
0__inference_sequential_212_layer_call_fn_3680405l-./012345!"C�@
9�6
,�)
lstm_636_input���������
p

 
� "�����������
0__inference_sequential_212_layer_call_fn_3680527d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
0__inference_sequential_212_layer_call_fn_3680554d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_3680500�-./012345!"M�J
� 
C�@
>
lstm_636_input,�)
lstm_636_input���������"5�2
0
	dense_212#� 
	dense_212���������
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
dense_220/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_220/kernel
u
$dense_220/kernel/Read/ReadVariableOpReadVariableOpdense_220/kernel*
_output_shapes

:
*
dtype0
t
dense_220/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_220/bias
m
"dense_220/bias/Read/ReadVariableOpReadVariableOpdense_220/bias*
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
lstm_660/lstm_cell_660/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_660/lstm_cell_660/kernel
�
1lstm_660/lstm_cell_660/kernel/Read/ReadVariableOpReadVariableOplstm_660/lstm_cell_660/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_660/lstm_cell_660/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_660/lstm_cell_660/recurrent_kernel
�
;lstm_660/lstm_cell_660/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_660/lstm_cell_660/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_660/lstm_cell_660/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_660/lstm_cell_660/bias
�
/lstm_660/lstm_cell_660/bias/Read/ReadVariableOpReadVariableOplstm_660/lstm_cell_660/bias*
_output_shapes	
:�*
dtype0
�
lstm_661/lstm_cell_661/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_661/lstm_cell_661/kernel
�
1lstm_661/lstm_cell_661/kernel/Read/ReadVariableOpReadVariableOplstm_661/lstm_cell_661/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_661/lstm_cell_661/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_661/lstm_cell_661/recurrent_kernel
�
;lstm_661/lstm_cell_661/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_661/lstm_cell_661/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_661/lstm_cell_661/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_661/lstm_cell_661/bias
�
/lstm_661/lstm_cell_661/bias/Read/ReadVariableOpReadVariableOplstm_661/lstm_cell_661/bias*
_output_shapes	
:�*
dtype0
�
lstm_662/lstm_cell_662/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_662/lstm_cell_662/kernel
�
1lstm_662/lstm_cell_662/kernel/Read/ReadVariableOpReadVariableOplstm_662/lstm_cell_662/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_662/lstm_cell_662/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_662/lstm_cell_662/recurrent_kernel
�
;lstm_662/lstm_cell_662/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_662/lstm_cell_662/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_662/lstm_cell_662/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_662/lstm_cell_662/bias
�
/lstm_662/lstm_cell_662/bias/Read/ReadVariableOpReadVariableOplstm_662/lstm_cell_662/bias*
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
Adam/dense_220/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_220/kernel/m
�
+Adam/dense_220/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_220/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_220/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_220/bias/m
{
)Adam/dense_220/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_220/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_660/lstm_cell_660/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_660/lstm_cell_660/kernel/m
�
8Adam/lstm_660/lstm_cell_660/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_660/lstm_cell_660/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_660/lstm_cell_660/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_660/lstm_cell_660/recurrent_kernel/m
�
BAdam/lstm_660/lstm_cell_660/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_660/lstm_cell_660/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_660/lstm_cell_660/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_660/lstm_cell_660/bias/m
�
6Adam/lstm_660/lstm_cell_660/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_660/lstm_cell_660/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_661/lstm_cell_661/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_661/lstm_cell_661/kernel/m
�
8Adam/lstm_661/lstm_cell_661/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_661/lstm_cell_661/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_661/lstm_cell_661/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_661/lstm_cell_661/recurrent_kernel/m
�
BAdam/lstm_661/lstm_cell_661/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_661/lstm_cell_661/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_661/lstm_cell_661/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_661/lstm_cell_661/bias/m
�
6Adam/lstm_661/lstm_cell_661/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_661/lstm_cell_661/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_662/lstm_cell_662/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_662/lstm_cell_662/kernel/m
�
8Adam/lstm_662/lstm_cell_662/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_662/lstm_cell_662/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_662/lstm_cell_662/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_662/lstm_cell_662/recurrent_kernel/m
�
BAdam/lstm_662/lstm_cell_662/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_662/lstm_cell_662/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_662/lstm_cell_662/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_662/lstm_cell_662/bias/m
�
6Adam/lstm_662/lstm_cell_662/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_662/lstm_cell_662/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_220/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_220/kernel/v
�
+Adam/dense_220/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_220/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_220/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_220/bias/v
{
)Adam/dense_220/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_220/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_660/lstm_cell_660/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_660/lstm_cell_660/kernel/v
�
8Adam/lstm_660/lstm_cell_660/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_660/lstm_cell_660/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_660/lstm_cell_660/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_660/lstm_cell_660/recurrent_kernel/v
�
BAdam/lstm_660/lstm_cell_660/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_660/lstm_cell_660/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_660/lstm_cell_660/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_660/lstm_cell_660/bias/v
�
6Adam/lstm_660/lstm_cell_660/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_660/lstm_cell_660/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_661/lstm_cell_661/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_661/lstm_cell_661/kernel/v
�
8Adam/lstm_661/lstm_cell_661/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_661/lstm_cell_661/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_661/lstm_cell_661/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_661/lstm_cell_661/recurrent_kernel/v
�
BAdam/lstm_661/lstm_cell_661/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_661/lstm_cell_661/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_661/lstm_cell_661/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_661/lstm_cell_661/bias/v
�
6Adam/lstm_661/lstm_cell_661/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_661/lstm_cell_661/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_662/lstm_cell_662/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_662/lstm_cell_662/kernel/v
�
8Adam/lstm_662/lstm_cell_662/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_662/lstm_cell_662/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_662/lstm_cell_662/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_662/lstm_cell_662/recurrent_kernel/v
�
BAdam/lstm_662/lstm_cell_662/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_662/lstm_cell_662/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_662/lstm_cell_662/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_662/lstm_cell_662/bias/v
�
6Adam/lstm_662/lstm_cell_662/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_662/lstm_cell_662/bias/v*
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
VARIABLE_VALUEdense_220/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_220/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_660/lstm_cell_660/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_660/lstm_cell_660/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_660/lstm_cell_660/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_661/lstm_cell_661/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_661/lstm_cell_661/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_661/lstm_cell_661/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_662/lstm_cell_662/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_662/lstm_cell_662/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_662/lstm_cell_662/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_220/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_220/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_660/lstm_cell_660/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_660/lstm_cell_660/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_660/lstm_cell_660/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_661/lstm_cell_661/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_661/lstm_cell_661/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_661/lstm_cell_661/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_662/lstm_cell_662/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_662/lstm_cell_662/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_662/lstm_cell_662/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_220/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_220/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_660/lstm_cell_660/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_660/lstm_cell_660/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_660/lstm_cell_660/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_661/lstm_cell_661/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_661/lstm_cell_661/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_661/lstm_cell_661/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_662/lstm_cell_662/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_662/lstm_cell_662/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_662/lstm_cell_662/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_660_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_660_inputlstm_660/lstm_cell_660/kernel'lstm_660/lstm_cell_660/recurrent_kernellstm_660/lstm_cell_660/biaslstm_661/lstm_cell_661/kernel'lstm_661/lstm_cell_661/recurrent_kernellstm_661/lstm_cell_661/biaslstm_662/lstm_cell_662/kernel'lstm_662/lstm_cell_662/recurrent_kernellstm_662/lstm_cell_662/biasdense_220/kerneldense_220/bias*
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
%__inference_signature_wrapper_3772625
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_220/kernel/Read/ReadVariableOp"dense_220/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_660/lstm_cell_660/kernel/Read/ReadVariableOp;lstm_660/lstm_cell_660/recurrent_kernel/Read/ReadVariableOp/lstm_660/lstm_cell_660/bias/Read/ReadVariableOp1lstm_661/lstm_cell_661/kernel/Read/ReadVariableOp;lstm_661/lstm_cell_661/recurrent_kernel/Read/ReadVariableOp/lstm_661/lstm_cell_661/bias/Read/ReadVariableOp1lstm_662/lstm_cell_662/kernel/Read/ReadVariableOp;lstm_662/lstm_cell_662/recurrent_kernel/Read/ReadVariableOp/lstm_662/lstm_cell_662/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_220/kernel/m/Read/ReadVariableOp)Adam/dense_220/bias/m/Read/ReadVariableOp8Adam/lstm_660/lstm_cell_660/kernel/m/Read/ReadVariableOpBAdam/lstm_660/lstm_cell_660/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_660/lstm_cell_660/bias/m/Read/ReadVariableOp8Adam/lstm_661/lstm_cell_661/kernel/m/Read/ReadVariableOpBAdam/lstm_661/lstm_cell_661/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_661/lstm_cell_661/bias/m/Read/ReadVariableOp8Adam/lstm_662/lstm_cell_662/kernel/m/Read/ReadVariableOpBAdam/lstm_662/lstm_cell_662/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_662/lstm_cell_662/bias/m/Read/ReadVariableOp+Adam/dense_220/kernel/v/Read/ReadVariableOp)Adam/dense_220/bias/v/Read/ReadVariableOp8Adam/lstm_660/lstm_cell_660/kernel/v/Read/ReadVariableOpBAdam/lstm_660/lstm_cell_660/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_660/lstm_cell_660/bias/v/Read/ReadVariableOp8Adam/lstm_661/lstm_cell_661/kernel/v/Read/ReadVariableOpBAdam/lstm_661/lstm_cell_661/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_661/lstm_cell_661/bias/v/Read/ReadVariableOp8Adam/lstm_662/lstm_cell_662/kernel/v/Read/ReadVariableOpBAdam/lstm_662/lstm_cell_662/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_662/lstm_cell_662/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3775837
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_220/kerneldense_220/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_660/lstm_cell_660/kernel'lstm_660/lstm_cell_660/recurrent_kernellstm_660/lstm_cell_660/biaslstm_661/lstm_cell_661/kernel'lstm_661/lstm_cell_661/recurrent_kernellstm_661/lstm_cell_661/biaslstm_662/lstm_cell_662/kernel'lstm_662/lstm_cell_662/recurrent_kernellstm_662/lstm_cell_662/biastotalcountAdam/dense_220/kernel/mAdam/dense_220/bias/m$Adam/lstm_660/lstm_cell_660/kernel/m.Adam/lstm_660/lstm_cell_660/recurrent_kernel/m"Adam/lstm_660/lstm_cell_660/bias/m$Adam/lstm_661/lstm_cell_661/kernel/m.Adam/lstm_661/lstm_cell_661/recurrent_kernel/m"Adam/lstm_661/lstm_cell_661/bias/m$Adam/lstm_662/lstm_cell_662/kernel/m.Adam/lstm_662/lstm_cell_662/recurrent_kernel/m"Adam/lstm_662/lstm_cell_662/bias/mAdam/dense_220/kernel/vAdam/dense_220/bias/v$Adam/lstm_660/lstm_cell_660/kernel/v.Adam/lstm_660/lstm_cell_660/recurrent_kernel/v"Adam/lstm_660/lstm_cell_660/bias/v$Adam/lstm_661/lstm_cell_661/kernel/v.Adam/lstm_661/lstm_cell_661/recurrent_kernel/v"Adam/lstm_661/lstm_cell_661/bias/v$Adam/lstm_662/lstm_cell_662/kernel/v.Adam/lstm_662/lstm_cell_662/recurrent_kernel/v"Adam/lstm_662/lstm_cell_662/bias/v*4
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
#__inference__traced_restore_3775967��+
�K
�
E__inference_lstm_662_layer_call_and_return_conditional_losses_3775095
inputs_0>
,lstm_cell_623_matmul_readvariableop_resource:2(@
.lstm_cell_623_matmul_1_readvariableop_resource:
(;
-lstm_cell_623_biasadd_readvariableop_resource:(
identity��$lstm_cell_623/BiasAdd/ReadVariableOp�#lstm_cell_623/MatMul/ReadVariableOp�%lstm_cell_623/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_623/MatMul/ReadVariableOpReadVariableOp,lstm_cell_623_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_623/MatMulMatMulstrided_slice_2:output:0+lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_623_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_623/MatMul_1MatMulzeros:output:0-lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_623/addAddV2lstm_cell_623/MatMul:product:0 lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_623_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_623/BiasAddBiasAddlstm_cell_623/add:z:0,lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_623/splitSplit&lstm_cell_623/split/split_dim:output:0lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_623/SigmoidSigmoidlstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_1Sigmoidlstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_623/mulMullstm_cell_623/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_623/ReluRelulstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_1Mullstm_cell_623/Sigmoid:y:0 lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_623/add_1AddV2lstm_cell_623/mul:z:0lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_2Sigmoidlstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_623/Relu_1Relulstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_2Mullstm_cell_623/Sigmoid_2:y:0"lstm_cell_623/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_623_matmul_readvariableop_resource.lstm_cell_623_matmul_1_readvariableop_resource-lstm_cell_623_biasadd_readvariableop_resource*
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
while_body_3775011*
condR
while_cond_3775010*K
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
NoOpNoOp%^lstm_cell_623/BiasAdd/ReadVariableOp$^lstm_cell_623/MatMul/ReadVariableOp&^lstm_cell_623/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_623/BiasAdd/ReadVariableOp$lstm_cell_623/BiasAdd/ReadVariableOp2J
#lstm_cell_623/MatMul/ReadVariableOp#lstm_cell_623/MatMul/ReadVariableOp2N
%lstm_cell_623/MatMul_1/ReadVariableOp%lstm_cell_623/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�8
�
E__inference_lstm_661_layer_call_and_return_conditional_losses_3770865

inputs(
lstm_cell_622_3770783:	d�(
lstm_cell_622_3770785:	2�$
lstm_cell_622_3770787:	�
identity��%lstm_cell_622/StatefulPartitionedCall�while;
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
%lstm_cell_622/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_622_3770783lstm_cell_622_3770785lstm_cell_622_3770787*
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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3770782n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_622_3770783lstm_cell_622_3770785lstm_cell_622_3770787*
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
while_body_3770796*
condR
while_cond_3770795*K
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
NoOpNoOp&^lstm_cell_622/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_622/StatefulPartitionedCall%lstm_cell_622/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
*__inference_lstm_661_layer_call_fn_3774193

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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3772245s
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
��
�
#__inference__traced_restore_3775967
file_prefix3
!assignvariableop_dense_220_kernel:
/
!assignvariableop_1_dense_220_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_660_lstm_cell_660_kernel:	�M
:assignvariableop_8_lstm_660_lstm_cell_660_recurrent_kernel:	d�=
.assignvariableop_9_lstm_660_lstm_cell_660_bias:	�D
1assignvariableop_10_lstm_661_lstm_cell_661_kernel:	d�N
;assignvariableop_11_lstm_661_lstm_cell_661_recurrent_kernel:	2�>
/assignvariableop_12_lstm_661_lstm_cell_661_bias:	�C
1assignvariableop_13_lstm_662_lstm_cell_662_kernel:2(M
;assignvariableop_14_lstm_662_lstm_cell_662_recurrent_kernel:
(=
/assignvariableop_15_lstm_662_lstm_cell_662_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_220_kernel_m:
7
)assignvariableop_19_adam_dense_220_bias_m:K
8assignvariableop_20_adam_lstm_660_lstm_cell_660_kernel_m:	�U
Bassignvariableop_21_adam_lstm_660_lstm_cell_660_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_660_lstm_cell_660_bias_m:	�K
8assignvariableop_23_adam_lstm_661_lstm_cell_661_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_661_lstm_cell_661_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_661_lstm_cell_661_bias_m:	�J
8assignvariableop_26_adam_lstm_662_lstm_cell_662_kernel_m:2(T
Bassignvariableop_27_adam_lstm_662_lstm_cell_662_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_662_lstm_cell_662_bias_m:(=
+assignvariableop_29_adam_dense_220_kernel_v:
7
)assignvariableop_30_adam_dense_220_bias_v:K
8assignvariableop_31_adam_lstm_660_lstm_cell_660_kernel_v:	�U
Bassignvariableop_32_adam_lstm_660_lstm_cell_660_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_660_lstm_cell_660_bias_v:	�K
8assignvariableop_34_adam_lstm_661_lstm_cell_661_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_661_lstm_cell_661_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_661_lstm_cell_661_bias_v:	�J
8assignvariableop_37_adam_lstm_662_lstm_cell_662_kernel_v:2(T
Bassignvariableop_38_adam_lstm_662_lstm_cell_662_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_662_lstm_cell_662_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_220_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_220_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_660_lstm_cell_660_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_660_lstm_cell_660_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_660_lstm_cell_660_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_661_lstm_cell_661_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_661_lstm_cell_661_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_661_lstm_cell_661_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_662_lstm_cell_662_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_662_lstm_cell_662_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_662_lstm_cell_662_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_220_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_220_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_660_lstm_cell_660_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_660_lstm_cell_660_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_660_lstm_cell_660_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_661_lstm_cell_661_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_661_lstm_cell_661_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_661_lstm_cell_661_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_662_lstm_cell_662_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_662_lstm_cell_662_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_662_lstm_cell_662_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_220_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_220_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_660_lstm_cell_660_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_660_lstm_cell_660_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_660_lstm_cell_660_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_661_lstm_cell_661_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_661_lstm_cell_661_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_661_lstm_cell_661_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_662_lstm_cell_662_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_662_lstm_cell_662_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_662_lstm_cell_662_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_3772160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3772160___redundant_placeholder05
1while_while_cond_3772160___redundant_placeholder15
1while_while_cond_3772160___redundant_placeholder25
1while_while_cond_3772160___redundant_placeholder3
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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3770578

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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774479
inputs_0?
,lstm_cell_622_matmul_readvariableop_resource:	d�A
.lstm_cell_622_matmul_1_readvariableop_resource:	2�<
-lstm_cell_622_biasadd_readvariableop_resource:	�
identity��$lstm_cell_622/BiasAdd/ReadVariableOp�#lstm_cell_622/MatMul/ReadVariableOp�%lstm_cell_622/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_622/MatMul/ReadVariableOpReadVariableOp,lstm_cell_622_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_622/MatMulMatMulstrided_slice_2:output:0+lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_622_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_622/MatMul_1MatMulzeros:output:0-lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_622/addAddV2lstm_cell_622/MatMul:product:0 lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_622_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_622/BiasAddBiasAddlstm_cell_622/add:z:0,lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_622/splitSplit&lstm_cell_622/split/split_dim:output:0lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_622/SigmoidSigmoidlstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_1Sigmoidlstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_622/mulMullstm_cell_622/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_622/ReluRelulstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_1Mullstm_cell_622/Sigmoid:y:0 lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_622/add_1AddV2lstm_cell_622/mul:z:0lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_2Sigmoidlstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_622/Relu_1Relulstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_2Mullstm_cell_622/Sigmoid_2:y:0"lstm_cell_622/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_622_matmul_readvariableop_resource.lstm_cell_622_matmul_1_readvariableop_resource-lstm_cell_622_biasadd_readvariableop_resource*
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
while_body_3774395*
condR
while_cond_3774394*K
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
NoOpNoOp%^lstm_cell_622/BiasAdd/ReadVariableOp$^lstm_cell_622/MatMul/ReadVariableOp&^lstm_cell_622/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_622/BiasAdd/ReadVariableOp$lstm_cell_622/BiasAdd/ReadVariableOp2J
#lstm_cell_622/MatMul/ReadVariableOp#lstm_cell_622/MatMul/ReadVariableOp2N
%lstm_cell_622/MatMul_1/ReadVariableOp%lstm_cell_622/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�8
�
while_body_3774065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_621_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_621_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_621_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_621_matmul_readvariableop_resource:	�G
4while_lstm_cell_621_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_621_biasadd_readvariableop_resource:	���*while/lstm_cell_621/BiasAdd/ReadVariableOp�)while/lstm_cell_621/MatMul/ReadVariableOp�+while/lstm_cell_621/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_621/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_621_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_621/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_621_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_621/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_621/addAddV2$while/lstm_cell_621/MatMul:product:0&while/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_621_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_621/BiasAddBiasAddwhile/lstm_cell_621/add:z:02while/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_621/splitSplit,while/lstm_cell_621/split/split_dim:output:0$while/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_621/SigmoidSigmoid"while/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_1Sigmoid"while/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mulMul!while/lstm_cell_621/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_621/ReluRelu"while/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_1Mulwhile/lstm_cell_621/Sigmoid:y:0&while/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/add_1AddV2while/lstm_cell_621/mul:z:0while/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_2Sigmoid"while/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_621/Relu_1Reluwhile/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_2Mul!while/lstm_cell_621/Sigmoid_2:y:0(while/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_621/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_621/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_621/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_621/BiasAdd/ReadVariableOp*^while/lstm_cell_621/MatMul/ReadVariableOp,^while/lstm_cell_621/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_621_biasadd_readvariableop_resource5while_lstm_cell_621_biasadd_readvariableop_resource_0"n
4while_lstm_cell_621_matmul_1_readvariableop_resource6while_lstm_cell_621_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_621_matmul_readvariableop_resource4while_lstm_cell_621_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_621/BiasAdd/ReadVariableOp*while/lstm_cell_621/BiasAdd/ReadVariableOp2V
)while/lstm_cell_621/MatMul/ReadVariableOp)while/lstm_cell_621/MatMul/ReadVariableOp2Z
+while/lstm_cell_621/MatMul_1/ReadVariableOp+while/lstm_cell_621/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3772325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3772325___redundant_placeholder05
1while_while_cond_3772325___redundant_placeholder15
1while_while_cond_3772325___redundant_placeholder25
1while_while_cond_3772325___redundant_placeholder3
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
�
�
K__inference_sequential_220_layer_call_and_return_conditional_losses_3772560
lstm_660_input#
lstm_660_3772533:	�#
lstm_660_3772535:	d�
lstm_660_3772537:	�#
lstm_661_3772540:	d�#
lstm_661_3772542:	2�
lstm_661_3772544:	�"
lstm_662_3772547:2("
lstm_662_3772549:
(
lstm_662_3772551:(#
dense_220_3772554:

dense_220_3772556:
identity��!dense_220/StatefulPartitionedCall� lstm_660/StatefulPartitionedCall� lstm_661/StatefulPartitionedCall� lstm_662/StatefulPartitionedCall�
 lstm_660/StatefulPartitionedCallStatefulPartitionedCalllstm_660_inputlstm_660_3772533lstm_660_3772535lstm_660_3772537*
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3771564�
 lstm_661/StatefulPartitionedCallStatefulPartitionedCall)lstm_660/StatefulPartitionedCall:output:0lstm_661_3772540lstm_661_3772542lstm_661_3772544*
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3771714�
 lstm_662/StatefulPartitionedCallStatefulPartitionedCall)lstm_661/StatefulPartitionedCall:output:0lstm_662_3772547lstm_662_3772549lstm_662_3772551*
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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3771864�
!dense_220/StatefulPartitionedCallStatefulPartitionedCall)lstm_662/StatefulPartitionedCall:output:0dense_220_3772554dense_220_3772556*
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
F__inference_dense_220_layer_call_and_return_conditional_losses_3771882y
IdentityIdentity*dense_220/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_220/StatefulPartitionedCall!^lstm_660/StatefulPartitionedCall!^lstm_661/StatefulPartitionedCall!^lstm_662/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_220/StatefulPartitionedCall!dense_220/StatefulPartitionedCall2D
 lstm_660/StatefulPartitionedCall lstm_660/StatefulPartitionedCall2D
 lstm_661/StatefulPartitionedCall lstm_661/StatefulPartitionedCall2D
 lstm_662/StatefulPartitionedCall lstm_662/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_660_input
�	
�
F__inference_dense_220_layer_call_and_return_conditional_losses_3775400

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
�
�
K__inference_sequential_220_layer_call_and_return_conditional_losses_3772590
lstm_660_input#
lstm_660_3772563:	�#
lstm_660_3772565:	d�
lstm_660_3772567:	�#
lstm_661_3772570:	d�#
lstm_661_3772572:	2�
lstm_661_3772574:	�"
lstm_662_3772577:2("
lstm_662_3772579:
(
lstm_662_3772581:(#
dense_220_3772584:

dense_220_3772586:
identity��!dense_220/StatefulPartitionedCall� lstm_660/StatefulPartitionedCall� lstm_661/StatefulPartitionedCall� lstm_662/StatefulPartitionedCall�
 lstm_660/StatefulPartitionedCallStatefulPartitionedCalllstm_660_inputlstm_660_3772563lstm_660_3772565lstm_660_3772567*
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3772410�
 lstm_661/StatefulPartitionedCallStatefulPartitionedCall)lstm_660/StatefulPartitionedCall:output:0lstm_661_3772570lstm_661_3772572lstm_661_3772574*
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3772245�
 lstm_662/StatefulPartitionedCallStatefulPartitionedCall)lstm_661/StatefulPartitionedCall:output:0lstm_662_3772577lstm_662_3772579lstm_662_3772581*
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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3772080�
!dense_220/StatefulPartitionedCallStatefulPartitionedCall)lstm_662/StatefulPartitionedCall:output:0dense_220_3772584dense_220_3772586*
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
F__inference_dense_220_layer_call_and_return_conditional_losses_3771882y
IdentityIdentity*dense_220/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_220/StatefulPartitionedCall!^lstm_660/StatefulPartitionedCall!^lstm_661/StatefulPartitionedCall!^lstm_662/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_220/StatefulPartitionedCall!dense_220/StatefulPartitionedCall2D
 lstm_660/StatefulPartitionedCall lstm_660/StatefulPartitionedCall2D
 lstm_661/StatefulPartitionedCall lstm_661/StatefulPartitionedCall2D
 lstm_662/StatefulPartitionedCall lstm_662/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_660_input
�
�
while_cond_3775153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3775153___redundant_placeholder05
1while_while_cond_3775153___redundant_placeholder15
1while_while_cond_3775153___redundant_placeholder25
1while_while_cond_3775153___redundant_placeholder3
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
*sequential_220_lstm_662_while_cond_3770274L
Hsequential_220_lstm_662_while_sequential_220_lstm_662_while_loop_counterR
Nsequential_220_lstm_662_while_sequential_220_lstm_662_while_maximum_iterations-
)sequential_220_lstm_662_while_placeholder/
+sequential_220_lstm_662_while_placeholder_1/
+sequential_220_lstm_662_while_placeholder_2/
+sequential_220_lstm_662_while_placeholder_3N
Jsequential_220_lstm_662_while_less_sequential_220_lstm_662_strided_slice_1e
asequential_220_lstm_662_while_sequential_220_lstm_662_while_cond_3770274___redundant_placeholder0e
asequential_220_lstm_662_while_sequential_220_lstm_662_while_cond_3770274___redundant_placeholder1e
asequential_220_lstm_662_while_sequential_220_lstm_662_while_cond_3770274___redundant_placeholder2e
asequential_220_lstm_662_while_sequential_220_lstm_662_while_cond_3770274___redundant_placeholder3*
&sequential_220_lstm_662_while_identity
�
"sequential_220/lstm_662/while/LessLess)sequential_220_lstm_662_while_placeholderJsequential_220_lstm_662_while_less_sequential_220_lstm_662_strided_slice_1*
T0*
_output_shapes
: {
&sequential_220/lstm_662/while/IdentityIdentity&sequential_220/lstm_662/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_220_lstm_662_while_identity/sequential_220/lstm_662/while/Identity:output:0*(
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
while_cond_3774064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3774064___redundant_placeholder05
1while_while_cond_3774064___redundant_placeholder15
1while_while_cond_3774064___redundant_placeholder25
1while_while_cond_3774064___redundant_placeholder3
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
while_body_3774681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_622_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_622_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_622_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_622_matmul_readvariableop_resource:	d�G
4while_lstm_cell_622_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_622_biasadd_readvariableop_resource:	���*while/lstm_cell_622/BiasAdd/ReadVariableOp�)while/lstm_cell_622/MatMul/ReadVariableOp�+while/lstm_cell_622/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_622/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_622_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_622/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_622_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_622/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_622/addAddV2$while/lstm_cell_622/MatMul:product:0&while/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_622_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_622/BiasAddBiasAddwhile/lstm_cell_622/add:z:02while/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_622/splitSplit,while/lstm_cell_622/split/split_dim:output:0$while/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_622/SigmoidSigmoid"while/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_1Sigmoid"while/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mulMul!while/lstm_cell_622/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_622/ReluRelu"while/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_1Mulwhile/lstm_cell_622/Sigmoid:y:0&while/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/add_1AddV2while/lstm_cell_622/mul:z:0while/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_2Sigmoid"while/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_622/Relu_1Reluwhile/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_2Mul!while/lstm_cell_622/Sigmoid_2:y:0(while/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_622/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_622/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_622/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_622/BiasAdd/ReadVariableOp*^while/lstm_cell_622/MatMul/ReadVariableOp,^while/lstm_cell_622/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_622_biasadd_readvariableop_resource5while_lstm_cell_622_biasadd_readvariableop_resource_0"n
4while_lstm_cell_622_matmul_1_readvariableop_resource6while_lstm_cell_622_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_622_matmul_readvariableop_resource4while_lstm_cell_622_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_622/BiasAdd/ReadVariableOp*while/lstm_cell_622/BiasAdd/ReadVariableOp2V
)while/lstm_cell_622/MatMul/ReadVariableOp)while/lstm_cell_622/MatMul/ReadVariableOp2Z
+while/lstm_cell_622/MatMul_1/ReadVariableOp+while/lstm_cell_622/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3774537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3774537___redundant_placeholder05
1while_while_cond_3774537___redundant_placeholder15
1while_while_cond_3774537___redundant_placeholder25
1while_while_cond_3774537___redundant_placeholder3
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

lstm_660_while_body_3772738.
*lstm_660_while_lstm_660_while_loop_counter4
0lstm_660_while_lstm_660_while_maximum_iterations
lstm_660_while_placeholder 
lstm_660_while_placeholder_1 
lstm_660_while_placeholder_2 
lstm_660_while_placeholder_3-
)lstm_660_while_lstm_660_strided_slice_1_0i
elstm_660_while_tensorarrayv2read_tensorlistgetitem_lstm_660_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_660_while_lstm_cell_621_matmul_readvariableop_resource_0:	�R
?lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource_0:	d�M
>lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource_0:	�
lstm_660_while_identity
lstm_660_while_identity_1
lstm_660_while_identity_2
lstm_660_while_identity_3
lstm_660_while_identity_4
lstm_660_while_identity_5+
'lstm_660_while_lstm_660_strided_slice_1g
clstm_660_while_tensorarrayv2read_tensorlistgetitem_lstm_660_tensorarrayunstack_tensorlistfromtensorN
;lstm_660_while_lstm_cell_621_matmul_readvariableop_resource:	�P
=lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource:	d�K
<lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource:	���3lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp�2lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp�4lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp�
@lstm_660/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_660/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_660_while_tensorarrayv2read_tensorlistgetitem_lstm_660_tensorarrayunstack_tensorlistfromtensor_0lstm_660_while_placeholderIlstm_660/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_660/while/lstm_cell_621/MatMul/ReadVariableOpReadVariableOp=lstm_660_while_lstm_cell_621_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_660/while/lstm_cell_621/MatMulMatMul9lstm_660/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp?lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_660/while/lstm_cell_621/MatMul_1MatMullstm_660_while_placeholder_2<lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_660/while/lstm_cell_621/addAddV2-lstm_660/while/lstm_cell_621/MatMul:product:0/lstm_660/while/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp>lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_660/while/lstm_cell_621/BiasAddBiasAdd$lstm_660/while/lstm_cell_621/add:z:0;lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_660/while/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_660/while/lstm_cell_621/splitSplit5lstm_660/while/lstm_cell_621/split/split_dim:output:0-lstm_660/while/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_660/while/lstm_cell_621/SigmoidSigmoid+lstm_660/while/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_660/while/lstm_cell_621/Sigmoid_1Sigmoid+lstm_660/while/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_660/while/lstm_cell_621/mulMul*lstm_660/while/lstm_cell_621/Sigmoid_1:y:0lstm_660_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_660/while/lstm_cell_621/ReluRelu+lstm_660/while/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_660/while/lstm_cell_621/mul_1Mul(lstm_660/while/lstm_cell_621/Sigmoid:y:0/lstm_660/while/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_660/while/lstm_cell_621/add_1AddV2$lstm_660/while/lstm_cell_621/mul:z:0&lstm_660/while/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_660/while/lstm_cell_621/Sigmoid_2Sigmoid+lstm_660/while/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_660/while/lstm_cell_621/Relu_1Relu&lstm_660/while/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_660/while/lstm_cell_621/mul_2Mul*lstm_660/while/lstm_cell_621/Sigmoid_2:y:01lstm_660/while/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_660/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_660_while_placeholder_1lstm_660_while_placeholder&lstm_660/while/lstm_cell_621/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_660/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_660/while/addAddV2lstm_660_while_placeholderlstm_660/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_660/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_660/while/add_1AddV2*lstm_660_while_lstm_660_while_loop_counterlstm_660/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_660/while/IdentityIdentitylstm_660/while/add_1:z:0^lstm_660/while/NoOp*
T0*
_output_shapes
: �
lstm_660/while/Identity_1Identity0lstm_660_while_lstm_660_while_maximum_iterations^lstm_660/while/NoOp*
T0*
_output_shapes
: t
lstm_660/while/Identity_2Identitylstm_660/while/add:z:0^lstm_660/while/NoOp*
T0*
_output_shapes
: �
lstm_660/while/Identity_3IdentityClstm_660/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_660/while/NoOp*
T0*
_output_shapes
: �
lstm_660/while/Identity_4Identity&lstm_660/while/lstm_cell_621/mul_2:z:0^lstm_660/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_660/while/Identity_5Identity&lstm_660/while/lstm_cell_621/add_1:z:0^lstm_660/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_660/while/NoOpNoOp4^lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp3^lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp5^lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_660_while_identity lstm_660/while/Identity:output:0"?
lstm_660_while_identity_1"lstm_660/while/Identity_1:output:0"?
lstm_660_while_identity_2"lstm_660/while/Identity_2:output:0"?
lstm_660_while_identity_3"lstm_660/while/Identity_3:output:0"?
lstm_660_while_identity_4"lstm_660/while/Identity_4:output:0"?
lstm_660_while_identity_5"lstm_660/while/Identity_5:output:0"T
'lstm_660_while_lstm_660_strided_slice_1)lstm_660_while_lstm_660_strided_slice_1_0"~
<lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource>lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource_0"�
=lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource?lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource_0"|
;lstm_660_while_lstm_cell_621_matmul_readvariableop_resource=lstm_660_while_lstm_cell_621_matmul_readvariableop_resource_0"�
clstm_660_while_tensorarrayv2read_tensorlistgetitem_lstm_660_tensorarrayunstack_tensorlistfromtensorelstm_660_while_tensorarrayv2read_tensorlistgetitem_lstm_660_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp3lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp2h
2lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp2lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp2l
4lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp4lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_661_while_cond_3772876.
*lstm_661_while_lstm_661_while_loop_counter4
0lstm_661_while_lstm_661_while_maximum_iterations
lstm_661_while_placeholder 
lstm_661_while_placeholder_1 
lstm_661_while_placeholder_2 
lstm_661_while_placeholder_30
,lstm_661_while_less_lstm_661_strided_slice_1G
Clstm_661_while_lstm_661_while_cond_3772876___redundant_placeholder0G
Clstm_661_while_lstm_661_while_cond_3772876___redundant_placeholder1G
Clstm_661_while_lstm_661_while_cond_3772876___redundant_placeholder2G
Clstm_661_while_lstm_661_while_cond_3772876___redundant_placeholder3
lstm_661_while_identity
�
lstm_661/while/LessLesslstm_661_while_placeholder,lstm_661_while_less_lstm_661_strided_slice_1*
T0*
_output_shapes
: ]
lstm_661/while/IdentityIdentitylstm_661/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_661_while_identity lstm_661/while/Identity:output:0*(
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

�
0__inference_sequential_220_layer_call_fn_3772679

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
K__inference_sequential_220_layer_call_and_return_conditional_losses_3772478o
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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3770928

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
�
�
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3775596

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
�J
�
E__inference_lstm_662_layer_call_and_return_conditional_losses_3771864

inputs>
,lstm_cell_623_matmul_readvariableop_resource:2(@
.lstm_cell_623_matmul_1_readvariableop_resource:
(;
-lstm_cell_623_biasadd_readvariableop_resource:(
identity��$lstm_cell_623/BiasAdd/ReadVariableOp�#lstm_cell_623/MatMul/ReadVariableOp�%lstm_cell_623/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_623/MatMul/ReadVariableOpReadVariableOp,lstm_cell_623_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_623/MatMulMatMulstrided_slice_2:output:0+lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_623_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_623/MatMul_1MatMulzeros:output:0-lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_623/addAddV2lstm_cell_623/MatMul:product:0 lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_623_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_623/BiasAddBiasAddlstm_cell_623/add:z:0,lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_623/splitSplit&lstm_cell_623/split/split_dim:output:0lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_623/SigmoidSigmoidlstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_1Sigmoidlstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_623/mulMullstm_cell_623/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_623/ReluRelulstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_1Mullstm_cell_623/Sigmoid:y:0 lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_623/add_1AddV2lstm_cell_623/mul:z:0lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_2Sigmoidlstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_623/Relu_1Relulstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_2Mullstm_cell_623/Sigmoid_2:y:0"lstm_cell_623/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_623_matmul_readvariableop_resource.lstm_cell_623_matmul_1_readvariableop_resource-lstm_cell_623_biasadd_readvariableop_resource*
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
while_body_3771780*
condR
while_cond_3771779*K
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
NoOpNoOp%^lstm_cell_623/BiasAdd/ReadVariableOp$^lstm_cell_623/MatMul/ReadVariableOp&^lstm_cell_623/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_623/BiasAdd/ReadVariableOp$lstm_cell_623/BiasAdd/ReadVariableOp2J
#lstm_cell_623/MatMul/ReadVariableOp#lstm_cell_623/MatMul/ReadVariableOp2N
%lstm_cell_623/MatMul_1/ReadVariableOp%lstm_cell_623/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�C
�

lstm_662_while_body_3773443.
*lstm_662_while_lstm_662_while_loop_counter4
0lstm_662_while_lstm_662_while_maximum_iterations
lstm_662_while_placeholder 
lstm_662_while_placeholder_1 
lstm_662_while_placeholder_2 
lstm_662_while_placeholder_3-
)lstm_662_while_lstm_662_strided_slice_1_0i
elstm_662_while_tensorarrayv2read_tensorlistgetitem_lstm_662_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_662_while_lstm_cell_623_matmul_readvariableop_resource_0:2(Q
?lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource_0:
(L
>lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource_0:(
lstm_662_while_identity
lstm_662_while_identity_1
lstm_662_while_identity_2
lstm_662_while_identity_3
lstm_662_while_identity_4
lstm_662_while_identity_5+
'lstm_662_while_lstm_662_strided_slice_1g
clstm_662_while_tensorarrayv2read_tensorlistgetitem_lstm_662_tensorarrayunstack_tensorlistfromtensorM
;lstm_662_while_lstm_cell_623_matmul_readvariableop_resource:2(O
=lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource:
(J
<lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource:(��3lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp�2lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp�4lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp�
@lstm_662/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_662/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_662_while_tensorarrayv2read_tensorlistgetitem_lstm_662_tensorarrayunstack_tensorlistfromtensor_0lstm_662_while_placeholderIlstm_662/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_662/while/lstm_cell_623/MatMul/ReadVariableOpReadVariableOp=lstm_662_while_lstm_cell_623_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_662/while/lstm_cell_623/MatMulMatMul9lstm_662/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp?lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_662/while/lstm_cell_623/MatMul_1MatMullstm_662_while_placeholder_2<lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_662/while/lstm_cell_623/addAddV2-lstm_662/while/lstm_cell_623/MatMul:product:0/lstm_662/while/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp>lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_662/while/lstm_cell_623/BiasAddBiasAdd$lstm_662/while/lstm_cell_623/add:z:0;lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_662/while/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_662/while/lstm_cell_623/splitSplit5lstm_662/while/lstm_cell_623/split/split_dim:output:0-lstm_662/while/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_662/while/lstm_cell_623/SigmoidSigmoid+lstm_662/while/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_662/while/lstm_cell_623/Sigmoid_1Sigmoid+lstm_662/while/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_662/while/lstm_cell_623/mulMul*lstm_662/while/lstm_cell_623/Sigmoid_1:y:0lstm_662_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_662/while/lstm_cell_623/ReluRelu+lstm_662/while/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_662/while/lstm_cell_623/mul_1Mul(lstm_662/while/lstm_cell_623/Sigmoid:y:0/lstm_662/while/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_662/while/lstm_cell_623/add_1AddV2$lstm_662/while/lstm_cell_623/mul:z:0&lstm_662/while/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_662/while/lstm_cell_623/Sigmoid_2Sigmoid+lstm_662/while/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_662/while/lstm_cell_623/Relu_1Relu&lstm_662/while/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_662/while/lstm_cell_623/mul_2Mul*lstm_662/while/lstm_cell_623/Sigmoid_2:y:01lstm_662/while/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_662/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_662_while_placeholder_1lstm_662_while_placeholder&lstm_662/while/lstm_cell_623/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_662/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_662/while/addAddV2lstm_662_while_placeholderlstm_662/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_662/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_662/while/add_1AddV2*lstm_662_while_lstm_662_while_loop_counterlstm_662/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_662/while/IdentityIdentitylstm_662/while/add_1:z:0^lstm_662/while/NoOp*
T0*
_output_shapes
: �
lstm_662/while/Identity_1Identity0lstm_662_while_lstm_662_while_maximum_iterations^lstm_662/while/NoOp*
T0*
_output_shapes
: t
lstm_662/while/Identity_2Identitylstm_662/while/add:z:0^lstm_662/while/NoOp*
T0*
_output_shapes
: �
lstm_662/while/Identity_3IdentityClstm_662/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_662/while/NoOp*
T0*
_output_shapes
: �
lstm_662/while/Identity_4Identity&lstm_662/while/lstm_cell_623/mul_2:z:0^lstm_662/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_662/while/Identity_5Identity&lstm_662/while/lstm_cell_623/add_1:z:0^lstm_662/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_662/while/NoOpNoOp4^lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp3^lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp5^lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_662_while_identity lstm_662/while/Identity:output:0"?
lstm_662_while_identity_1"lstm_662/while/Identity_1:output:0"?
lstm_662_while_identity_2"lstm_662/while/Identity_2:output:0"?
lstm_662_while_identity_3"lstm_662/while/Identity_3:output:0"?
lstm_662_while_identity_4"lstm_662/while/Identity_4:output:0"?
lstm_662_while_identity_5"lstm_662/while/Identity_5:output:0"T
'lstm_662_while_lstm_662_strided_slice_1)lstm_662_while_lstm_662_strided_slice_1_0"~
<lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource>lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource_0"�
=lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource?lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource_0"|
;lstm_662_while_lstm_cell_623_matmul_readvariableop_resource=lstm_662_while_lstm_cell_623_matmul_readvariableop_resource_0"�
clstm_662_while_tensorarrayv2read_tensorlistgetitem_lstm_662_tensorarrayunstack_tensorlistfromtensorelstm_662_while_tensorarrayv2read_tensorlistgetitem_lstm_662_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp3lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp2h
2lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp2lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp2l
4lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp4lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3771132

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
�K
�
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774336
inputs_0?
,lstm_cell_622_matmul_readvariableop_resource:	d�A
.lstm_cell_622_matmul_1_readvariableop_resource:	2�<
-lstm_cell_622_biasadd_readvariableop_resource:	�
identity��$lstm_cell_622/BiasAdd/ReadVariableOp�#lstm_cell_622/MatMul/ReadVariableOp�%lstm_cell_622/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_622/MatMul/ReadVariableOpReadVariableOp,lstm_cell_622_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_622/MatMulMatMulstrided_slice_2:output:0+lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_622_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_622/MatMul_1MatMulzeros:output:0-lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_622/addAddV2lstm_cell_622/MatMul:product:0 lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_622_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_622/BiasAddBiasAddlstm_cell_622/add:z:0,lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_622/splitSplit&lstm_cell_622/split/split_dim:output:0lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_622/SigmoidSigmoidlstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_1Sigmoidlstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_622/mulMullstm_cell_622/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_622/ReluRelulstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_1Mullstm_cell_622/Sigmoid:y:0 lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_622/add_1AddV2lstm_cell_622/mul:z:0lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_2Sigmoidlstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_622/Relu_1Relulstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_2Mullstm_cell_622/Sigmoid_2:y:0"lstm_cell_622/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_622_matmul_readvariableop_resource.lstm_cell_622_matmul_1_readvariableop_resource-lstm_cell_622_biasadd_readvariableop_resource*
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
while_body_3774252*
condR
while_cond_3774251*K
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
NoOpNoOp%^lstm_cell_622/BiasAdd/ReadVariableOp$^lstm_cell_622/MatMul/ReadVariableOp&^lstm_cell_622/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_622/BiasAdd/ReadVariableOp$lstm_cell_622/BiasAdd/ReadVariableOp2J
#lstm_cell_622/MatMul/ReadVariableOp#lstm_cell_622/MatMul/ReadVariableOp2N
%lstm_cell_622/MatMul_1/ReadVariableOp%lstm_cell_622/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�K
�
E__inference_lstm_662_layer_call_and_return_conditional_losses_3774952
inputs_0>
,lstm_cell_623_matmul_readvariableop_resource:2(@
.lstm_cell_623_matmul_1_readvariableop_resource:
(;
-lstm_cell_623_biasadd_readvariableop_resource:(
identity��$lstm_cell_623/BiasAdd/ReadVariableOp�#lstm_cell_623/MatMul/ReadVariableOp�%lstm_cell_623/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_623/MatMul/ReadVariableOpReadVariableOp,lstm_cell_623_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_623/MatMulMatMulstrided_slice_2:output:0+lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_623_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_623/MatMul_1MatMulzeros:output:0-lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_623/addAddV2lstm_cell_623/MatMul:product:0 lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_623_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_623/BiasAddBiasAddlstm_cell_623/add:z:0,lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_623/splitSplit&lstm_cell_623/split/split_dim:output:0lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_623/SigmoidSigmoidlstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_1Sigmoidlstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_623/mulMullstm_cell_623/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_623/ReluRelulstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_1Mullstm_cell_623/Sigmoid:y:0 lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_623/add_1AddV2lstm_cell_623/mul:z:0lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_2Sigmoidlstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_623/Relu_1Relulstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_2Mullstm_cell_623/Sigmoid_2:y:0"lstm_cell_623/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_623_matmul_readvariableop_resource.lstm_cell_623_matmul_1_readvariableop_resource-lstm_cell_623_biasadd_readvariableop_resource*
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
while_body_3774868*
condR
while_cond_3774867*K
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
NoOpNoOp%^lstm_cell_623/BiasAdd/ReadVariableOp$^lstm_cell_623/MatMul/ReadVariableOp&^lstm_cell_623/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_623/BiasAdd/ReadVariableOp$lstm_cell_623/BiasAdd/ReadVariableOp2J
#lstm_cell_623/MatMul/ReadVariableOp#lstm_cell_623/MatMul/ReadVariableOp2N
%lstm_cell_623/MatMul_1/ReadVariableOp%lstm_cell_623/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
K__inference_sequential_220_layer_call_and_return_conditional_losses_3771889

inputs#
lstm_660_3771565:	�#
lstm_660_3771567:	d�
lstm_660_3771569:	�#
lstm_661_3771715:	d�#
lstm_661_3771717:	2�
lstm_661_3771719:	�"
lstm_662_3771865:2("
lstm_662_3771867:
(
lstm_662_3771869:(#
dense_220_3771883:

dense_220_3771885:
identity��!dense_220/StatefulPartitionedCall� lstm_660/StatefulPartitionedCall� lstm_661/StatefulPartitionedCall� lstm_662/StatefulPartitionedCall�
 lstm_660/StatefulPartitionedCallStatefulPartitionedCallinputslstm_660_3771565lstm_660_3771567lstm_660_3771569*
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3771564�
 lstm_661/StatefulPartitionedCallStatefulPartitionedCall)lstm_660/StatefulPartitionedCall:output:0lstm_661_3771715lstm_661_3771717lstm_661_3771719*
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3771714�
 lstm_662/StatefulPartitionedCallStatefulPartitionedCall)lstm_661/StatefulPartitionedCall:output:0lstm_662_3771865lstm_662_3771867lstm_662_3771869*
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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3771864�
!dense_220/StatefulPartitionedCallStatefulPartitionedCall)lstm_662/StatefulPartitionedCall:output:0dense_220_3771883dense_220_3771885*
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
F__inference_dense_220_layer_call_and_return_conditional_losses_3771882y
IdentityIdentity*dense_220/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_220/StatefulPartitionedCall!^lstm_660/StatefulPartitionedCall!^lstm_661/StatefulPartitionedCall!^lstm_662/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_220/StatefulPartitionedCall!dense_220/StatefulPartitionedCall2D
 lstm_660/StatefulPartitionedCall lstm_660/StatefulPartitionedCall2D
 lstm_661/StatefulPartitionedCall lstm_661/StatefulPartitionedCall2D
 lstm_662/StatefulPartitionedCall lstm_662/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�#
�
while_body_3770987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_622_3771011_0:	d�0
while_lstm_cell_622_3771013_0:	2�,
while_lstm_cell_622_3771015_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_622_3771011:	d�.
while_lstm_cell_622_3771013:	2�*
while_lstm_cell_622_3771015:	���+while/lstm_cell_622/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_622/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_622_3771011_0while_lstm_cell_622_3771013_0while_lstm_cell_622_3771015_0*
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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3770928�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_622/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_622/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_622/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_622/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_622_3771011while_lstm_cell_622_3771011_0"<
while_lstm_cell_622_3771013while_lstm_cell_622_3771013_0"<
while_lstm_cell_622_3771015while_lstm_cell_622_3771015_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_622/StatefulPartitionedCall+while/lstm_cell_622/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3772245

inputs?
,lstm_cell_622_matmul_readvariableop_resource:	d�A
.lstm_cell_622_matmul_1_readvariableop_resource:	2�<
-lstm_cell_622_biasadd_readvariableop_resource:	�
identity��$lstm_cell_622/BiasAdd/ReadVariableOp�#lstm_cell_622/MatMul/ReadVariableOp�%lstm_cell_622/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_622/MatMul/ReadVariableOpReadVariableOp,lstm_cell_622_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_622/MatMulMatMulstrided_slice_2:output:0+lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_622_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_622/MatMul_1MatMulzeros:output:0-lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_622/addAddV2lstm_cell_622/MatMul:product:0 lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_622_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_622/BiasAddBiasAddlstm_cell_622/add:z:0,lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_622/splitSplit&lstm_cell_622/split/split_dim:output:0lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_622/SigmoidSigmoidlstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_1Sigmoidlstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_622/mulMullstm_cell_622/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_622/ReluRelulstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_1Mullstm_cell_622/Sigmoid:y:0 lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_622/add_1AddV2lstm_cell_622/mul:z:0lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_2Sigmoidlstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_622/Relu_1Relulstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_2Mullstm_cell_622/Sigmoid_2:y:0"lstm_cell_622/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_622_matmul_readvariableop_resource.lstm_cell_622_matmul_1_readvariableop_resource-lstm_cell_622_biasadd_readvariableop_resource*
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
while_body_3772161*
condR
while_cond_3772160*K
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
NoOpNoOp%^lstm_cell_622/BiasAdd/ReadVariableOp$^lstm_cell_622/MatMul/ReadVariableOp&^lstm_cell_622/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_622/BiasAdd/ReadVariableOp$lstm_cell_622/BiasAdd/ReadVariableOp2J
#lstm_cell_622/MatMul/ReadVariableOp#lstm_cell_622/MatMul/ReadVariableOp2N
%lstm_cell_622/MatMul_1/ReadVariableOp%lstm_cell_622/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�	
�
F__inference_dense_220_layer_call_and_return_conditional_losses_3771882

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
lstm_660_while_cond_3772737.
*lstm_660_while_lstm_660_while_loop_counter4
0lstm_660_while_lstm_660_while_maximum_iterations
lstm_660_while_placeholder 
lstm_660_while_placeholder_1 
lstm_660_while_placeholder_2 
lstm_660_while_placeholder_30
,lstm_660_while_less_lstm_660_strided_slice_1G
Clstm_660_while_lstm_660_while_cond_3772737___redundant_placeholder0G
Clstm_660_while_lstm_660_while_cond_3772737___redundant_placeholder1G
Clstm_660_while_lstm_660_while_cond_3772737___redundant_placeholder2G
Clstm_660_while_lstm_660_while_cond_3772737___redundant_placeholder3
lstm_660_while_identity
�
lstm_660/while/LessLesslstm_660_while_placeholder,lstm_660_while_less_lstm_660_strided_slice_1*
T0*
_output_shapes
: ]
lstm_660/while/IdentityIdentitylstm_660/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_660_while_identity lstm_660/while/Identity:output:0*(
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
�W
�
 __inference__traced_save_3775837
file_prefix/
+savev2_dense_220_kernel_read_readvariableop-
)savev2_dense_220_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_660_lstm_cell_660_kernel_read_readvariableopF
Bsavev2_lstm_660_lstm_cell_660_recurrent_kernel_read_readvariableop:
6savev2_lstm_660_lstm_cell_660_bias_read_readvariableop<
8savev2_lstm_661_lstm_cell_661_kernel_read_readvariableopF
Bsavev2_lstm_661_lstm_cell_661_recurrent_kernel_read_readvariableop:
6savev2_lstm_661_lstm_cell_661_bias_read_readvariableop<
8savev2_lstm_662_lstm_cell_662_kernel_read_readvariableopF
Bsavev2_lstm_662_lstm_cell_662_recurrent_kernel_read_readvariableop:
6savev2_lstm_662_lstm_cell_662_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_220_kernel_m_read_readvariableop4
0savev2_adam_dense_220_bias_m_read_readvariableopC
?savev2_adam_lstm_660_lstm_cell_660_kernel_m_read_readvariableopM
Isavev2_adam_lstm_660_lstm_cell_660_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_660_lstm_cell_660_bias_m_read_readvariableopC
?savev2_adam_lstm_661_lstm_cell_661_kernel_m_read_readvariableopM
Isavev2_adam_lstm_661_lstm_cell_661_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_661_lstm_cell_661_bias_m_read_readvariableopC
?savev2_adam_lstm_662_lstm_cell_662_kernel_m_read_readvariableopM
Isavev2_adam_lstm_662_lstm_cell_662_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_662_lstm_cell_662_bias_m_read_readvariableop6
2savev2_adam_dense_220_kernel_v_read_readvariableop4
0savev2_adam_dense_220_bias_v_read_readvariableopC
?savev2_adam_lstm_660_lstm_cell_660_kernel_v_read_readvariableopM
Isavev2_adam_lstm_660_lstm_cell_660_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_660_lstm_cell_660_bias_v_read_readvariableopC
?savev2_adam_lstm_661_lstm_cell_661_kernel_v_read_readvariableopM
Isavev2_adam_lstm_661_lstm_cell_661_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_661_lstm_cell_661_bias_v_read_readvariableopC
?savev2_adam_lstm_662_lstm_cell_662_kernel_v_read_readvariableopM
Isavev2_adam_lstm_662_lstm_cell_662_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_662_lstm_cell_662_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_220_kernel_read_readvariableop)savev2_dense_220_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_660_lstm_cell_660_kernel_read_readvariableopBsavev2_lstm_660_lstm_cell_660_recurrent_kernel_read_readvariableop6savev2_lstm_660_lstm_cell_660_bias_read_readvariableop8savev2_lstm_661_lstm_cell_661_kernel_read_readvariableopBsavev2_lstm_661_lstm_cell_661_recurrent_kernel_read_readvariableop6savev2_lstm_661_lstm_cell_661_bias_read_readvariableop8savev2_lstm_662_lstm_cell_662_kernel_read_readvariableopBsavev2_lstm_662_lstm_cell_662_recurrent_kernel_read_readvariableop6savev2_lstm_662_lstm_cell_662_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_220_kernel_m_read_readvariableop0savev2_adam_dense_220_bias_m_read_readvariableop?savev2_adam_lstm_660_lstm_cell_660_kernel_m_read_readvariableopIsavev2_adam_lstm_660_lstm_cell_660_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_660_lstm_cell_660_bias_m_read_readvariableop?savev2_adam_lstm_661_lstm_cell_661_kernel_m_read_readvariableopIsavev2_adam_lstm_661_lstm_cell_661_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_661_lstm_cell_661_bias_m_read_readvariableop?savev2_adam_lstm_662_lstm_cell_662_kernel_m_read_readvariableopIsavev2_adam_lstm_662_lstm_cell_662_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_662_lstm_cell_662_bias_m_read_readvariableop2savev2_adam_dense_220_kernel_v_read_readvariableop0savev2_adam_dense_220_bias_v_read_readvariableop?savev2_adam_lstm_660_lstm_cell_660_kernel_v_read_readvariableopIsavev2_adam_lstm_660_lstm_cell_660_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_660_lstm_cell_660_bias_v_read_readvariableop?savev2_adam_lstm_661_lstm_cell_661_kernel_v_read_readvariableopIsavev2_adam_lstm_661_lstm_cell_661_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_661_lstm_cell_661_bias_v_read_readvariableop?savev2_adam_lstm_662_lstm_cell_662_kernel_v_read_readvariableopIsavev2_adam_lstm_662_lstm_cell_662_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_662_lstm_cell_662_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�
�
while_cond_3770445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3770445___redundant_placeholder05
1while_while_cond_3770445___redundant_placeholder15
1while_while_cond_3770445___redundant_placeholder25
1while_while_cond_3770445___redundant_placeholder3
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
while_body_3774252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_622_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_622_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_622_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_622_matmul_readvariableop_resource:	d�G
4while_lstm_cell_622_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_622_biasadd_readvariableop_resource:	���*while/lstm_cell_622/BiasAdd/ReadVariableOp�)while/lstm_cell_622/MatMul/ReadVariableOp�+while/lstm_cell_622/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_622/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_622_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_622/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_622_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_622/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_622/addAddV2$while/lstm_cell_622/MatMul:product:0&while/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_622_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_622/BiasAddBiasAddwhile/lstm_cell_622/add:z:02while/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_622/splitSplit,while/lstm_cell_622/split/split_dim:output:0$while/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_622/SigmoidSigmoid"while/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_1Sigmoid"while/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mulMul!while/lstm_cell_622/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_622/ReluRelu"while/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_1Mulwhile/lstm_cell_622/Sigmoid:y:0&while/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/add_1AddV2while/lstm_cell_622/mul:z:0while/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_2Sigmoid"while/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_622/Relu_1Reluwhile/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_2Mul!while/lstm_cell_622/Sigmoid_2:y:0(while/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_622/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_622/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_622/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_622/BiasAdd/ReadVariableOp*^while/lstm_cell_622/MatMul/ReadVariableOp,^while/lstm_cell_622/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_622_biasadd_readvariableop_resource5while_lstm_cell_622_biasadd_readvariableop_resource_0"n
4while_lstm_cell_622_matmul_1_readvariableop_resource6while_lstm_cell_622_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_622_matmul_readvariableop_resource4while_lstm_cell_622_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_622/BiasAdd/ReadVariableOp*while/lstm_cell_622/BiasAdd/ReadVariableOp2V
)while/lstm_cell_622/MatMul/ReadVariableOp)while/lstm_cell_622/MatMul/ReadVariableOp2Z
+while/lstm_cell_622/MatMul_1/ReadVariableOp+while/lstm_cell_622/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
��
�
K__inference_sequential_220_layer_call_and_return_conditional_losses_3773533

inputsH
5lstm_660_lstm_cell_621_matmul_readvariableop_resource:	�J
7lstm_660_lstm_cell_621_matmul_1_readvariableop_resource:	d�E
6lstm_660_lstm_cell_621_biasadd_readvariableop_resource:	�H
5lstm_661_lstm_cell_622_matmul_readvariableop_resource:	d�J
7lstm_661_lstm_cell_622_matmul_1_readvariableop_resource:	2�E
6lstm_661_lstm_cell_622_biasadd_readvariableop_resource:	�G
5lstm_662_lstm_cell_623_matmul_readvariableop_resource:2(I
7lstm_662_lstm_cell_623_matmul_1_readvariableop_resource:
(D
6lstm_662_lstm_cell_623_biasadd_readvariableop_resource:(:
(dense_220_matmul_readvariableop_resource:
7
)dense_220_biasadd_readvariableop_resource:
identity�� dense_220/BiasAdd/ReadVariableOp�dense_220/MatMul/ReadVariableOp�-lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp�,lstm_660/lstm_cell_621/MatMul/ReadVariableOp�.lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp�lstm_660/while�-lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp�,lstm_661/lstm_cell_622/MatMul/ReadVariableOp�.lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp�lstm_661/while�-lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp�,lstm_662/lstm_cell_623/MatMul/ReadVariableOp�.lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp�lstm_662/whileD
lstm_660/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_660/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_660/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_660/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_660/strided_sliceStridedSlicelstm_660/Shape:output:0%lstm_660/strided_slice/stack:output:0'lstm_660/strided_slice/stack_1:output:0'lstm_660/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_660/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_660/zeros/packedPacklstm_660/strided_slice:output:0 lstm_660/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_660/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_660/zerosFilllstm_660/zeros/packed:output:0lstm_660/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_660/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_660/zeros_1/packedPacklstm_660/strided_slice:output:0"lstm_660/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_660/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_660/zeros_1Fill lstm_660/zeros_1/packed:output:0lstm_660/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_660/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_660/transpose	Transposeinputs lstm_660/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_660/Shape_1Shapelstm_660/transpose:y:0*
T0*
_output_shapes
:h
lstm_660/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_660/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_660/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_660/strided_slice_1StridedSlicelstm_660/Shape_1:output:0'lstm_660/strided_slice_1/stack:output:0)lstm_660/strided_slice_1/stack_1:output:0)lstm_660/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_660/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_660/TensorArrayV2TensorListReserve-lstm_660/TensorArrayV2/element_shape:output:0!lstm_660/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_660/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_660/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_660/transpose:y:0Glstm_660/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_660/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_660/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_660/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_660/strided_slice_2StridedSlicelstm_660/transpose:y:0'lstm_660/strided_slice_2/stack:output:0)lstm_660/strided_slice_2/stack_1:output:0)lstm_660/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_660/lstm_cell_621/MatMul/ReadVariableOpReadVariableOp5lstm_660_lstm_cell_621_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_660/lstm_cell_621/MatMulMatMul!lstm_660/strided_slice_2:output:04lstm_660/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_660/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp7lstm_660_lstm_cell_621_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_660/lstm_cell_621/MatMul_1MatMullstm_660/zeros:output:06lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_660/lstm_cell_621/addAddV2'lstm_660/lstm_cell_621/MatMul:product:0)lstm_660/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_660/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp6lstm_660_lstm_cell_621_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_660/lstm_cell_621/BiasAddBiasAddlstm_660/lstm_cell_621/add:z:05lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_660/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_660/lstm_cell_621/splitSplit/lstm_660/lstm_cell_621/split/split_dim:output:0'lstm_660/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_660/lstm_cell_621/SigmoidSigmoid%lstm_660/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_660/lstm_cell_621/Sigmoid_1Sigmoid%lstm_660/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_660/lstm_cell_621/mulMul$lstm_660/lstm_cell_621/Sigmoid_1:y:0lstm_660/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_660/lstm_cell_621/ReluRelu%lstm_660/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_660/lstm_cell_621/mul_1Mul"lstm_660/lstm_cell_621/Sigmoid:y:0)lstm_660/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_660/lstm_cell_621/add_1AddV2lstm_660/lstm_cell_621/mul:z:0 lstm_660/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_660/lstm_cell_621/Sigmoid_2Sigmoid%lstm_660/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_660/lstm_cell_621/Relu_1Relu lstm_660/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_660/lstm_cell_621/mul_2Mul$lstm_660/lstm_cell_621/Sigmoid_2:y:0+lstm_660/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_660/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_660/TensorArrayV2_1TensorListReserve/lstm_660/TensorArrayV2_1/element_shape:output:0!lstm_660/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_660/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_660/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_660/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_660/whileWhile$lstm_660/while/loop_counter:output:0*lstm_660/while/maximum_iterations:output:0lstm_660/time:output:0!lstm_660/TensorArrayV2_1:handle:0lstm_660/zeros:output:0lstm_660/zeros_1:output:0!lstm_660/strided_slice_1:output:0@lstm_660/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_660_lstm_cell_621_matmul_readvariableop_resource7lstm_660_lstm_cell_621_matmul_1_readvariableop_resource6lstm_660_lstm_cell_621_biasadd_readvariableop_resource*
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
lstm_660_while_body_3773165*'
condR
lstm_660_while_cond_3773164*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_660/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_660/TensorArrayV2Stack/TensorListStackTensorListStacklstm_660/while:output:3Blstm_660/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_660/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_660/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_660/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_660/strided_slice_3StridedSlice4lstm_660/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_660/strided_slice_3/stack:output:0)lstm_660/strided_slice_3/stack_1:output:0)lstm_660/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_660/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_660/transpose_1	Transpose4lstm_660/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_660/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_660/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_661/ShapeShapelstm_660/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_661/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_661/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_661/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_661/strided_sliceStridedSlicelstm_661/Shape:output:0%lstm_661/strided_slice/stack:output:0'lstm_661/strided_slice/stack_1:output:0'lstm_661/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_661/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_661/zeros/packedPacklstm_661/strided_slice:output:0 lstm_661/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_661/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_661/zerosFilllstm_661/zeros/packed:output:0lstm_661/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_661/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_661/zeros_1/packedPacklstm_661/strided_slice:output:0"lstm_661/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_661/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_661/zeros_1Fill lstm_661/zeros_1/packed:output:0lstm_661/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_661/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_661/transpose	Transposelstm_660/transpose_1:y:0 lstm_661/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_661/Shape_1Shapelstm_661/transpose:y:0*
T0*
_output_shapes
:h
lstm_661/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_661/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_661/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_661/strided_slice_1StridedSlicelstm_661/Shape_1:output:0'lstm_661/strided_slice_1/stack:output:0)lstm_661/strided_slice_1/stack_1:output:0)lstm_661/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_661/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_661/TensorArrayV2TensorListReserve-lstm_661/TensorArrayV2/element_shape:output:0!lstm_661/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_661/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_661/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_661/transpose:y:0Glstm_661/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_661/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_661/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_661/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_661/strided_slice_2StridedSlicelstm_661/transpose:y:0'lstm_661/strided_slice_2/stack:output:0)lstm_661/strided_slice_2/stack_1:output:0)lstm_661/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_661/lstm_cell_622/MatMul/ReadVariableOpReadVariableOp5lstm_661_lstm_cell_622_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_661/lstm_cell_622/MatMulMatMul!lstm_661/strided_slice_2:output:04lstm_661/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_661/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp7lstm_661_lstm_cell_622_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_661/lstm_cell_622/MatMul_1MatMullstm_661/zeros:output:06lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_661/lstm_cell_622/addAddV2'lstm_661/lstm_cell_622/MatMul:product:0)lstm_661/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_661/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp6lstm_661_lstm_cell_622_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_661/lstm_cell_622/BiasAddBiasAddlstm_661/lstm_cell_622/add:z:05lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_661/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_661/lstm_cell_622/splitSplit/lstm_661/lstm_cell_622/split/split_dim:output:0'lstm_661/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_661/lstm_cell_622/SigmoidSigmoid%lstm_661/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_661/lstm_cell_622/Sigmoid_1Sigmoid%lstm_661/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_661/lstm_cell_622/mulMul$lstm_661/lstm_cell_622/Sigmoid_1:y:0lstm_661/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_661/lstm_cell_622/ReluRelu%lstm_661/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_661/lstm_cell_622/mul_1Mul"lstm_661/lstm_cell_622/Sigmoid:y:0)lstm_661/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_661/lstm_cell_622/add_1AddV2lstm_661/lstm_cell_622/mul:z:0 lstm_661/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_661/lstm_cell_622/Sigmoid_2Sigmoid%lstm_661/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_661/lstm_cell_622/Relu_1Relu lstm_661/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_661/lstm_cell_622/mul_2Mul$lstm_661/lstm_cell_622/Sigmoid_2:y:0+lstm_661/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_661/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_661/TensorArrayV2_1TensorListReserve/lstm_661/TensorArrayV2_1/element_shape:output:0!lstm_661/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_661/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_661/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_661/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_661/whileWhile$lstm_661/while/loop_counter:output:0*lstm_661/while/maximum_iterations:output:0lstm_661/time:output:0!lstm_661/TensorArrayV2_1:handle:0lstm_661/zeros:output:0lstm_661/zeros_1:output:0!lstm_661/strided_slice_1:output:0@lstm_661/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_661_lstm_cell_622_matmul_readvariableop_resource7lstm_661_lstm_cell_622_matmul_1_readvariableop_resource6lstm_661_lstm_cell_622_biasadd_readvariableop_resource*
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
lstm_661_while_body_3773304*'
condR
lstm_661_while_cond_3773303*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_661/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_661/TensorArrayV2Stack/TensorListStackTensorListStacklstm_661/while:output:3Blstm_661/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_661/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_661/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_661/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_661/strided_slice_3StridedSlice4lstm_661/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_661/strided_slice_3/stack:output:0)lstm_661/strided_slice_3/stack_1:output:0)lstm_661/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_661/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_661/transpose_1	Transpose4lstm_661/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_661/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_661/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_662/ShapeShapelstm_661/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_662/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_662/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_662/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_662/strided_sliceStridedSlicelstm_662/Shape:output:0%lstm_662/strided_slice/stack:output:0'lstm_662/strided_slice/stack_1:output:0'lstm_662/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_662/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_662/zeros/packedPacklstm_662/strided_slice:output:0 lstm_662/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_662/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_662/zerosFilllstm_662/zeros/packed:output:0lstm_662/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_662/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_662/zeros_1/packedPacklstm_662/strided_slice:output:0"lstm_662/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_662/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_662/zeros_1Fill lstm_662/zeros_1/packed:output:0lstm_662/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_662/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_662/transpose	Transposelstm_661/transpose_1:y:0 lstm_662/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_662/Shape_1Shapelstm_662/transpose:y:0*
T0*
_output_shapes
:h
lstm_662/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_662/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_662/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_662/strided_slice_1StridedSlicelstm_662/Shape_1:output:0'lstm_662/strided_slice_1/stack:output:0)lstm_662/strided_slice_1/stack_1:output:0)lstm_662/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_662/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_662/TensorArrayV2TensorListReserve-lstm_662/TensorArrayV2/element_shape:output:0!lstm_662/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_662/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_662/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_662/transpose:y:0Glstm_662/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_662/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_662/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_662/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_662/strided_slice_2StridedSlicelstm_662/transpose:y:0'lstm_662/strided_slice_2/stack:output:0)lstm_662/strided_slice_2/stack_1:output:0)lstm_662/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_662/lstm_cell_623/MatMul/ReadVariableOpReadVariableOp5lstm_662_lstm_cell_623_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_662/lstm_cell_623/MatMulMatMul!lstm_662/strided_slice_2:output:04lstm_662/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_662/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp7lstm_662_lstm_cell_623_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_662/lstm_cell_623/MatMul_1MatMullstm_662/zeros:output:06lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_662/lstm_cell_623/addAddV2'lstm_662/lstm_cell_623/MatMul:product:0)lstm_662/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_662/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp6lstm_662_lstm_cell_623_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_662/lstm_cell_623/BiasAddBiasAddlstm_662/lstm_cell_623/add:z:05lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_662/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_662/lstm_cell_623/splitSplit/lstm_662/lstm_cell_623/split/split_dim:output:0'lstm_662/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_662/lstm_cell_623/SigmoidSigmoid%lstm_662/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_662/lstm_cell_623/Sigmoid_1Sigmoid%lstm_662/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_662/lstm_cell_623/mulMul$lstm_662/lstm_cell_623/Sigmoid_1:y:0lstm_662/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_662/lstm_cell_623/ReluRelu%lstm_662/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_662/lstm_cell_623/mul_1Mul"lstm_662/lstm_cell_623/Sigmoid:y:0)lstm_662/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_662/lstm_cell_623/add_1AddV2lstm_662/lstm_cell_623/mul:z:0 lstm_662/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_662/lstm_cell_623/Sigmoid_2Sigmoid%lstm_662/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_662/lstm_cell_623/Relu_1Relu lstm_662/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_662/lstm_cell_623/mul_2Mul$lstm_662/lstm_cell_623/Sigmoid_2:y:0+lstm_662/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_662/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_662/TensorArrayV2_1TensorListReserve/lstm_662/TensorArrayV2_1/element_shape:output:0!lstm_662/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_662/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_662/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_662/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_662/whileWhile$lstm_662/while/loop_counter:output:0*lstm_662/while/maximum_iterations:output:0lstm_662/time:output:0!lstm_662/TensorArrayV2_1:handle:0lstm_662/zeros:output:0lstm_662/zeros_1:output:0!lstm_662/strided_slice_1:output:0@lstm_662/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_662_lstm_cell_623_matmul_readvariableop_resource7lstm_662_lstm_cell_623_matmul_1_readvariableop_resource6lstm_662_lstm_cell_623_biasadd_readvariableop_resource*
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
lstm_662_while_body_3773443*'
condR
lstm_662_while_cond_3773442*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_662/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_662/TensorArrayV2Stack/TensorListStackTensorListStacklstm_662/while:output:3Blstm_662/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_662/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_662/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_662/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_662/strided_slice_3StridedSlice4lstm_662/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_662/strided_slice_3/stack:output:0)lstm_662/strided_slice_3/stack_1:output:0)lstm_662/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_662/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_662/transpose_1	Transpose4lstm_662/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_662/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_662/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_220/MatMul/ReadVariableOpReadVariableOp(dense_220_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_220/MatMulMatMul!lstm_662/strided_slice_3:output:0'dense_220/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_220/BiasAdd/ReadVariableOpReadVariableOp)dense_220_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_220/BiasAddBiasAdddense_220/MatMul:product:0(dense_220/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_220/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_220/BiasAdd/ReadVariableOp ^dense_220/MatMul/ReadVariableOp.^lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp-^lstm_660/lstm_cell_621/MatMul/ReadVariableOp/^lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp^lstm_660/while.^lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp-^lstm_661/lstm_cell_622/MatMul/ReadVariableOp/^lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp^lstm_661/while.^lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp-^lstm_662/lstm_cell_623/MatMul/ReadVariableOp/^lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp^lstm_662/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_220/BiasAdd/ReadVariableOp dense_220/BiasAdd/ReadVariableOp2B
dense_220/MatMul/ReadVariableOpdense_220/MatMul/ReadVariableOp2^
-lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp-lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp2\
,lstm_660/lstm_cell_621/MatMul/ReadVariableOp,lstm_660/lstm_cell_621/MatMul/ReadVariableOp2`
.lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp.lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp2 
lstm_660/whilelstm_660/while2^
-lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp-lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp2\
,lstm_661/lstm_cell_622/MatMul/ReadVariableOp,lstm_661/lstm_cell_622/MatMul/ReadVariableOp2`
.lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp.lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp2 
lstm_661/whilelstm_661/while2^
-lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp-lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp2\
,lstm_662/lstm_cell_623/MatMul/ReadVariableOp,lstm_662/lstm_cell_623/MatMul/ReadVariableOp2`
.lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp.lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp2 
lstm_662/whilelstm_662/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_3774251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3774251___redundant_placeholder05
1while_while_cond_3774251___redundant_placeholder15
1while_while_cond_3774251___redundant_placeholder25
1while_while_cond_3774251___redundant_placeholder3
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
while_cond_3770636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3770636___redundant_placeholder05
1while_while_cond_3770636___redundant_placeholder15
1while_while_cond_3770636___redundant_placeholder25
1while_while_cond_3770636___redundant_placeholder3
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
while_cond_3774394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3774394___redundant_placeholder05
1while_while_cond_3774394___redundant_placeholder15
1while_while_cond_3774394___redundant_placeholder25
1while_while_cond_3774394___redundant_placeholder3
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3771056

inputs(
lstm_cell_622_3770974:	d�(
lstm_cell_622_3770976:	2�$
lstm_cell_622_3770978:	�
identity��%lstm_cell_622/StatefulPartitionedCall�while;
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
%lstm_cell_622/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_622_3770974lstm_cell_622_3770976lstm_cell_622_3770978*
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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3770928n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_622_3770974lstm_cell_622_3770976lstm_cell_622_3770978*
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
while_body_3770987*
condR
while_cond_3770986*K
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
NoOpNoOp&^lstm_cell_622/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_622/StatefulPartitionedCall%lstm_cell_622/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3775662

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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3775381

inputs>
,lstm_cell_623_matmul_readvariableop_resource:2(@
.lstm_cell_623_matmul_1_readvariableop_resource:
(;
-lstm_cell_623_biasadd_readvariableop_resource:(
identity��$lstm_cell_623/BiasAdd/ReadVariableOp�#lstm_cell_623/MatMul/ReadVariableOp�%lstm_cell_623/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_623/MatMul/ReadVariableOpReadVariableOp,lstm_cell_623_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_623/MatMulMatMulstrided_slice_2:output:0+lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_623_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_623/MatMul_1MatMulzeros:output:0-lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_623/addAddV2lstm_cell_623/MatMul:product:0 lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_623_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_623/BiasAddBiasAddlstm_cell_623/add:z:0,lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_623/splitSplit&lstm_cell_623/split/split_dim:output:0lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_623/SigmoidSigmoidlstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_1Sigmoidlstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_623/mulMullstm_cell_623/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_623/ReluRelulstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_1Mullstm_cell_623/Sigmoid:y:0 lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_623/add_1AddV2lstm_cell_623/mul:z:0lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_2Sigmoidlstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_623/Relu_1Relulstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_2Mullstm_cell_623/Sigmoid_2:y:0"lstm_cell_623/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_623_matmul_readvariableop_resource.lstm_cell_623_matmul_1_readvariableop_resource-lstm_cell_623_biasadd_readvariableop_resource*
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
while_body_3775297*
condR
while_cond_3775296*K
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
NoOpNoOp%^lstm_cell_623/BiasAdd/ReadVariableOp$^lstm_cell_623/MatMul/ReadVariableOp&^lstm_cell_623/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_623/BiasAdd/ReadVariableOp$lstm_cell_623/BiasAdd/ReadVariableOp2J
#lstm_cell_623/MatMul/ReadVariableOp#lstm_cell_623/MatMul/ReadVariableOp2N
%lstm_cell_623/MatMul_1/ReadVariableOp%lstm_cell_623/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�#
�
while_body_3770446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_621_3770470_0:	�0
while_lstm_cell_621_3770472_0:	d�,
while_lstm_cell_621_3770474_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_621_3770470:	�.
while_lstm_cell_621_3770472:	d�*
while_lstm_cell_621_3770474:	���+while/lstm_cell_621/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_621/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_621_3770470_0while_lstm_cell_621_3770472_0while_lstm_cell_621_3770474_0*
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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3770432�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_621/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_621/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_621/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_621/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_621_3770470while_lstm_cell_621_3770470_0"<
while_lstm_cell_621_3770472while_lstm_cell_621_3770472_0"<
while_lstm_cell_621_3770474while_lstm_cell_621_3770474_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_621/StatefulPartitionedCall+while/lstm_cell_621/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_660_while_cond_3773164.
*lstm_660_while_lstm_660_while_loop_counter4
0lstm_660_while_lstm_660_while_maximum_iterations
lstm_660_while_placeholder 
lstm_660_while_placeholder_1 
lstm_660_while_placeholder_2 
lstm_660_while_placeholder_30
,lstm_660_while_less_lstm_660_strided_slice_1G
Clstm_660_while_lstm_660_while_cond_3773164___redundant_placeholder0G
Clstm_660_while_lstm_660_while_cond_3773164___redundant_placeholder1G
Clstm_660_while_lstm_660_while_cond_3773164___redundant_placeholder2G
Clstm_660_while_lstm_660_while_cond_3773164___redundant_placeholder3
lstm_660_while_identity
�
lstm_660/while/LessLesslstm_660_while_placeholder,lstm_660_while_less_lstm_660_strided_slice_1*
T0*
_output_shapes
: ]
lstm_660/while/IdentityIdentitylstm_660/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_660_while_identity lstm_660/while/Identity:output:0*(
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

lstm_660_while_body_3773165.
*lstm_660_while_lstm_660_while_loop_counter4
0lstm_660_while_lstm_660_while_maximum_iterations
lstm_660_while_placeholder 
lstm_660_while_placeholder_1 
lstm_660_while_placeholder_2 
lstm_660_while_placeholder_3-
)lstm_660_while_lstm_660_strided_slice_1_0i
elstm_660_while_tensorarrayv2read_tensorlistgetitem_lstm_660_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_660_while_lstm_cell_621_matmul_readvariableop_resource_0:	�R
?lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource_0:	d�M
>lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource_0:	�
lstm_660_while_identity
lstm_660_while_identity_1
lstm_660_while_identity_2
lstm_660_while_identity_3
lstm_660_while_identity_4
lstm_660_while_identity_5+
'lstm_660_while_lstm_660_strided_slice_1g
clstm_660_while_tensorarrayv2read_tensorlistgetitem_lstm_660_tensorarrayunstack_tensorlistfromtensorN
;lstm_660_while_lstm_cell_621_matmul_readvariableop_resource:	�P
=lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource:	d�K
<lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource:	���3lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp�2lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp�4lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp�
@lstm_660/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_660/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_660_while_tensorarrayv2read_tensorlistgetitem_lstm_660_tensorarrayunstack_tensorlistfromtensor_0lstm_660_while_placeholderIlstm_660/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_660/while/lstm_cell_621/MatMul/ReadVariableOpReadVariableOp=lstm_660_while_lstm_cell_621_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_660/while/lstm_cell_621/MatMulMatMul9lstm_660/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp?lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_660/while/lstm_cell_621/MatMul_1MatMullstm_660_while_placeholder_2<lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_660/while/lstm_cell_621/addAddV2-lstm_660/while/lstm_cell_621/MatMul:product:0/lstm_660/while/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp>lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_660/while/lstm_cell_621/BiasAddBiasAdd$lstm_660/while/lstm_cell_621/add:z:0;lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_660/while/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_660/while/lstm_cell_621/splitSplit5lstm_660/while/lstm_cell_621/split/split_dim:output:0-lstm_660/while/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_660/while/lstm_cell_621/SigmoidSigmoid+lstm_660/while/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_660/while/lstm_cell_621/Sigmoid_1Sigmoid+lstm_660/while/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_660/while/lstm_cell_621/mulMul*lstm_660/while/lstm_cell_621/Sigmoid_1:y:0lstm_660_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_660/while/lstm_cell_621/ReluRelu+lstm_660/while/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_660/while/lstm_cell_621/mul_1Mul(lstm_660/while/lstm_cell_621/Sigmoid:y:0/lstm_660/while/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_660/while/lstm_cell_621/add_1AddV2$lstm_660/while/lstm_cell_621/mul:z:0&lstm_660/while/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_660/while/lstm_cell_621/Sigmoid_2Sigmoid+lstm_660/while/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_660/while/lstm_cell_621/Relu_1Relu&lstm_660/while/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_660/while/lstm_cell_621/mul_2Mul*lstm_660/while/lstm_cell_621/Sigmoid_2:y:01lstm_660/while/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_660/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_660_while_placeholder_1lstm_660_while_placeholder&lstm_660/while/lstm_cell_621/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_660/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_660/while/addAddV2lstm_660_while_placeholderlstm_660/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_660/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_660/while/add_1AddV2*lstm_660_while_lstm_660_while_loop_counterlstm_660/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_660/while/IdentityIdentitylstm_660/while/add_1:z:0^lstm_660/while/NoOp*
T0*
_output_shapes
: �
lstm_660/while/Identity_1Identity0lstm_660_while_lstm_660_while_maximum_iterations^lstm_660/while/NoOp*
T0*
_output_shapes
: t
lstm_660/while/Identity_2Identitylstm_660/while/add:z:0^lstm_660/while/NoOp*
T0*
_output_shapes
: �
lstm_660/while/Identity_3IdentityClstm_660/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_660/while/NoOp*
T0*
_output_shapes
: �
lstm_660/while/Identity_4Identity&lstm_660/while/lstm_cell_621/mul_2:z:0^lstm_660/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_660/while/Identity_5Identity&lstm_660/while/lstm_cell_621/add_1:z:0^lstm_660/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_660/while/NoOpNoOp4^lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp3^lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp5^lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_660_while_identity lstm_660/while/Identity:output:0"?
lstm_660_while_identity_1"lstm_660/while/Identity_1:output:0"?
lstm_660_while_identity_2"lstm_660/while/Identity_2:output:0"?
lstm_660_while_identity_3"lstm_660/while/Identity_3:output:0"?
lstm_660_while_identity_4"lstm_660/while/Identity_4:output:0"?
lstm_660_while_identity_5"lstm_660/while/Identity_5:output:0"T
'lstm_660_while_lstm_660_strided_slice_1)lstm_660_while_lstm_660_strided_slice_1_0"~
<lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource>lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource_0"�
=lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource?lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource_0"|
;lstm_660_while_lstm_cell_621_matmul_readvariableop_resource=lstm_660_while_lstm_cell_621_matmul_readvariableop_resource_0"�
clstm_660_while_tensorarrayv2read_tensorlistgetitem_lstm_660_tensorarrayunstack_tensorlistfromtensorelstm_660_while_tensorarrayv2read_tensorlistgetitem_lstm_660_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp3lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp2h
2lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp2lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp2l
4lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp4lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774765

inputs?
,lstm_cell_622_matmul_readvariableop_resource:	d�A
.lstm_cell_622_matmul_1_readvariableop_resource:	2�<
-lstm_cell_622_biasadd_readvariableop_resource:	�
identity��$lstm_cell_622/BiasAdd/ReadVariableOp�#lstm_cell_622/MatMul/ReadVariableOp�%lstm_cell_622/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_622/MatMul/ReadVariableOpReadVariableOp,lstm_cell_622_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_622/MatMulMatMulstrided_slice_2:output:0+lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_622_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_622/MatMul_1MatMulzeros:output:0-lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_622/addAddV2lstm_cell_622/MatMul:product:0 lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_622_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_622/BiasAddBiasAddlstm_cell_622/add:z:0,lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_622/splitSplit&lstm_cell_622/split/split_dim:output:0lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_622/SigmoidSigmoidlstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_1Sigmoidlstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_622/mulMullstm_cell_622/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_622/ReluRelulstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_1Mullstm_cell_622/Sigmoid:y:0 lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_622/add_1AddV2lstm_cell_622/mul:z:0lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_2Sigmoidlstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_622/Relu_1Relulstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_2Mullstm_cell_622/Sigmoid_2:y:0"lstm_cell_622/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_622_matmul_readvariableop_resource.lstm_cell_622_matmul_1_readvariableop_resource-lstm_cell_622_biasadd_readvariableop_resource*
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
while_body_3774681*
condR
while_cond_3774680*K
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
NoOpNoOp%^lstm_cell_622/BiasAdd/ReadVariableOp$^lstm_cell_622/MatMul/ReadVariableOp&^lstm_cell_622/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_622/BiasAdd/ReadVariableOp$lstm_cell_622/BiasAdd/ReadVariableOp2J
#lstm_cell_622/MatMul/ReadVariableOp#lstm_cell_622/MatMul/ReadVariableOp2N
%lstm_cell_622/MatMul_1/ReadVariableOp%lstm_cell_622/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
K__inference_sequential_220_layer_call_and_return_conditional_losses_3773106

inputsH
5lstm_660_lstm_cell_621_matmul_readvariableop_resource:	�J
7lstm_660_lstm_cell_621_matmul_1_readvariableop_resource:	d�E
6lstm_660_lstm_cell_621_biasadd_readvariableop_resource:	�H
5lstm_661_lstm_cell_622_matmul_readvariableop_resource:	d�J
7lstm_661_lstm_cell_622_matmul_1_readvariableop_resource:	2�E
6lstm_661_lstm_cell_622_biasadd_readvariableop_resource:	�G
5lstm_662_lstm_cell_623_matmul_readvariableop_resource:2(I
7lstm_662_lstm_cell_623_matmul_1_readvariableop_resource:
(D
6lstm_662_lstm_cell_623_biasadd_readvariableop_resource:(:
(dense_220_matmul_readvariableop_resource:
7
)dense_220_biasadd_readvariableop_resource:
identity�� dense_220/BiasAdd/ReadVariableOp�dense_220/MatMul/ReadVariableOp�-lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp�,lstm_660/lstm_cell_621/MatMul/ReadVariableOp�.lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp�lstm_660/while�-lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp�,lstm_661/lstm_cell_622/MatMul/ReadVariableOp�.lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp�lstm_661/while�-lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp�,lstm_662/lstm_cell_623/MatMul/ReadVariableOp�.lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp�lstm_662/whileD
lstm_660/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_660/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_660/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_660/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_660/strided_sliceStridedSlicelstm_660/Shape:output:0%lstm_660/strided_slice/stack:output:0'lstm_660/strided_slice/stack_1:output:0'lstm_660/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_660/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_660/zeros/packedPacklstm_660/strided_slice:output:0 lstm_660/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_660/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_660/zerosFilllstm_660/zeros/packed:output:0lstm_660/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_660/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_660/zeros_1/packedPacklstm_660/strided_slice:output:0"lstm_660/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_660/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_660/zeros_1Fill lstm_660/zeros_1/packed:output:0lstm_660/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_660/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_660/transpose	Transposeinputs lstm_660/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_660/Shape_1Shapelstm_660/transpose:y:0*
T0*
_output_shapes
:h
lstm_660/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_660/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_660/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_660/strided_slice_1StridedSlicelstm_660/Shape_1:output:0'lstm_660/strided_slice_1/stack:output:0)lstm_660/strided_slice_1/stack_1:output:0)lstm_660/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_660/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_660/TensorArrayV2TensorListReserve-lstm_660/TensorArrayV2/element_shape:output:0!lstm_660/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_660/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_660/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_660/transpose:y:0Glstm_660/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_660/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_660/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_660/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_660/strided_slice_2StridedSlicelstm_660/transpose:y:0'lstm_660/strided_slice_2/stack:output:0)lstm_660/strided_slice_2/stack_1:output:0)lstm_660/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_660/lstm_cell_621/MatMul/ReadVariableOpReadVariableOp5lstm_660_lstm_cell_621_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_660/lstm_cell_621/MatMulMatMul!lstm_660/strided_slice_2:output:04lstm_660/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_660/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp7lstm_660_lstm_cell_621_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_660/lstm_cell_621/MatMul_1MatMullstm_660/zeros:output:06lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_660/lstm_cell_621/addAddV2'lstm_660/lstm_cell_621/MatMul:product:0)lstm_660/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_660/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp6lstm_660_lstm_cell_621_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_660/lstm_cell_621/BiasAddBiasAddlstm_660/lstm_cell_621/add:z:05lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_660/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_660/lstm_cell_621/splitSplit/lstm_660/lstm_cell_621/split/split_dim:output:0'lstm_660/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_660/lstm_cell_621/SigmoidSigmoid%lstm_660/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_660/lstm_cell_621/Sigmoid_1Sigmoid%lstm_660/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_660/lstm_cell_621/mulMul$lstm_660/lstm_cell_621/Sigmoid_1:y:0lstm_660/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_660/lstm_cell_621/ReluRelu%lstm_660/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_660/lstm_cell_621/mul_1Mul"lstm_660/lstm_cell_621/Sigmoid:y:0)lstm_660/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_660/lstm_cell_621/add_1AddV2lstm_660/lstm_cell_621/mul:z:0 lstm_660/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_660/lstm_cell_621/Sigmoid_2Sigmoid%lstm_660/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_660/lstm_cell_621/Relu_1Relu lstm_660/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_660/lstm_cell_621/mul_2Mul$lstm_660/lstm_cell_621/Sigmoid_2:y:0+lstm_660/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_660/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_660/TensorArrayV2_1TensorListReserve/lstm_660/TensorArrayV2_1/element_shape:output:0!lstm_660/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_660/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_660/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_660/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_660/whileWhile$lstm_660/while/loop_counter:output:0*lstm_660/while/maximum_iterations:output:0lstm_660/time:output:0!lstm_660/TensorArrayV2_1:handle:0lstm_660/zeros:output:0lstm_660/zeros_1:output:0!lstm_660/strided_slice_1:output:0@lstm_660/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_660_lstm_cell_621_matmul_readvariableop_resource7lstm_660_lstm_cell_621_matmul_1_readvariableop_resource6lstm_660_lstm_cell_621_biasadd_readvariableop_resource*
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
lstm_660_while_body_3772738*'
condR
lstm_660_while_cond_3772737*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_660/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_660/TensorArrayV2Stack/TensorListStackTensorListStacklstm_660/while:output:3Blstm_660/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_660/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_660/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_660/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_660/strided_slice_3StridedSlice4lstm_660/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_660/strided_slice_3/stack:output:0)lstm_660/strided_slice_3/stack_1:output:0)lstm_660/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_660/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_660/transpose_1	Transpose4lstm_660/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_660/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_660/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_661/ShapeShapelstm_660/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_661/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_661/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_661/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_661/strided_sliceStridedSlicelstm_661/Shape:output:0%lstm_661/strided_slice/stack:output:0'lstm_661/strided_slice/stack_1:output:0'lstm_661/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_661/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_661/zeros/packedPacklstm_661/strided_slice:output:0 lstm_661/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_661/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_661/zerosFilllstm_661/zeros/packed:output:0lstm_661/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_661/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_661/zeros_1/packedPacklstm_661/strided_slice:output:0"lstm_661/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_661/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_661/zeros_1Fill lstm_661/zeros_1/packed:output:0lstm_661/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_661/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_661/transpose	Transposelstm_660/transpose_1:y:0 lstm_661/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_661/Shape_1Shapelstm_661/transpose:y:0*
T0*
_output_shapes
:h
lstm_661/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_661/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_661/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_661/strided_slice_1StridedSlicelstm_661/Shape_1:output:0'lstm_661/strided_slice_1/stack:output:0)lstm_661/strided_slice_1/stack_1:output:0)lstm_661/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_661/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_661/TensorArrayV2TensorListReserve-lstm_661/TensorArrayV2/element_shape:output:0!lstm_661/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_661/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_661/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_661/transpose:y:0Glstm_661/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_661/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_661/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_661/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_661/strided_slice_2StridedSlicelstm_661/transpose:y:0'lstm_661/strided_slice_2/stack:output:0)lstm_661/strided_slice_2/stack_1:output:0)lstm_661/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_661/lstm_cell_622/MatMul/ReadVariableOpReadVariableOp5lstm_661_lstm_cell_622_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_661/lstm_cell_622/MatMulMatMul!lstm_661/strided_slice_2:output:04lstm_661/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_661/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp7lstm_661_lstm_cell_622_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_661/lstm_cell_622/MatMul_1MatMullstm_661/zeros:output:06lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_661/lstm_cell_622/addAddV2'lstm_661/lstm_cell_622/MatMul:product:0)lstm_661/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_661/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp6lstm_661_lstm_cell_622_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_661/lstm_cell_622/BiasAddBiasAddlstm_661/lstm_cell_622/add:z:05lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_661/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_661/lstm_cell_622/splitSplit/lstm_661/lstm_cell_622/split/split_dim:output:0'lstm_661/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_661/lstm_cell_622/SigmoidSigmoid%lstm_661/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_661/lstm_cell_622/Sigmoid_1Sigmoid%lstm_661/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_661/lstm_cell_622/mulMul$lstm_661/lstm_cell_622/Sigmoid_1:y:0lstm_661/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_661/lstm_cell_622/ReluRelu%lstm_661/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_661/lstm_cell_622/mul_1Mul"lstm_661/lstm_cell_622/Sigmoid:y:0)lstm_661/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_661/lstm_cell_622/add_1AddV2lstm_661/lstm_cell_622/mul:z:0 lstm_661/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_661/lstm_cell_622/Sigmoid_2Sigmoid%lstm_661/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_661/lstm_cell_622/Relu_1Relu lstm_661/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_661/lstm_cell_622/mul_2Mul$lstm_661/lstm_cell_622/Sigmoid_2:y:0+lstm_661/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_661/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_661/TensorArrayV2_1TensorListReserve/lstm_661/TensorArrayV2_1/element_shape:output:0!lstm_661/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_661/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_661/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_661/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_661/whileWhile$lstm_661/while/loop_counter:output:0*lstm_661/while/maximum_iterations:output:0lstm_661/time:output:0!lstm_661/TensorArrayV2_1:handle:0lstm_661/zeros:output:0lstm_661/zeros_1:output:0!lstm_661/strided_slice_1:output:0@lstm_661/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_661_lstm_cell_622_matmul_readvariableop_resource7lstm_661_lstm_cell_622_matmul_1_readvariableop_resource6lstm_661_lstm_cell_622_biasadd_readvariableop_resource*
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
lstm_661_while_body_3772877*'
condR
lstm_661_while_cond_3772876*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_661/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_661/TensorArrayV2Stack/TensorListStackTensorListStacklstm_661/while:output:3Blstm_661/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_661/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_661/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_661/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_661/strided_slice_3StridedSlice4lstm_661/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_661/strided_slice_3/stack:output:0)lstm_661/strided_slice_3/stack_1:output:0)lstm_661/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_661/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_661/transpose_1	Transpose4lstm_661/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_661/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_661/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_662/ShapeShapelstm_661/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_662/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_662/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_662/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_662/strided_sliceStridedSlicelstm_662/Shape:output:0%lstm_662/strided_slice/stack:output:0'lstm_662/strided_slice/stack_1:output:0'lstm_662/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_662/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_662/zeros/packedPacklstm_662/strided_slice:output:0 lstm_662/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_662/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_662/zerosFilllstm_662/zeros/packed:output:0lstm_662/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_662/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_662/zeros_1/packedPacklstm_662/strided_slice:output:0"lstm_662/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_662/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_662/zeros_1Fill lstm_662/zeros_1/packed:output:0lstm_662/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_662/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_662/transpose	Transposelstm_661/transpose_1:y:0 lstm_662/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_662/Shape_1Shapelstm_662/transpose:y:0*
T0*
_output_shapes
:h
lstm_662/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_662/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_662/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_662/strided_slice_1StridedSlicelstm_662/Shape_1:output:0'lstm_662/strided_slice_1/stack:output:0)lstm_662/strided_slice_1/stack_1:output:0)lstm_662/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_662/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_662/TensorArrayV2TensorListReserve-lstm_662/TensorArrayV2/element_shape:output:0!lstm_662/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_662/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_662/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_662/transpose:y:0Glstm_662/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_662/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_662/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_662/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_662/strided_slice_2StridedSlicelstm_662/transpose:y:0'lstm_662/strided_slice_2/stack:output:0)lstm_662/strided_slice_2/stack_1:output:0)lstm_662/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_662/lstm_cell_623/MatMul/ReadVariableOpReadVariableOp5lstm_662_lstm_cell_623_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_662/lstm_cell_623/MatMulMatMul!lstm_662/strided_slice_2:output:04lstm_662/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_662/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp7lstm_662_lstm_cell_623_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_662/lstm_cell_623/MatMul_1MatMullstm_662/zeros:output:06lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_662/lstm_cell_623/addAddV2'lstm_662/lstm_cell_623/MatMul:product:0)lstm_662/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_662/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp6lstm_662_lstm_cell_623_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_662/lstm_cell_623/BiasAddBiasAddlstm_662/lstm_cell_623/add:z:05lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_662/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_662/lstm_cell_623/splitSplit/lstm_662/lstm_cell_623/split/split_dim:output:0'lstm_662/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_662/lstm_cell_623/SigmoidSigmoid%lstm_662/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_662/lstm_cell_623/Sigmoid_1Sigmoid%lstm_662/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_662/lstm_cell_623/mulMul$lstm_662/lstm_cell_623/Sigmoid_1:y:0lstm_662/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_662/lstm_cell_623/ReluRelu%lstm_662/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_662/lstm_cell_623/mul_1Mul"lstm_662/lstm_cell_623/Sigmoid:y:0)lstm_662/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_662/lstm_cell_623/add_1AddV2lstm_662/lstm_cell_623/mul:z:0 lstm_662/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_662/lstm_cell_623/Sigmoid_2Sigmoid%lstm_662/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_662/lstm_cell_623/Relu_1Relu lstm_662/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_662/lstm_cell_623/mul_2Mul$lstm_662/lstm_cell_623/Sigmoid_2:y:0+lstm_662/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_662/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_662/TensorArrayV2_1TensorListReserve/lstm_662/TensorArrayV2_1/element_shape:output:0!lstm_662/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_662/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_662/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_662/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_662/whileWhile$lstm_662/while/loop_counter:output:0*lstm_662/while/maximum_iterations:output:0lstm_662/time:output:0!lstm_662/TensorArrayV2_1:handle:0lstm_662/zeros:output:0lstm_662/zeros_1:output:0!lstm_662/strided_slice_1:output:0@lstm_662/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_662_lstm_cell_623_matmul_readvariableop_resource7lstm_662_lstm_cell_623_matmul_1_readvariableop_resource6lstm_662_lstm_cell_623_biasadd_readvariableop_resource*
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
lstm_662_while_body_3773016*'
condR
lstm_662_while_cond_3773015*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_662/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_662/TensorArrayV2Stack/TensorListStackTensorListStacklstm_662/while:output:3Blstm_662/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_662/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_662/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_662/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_662/strided_slice_3StridedSlice4lstm_662/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_662/strided_slice_3/stack:output:0)lstm_662/strided_slice_3/stack_1:output:0)lstm_662/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_662/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_662/transpose_1	Transpose4lstm_662/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_662/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_662/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_220/MatMul/ReadVariableOpReadVariableOp(dense_220_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_220/MatMulMatMul!lstm_662/strided_slice_3:output:0'dense_220/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_220/BiasAdd/ReadVariableOpReadVariableOp)dense_220_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_220/BiasAddBiasAdddense_220/MatMul:product:0(dense_220/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_220/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_220/BiasAdd/ReadVariableOp ^dense_220/MatMul/ReadVariableOp.^lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp-^lstm_660/lstm_cell_621/MatMul/ReadVariableOp/^lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp^lstm_660/while.^lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp-^lstm_661/lstm_cell_622/MatMul/ReadVariableOp/^lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp^lstm_661/while.^lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp-^lstm_662/lstm_cell_623/MatMul/ReadVariableOp/^lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp^lstm_662/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_220/BiasAdd/ReadVariableOp dense_220/BiasAdd/ReadVariableOp2B
dense_220/MatMul/ReadVariableOpdense_220/MatMul/ReadVariableOp2^
-lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp-lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp2\
,lstm_660/lstm_cell_621/MatMul/ReadVariableOp,lstm_660/lstm_cell_621/MatMul/ReadVariableOp2`
.lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp.lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp2 
lstm_660/whilelstm_660/while2^
-lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp-lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp2\
,lstm_661/lstm_cell_622/MatMul/ReadVariableOp,lstm_661/lstm_cell_622/MatMul/ReadVariableOp2`
.lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp.lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp2 
lstm_661/whilelstm_661/while2^
-lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp-lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp2\
,lstm_662/lstm_cell_623/MatMul/ReadVariableOp,lstm_662/lstm_cell_623/MatMul/ReadVariableOp2`
.lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp.lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp2 
lstm_662/whilelstm_662/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_3772326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_621_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_621_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_621_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_621_matmul_readvariableop_resource:	�G
4while_lstm_cell_621_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_621_biasadd_readvariableop_resource:	���*while/lstm_cell_621/BiasAdd/ReadVariableOp�)while/lstm_cell_621/MatMul/ReadVariableOp�+while/lstm_cell_621/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_621/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_621_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_621/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_621_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_621/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_621/addAddV2$while/lstm_cell_621/MatMul:product:0&while/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_621_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_621/BiasAddBiasAddwhile/lstm_cell_621/add:z:02while/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_621/splitSplit,while/lstm_cell_621/split/split_dim:output:0$while/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_621/SigmoidSigmoid"while/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_1Sigmoid"while/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mulMul!while/lstm_cell_621/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_621/ReluRelu"while/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_1Mulwhile/lstm_cell_621/Sigmoid:y:0&while/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/add_1AddV2while/lstm_cell_621/mul:z:0while/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_2Sigmoid"while/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_621/Relu_1Reluwhile/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_2Mul!while/lstm_cell_621/Sigmoid_2:y:0(while/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_621/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_621/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_621/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_621/BiasAdd/ReadVariableOp*^while/lstm_cell_621/MatMul/ReadVariableOp,^while/lstm_cell_621/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_621_biasadd_readvariableop_resource5while_lstm_cell_621_biasadd_readvariableop_resource_0"n
4while_lstm_cell_621_matmul_1_readvariableop_resource6while_lstm_cell_621_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_621_matmul_readvariableop_resource4while_lstm_cell_621_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_621/BiasAdd/ReadVariableOp*while/lstm_cell_621/BiasAdd/ReadVariableOp2V
)while/lstm_cell_621/MatMul/ReadVariableOp)while/lstm_cell_621/MatMul/ReadVariableOp2Z
+while/lstm_cell_621/MatMul_1/ReadVariableOp+while/lstm_cell_621/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3770986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3770986___redundant_placeholder05
1while_while_cond_3770986___redundant_placeholder15
1while_while_cond_3770986___redundant_placeholder25
1while_while_cond_3770986___redundant_placeholder3
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
while_cond_3771145
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3771145___redundant_placeholder05
1while_while_cond_3771145___redundant_placeholder15
1while_while_cond_3771145___redundant_placeholder25
1while_while_cond_3771145___redundant_placeholder3
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
�
E__inference_lstm_662_layer_call_and_return_conditional_losses_3771406

inputs'
lstm_cell_623_3771324:2('
lstm_cell_623_3771326:
(#
lstm_cell_623_3771328:(
identity��%lstm_cell_623/StatefulPartitionedCall�while;
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
%lstm_cell_623/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_623_3771324lstm_cell_623_3771326lstm_cell_623_3771328*
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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3771278n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_623_3771324lstm_cell_623_3771326lstm_cell_623_3771328*
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
while_body_3771337*
condR
while_cond_3771336*K
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
NoOpNoOp&^lstm_cell_623/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_623/StatefulPartitionedCall%lstm_cell_623/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
*__inference_lstm_660_layer_call_fn_3773577

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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3772410s
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
�
*__inference_lstm_661_layer_call_fn_3774171
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3771056|
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
while_cond_3775296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3775296___redundant_placeholder05
1while_while_cond_3775296___redundant_placeholder15
1while_while_cond_3775296___redundant_placeholder25
1while_while_cond_3775296___redundant_placeholder3
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
while_body_3772161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_622_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_622_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_622_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_622_matmul_readvariableop_resource:	d�G
4while_lstm_cell_622_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_622_biasadd_readvariableop_resource:	���*while/lstm_cell_622/BiasAdd/ReadVariableOp�)while/lstm_cell_622/MatMul/ReadVariableOp�+while/lstm_cell_622/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_622/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_622_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_622/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_622_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_622/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_622/addAddV2$while/lstm_cell_622/MatMul:product:0&while/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_622_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_622/BiasAddBiasAddwhile/lstm_cell_622/add:z:02while/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_622/splitSplit,while/lstm_cell_622/split/split_dim:output:0$while/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_622/SigmoidSigmoid"while/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_1Sigmoid"while/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mulMul!while/lstm_cell_622/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_622/ReluRelu"while/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_1Mulwhile/lstm_cell_622/Sigmoid:y:0&while/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/add_1AddV2while/lstm_cell_622/mul:z:0while/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_2Sigmoid"while/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_622/Relu_1Reluwhile/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_2Mul!while/lstm_cell_622/Sigmoid_2:y:0(while/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_622/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_622/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_622/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_622/BiasAdd/ReadVariableOp*^while/lstm_cell_622/MatMul/ReadVariableOp,^while/lstm_cell_622/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_622_biasadd_readvariableop_resource5while_lstm_cell_622_biasadd_readvariableop_resource_0"n
4while_lstm_cell_622_matmul_1_readvariableop_resource6while_lstm_cell_622_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_622_matmul_readvariableop_resource4while_lstm_cell_622_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_622/BiasAdd/ReadVariableOp*while/lstm_cell_622/BiasAdd/ReadVariableOp2V
)while/lstm_cell_622/MatMul/ReadVariableOp)while/lstm_cell_622/MatMul/ReadVariableOp2Z
+while/lstm_cell_622/MatMul_1/ReadVariableOp+while/lstm_cell_622/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3771278

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
/__inference_lstm_cell_622_layer_call_fn_3775532

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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3770928o
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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3775694

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
while_body_3775297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_623_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_623_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_623_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_623_matmul_readvariableop_resource:2(F
4while_lstm_cell_623_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_623_biasadd_readvariableop_resource:(��*while/lstm_cell_623/BiasAdd/ReadVariableOp�)while/lstm_cell_623/MatMul/ReadVariableOp�+while/lstm_cell_623/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_623/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_623_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_623/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_623_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_623/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_623/addAddV2$while/lstm_cell_623/MatMul:product:0&while/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_623_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_623/BiasAddBiasAddwhile/lstm_cell_623/add:z:02while/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_623/splitSplit,while/lstm_cell_623/split/split_dim:output:0$while/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_623/SigmoidSigmoid"while/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_1Sigmoid"while/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mulMul!while/lstm_cell_623/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_623/ReluRelu"while/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_1Mulwhile/lstm_cell_623/Sigmoid:y:0&while/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/add_1AddV2while/lstm_cell_623/mul:z:0while/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_2Sigmoid"while/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_623/Relu_1Reluwhile/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_2Mul!while/lstm_cell_623/Sigmoid_2:y:0(while/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_623/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_623/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_623/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_623/BiasAdd/ReadVariableOp*^while/lstm_cell_623/MatMul/ReadVariableOp,^while/lstm_cell_623/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_623_biasadd_readvariableop_resource5while_lstm_cell_623_biasadd_readvariableop_resource_0"n
4while_lstm_cell_623_matmul_1_readvariableop_resource6while_lstm_cell_623_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_623_matmul_readvariableop_resource4while_lstm_cell_623_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_623/BiasAdd/ReadVariableOp*while/lstm_cell_623/BiasAdd/ReadVariableOp2V
)while/lstm_cell_623/MatMul/ReadVariableOp)while/lstm_cell_623/MatMul/ReadVariableOp2Z
+while/lstm_cell_623/MatMul_1/ReadVariableOp+while/lstm_cell_623/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3770637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_621_3770661_0:	�0
while_lstm_cell_621_3770663_0:	d�,
while_lstm_cell_621_3770665_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_621_3770661:	�.
while_lstm_cell_621_3770663:	d�*
while_lstm_cell_621_3770665:	���+while/lstm_cell_621/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_621/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_621_3770661_0while_lstm_cell_621_3770663_0while_lstm_cell_621_3770665_0*
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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3770578�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_621/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_621/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_621/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_621/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_621_3770661while_lstm_cell_621_3770661_0"<
while_lstm_cell_621_3770663while_lstm_cell_621_3770663_0"<
while_lstm_cell_621_3770665while_lstm_cell_621_3770665_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_621/StatefulPartitionedCall+while/lstm_cell_621/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3771564

inputs?
,lstm_cell_621_matmul_readvariableop_resource:	�A
.lstm_cell_621_matmul_1_readvariableop_resource:	d�<
-lstm_cell_621_biasadd_readvariableop_resource:	�
identity��$lstm_cell_621/BiasAdd/ReadVariableOp�#lstm_cell_621/MatMul/ReadVariableOp�%lstm_cell_621/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_621/MatMul/ReadVariableOpReadVariableOp,lstm_cell_621_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_621/MatMulMatMulstrided_slice_2:output:0+lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_621_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_621/MatMul_1MatMulzeros:output:0-lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_621/addAddV2lstm_cell_621/MatMul:product:0 lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_621_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_621/BiasAddBiasAddlstm_cell_621/add:z:0,lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_621/splitSplit&lstm_cell_621/split/split_dim:output:0lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_621/SigmoidSigmoidlstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_1Sigmoidlstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_621/mulMullstm_cell_621/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_621/ReluRelulstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_1Mullstm_cell_621/Sigmoid:y:0 lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_621/add_1AddV2lstm_cell_621/mul:z:0lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_2Sigmoidlstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_621/Relu_1Relulstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_2Mullstm_cell_621/Sigmoid_2:y:0"lstm_cell_621/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_621_matmul_readvariableop_resource.lstm_cell_621_matmul_1_readvariableop_resource-lstm_cell_621_biasadd_readvariableop_resource*
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
while_body_3771480*
condR
while_cond_3771479*K
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
NoOpNoOp%^lstm_cell_621/BiasAdd/ReadVariableOp$^lstm_cell_621/MatMul/ReadVariableOp&^lstm_cell_621/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_621/BiasAdd/ReadVariableOp$lstm_cell_621/BiasAdd/ReadVariableOp2J
#lstm_cell_621/MatMul/ReadVariableOp#lstm_cell_621/MatMul/ReadVariableOp2N
%lstm_cell_621/MatMul_1/ReadVariableOp%lstm_cell_621/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_661_layer_call_fn_3774182

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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3771714s
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
�J
�
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774622

inputs?
,lstm_cell_622_matmul_readvariableop_resource:	d�A
.lstm_cell_622_matmul_1_readvariableop_resource:	2�<
-lstm_cell_622_biasadd_readvariableop_resource:	�
identity��$lstm_cell_622/BiasAdd/ReadVariableOp�#lstm_cell_622/MatMul/ReadVariableOp�%lstm_cell_622/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_622/MatMul/ReadVariableOpReadVariableOp,lstm_cell_622_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_622/MatMulMatMulstrided_slice_2:output:0+lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_622_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_622/MatMul_1MatMulzeros:output:0-lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_622/addAddV2lstm_cell_622/MatMul:product:0 lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_622_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_622/BiasAddBiasAddlstm_cell_622/add:z:0,lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_622/splitSplit&lstm_cell_622/split/split_dim:output:0lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_622/SigmoidSigmoidlstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_1Sigmoidlstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_622/mulMullstm_cell_622/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_622/ReluRelulstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_1Mullstm_cell_622/Sigmoid:y:0 lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_622/add_1AddV2lstm_cell_622/mul:z:0lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_2Sigmoidlstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_622/Relu_1Relulstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_2Mullstm_cell_622/Sigmoid_2:y:0"lstm_cell_622/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_622_matmul_readvariableop_resource.lstm_cell_622_matmul_1_readvariableop_resource-lstm_cell_622_biasadd_readvariableop_resource*
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
while_body_3774538*
condR
while_cond_3774537*K
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
NoOpNoOp%^lstm_cell_622/BiasAdd/ReadVariableOp$^lstm_cell_622/MatMul/ReadVariableOp&^lstm_cell_622/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_622/BiasAdd/ReadVariableOp$lstm_cell_622/BiasAdd/ReadVariableOp2J
#lstm_cell_622/MatMul/ReadVariableOp#lstm_cell_622/MatMul/ReadVariableOp2N
%lstm_cell_622/MatMul_1/ReadVariableOp%lstm_cell_622/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
while_body_3774538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_622_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_622_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_622_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_622_matmul_readvariableop_resource:	d�G
4while_lstm_cell_622_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_622_biasadd_readvariableop_resource:	���*while/lstm_cell_622/BiasAdd/ReadVariableOp�)while/lstm_cell_622/MatMul/ReadVariableOp�+while/lstm_cell_622/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_622/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_622_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_622/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_622_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_622/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_622/addAddV2$while/lstm_cell_622/MatMul:product:0&while/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_622_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_622/BiasAddBiasAddwhile/lstm_cell_622/add:z:02while/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_622/splitSplit,while/lstm_cell_622/split/split_dim:output:0$while/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_622/SigmoidSigmoid"while/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_1Sigmoid"while/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mulMul!while/lstm_cell_622/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_622/ReluRelu"while/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_1Mulwhile/lstm_cell_622/Sigmoid:y:0&while/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/add_1AddV2while/lstm_cell_622/mul:z:0while/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_2Sigmoid"while/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_622/Relu_1Reluwhile/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_2Mul!while/lstm_cell_622/Sigmoid_2:y:0(while/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_622/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_622/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_622/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_622/BiasAdd/ReadVariableOp*^while/lstm_cell_622/MatMul/ReadVariableOp,^while/lstm_cell_622/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_622_biasadd_readvariableop_resource5while_lstm_cell_622_biasadd_readvariableop_resource_0"n
4while_lstm_cell_622_matmul_1_readvariableop_resource6while_lstm_cell_622_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_622_matmul_readvariableop_resource4while_lstm_cell_622_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_622/BiasAdd/ReadVariableOp*while/lstm_cell_622/BiasAdd/ReadVariableOp2V
)while/lstm_cell_622/MatMul/ReadVariableOp)while/lstm_cell_622/MatMul/ReadVariableOp2Z
+while/lstm_cell_622/MatMul_1/ReadVariableOp+while/lstm_cell_622/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_220_lstm_662_while_body_3770275L
Hsequential_220_lstm_662_while_sequential_220_lstm_662_while_loop_counterR
Nsequential_220_lstm_662_while_sequential_220_lstm_662_while_maximum_iterations-
)sequential_220_lstm_662_while_placeholder/
+sequential_220_lstm_662_while_placeholder_1/
+sequential_220_lstm_662_while_placeholder_2/
+sequential_220_lstm_662_while_placeholder_3K
Gsequential_220_lstm_662_while_sequential_220_lstm_662_strided_slice_1_0�
�sequential_220_lstm_662_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_662_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_220_lstm_662_while_lstm_cell_623_matmul_readvariableop_resource_0:2(`
Nsequential_220_lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource_0:
([
Msequential_220_lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource_0:(*
&sequential_220_lstm_662_while_identity,
(sequential_220_lstm_662_while_identity_1,
(sequential_220_lstm_662_while_identity_2,
(sequential_220_lstm_662_while_identity_3,
(sequential_220_lstm_662_while_identity_4,
(sequential_220_lstm_662_while_identity_5I
Esequential_220_lstm_662_while_sequential_220_lstm_662_strided_slice_1�
�sequential_220_lstm_662_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_662_tensorarrayunstack_tensorlistfromtensor\
Jsequential_220_lstm_662_while_lstm_cell_623_matmul_readvariableop_resource:2(^
Lsequential_220_lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource:
(Y
Ksequential_220_lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource:(��Bsequential_220/lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp�Asequential_220/lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp�Csequential_220/lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp�
Osequential_220/lstm_662/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Asequential_220/lstm_662/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_220_lstm_662_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_662_tensorarrayunstack_tensorlistfromtensor_0)sequential_220_lstm_662_while_placeholderXsequential_220/lstm_662/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Asequential_220/lstm_662/while/lstm_cell_623/MatMul/ReadVariableOpReadVariableOpLsequential_220_lstm_662_while_lstm_cell_623_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
2sequential_220/lstm_662/while/lstm_cell_623/MatMulMatMulHsequential_220/lstm_662/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_220/lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_220/lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOpNsequential_220_lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
4sequential_220/lstm_662/while/lstm_cell_623/MatMul_1MatMul+sequential_220_lstm_662_while_placeholder_2Ksequential_220/lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_220/lstm_662/while/lstm_cell_623/addAddV2<sequential_220/lstm_662/while/lstm_cell_623/MatMul:product:0>sequential_220/lstm_662/while/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
Bsequential_220/lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOpMsequential_220_lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
3sequential_220/lstm_662/while/lstm_cell_623/BiasAddBiasAdd3sequential_220/lstm_662/while/lstm_cell_623/add:z:0Jsequential_220/lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(}
;sequential_220/lstm_662/while/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_220/lstm_662/while/lstm_cell_623/splitSplitDsequential_220/lstm_662/while/lstm_cell_623/split/split_dim:output:0<sequential_220/lstm_662/while/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
3sequential_220/lstm_662/while/lstm_cell_623/SigmoidSigmoid:sequential_220/lstm_662/while/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
�
5sequential_220/lstm_662/while/lstm_cell_623/Sigmoid_1Sigmoid:sequential_220/lstm_662/while/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
/sequential_220/lstm_662/while/lstm_cell_623/mulMul9sequential_220/lstm_662/while/lstm_cell_623/Sigmoid_1:y:0+sequential_220_lstm_662_while_placeholder_3*
T0*'
_output_shapes
:���������
�
0sequential_220/lstm_662/while/lstm_cell_623/ReluRelu:sequential_220/lstm_662/while/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
1sequential_220/lstm_662/while/lstm_cell_623/mul_1Mul7sequential_220/lstm_662/while/lstm_cell_623/Sigmoid:y:0>sequential_220/lstm_662/while/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
1sequential_220/lstm_662/while/lstm_cell_623/add_1AddV23sequential_220/lstm_662/while/lstm_cell_623/mul:z:05sequential_220/lstm_662/while/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
�
5sequential_220/lstm_662/while/lstm_cell_623/Sigmoid_2Sigmoid:sequential_220/lstm_662/while/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
�
2sequential_220/lstm_662/while/lstm_cell_623/Relu_1Relu5sequential_220/lstm_662/while/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_220/lstm_662/while/lstm_cell_623/mul_2Mul9sequential_220/lstm_662/while/lstm_cell_623/Sigmoid_2:y:0@sequential_220/lstm_662/while/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Bsequential_220/lstm_662/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_220_lstm_662_while_placeholder_1)sequential_220_lstm_662_while_placeholder5sequential_220/lstm_662/while/lstm_cell_623/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_220/lstm_662/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_220/lstm_662/while/addAddV2)sequential_220_lstm_662_while_placeholder,sequential_220/lstm_662/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_220/lstm_662/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_220/lstm_662/while/add_1AddV2Hsequential_220_lstm_662_while_sequential_220_lstm_662_while_loop_counter.sequential_220/lstm_662/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_220/lstm_662/while/IdentityIdentity'sequential_220/lstm_662/while/add_1:z:0#^sequential_220/lstm_662/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_662/while/Identity_1IdentityNsequential_220_lstm_662_while_sequential_220_lstm_662_while_maximum_iterations#^sequential_220/lstm_662/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_662/while/Identity_2Identity%sequential_220/lstm_662/while/add:z:0#^sequential_220/lstm_662/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_662/while/Identity_3IdentityRsequential_220/lstm_662/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_220/lstm_662/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_662/while/Identity_4Identity5sequential_220/lstm_662/while/lstm_cell_623/mul_2:z:0#^sequential_220/lstm_662/while/NoOp*
T0*'
_output_shapes
:���������
�
(sequential_220/lstm_662/while/Identity_5Identity5sequential_220/lstm_662/while/lstm_cell_623/add_1:z:0#^sequential_220/lstm_662/while/NoOp*
T0*'
_output_shapes
:���������
�
"sequential_220/lstm_662/while/NoOpNoOpC^sequential_220/lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOpB^sequential_220/lstm_662/while/lstm_cell_623/MatMul/ReadVariableOpD^sequential_220/lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_220_lstm_662_while_identity/sequential_220/lstm_662/while/Identity:output:0"]
(sequential_220_lstm_662_while_identity_11sequential_220/lstm_662/while/Identity_1:output:0"]
(sequential_220_lstm_662_while_identity_21sequential_220/lstm_662/while/Identity_2:output:0"]
(sequential_220_lstm_662_while_identity_31sequential_220/lstm_662/while/Identity_3:output:0"]
(sequential_220_lstm_662_while_identity_41sequential_220/lstm_662/while/Identity_4:output:0"]
(sequential_220_lstm_662_while_identity_51sequential_220/lstm_662/while/Identity_5:output:0"�
Ksequential_220_lstm_662_while_lstm_cell_623_biasadd_readvariableop_resourceMsequential_220_lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource_0"�
Lsequential_220_lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resourceNsequential_220_lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource_0"�
Jsequential_220_lstm_662_while_lstm_cell_623_matmul_readvariableop_resourceLsequential_220_lstm_662_while_lstm_cell_623_matmul_readvariableop_resource_0"�
Esequential_220_lstm_662_while_sequential_220_lstm_662_strided_slice_1Gsequential_220_lstm_662_while_sequential_220_lstm_662_strided_slice_1_0"�
�sequential_220_lstm_662_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_662_tensorarrayunstack_tensorlistfromtensor�sequential_220_lstm_662_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_662_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
Bsequential_220/lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOpBsequential_220/lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp2�
Asequential_220/lstm_662/while/lstm_cell_623/MatMul/ReadVariableOpAsequential_220/lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp2�
Csequential_220/lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOpCsequential_220/lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_660_layer_call_fn_3773544
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3770515|
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
while_cond_3771779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3771779___redundant_placeholder05
1while_while_cond_3771779___redundant_placeholder15
1while_while_cond_3771779___redundant_placeholder25
1while_while_cond_3771779___redundant_placeholder3
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3774149

inputs?
,lstm_cell_621_matmul_readvariableop_resource:	�A
.lstm_cell_621_matmul_1_readvariableop_resource:	d�<
-lstm_cell_621_biasadd_readvariableop_resource:	�
identity��$lstm_cell_621/BiasAdd/ReadVariableOp�#lstm_cell_621/MatMul/ReadVariableOp�%lstm_cell_621/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_621/MatMul/ReadVariableOpReadVariableOp,lstm_cell_621_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_621/MatMulMatMulstrided_slice_2:output:0+lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_621_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_621/MatMul_1MatMulzeros:output:0-lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_621/addAddV2lstm_cell_621/MatMul:product:0 lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_621_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_621/BiasAddBiasAddlstm_cell_621/add:z:0,lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_621/splitSplit&lstm_cell_621/split/split_dim:output:0lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_621/SigmoidSigmoidlstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_1Sigmoidlstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_621/mulMullstm_cell_621/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_621/ReluRelulstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_1Mullstm_cell_621/Sigmoid:y:0 lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_621/add_1AddV2lstm_cell_621/mul:z:0lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_2Sigmoidlstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_621/Relu_1Relulstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_2Mullstm_cell_621/Sigmoid_2:y:0"lstm_cell_621/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_621_matmul_readvariableop_resource.lstm_cell_621_matmul_1_readvariableop_resource-lstm_cell_621_biasadd_readvariableop_resource*
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
while_body_3774065*
condR
while_cond_3774064*K
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
NoOpNoOp%^lstm_cell_621/BiasAdd/ReadVariableOp$^lstm_cell_621/MatMul/ReadVariableOp&^lstm_cell_621/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_621/BiasAdd/ReadVariableOp$lstm_cell_621/BiasAdd/ReadVariableOp2J
#lstm_cell_621/MatMul/ReadVariableOp#lstm_cell_621/MatMul/ReadVariableOp2N
%lstm_cell_621/MatMul_1/ReadVariableOp%lstm_cell_621/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_3774867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3774867___redundant_placeholder05
1while_while_cond_3774867___redundant_placeholder15
1while_while_cond_3774867___redundant_placeholder25
1while_while_cond_3774867___redundant_placeholder3
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

lstm_661_while_body_3772877.
*lstm_661_while_lstm_661_while_loop_counter4
0lstm_661_while_lstm_661_while_maximum_iterations
lstm_661_while_placeholder 
lstm_661_while_placeholder_1 
lstm_661_while_placeholder_2 
lstm_661_while_placeholder_3-
)lstm_661_while_lstm_661_strided_slice_1_0i
elstm_661_while_tensorarrayv2read_tensorlistgetitem_lstm_661_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_661_while_lstm_cell_622_matmul_readvariableop_resource_0:	d�R
?lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource_0:	2�M
>lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource_0:	�
lstm_661_while_identity
lstm_661_while_identity_1
lstm_661_while_identity_2
lstm_661_while_identity_3
lstm_661_while_identity_4
lstm_661_while_identity_5+
'lstm_661_while_lstm_661_strided_slice_1g
clstm_661_while_tensorarrayv2read_tensorlistgetitem_lstm_661_tensorarrayunstack_tensorlistfromtensorN
;lstm_661_while_lstm_cell_622_matmul_readvariableop_resource:	d�P
=lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource:	2�K
<lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource:	���3lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp�2lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp�4lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp�
@lstm_661/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_661/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_661_while_tensorarrayv2read_tensorlistgetitem_lstm_661_tensorarrayunstack_tensorlistfromtensor_0lstm_661_while_placeholderIlstm_661/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_661/while/lstm_cell_622/MatMul/ReadVariableOpReadVariableOp=lstm_661_while_lstm_cell_622_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_661/while/lstm_cell_622/MatMulMatMul9lstm_661/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp?lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_661/while/lstm_cell_622/MatMul_1MatMullstm_661_while_placeholder_2<lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_661/while/lstm_cell_622/addAddV2-lstm_661/while/lstm_cell_622/MatMul:product:0/lstm_661/while/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp>lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_661/while/lstm_cell_622/BiasAddBiasAdd$lstm_661/while/lstm_cell_622/add:z:0;lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_661/while/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_661/while/lstm_cell_622/splitSplit5lstm_661/while/lstm_cell_622/split/split_dim:output:0-lstm_661/while/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_661/while/lstm_cell_622/SigmoidSigmoid+lstm_661/while/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_661/while/lstm_cell_622/Sigmoid_1Sigmoid+lstm_661/while/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_661/while/lstm_cell_622/mulMul*lstm_661/while/lstm_cell_622/Sigmoid_1:y:0lstm_661_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_661/while/lstm_cell_622/ReluRelu+lstm_661/while/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_661/while/lstm_cell_622/mul_1Mul(lstm_661/while/lstm_cell_622/Sigmoid:y:0/lstm_661/while/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_661/while/lstm_cell_622/add_1AddV2$lstm_661/while/lstm_cell_622/mul:z:0&lstm_661/while/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_661/while/lstm_cell_622/Sigmoid_2Sigmoid+lstm_661/while/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_661/while/lstm_cell_622/Relu_1Relu&lstm_661/while/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_661/while/lstm_cell_622/mul_2Mul*lstm_661/while/lstm_cell_622/Sigmoid_2:y:01lstm_661/while/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_661/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_661_while_placeholder_1lstm_661_while_placeholder&lstm_661/while/lstm_cell_622/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_661/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_661/while/addAddV2lstm_661_while_placeholderlstm_661/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_661/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_661/while/add_1AddV2*lstm_661_while_lstm_661_while_loop_counterlstm_661/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_661/while/IdentityIdentitylstm_661/while/add_1:z:0^lstm_661/while/NoOp*
T0*
_output_shapes
: �
lstm_661/while/Identity_1Identity0lstm_661_while_lstm_661_while_maximum_iterations^lstm_661/while/NoOp*
T0*
_output_shapes
: t
lstm_661/while/Identity_2Identitylstm_661/while/add:z:0^lstm_661/while/NoOp*
T0*
_output_shapes
: �
lstm_661/while/Identity_3IdentityClstm_661/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_661/while/NoOp*
T0*
_output_shapes
: �
lstm_661/while/Identity_4Identity&lstm_661/while/lstm_cell_622/mul_2:z:0^lstm_661/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_661/while/Identity_5Identity&lstm_661/while/lstm_cell_622/add_1:z:0^lstm_661/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_661/while/NoOpNoOp4^lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp3^lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp5^lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_661_while_identity lstm_661/while/Identity:output:0"?
lstm_661_while_identity_1"lstm_661/while/Identity_1:output:0"?
lstm_661_while_identity_2"lstm_661/while/Identity_2:output:0"?
lstm_661_while_identity_3"lstm_661/while/Identity_3:output:0"?
lstm_661_while_identity_4"lstm_661/while/Identity_4:output:0"?
lstm_661_while_identity_5"lstm_661/while/Identity_5:output:0"T
'lstm_661_while_lstm_661_strided_slice_1)lstm_661_while_lstm_661_strided_slice_1_0"~
<lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource>lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource_0"�
=lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource?lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource_0"|
;lstm_661_while_lstm_cell_622_matmul_readvariableop_resource=lstm_661_while_lstm_cell_622_matmul_readvariableop_resource_0"�
clstm_661_while_tensorarrayv2read_tensorlistgetitem_lstm_661_tensorarrayunstack_tensorlistfromtensorelstm_661_while_tensorarrayv2read_tensorlistgetitem_lstm_661_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp3lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp2h
2lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp2lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp2l
4lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp4lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3773720
inputs_0?
,lstm_cell_621_matmul_readvariableop_resource:	�A
.lstm_cell_621_matmul_1_readvariableop_resource:	d�<
-lstm_cell_621_biasadd_readvariableop_resource:	�
identity��$lstm_cell_621/BiasAdd/ReadVariableOp�#lstm_cell_621/MatMul/ReadVariableOp�%lstm_cell_621/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_621/MatMul/ReadVariableOpReadVariableOp,lstm_cell_621_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_621/MatMulMatMulstrided_slice_2:output:0+lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_621_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_621/MatMul_1MatMulzeros:output:0-lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_621/addAddV2lstm_cell_621/MatMul:product:0 lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_621_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_621/BiasAddBiasAddlstm_cell_621/add:z:0,lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_621/splitSplit&lstm_cell_621/split/split_dim:output:0lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_621/SigmoidSigmoidlstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_1Sigmoidlstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_621/mulMullstm_cell_621/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_621/ReluRelulstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_1Mullstm_cell_621/Sigmoid:y:0 lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_621/add_1AddV2lstm_cell_621/mul:z:0lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_2Sigmoidlstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_621/Relu_1Relulstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_2Mullstm_cell_621/Sigmoid_2:y:0"lstm_cell_621/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_621_matmul_readvariableop_resource.lstm_cell_621_matmul_1_readvariableop_resource-lstm_cell_621_biasadd_readvariableop_resource*
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
while_body_3773636*
condR
while_cond_3773635*K
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
NoOpNoOp%^lstm_cell_621/BiasAdd/ReadVariableOp$^lstm_cell_621/MatMul/ReadVariableOp&^lstm_cell_621/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_621/BiasAdd/ReadVariableOp$lstm_cell_621/BiasAdd/ReadVariableOp2J
#lstm_cell_621/MatMul/ReadVariableOp#lstm_cell_621/MatMul/ReadVariableOp2N
%lstm_cell_621/MatMul_1/ReadVariableOp%lstm_cell_621/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
/__inference_lstm_cell_621_layer_call_fn_3775434

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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3770578o
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
�
/__inference_lstm_cell_623_layer_call_fn_3775613

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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3771132o
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
�T
�
*sequential_220_lstm_661_while_body_3770136L
Hsequential_220_lstm_661_while_sequential_220_lstm_661_while_loop_counterR
Nsequential_220_lstm_661_while_sequential_220_lstm_661_while_maximum_iterations-
)sequential_220_lstm_661_while_placeholder/
+sequential_220_lstm_661_while_placeholder_1/
+sequential_220_lstm_661_while_placeholder_2/
+sequential_220_lstm_661_while_placeholder_3K
Gsequential_220_lstm_661_while_sequential_220_lstm_661_strided_slice_1_0�
�sequential_220_lstm_661_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_661_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_220_lstm_661_while_lstm_cell_622_matmul_readvariableop_resource_0:	d�a
Nsequential_220_lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource_0:	2�\
Msequential_220_lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource_0:	�*
&sequential_220_lstm_661_while_identity,
(sequential_220_lstm_661_while_identity_1,
(sequential_220_lstm_661_while_identity_2,
(sequential_220_lstm_661_while_identity_3,
(sequential_220_lstm_661_while_identity_4,
(sequential_220_lstm_661_while_identity_5I
Esequential_220_lstm_661_while_sequential_220_lstm_661_strided_slice_1�
�sequential_220_lstm_661_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_661_tensorarrayunstack_tensorlistfromtensor]
Jsequential_220_lstm_661_while_lstm_cell_622_matmul_readvariableop_resource:	d�_
Lsequential_220_lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource:	2�Z
Ksequential_220_lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource:	���Bsequential_220/lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp�Asequential_220/lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp�Csequential_220/lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp�
Osequential_220/lstm_661/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
Asequential_220/lstm_661/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_220_lstm_661_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_661_tensorarrayunstack_tensorlistfromtensor_0)sequential_220_lstm_661_while_placeholderXsequential_220/lstm_661/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
Asequential_220/lstm_661/while/lstm_cell_622/MatMul/ReadVariableOpReadVariableOpLsequential_220_lstm_661_while_lstm_cell_622_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_220/lstm_661/while/lstm_cell_622/MatMulMatMulHsequential_220/lstm_661/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_220/lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_220/lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOpNsequential_220_lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
4sequential_220/lstm_661/while/lstm_cell_622/MatMul_1MatMul+sequential_220_lstm_661_while_placeholder_2Ksequential_220/lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_220/lstm_661/while/lstm_cell_622/addAddV2<sequential_220/lstm_661/while/lstm_cell_622/MatMul:product:0>sequential_220/lstm_661/while/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_220/lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOpMsequential_220_lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_220/lstm_661/while/lstm_cell_622/BiasAddBiasAdd3sequential_220/lstm_661/while/lstm_cell_622/add:z:0Jsequential_220/lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_220/lstm_661/while/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_220/lstm_661/while/lstm_cell_622/splitSplitDsequential_220/lstm_661/while/lstm_cell_622/split/split_dim:output:0<sequential_220/lstm_661/while/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
3sequential_220/lstm_661/while/lstm_cell_622/SigmoidSigmoid:sequential_220/lstm_661/while/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2�
5sequential_220/lstm_661/while/lstm_cell_622/Sigmoid_1Sigmoid:sequential_220/lstm_661/while/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
/sequential_220/lstm_661/while/lstm_cell_622/mulMul9sequential_220/lstm_661/while/lstm_cell_622/Sigmoid_1:y:0+sequential_220_lstm_661_while_placeholder_3*
T0*'
_output_shapes
:���������2�
0sequential_220/lstm_661/while/lstm_cell_622/ReluRelu:sequential_220/lstm_661/while/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
1sequential_220/lstm_661/while/lstm_cell_622/mul_1Mul7sequential_220/lstm_661/while/lstm_cell_622/Sigmoid:y:0>sequential_220/lstm_661/while/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
1sequential_220/lstm_661/while/lstm_cell_622/add_1AddV23sequential_220/lstm_661/while/lstm_cell_622/mul:z:05sequential_220/lstm_661/while/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2�
5sequential_220/lstm_661/while/lstm_cell_622/Sigmoid_2Sigmoid:sequential_220/lstm_661/while/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2�
2sequential_220/lstm_661/while/lstm_cell_622/Relu_1Relu5sequential_220/lstm_661/while/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_220/lstm_661/while/lstm_cell_622/mul_2Mul9sequential_220/lstm_661/while/lstm_cell_622/Sigmoid_2:y:0@sequential_220/lstm_661/while/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Bsequential_220/lstm_661/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_220_lstm_661_while_placeholder_1)sequential_220_lstm_661_while_placeholder5sequential_220/lstm_661/while/lstm_cell_622/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_220/lstm_661/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_220/lstm_661/while/addAddV2)sequential_220_lstm_661_while_placeholder,sequential_220/lstm_661/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_220/lstm_661/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_220/lstm_661/while/add_1AddV2Hsequential_220_lstm_661_while_sequential_220_lstm_661_while_loop_counter.sequential_220/lstm_661/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_220/lstm_661/while/IdentityIdentity'sequential_220/lstm_661/while/add_1:z:0#^sequential_220/lstm_661/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_661/while/Identity_1IdentityNsequential_220_lstm_661_while_sequential_220_lstm_661_while_maximum_iterations#^sequential_220/lstm_661/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_661/while/Identity_2Identity%sequential_220/lstm_661/while/add:z:0#^sequential_220/lstm_661/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_661/while/Identity_3IdentityRsequential_220/lstm_661/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_220/lstm_661/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_661/while/Identity_4Identity5sequential_220/lstm_661/while/lstm_cell_622/mul_2:z:0#^sequential_220/lstm_661/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_220/lstm_661/while/Identity_5Identity5sequential_220/lstm_661/while/lstm_cell_622/add_1:z:0#^sequential_220/lstm_661/while/NoOp*
T0*'
_output_shapes
:���������2�
"sequential_220/lstm_661/while/NoOpNoOpC^sequential_220/lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOpB^sequential_220/lstm_661/while/lstm_cell_622/MatMul/ReadVariableOpD^sequential_220/lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_220_lstm_661_while_identity/sequential_220/lstm_661/while/Identity:output:0"]
(sequential_220_lstm_661_while_identity_11sequential_220/lstm_661/while/Identity_1:output:0"]
(sequential_220_lstm_661_while_identity_21sequential_220/lstm_661/while/Identity_2:output:0"]
(sequential_220_lstm_661_while_identity_31sequential_220/lstm_661/while/Identity_3:output:0"]
(sequential_220_lstm_661_while_identity_41sequential_220/lstm_661/while/Identity_4:output:0"]
(sequential_220_lstm_661_while_identity_51sequential_220/lstm_661/while/Identity_5:output:0"�
Ksequential_220_lstm_661_while_lstm_cell_622_biasadd_readvariableop_resourceMsequential_220_lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource_0"�
Lsequential_220_lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resourceNsequential_220_lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource_0"�
Jsequential_220_lstm_661_while_lstm_cell_622_matmul_readvariableop_resourceLsequential_220_lstm_661_while_lstm_cell_622_matmul_readvariableop_resource_0"�
Esequential_220_lstm_661_while_sequential_220_lstm_661_strided_slice_1Gsequential_220_lstm_661_while_sequential_220_lstm_661_strided_slice_1_0"�
�sequential_220_lstm_661_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_661_tensorarrayunstack_tensorlistfromtensor�sequential_220_lstm_661_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_661_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
Bsequential_220/lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOpBsequential_220/lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp2�
Asequential_220/lstm_661/while/lstm_cell_622/MatMul/ReadVariableOpAsequential_220/lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp2�
Csequential_220/lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOpCsequential_220/lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_662_layer_call_fn_3774776
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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3771215o
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
while_body_3771780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_623_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_623_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_623_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_623_matmul_readvariableop_resource:2(F
4while_lstm_cell_623_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_623_biasadd_readvariableop_resource:(��*while/lstm_cell_623/BiasAdd/ReadVariableOp�)while/lstm_cell_623/MatMul/ReadVariableOp�+while/lstm_cell_623/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_623/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_623_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_623/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_623_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_623/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_623/addAddV2$while/lstm_cell_623/MatMul:product:0&while/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_623_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_623/BiasAddBiasAddwhile/lstm_cell_623/add:z:02while/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_623/splitSplit,while/lstm_cell_623/split/split_dim:output:0$while/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_623/SigmoidSigmoid"while/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_1Sigmoid"while/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mulMul!while/lstm_cell_623/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_623/ReluRelu"while/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_1Mulwhile/lstm_cell_623/Sigmoid:y:0&while/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/add_1AddV2while/lstm_cell_623/mul:z:0while/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_2Sigmoid"while/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_623/Relu_1Reluwhile/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_2Mul!while/lstm_cell_623/Sigmoid_2:y:0(while/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_623/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_623/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_623/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_623/BiasAdd/ReadVariableOp*^while/lstm_cell_623/MatMul/ReadVariableOp,^while/lstm_cell_623/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_623_biasadd_readvariableop_resource5while_lstm_cell_623_biasadd_readvariableop_resource_0"n
4while_lstm_cell_623_matmul_1_readvariableop_resource6while_lstm_cell_623_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_623_matmul_readvariableop_resource4while_lstm_cell_623_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_623/BiasAdd/ReadVariableOp*while/lstm_cell_623/BiasAdd/ReadVariableOp2V
)while/lstm_cell_623/MatMul/ReadVariableOp)while/lstm_cell_623/MatMul/ReadVariableOp2Z
+while/lstm_cell_623/MatMul_1/ReadVariableOp+while/lstm_cell_623/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_220_layer_call_and_return_conditional_losses_3772478

inputs#
lstm_660_3772451:	�#
lstm_660_3772453:	d�
lstm_660_3772455:	�#
lstm_661_3772458:	d�#
lstm_661_3772460:	2�
lstm_661_3772462:	�"
lstm_662_3772465:2("
lstm_662_3772467:
(
lstm_662_3772469:(#
dense_220_3772472:

dense_220_3772474:
identity��!dense_220/StatefulPartitionedCall� lstm_660/StatefulPartitionedCall� lstm_661/StatefulPartitionedCall� lstm_662/StatefulPartitionedCall�
 lstm_660/StatefulPartitionedCallStatefulPartitionedCallinputslstm_660_3772451lstm_660_3772453lstm_660_3772455*
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3772410�
 lstm_661/StatefulPartitionedCallStatefulPartitionedCall)lstm_660/StatefulPartitionedCall:output:0lstm_661_3772458lstm_661_3772460lstm_661_3772462*
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3772245�
 lstm_662/StatefulPartitionedCallStatefulPartitionedCall)lstm_661/StatefulPartitionedCall:output:0lstm_662_3772465lstm_662_3772467lstm_662_3772469*
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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3772080�
!dense_220/StatefulPartitionedCallStatefulPartitionedCall)lstm_662/StatefulPartitionedCall:output:0dense_220_3772472dense_220_3772474*
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
F__inference_dense_220_layer_call_and_return_conditional_losses_3771882y
IdentityIdentity*dense_220/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_220/StatefulPartitionedCall!^lstm_660/StatefulPartitionedCall!^lstm_661/StatefulPartitionedCall!^lstm_662/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_220/StatefulPartitionedCall!dense_220/StatefulPartitionedCall2D
 lstm_660/StatefulPartitionedCall lstm_660/StatefulPartitionedCall2D
 lstm_661/StatefulPartitionedCall lstm_661/StatefulPartitionedCall2D
 lstm_662/StatefulPartitionedCall lstm_662/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_3774680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3774680___redundant_placeholder05
1while_while_cond_3774680___redundant_placeholder15
1while_while_cond_3774680___redundant_placeholder25
1while_while_cond_3774680___redundant_placeholder3
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
*__inference_lstm_662_layer_call_fn_3774798

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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3771864o
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
while_body_3771480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_621_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_621_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_621_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_621_matmul_readvariableop_resource:	�G
4while_lstm_cell_621_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_621_biasadd_readvariableop_resource:	���*while/lstm_cell_621/BiasAdd/ReadVariableOp�)while/lstm_cell_621/MatMul/ReadVariableOp�+while/lstm_cell_621/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_621/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_621_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_621/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_621_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_621/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_621/addAddV2$while/lstm_cell_621/MatMul:product:0&while/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_621_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_621/BiasAddBiasAddwhile/lstm_cell_621/add:z:02while/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_621/splitSplit,while/lstm_cell_621/split/split_dim:output:0$while/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_621/SigmoidSigmoid"while/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_1Sigmoid"while/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mulMul!while/lstm_cell_621/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_621/ReluRelu"while/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_1Mulwhile/lstm_cell_621/Sigmoid:y:0&while/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/add_1AddV2while/lstm_cell_621/mul:z:0while/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_2Sigmoid"while/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_621/Relu_1Reluwhile/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_2Mul!while/lstm_cell_621/Sigmoid_2:y:0(while/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_621/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_621/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_621/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_621/BiasAdd/ReadVariableOp*^while/lstm_cell_621/MatMul/ReadVariableOp,^while/lstm_cell_621/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_621_biasadd_readvariableop_resource5while_lstm_cell_621_biasadd_readvariableop_resource_0"n
4while_lstm_cell_621_matmul_1_readvariableop_resource6while_lstm_cell_621_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_621_matmul_readvariableop_resource4while_lstm_cell_621_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_621/BiasAdd/ReadVariableOp*while/lstm_cell_621/BiasAdd/ReadVariableOp2V
)while/lstm_cell_621/MatMul/ReadVariableOp)while/lstm_cell_621/MatMul/ReadVariableOp2Z
+while/lstm_cell_621/MatMul_1/ReadVariableOp+while/lstm_cell_621/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3771629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3771629___redundant_placeholder05
1while_while_cond_3771629___redundant_placeholder15
1while_while_cond_3771629___redundant_placeholder25
1while_while_cond_3771629___redundant_placeholder3
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
while_body_3775011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_623_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_623_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_623_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_623_matmul_readvariableop_resource:2(F
4while_lstm_cell_623_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_623_biasadd_readvariableop_resource:(��*while/lstm_cell_623/BiasAdd/ReadVariableOp�)while/lstm_cell_623/MatMul/ReadVariableOp�+while/lstm_cell_623/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_623/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_623_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_623/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_623_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_623/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_623/addAddV2$while/lstm_cell_623/MatMul:product:0&while/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_623_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_623/BiasAddBiasAddwhile/lstm_cell_623/add:z:02while/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_623/splitSplit,while/lstm_cell_623/split/split_dim:output:0$while/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_623/SigmoidSigmoid"while/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_1Sigmoid"while/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mulMul!while/lstm_cell_623/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_623/ReluRelu"while/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_1Mulwhile/lstm_cell_623/Sigmoid:y:0&while/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/add_1AddV2while/lstm_cell_623/mul:z:0while/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_2Sigmoid"while/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_623/Relu_1Reluwhile/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_2Mul!while/lstm_cell_623/Sigmoid_2:y:0(while/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_623/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_623/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_623/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_623/BiasAdd/ReadVariableOp*^while/lstm_cell_623/MatMul/ReadVariableOp,^while/lstm_cell_623/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_623_biasadd_readvariableop_resource5while_lstm_cell_623_biasadd_readvariableop_resource_0"n
4while_lstm_cell_623_matmul_1_readvariableop_resource6while_lstm_cell_623_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_623_matmul_readvariableop_resource4while_lstm_cell_623_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_623/BiasAdd/ReadVariableOp*while/lstm_cell_623/BiasAdd/ReadVariableOp2V
)while/lstm_cell_623/MatMul/ReadVariableOp)while/lstm_cell_623/MatMul/ReadVariableOp2Z
+while/lstm_cell_623/MatMul_1/ReadVariableOp+while/lstm_cell_623/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_621_layer_call_fn_3775417

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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3770432o
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
��
�
"__inference__wrapped_model_3770365
lstm_660_inputW
Dsequential_220_lstm_660_lstm_cell_621_matmul_readvariableop_resource:	�Y
Fsequential_220_lstm_660_lstm_cell_621_matmul_1_readvariableop_resource:	d�T
Esequential_220_lstm_660_lstm_cell_621_biasadd_readvariableop_resource:	�W
Dsequential_220_lstm_661_lstm_cell_622_matmul_readvariableop_resource:	d�Y
Fsequential_220_lstm_661_lstm_cell_622_matmul_1_readvariableop_resource:	2�T
Esequential_220_lstm_661_lstm_cell_622_biasadd_readvariableop_resource:	�V
Dsequential_220_lstm_662_lstm_cell_623_matmul_readvariableop_resource:2(X
Fsequential_220_lstm_662_lstm_cell_623_matmul_1_readvariableop_resource:
(S
Esequential_220_lstm_662_lstm_cell_623_biasadd_readvariableop_resource:(I
7sequential_220_dense_220_matmul_readvariableop_resource:
F
8sequential_220_dense_220_biasadd_readvariableop_resource:
identity��/sequential_220/dense_220/BiasAdd/ReadVariableOp�.sequential_220/dense_220/MatMul/ReadVariableOp�<sequential_220/lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp�;sequential_220/lstm_660/lstm_cell_621/MatMul/ReadVariableOp�=sequential_220/lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp�sequential_220/lstm_660/while�<sequential_220/lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp�;sequential_220/lstm_661/lstm_cell_622/MatMul/ReadVariableOp�=sequential_220/lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp�sequential_220/lstm_661/while�<sequential_220/lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp�;sequential_220/lstm_662/lstm_cell_623/MatMul/ReadVariableOp�=sequential_220/lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp�sequential_220/lstm_662/while[
sequential_220/lstm_660/ShapeShapelstm_660_input*
T0*
_output_shapes
:u
+sequential_220/lstm_660/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_220/lstm_660/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_220/lstm_660/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_220/lstm_660/strided_sliceStridedSlice&sequential_220/lstm_660/Shape:output:04sequential_220/lstm_660/strided_slice/stack:output:06sequential_220/lstm_660/strided_slice/stack_1:output:06sequential_220/lstm_660/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_220/lstm_660/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_220/lstm_660/zeros/packedPack.sequential_220/lstm_660/strided_slice:output:0/sequential_220/lstm_660/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_220/lstm_660/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_220/lstm_660/zerosFill-sequential_220/lstm_660/zeros/packed:output:0,sequential_220/lstm_660/zeros/Const:output:0*
T0*'
_output_shapes
:���������dj
(sequential_220/lstm_660/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
&sequential_220/lstm_660/zeros_1/packedPack.sequential_220/lstm_660/strided_slice:output:01sequential_220/lstm_660/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_220/lstm_660/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_220/lstm_660/zeros_1Fill/sequential_220/lstm_660/zeros_1/packed:output:0.sequential_220/lstm_660/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d{
&sequential_220/lstm_660/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_220/lstm_660/transpose	Transposelstm_660_input/sequential_220/lstm_660/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
sequential_220/lstm_660/Shape_1Shape%sequential_220/lstm_660/transpose:y:0*
T0*
_output_shapes
:w
-sequential_220/lstm_660/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_220/lstm_660/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_220/lstm_660/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_220/lstm_660/strided_slice_1StridedSlice(sequential_220/lstm_660/Shape_1:output:06sequential_220/lstm_660/strided_slice_1/stack:output:08sequential_220/lstm_660/strided_slice_1/stack_1:output:08sequential_220/lstm_660/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_220/lstm_660/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_220/lstm_660/TensorArrayV2TensorListReserve<sequential_220/lstm_660/TensorArrayV2/element_shape:output:00sequential_220/lstm_660/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_220/lstm_660/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_220/lstm_660/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_220/lstm_660/transpose:y:0Vsequential_220/lstm_660/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_220/lstm_660/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_220/lstm_660/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_220/lstm_660/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_220/lstm_660/strided_slice_2StridedSlice%sequential_220/lstm_660/transpose:y:06sequential_220/lstm_660/strided_slice_2/stack:output:08sequential_220/lstm_660/strided_slice_2/stack_1:output:08sequential_220/lstm_660/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
;sequential_220/lstm_660/lstm_cell_621/MatMul/ReadVariableOpReadVariableOpDsequential_220_lstm_660_lstm_cell_621_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,sequential_220/lstm_660/lstm_cell_621/MatMulMatMul0sequential_220/lstm_660/strided_slice_2:output:0Csequential_220/lstm_660/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_220/lstm_660/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOpFsequential_220_lstm_660_lstm_cell_621_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
.sequential_220/lstm_660/lstm_cell_621/MatMul_1MatMul&sequential_220/lstm_660/zeros:output:0Esequential_220/lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_220/lstm_660/lstm_cell_621/addAddV26sequential_220/lstm_660/lstm_cell_621/MatMul:product:08sequential_220/lstm_660/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_220/lstm_660/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOpEsequential_220_lstm_660_lstm_cell_621_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_220/lstm_660/lstm_cell_621/BiasAddBiasAdd-sequential_220/lstm_660/lstm_cell_621/add:z:0Dsequential_220/lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_220/lstm_660/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_220/lstm_660/lstm_cell_621/splitSplit>sequential_220/lstm_660/lstm_cell_621/split/split_dim:output:06sequential_220/lstm_660/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_220/lstm_660/lstm_cell_621/SigmoidSigmoid4sequential_220/lstm_660/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_220/lstm_660/lstm_cell_621/Sigmoid_1Sigmoid4sequential_220/lstm_660/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_220/lstm_660/lstm_cell_621/mulMul3sequential_220/lstm_660/lstm_cell_621/Sigmoid_1:y:0(sequential_220/lstm_660/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential_220/lstm_660/lstm_cell_621/ReluRelu4sequential_220/lstm_660/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_220/lstm_660/lstm_cell_621/mul_1Mul1sequential_220/lstm_660/lstm_cell_621/Sigmoid:y:08sequential_220/lstm_660/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_220/lstm_660/lstm_cell_621/add_1AddV2-sequential_220/lstm_660/lstm_cell_621/mul:z:0/sequential_220/lstm_660/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_220/lstm_660/lstm_cell_621/Sigmoid_2Sigmoid4sequential_220/lstm_660/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_220/lstm_660/lstm_cell_621/Relu_1Relu/sequential_220/lstm_660/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_220/lstm_660/lstm_cell_621/mul_2Mul3sequential_220/lstm_660/lstm_cell_621/Sigmoid_2:y:0:sequential_220/lstm_660/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
5sequential_220/lstm_660/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'sequential_220/lstm_660/TensorArrayV2_1TensorListReserve>sequential_220/lstm_660/TensorArrayV2_1/element_shape:output:00sequential_220/lstm_660/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_220/lstm_660/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_220/lstm_660/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_220/lstm_660/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_220/lstm_660/whileWhile3sequential_220/lstm_660/while/loop_counter:output:09sequential_220/lstm_660/while/maximum_iterations:output:0%sequential_220/lstm_660/time:output:00sequential_220/lstm_660/TensorArrayV2_1:handle:0&sequential_220/lstm_660/zeros:output:0(sequential_220/lstm_660/zeros_1:output:00sequential_220/lstm_660/strided_slice_1:output:0Osequential_220/lstm_660/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_220_lstm_660_lstm_cell_621_matmul_readvariableop_resourceFsequential_220_lstm_660_lstm_cell_621_matmul_1_readvariableop_resourceEsequential_220_lstm_660_lstm_cell_621_biasadd_readvariableop_resource*
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
*sequential_220_lstm_660_while_body_3769997*6
cond.R,
*sequential_220_lstm_660_while_cond_3769996*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Hsequential_220/lstm_660/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
:sequential_220/lstm_660/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_220/lstm_660/while:output:3Qsequential_220/lstm_660/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0�
-sequential_220/lstm_660/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_220/lstm_660/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_220/lstm_660/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_220/lstm_660/strided_slice_3StridedSliceCsequential_220/lstm_660/TensorArrayV2Stack/TensorListStack:tensor:06sequential_220/lstm_660/strided_slice_3/stack:output:08sequential_220/lstm_660/strided_slice_3/stack_1:output:08sequential_220/lstm_660/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask}
(sequential_220/lstm_660/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_220/lstm_660/transpose_1	TransposeCsequential_220/lstm_660/TensorArrayV2Stack/TensorListStack:tensor:01sequential_220/lstm_660/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ds
sequential_220/lstm_660/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_220/lstm_661/ShapeShape'sequential_220/lstm_660/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_220/lstm_661/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_220/lstm_661/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_220/lstm_661/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_220/lstm_661/strided_sliceStridedSlice&sequential_220/lstm_661/Shape:output:04sequential_220/lstm_661/strided_slice/stack:output:06sequential_220/lstm_661/strided_slice/stack_1:output:06sequential_220/lstm_661/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_220/lstm_661/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_220/lstm_661/zeros/packedPack.sequential_220/lstm_661/strided_slice:output:0/sequential_220/lstm_661/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_220/lstm_661/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_220/lstm_661/zerosFill-sequential_220/lstm_661/zeros/packed:output:0,sequential_220/lstm_661/zeros/Const:output:0*
T0*'
_output_shapes
:���������2j
(sequential_220/lstm_661/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
&sequential_220/lstm_661/zeros_1/packedPack.sequential_220/lstm_661/strided_slice:output:01sequential_220/lstm_661/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_220/lstm_661/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_220/lstm_661/zeros_1Fill/sequential_220/lstm_661/zeros_1/packed:output:0.sequential_220/lstm_661/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2{
&sequential_220/lstm_661/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_220/lstm_661/transpose	Transpose'sequential_220/lstm_660/transpose_1:y:0/sequential_220/lstm_661/transpose/perm:output:0*
T0*+
_output_shapes
:���������dt
sequential_220/lstm_661/Shape_1Shape%sequential_220/lstm_661/transpose:y:0*
T0*
_output_shapes
:w
-sequential_220/lstm_661/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_220/lstm_661/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_220/lstm_661/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_220/lstm_661/strided_slice_1StridedSlice(sequential_220/lstm_661/Shape_1:output:06sequential_220/lstm_661/strided_slice_1/stack:output:08sequential_220/lstm_661/strided_slice_1/stack_1:output:08sequential_220/lstm_661/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_220/lstm_661/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_220/lstm_661/TensorArrayV2TensorListReserve<sequential_220/lstm_661/TensorArrayV2/element_shape:output:00sequential_220/lstm_661/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_220/lstm_661/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_220/lstm_661/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_220/lstm_661/transpose:y:0Vsequential_220/lstm_661/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_220/lstm_661/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_220/lstm_661/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_220/lstm_661/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_220/lstm_661/strided_slice_2StridedSlice%sequential_220/lstm_661/transpose:y:06sequential_220/lstm_661/strided_slice_2/stack:output:08sequential_220/lstm_661/strided_slice_2/stack_1:output:08sequential_220/lstm_661/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
;sequential_220/lstm_661/lstm_cell_622/MatMul/ReadVariableOpReadVariableOpDsequential_220_lstm_661_lstm_cell_622_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_220/lstm_661/lstm_cell_622/MatMulMatMul0sequential_220/lstm_661/strided_slice_2:output:0Csequential_220/lstm_661/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_220/lstm_661/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOpFsequential_220_lstm_661_lstm_cell_622_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
.sequential_220/lstm_661/lstm_cell_622/MatMul_1MatMul&sequential_220/lstm_661/zeros:output:0Esequential_220/lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_220/lstm_661/lstm_cell_622/addAddV26sequential_220/lstm_661/lstm_cell_622/MatMul:product:08sequential_220/lstm_661/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_220/lstm_661/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOpEsequential_220_lstm_661_lstm_cell_622_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_220/lstm_661/lstm_cell_622/BiasAddBiasAdd-sequential_220/lstm_661/lstm_cell_622/add:z:0Dsequential_220/lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_220/lstm_661/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_220/lstm_661/lstm_cell_622/splitSplit>sequential_220/lstm_661/lstm_cell_622/split/split_dim:output:06sequential_220/lstm_661/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
-sequential_220/lstm_661/lstm_cell_622/SigmoidSigmoid4sequential_220/lstm_661/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2�
/sequential_220/lstm_661/lstm_cell_622/Sigmoid_1Sigmoid4sequential_220/lstm_661/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
)sequential_220/lstm_661/lstm_cell_622/mulMul3sequential_220/lstm_661/lstm_cell_622/Sigmoid_1:y:0(sequential_220/lstm_661/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential_220/lstm_661/lstm_cell_622/ReluRelu4sequential_220/lstm_661/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
+sequential_220/lstm_661/lstm_cell_622/mul_1Mul1sequential_220/lstm_661/lstm_cell_622/Sigmoid:y:08sequential_220/lstm_661/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
+sequential_220/lstm_661/lstm_cell_622/add_1AddV2-sequential_220/lstm_661/lstm_cell_622/mul:z:0/sequential_220/lstm_661/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_220/lstm_661/lstm_cell_622/Sigmoid_2Sigmoid4sequential_220/lstm_661/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2�
,sequential_220/lstm_661/lstm_cell_622/Relu_1Relu/sequential_220/lstm_661/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_220/lstm_661/lstm_cell_622/mul_2Mul3sequential_220/lstm_661/lstm_cell_622/Sigmoid_2:y:0:sequential_220/lstm_661/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
5sequential_220/lstm_661/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'sequential_220/lstm_661/TensorArrayV2_1TensorListReserve>sequential_220/lstm_661/TensorArrayV2_1/element_shape:output:00sequential_220/lstm_661/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_220/lstm_661/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_220/lstm_661/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_220/lstm_661/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_220/lstm_661/whileWhile3sequential_220/lstm_661/while/loop_counter:output:09sequential_220/lstm_661/while/maximum_iterations:output:0%sequential_220/lstm_661/time:output:00sequential_220/lstm_661/TensorArrayV2_1:handle:0&sequential_220/lstm_661/zeros:output:0(sequential_220/lstm_661/zeros_1:output:00sequential_220/lstm_661/strided_slice_1:output:0Osequential_220/lstm_661/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_220_lstm_661_lstm_cell_622_matmul_readvariableop_resourceFsequential_220_lstm_661_lstm_cell_622_matmul_1_readvariableop_resourceEsequential_220_lstm_661_lstm_cell_622_biasadd_readvariableop_resource*
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
*sequential_220_lstm_661_while_body_3770136*6
cond.R,
*sequential_220_lstm_661_while_cond_3770135*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Hsequential_220/lstm_661/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
:sequential_220/lstm_661/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_220/lstm_661/while:output:3Qsequential_220/lstm_661/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0�
-sequential_220/lstm_661/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_220/lstm_661/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_220/lstm_661/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_220/lstm_661/strided_slice_3StridedSliceCsequential_220/lstm_661/TensorArrayV2Stack/TensorListStack:tensor:06sequential_220/lstm_661/strided_slice_3/stack:output:08sequential_220/lstm_661/strided_slice_3/stack_1:output:08sequential_220/lstm_661/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask}
(sequential_220/lstm_661/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_220/lstm_661/transpose_1	TransposeCsequential_220/lstm_661/TensorArrayV2Stack/TensorListStack:tensor:01sequential_220/lstm_661/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2s
sequential_220/lstm_661/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_220/lstm_662/ShapeShape'sequential_220/lstm_661/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_220/lstm_662/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_220/lstm_662/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_220/lstm_662/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_220/lstm_662/strided_sliceStridedSlice&sequential_220/lstm_662/Shape:output:04sequential_220/lstm_662/strided_slice/stack:output:06sequential_220/lstm_662/strided_slice/stack_1:output:06sequential_220/lstm_662/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_220/lstm_662/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_220/lstm_662/zeros/packedPack.sequential_220/lstm_662/strided_slice:output:0/sequential_220/lstm_662/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_220/lstm_662/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_220/lstm_662/zerosFill-sequential_220/lstm_662/zeros/packed:output:0,sequential_220/lstm_662/zeros/Const:output:0*
T0*'
_output_shapes
:���������
j
(sequential_220/lstm_662/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&sequential_220/lstm_662/zeros_1/packedPack.sequential_220/lstm_662/strided_slice:output:01sequential_220/lstm_662/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_220/lstm_662/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_220/lstm_662/zeros_1Fill/sequential_220/lstm_662/zeros_1/packed:output:0.sequential_220/lstm_662/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
{
&sequential_220/lstm_662/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_220/lstm_662/transpose	Transpose'sequential_220/lstm_661/transpose_1:y:0/sequential_220/lstm_662/transpose/perm:output:0*
T0*+
_output_shapes
:���������2t
sequential_220/lstm_662/Shape_1Shape%sequential_220/lstm_662/transpose:y:0*
T0*
_output_shapes
:w
-sequential_220/lstm_662/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_220/lstm_662/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_220/lstm_662/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_220/lstm_662/strided_slice_1StridedSlice(sequential_220/lstm_662/Shape_1:output:06sequential_220/lstm_662/strided_slice_1/stack:output:08sequential_220/lstm_662/strided_slice_1/stack_1:output:08sequential_220/lstm_662/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_220/lstm_662/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_220/lstm_662/TensorArrayV2TensorListReserve<sequential_220/lstm_662/TensorArrayV2/element_shape:output:00sequential_220/lstm_662/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_220/lstm_662/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_220/lstm_662/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_220/lstm_662/transpose:y:0Vsequential_220/lstm_662/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_220/lstm_662/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_220/lstm_662/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_220/lstm_662/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_220/lstm_662/strided_slice_2StridedSlice%sequential_220/lstm_662/transpose:y:06sequential_220/lstm_662/strided_slice_2/stack:output:08sequential_220/lstm_662/strided_slice_2/stack_1:output:08sequential_220/lstm_662/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
;sequential_220/lstm_662/lstm_cell_623/MatMul/ReadVariableOpReadVariableOpDsequential_220_lstm_662_lstm_cell_623_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
,sequential_220/lstm_662/lstm_cell_623/MatMulMatMul0sequential_220/lstm_662/strided_slice_2:output:0Csequential_220/lstm_662/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
=sequential_220/lstm_662/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOpFsequential_220_lstm_662_lstm_cell_623_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
.sequential_220/lstm_662/lstm_cell_623/MatMul_1MatMul&sequential_220/lstm_662/zeros:output:0Esequential_220/lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)sequential_220/lstm_662/lstm_cell_623/addAddV26sequential_220/lstm_662/lstm_cell_623/MatMul:product:08sequential_220/lstm_662/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
<sequential_220/lstm_662/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOpEsequential_220_lstm_662_lstm_cell_623_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
-sequential_220/lstm_662/lstm_cell_623/BiasAddBiasAdd-sequential_220/lstm_662/lstm_cell_623/add:z:0Dsequential_220/lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(w
5sequential_220/lstm_662/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_220/lstm_662/lstm_cell_623/splitSplit>sequential_220/lstm_662/lstm_cell_623/split/split_dim:output:06sequential_220/lstm_662/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
-sequential_220/lstm_662/lstm_cell_623/SigmoidSigmoid4sequential_220/lstm_662/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
�
/sequential_220/lstm_662/lstm_cell_623/Sigmoid_1Sigmoid4sequential_220/lstm_662/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
)sequential_220/lstm_662/lstm_cell_623/mulMul3sequential_220/lstm_662/lstm_cell_623/Sigmoid_1:y:0(sequential_220/lstm_662/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
*sequential_220/lstm_662/lstm_cell_623/ReluRelu4sequential_220/lstm_662/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
+sequential_220/lstm_662/lstm_cell_623/mul_1Mul1sequential_220/lstm_662/lstm_cell_623/Sigmoid:y:08sequential_220/lstm_662/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
+sequential_220/lstm_662/lstm_cell_623/add_1AddV2-sequential_220/lstm_662/lstm_cell_623/mul:z:0/sequential_220/lstm_662/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_220/lstm_662/lstm_cell_623/Sigmoid_2Sigmoid4sequential_220/lstm_662/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
�
,sequential_220/lstm_662/lstm_cell_623/Relu_1Relu/sequential_220/lstm_662/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_220/lstm_662/lstm_cell_623/mul_2Mul3sequential_220/lstm_662/lstm_cell_623/Sigmoid_2:y:0:sequential_220/lstm_662/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
5sequential_220/lstm_662/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
'sequential_220/lstm_662/TensorArrayV2_1TensorListReserve>sequential_220/lstm_662/TensorArrayV2_1/element_shape:output:00sequential_220/lstm_662/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_220/lstm_662/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_220/lstm_662/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_220/lstm_662/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_220/lstm_662/whileWhile3sequential_220/lstm_662/while/loop_counter:output:09sequential_220/lstm_662/while/maximum_iterations:output:0%sequential_220/lstm_662/time:output:00sequential_220/lstm_662/TensorArrayV2_1:handle:0&sequential_220/lstm_662/zeros:output:0(sequential_220/lstm_662/zeros_1:output:00sequential_220/lstm_662/strided_slice_1:output:0Osequential_220/lstm_662/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_220_lstm_662_lstm_cell_623_matmul_readvariableop_resourceFsequential_220_lstm_662_lstm_cell_623_matmul_1_readvariableop_resourceEsequential_220_lstm_662_lstm_cell_623_biasadd_readvariableop_resource*
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
*sequential_220_lstm_662_while_body_3770275*6
cond.R,
*sequential_220_lstm_662_while_cond_3770274*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Hsequential_220/lstm_662/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
:sequential_220/lstm_662/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_220/lstm_662/while:output:3Qsequential_220/lstm_662/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0�
-sequential_220/lstm_662/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_220/lstm_662/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_220/lstm_662/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_220/lstm_662/strided_slice_3StridedSliceCsequential_220/lstm_662/TensorArrayV2Stack/TensorListStack:tensor:06sequential_220/lstm_662/strided_slice_3/stack:output:08sequential_220/lstm_662/strided_slice_3/stack_1:output:08sequential_220/lstm_662/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask}
(sequential_220/lstm_662/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_220/lstm_662/transpose_1	TransposeCsequential_220/lstm_662/TensorArrayV2Stack/TensorListStack:tensor:01sequential_220/lstm_662/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
s
sequential_220/lstm_662/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_220/dense_220/MatMul/ReadVariableOpReadVariableOp7sequential_220_dense_220_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_220/dense_220/MatMulMatMul0sequential_220/lstm_662/strided_slice_3:output:06sequential_220/dense_220/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_220/dense_220/BiasAdd/ReadVariableOpReadVariableOp8sequential_220_dense_220_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_220/dense_220/BiasAddBiasAdd)sequential_220/dense_220/MatMul:product:07sequential_220/dense_220/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_220/dense_220/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_220/dense_220/BiasAdd/ReadVariableOp/^sequential_220/dense_220/MatMul/ReadVariableOp=^sequential_220/lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp<^sequential_220/lstm_660/lstm_cell_621/MatMul/ReadVariableOp>^sequential_220/lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp^sequential_220/lstm_660/while=^sequential_220/lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp<^sequential_220/lstm_661/lstm_cell_622/MatMul/ReadVariableOp>^sequential_220/lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp^sequential_220/lstm_661/while=^sequential_220/lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp<^sequential_220/lstm_662/lstm_cell_623/MatMul/ReadVariableOp>^sequential_220/lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp^sequential_220/lstm_662/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_220/dense_220/BiasAdd/ReadVariableOp/sequential_220/dense_220/BiasAdd/ReadVariableOp2`
.sequential_220/dense_220/MatMul/ReadVariableOp.sequential_220/dense_220/MatMul/ReadVariableOp2|
<sequential_220/lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp<sequential_220/lstm_660/lstm_cell_621/BiasAdd/ReadVariableOp2z
;sequential_220/lstm_660/lstm_cell_621/MatMul/ReadVariableOp;sequential_220/lstm_660/lstm_cell_621/MatMul/ReadVariableOp2~
=sequential_220/lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp=sequential_220/lstm_660/lstm_cell_621/MatMul_1/ReadVariableOp2>
sequential_220/lstm_660/whilesequential_220/lstm_660/while2|
<sequential_220/lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp<sequential_220/lstm_661/lstm_cell_622/BiasAdd/ReadVariableOp2z
;sequential_220/lstm_661/lstm_cell_622/MatMul/ReadVariableOp;sequential_220/lstm_661/lstm_cell_622/MatMul/ReadVariableOp2~
=sequential_220/lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp=sequential_220/lstm_661/lstm_cell_622/MatMul_1/ReadVariableOp2>
sequential_220/lstm_661/whilesequential_220/lstm_661/while2|
<sequential_220/lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp<sequential_220/lstm_662/lstm_cell_623/BiasAdd/ReadVariableOp2z
;sequential_220/lstm_662/lstm_cell_623/MatMul/ReadVariableOp;sequential_220/lstm_662/lstm_cell_623/MatMul/ReadVariableOp2~
=sequential_220/lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp=sequential_220/lstm_662/lstm_cell_623/MatMul_1/ReadVariableOp2>
sequential_220/lstm_662/whilesequential_220/lstm_662/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_660_input
�8
�
while_body_3771630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_622_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_622_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_622_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_622_matmul_readvariableop_resource:	d�G
4while_lstm_cell_622_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_622_biasadd_readvariableop_resource:	���*while/lstm_cell_622/BiasAdd/ReadVariableOp�)while/lstm_cell_622/MatMul/ReadVariableOp�+while/lstm_cell_622/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_622/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_622_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_622/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_622_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_622/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_622/addAddV2$while/lstm_cell_622/MatMul:product:0&while/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_622_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_622/BiasAddBiasAddwhile/lstm_cell_622/add:z:02while/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_622/splitSplit,while/lstm_cell_622/split/split_dim:output:0$while/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_622/SigmoidSigmoid"while/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_1Sigmoid"while/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mulMul!while/lstm_cell_622/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_622/ReluRelu"while/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_1Mulwhile/lstm_cell_622/Sigmoid:y:0&while/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/add_1AddV2while/lstm_cell_622/mul:z:0while/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_2Sigmoid"while/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_622/Relu_1Reluwhile/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_2Mul!while/lstm_cell_622/Sigmoid_2:y:0(while/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_622/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_622/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_622/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_622/BiasAdd/ReadVariableOp*^while/lstm_cell_622/MatMul/ReadVariableOp,^while/lstm_cell_622/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_622_biasadd_readvariableop_resource5while_lstm_cell_622_biasadd_readvariableop_resource_0"n
4while_lstm_cell_622_matmul_1_readvariableop_resource6while_lstm_cell_622_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_622_matmul_readvariableop_resource4while_lstm_cell_622_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_622/BiasAdd/ReadVariableOp*while/lstm_cell_622/BiasAdd/ReadVariableOp2V
)while/lstm_cell_622/MatMul/ReadVariableOp)while/lstm_cell_622/MatMul/ReadVariableOp2Z
+while/lstm_cell_622/MatMul_1/ReadVariableOp+while/lstm_cell_622/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3773778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3773778___redundant_placeholder05
1while_while_cond_3773778___redundant_placeholder15
1while_while_cond_3773778___redundant_placeholder25
1while_while_cond_3773778___redundant_placeholder3
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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3770782

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
while_cond_3770795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3770795___redundant_placeholder05
1while_while_cond_3770795___redundant_placeholder15
1while_while_cond_3770795___redundant_placeholder25
1while_while_cond_3770795___redundant_placeholder3
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
while_cond_3771336
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3771336___redundant_placeholder05
1while_while_cond_3771336___redundant_placeholder15
1while_while_cond_3771336___redundant_placeholder25
1while_while_cond_3771336___redundant_placeholder3
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
while_cond_3771479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3771479___redundant_placeholder05
1while_while_cond_3771479___redundant_placeholder15
1while_while_cond_3771479___redundant_placeholder25
1while_while_cond_3771479___redundant_placeholder3
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

lstm_662_while_body_3773016.
*lstm_662_while_lstm_662_while_loop_counter4
0lstm_662_while_lstm_662_while_maximum_iterations
lstm_662_while_placeholder 
lstm_662_while_placeholder_1 
lstm_662_while_placeholder_2 
lstm_662_while_placeholder_3-
)lstm_662_while_lstm_662_strided_slice_1_0i
elstm_662_while_tensorarrayv2read_tensorlistgetitem_lstm_662_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_662_while_lstm_cell_623_matmul_readvariableop_resource_0:2(Q
?lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource_0:
(L
>lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource_0:(
lstm_662_while_identity
lstm_662_while_identity_1
lstm_662_while_identity_2
lstm_662_while_identity_3
lstm_662_while_identity_4
lstm_662_while_identity_5+
'lstm_662_while_lstm_662_strided_slice_1g
clstm_662_while_tensorarrayv2read_tensorlistgetitem_lstm_662_tensorarrayunstack_tensorlistfromtensorM
;lstm_662_while_lstm_cell_623_matmul_readvariableop_resource:2(O
=lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource:
(J
<lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource:(��3lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp�2lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp�4lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp�
@lstm_662/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_662/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_662_while_tensorarrayv2read_tensorlistgetitem_lstm_662_tensorarrayunstack_tensorlistfromtensor_0lstm_662_while_placeholderIlstm_662/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_662/while/lstm_cell_623/MatMul/ReadVariableOpReadVariableOp=lstm_662_while_lstm_cell_623_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_662/while/lstm_cell_623/MatMulMatMul9lstm_662/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp?lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_662/while/lstm_cell_623/MatMul_1MatMullstm_662_while_placeholder_2<lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_662/while/lstm_cell_623/addAddV2-lstm_662/while/lstm_cell_623/MatMul:product:0/lstm_662/while/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp>lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_662/while/lstm_cell_623/BiasAddBiasAdd$lstm_662/while/lstm_cell_623/add:z:0;lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_662/while/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_662/while/lstm_cell_623/splitSplit5lstm_662/while/lstm_cell_623/split/split_dim:output:0-lstm_662/while/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_662/while/lstm_cell_623/SigmoidSigmoid+lstm_662/while/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_662/while/lstm_cell_623/Sigmoid_1Sigmoid+lstm_662/while/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_662/while/lstm_cell_623/mulMul*lstm_662/while/lstm_cell_623/Sigmoid_1:y:0lstm_662_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_662/while/lstm_cell_623/ReluRelu+lstm_662/while/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_662/while/lstm_cell_623/mul_1Mul(lstm_662/while/lstm_cell_623/Sigmoid:y:0/lstm_662/while/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_662/while/lstm_cell_623/add_1AddV2$lstm_662/while/lstm_cell_623/mul:z:0&lstm_662/while/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_662/while/lstm_cell_623/Sigmoid_2Sigmoid+lstm_662/while/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_662/while/lstm_cell_623/Relu_1Relu&lstm_662/while/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_662/while/lstm_cell_623/mul_2Mul*lstm_662/while/lstm_cell_623/Sigmoid_2:y:01lstm_662/while/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_662/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_662_while_placeholder_1lstm_662_while_placeholder&lstm_662/while/lstm_cell_623/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_662/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_662/while/addAddV2lstm_662_while_placeholderlstm_662/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_662/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_662/while/add_1AddV2*lstm_662_while_lstm_662_while_loop_counterlstm_662/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_662/while/IdentityIdentitylstm_662/while/add_1:z:0^lstm_662/while/NoOp*
T0*
_output_shapes
: �
lstm_662/while/Identity_1Identity0lstm_662_while_lstm_662_while_maximum_iterations^lstm_662/while/NoOp*
T0*
_output_shapes
: t
lstm_662/while/Identity_2Identitylstm_662/while/add:z:0^lstm_662/while/NoOp*
T0*
_output_shapes
: �
lstm_662/while/Identity_3IdentityClstm_662/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_662/while/NoOp*
T0*
_output_shapes
: �
lstm_662/while/Identity_4Identity&lstm_662/while/lstm_cell_623/mul_2:z:0^lstm_662/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_662/while/Identity_5Identity&lstm_662/while/lstm_cell_623/add_1:z:0^lstm_662/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_662/while/NoOpNoOp4^lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp3^lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp5^lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_662_while_identity lstm_662/while/Identity:output:0"?
lstm_662_while_identity_1"lstm_662/while/Identity_1:output:0"?
lstm_662_while_identity_2"lstm_662/while/Identity_2:output:0"?
lstm_662_while_identity_3"lstm_662/while/Identity_3:output:0"?
lstm_662_while_identity_4"lstm_662/while/Identity_4:output:0"?
lstm_662_while_identity_5"lstm_662/while/Identity_5:output:0"T
'lstm_662_while_lstm_662_strided_slice_1)lstm_662_while_lstm_662_strided_slice_1_0"~
<lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource>lstm_662_while_lstm_cell_623_biasadd_readvariableop_resource_0"�
=lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource?lstm_662_while_lstm_cell_623_matmul_1_readvariableop_resource_0"|
;lstm_662_while_lstm_cell_623_matmul_readvariableop_resource=lstm_662_while_lstm_cell_623_matmul_readvariableop_resource_0"�
clstm_662_while_tensorarrayv2read_tensorlistgetitem_lstm_662_tensorarrayunstack_tensorlistfromtensorelstm_662_while_tensorarrayv2read_tensorlistgetitem_lstm_662_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp3lstm_662/while/lstm_cell_623/BiasAdd/ReadVariableOp2h
2lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp2lstm_662/while/lstm_cell_623/MatMul/ReadVariableOp2l
4lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp4lstm_662/while/lstm_cell_623/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3772410

inputs?
,lstm_cell_621_matmul_readvariableop_resource:	�A
.lstm_cell_621_matmul_1_readvariableop_resource:	d�<
-lstm_cell_621_biasadd_readvariableop_resource:	�
identity��$lstm_cell_621/BiasAdd/ReadVariableOp�#lstm_cell_621/MatMul/ReadVariableOp�%lstm_cell_621/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_621/MatMul/ReadVariableOpReadVariableOp,lstm_cell_621_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_621/MatMulMatMulstrided_slice_2:output:0+lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_621_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_621/MatMul_1MatMulzeros:output:0-lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_621/addAddV2lstm_cell_621/MatMul:product:0 lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_621_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_621/BiasAddBiasAddlstm_cell_621/add:z:0,lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_621/splitSplit&lstm_cell_621/split/split_dim:output:0lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_621/SigmoidSigmoidlstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_1Sigmoidlstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_621/mulMullstm_cell_621/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_621/ReluRelulstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_1Mullstm_cell_621/Sigmoid:y:0 lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_621/add_1AddV2lstm_cell_621/mul:z:0lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_2Sigmoidlstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_621/Relu_1Relulstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_2Mullstm_cell_621/Sigmoid_2:y:0"lstm_cell_621/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_621_matmul_readvariableop_resource.lstm_cell_621_matmul_1_readvariableop_resource-lstm_cell_621_biasadd_readvariableop_resource*
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
while_body_3772326*
condR
while_cond_3772325*K
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
NoOpNoOp%^lstm_cell_621/BiasAdd/ReadVariableOp$^lstm_cell_621/MatMul/ReadVariableOp&^lstm_cell_621/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_621/BiasAdd/ReadVariableOp$lstm_cell_621/BiasAdd/ReadVariableOp2J
#lstm_cell_621/MatMul/ReadVariableOp#lstm_cell_621/MatMul/ReadVariableOp2N
%lstm_cell_621/MatMul_1/ReadVariableOp%lstm_cell_621/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_3775010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3775010___redundant_placeholder05
1while_while_cond_3775010___redundant_placeholder15
1while_while_cond_3775010___redundant_placeholder25
1while_while_cond_3775010___redundant_placeholder3
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
while_body_3773922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_621_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_621_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_621_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_621_matmul_readvariableop_resource:	�G
4while_lstm_cell_621_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_621_biasadd_readvariableop_resource:	���*while/lstm_cell_621/BiasAdd/ReadVariableOp�)while/lstm_cell_621/MatMul/ReadVariableOp�+while/lstm_cell_621/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_621/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_621_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_621/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_621_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_621/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_621/addAddV2$while/lstm_cell_621/MatMul:product:0&while/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_621_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_621/BiasAddBiasAddwhile/lstm_cell_621/add:z:02while/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_621/splitSplit,while/lstm_cell_621/split/split_dim:output:0$while/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_621/SigmoidSigmoid"while/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_1Sigmoid"while/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mulMul!while/lstm_cell_621/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_621/ReluRelu"while/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_1Mulwhile/lstm_cell_621/Sigmoid:y:0&while/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/add_1AddV2while/lstm_cell_621/mul:z:0while/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_2Sigmoid"while/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_621/Relu_1Reluwhile/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_2Mul!while/lstm_cell_621/Sigmoid_2:y:0(while/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_621/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_621/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_621/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_621/BiasAdd/ReadVariableOp*^while/lstm_cell_621/MatMul/ReadVariableOp,^while/lstm_cell_621/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_621_biasadd_readvariableop_resource5while_lstm_cell_621_biasadd_readvariableop_resource_0"n
4while_lstm_cell_621_matmul_1_readvariableop_resource6while_lstm_cell_621_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_621_matmul_readvariableop_resource4while_lstm_cell_621_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_621/BiasAdd/ReadVariableOp*while/lstm_cell_621/BiasAdd/ReadVariableOp2V
)while/lstm_cell_621/MatMul/ReadVariableOp)while/lstm_cell_621/MatMul/ReadVariableOp2Z
+while/lstm_cell_621/MatMul_1/ReadVariableOp+while/lstm_cell_621/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3773635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3773635___redundant_placeholder05
1while_while_cond_3773635___redundant_placeholder15
1while_while_cond_3773635___redundant_placeholder25
1while_while_cond_3773635___redundant_placeholder3
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
while_body_3774395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_622_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_622_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_622_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_622_matmul_readvariableop_resource:	d�G
4while_lstm_cell_622_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_622_biasadd_readvariableop_resource:	���*while/lstm_cell_622/BiasAdd/ReadVariableOp�)while/lstm_cell_622/MatMul/ReadVariableOp�+while/lstm_cell_622/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_622/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_622_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_622/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_622_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_622/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_622/addAddV2$while/lstm_cell_622/MatMul:product:0&while/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_622_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_622/BiasAddBiasAddwhile/lstm_cell_622/add:z:02while/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_622/splitSplit,while/lstm_cell_622/split/split_dim:output:0$while/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_622/SigmoidSigmoid"while/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_1Sigmoid"while/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mulMul!while/lstm_cell_622/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_622/ReluRelu"while/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_1Mulwhile/lstm_cell_622/Sigmoid:y:0&while/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/add_1AddV2while/lstm_cell_622/mul:z:0while/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_622/Sigmoid_2Sigmoid"while/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_622/Relu_1Reluwhile/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_622/mul_2Mul!while/lstm_cell_622/Sigmoid_2:y:0(while/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_622/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_622/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_622/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_622/BiasAdd/ReadVariableOp*^while/lstm_cell_622/MatMul/ReadVariableOp,^while/lstm_cell_622/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_622_biasadd_readvariableop_resource5while_lstm_cell_622_biasadd_readvariableop_resource_0"n
4while_lstm_cell_622_matmul_1_readvariableop_resource6while_lstm_cell_622_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_622_matmul_readvariableop_resource4while_lstm_cell_622_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_622/BiasAdd/ReadVariableOp*while/lstm_cell_622/BiasAdd/ReadVariableOp2V
)while/lstm_cell_622/MatMul/ReadVariableOp)while/lstm_cell_622/MatMul/ReadVariableOp2Z
+while/lstm_cell_622/MatMul_1/ReadVariableOp+while/lstm_cell_622/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_661_layer_call_fn_3774160
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3770865|
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
�#
�
while_body_3771146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_623_3771170_0:2(/
while_lstm_cell_623_3771172_0:
(+
while_lstm_cell_623_3771174_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_623_3771170:2(-
while_lstm_cell_623_3771172:
()
while_lstm_cell_623_3771174:(��+while/lstm_cell_623/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_623/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_623_3771170_0while_lstm_cell_623_3771172_0while_lstm_cell_623_3771174_0*
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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3771132�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_623/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_623/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_623/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_623/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_623_3771170while_lstm_cell_623_3771170_0"<
while_lstm_cell_623_3771172while_lstm_cell_623_3771172_0"<
while_lstm_cell_623_3771174while_lstm_cell_623_3771174_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_623/StatefulPartitionedCall+while/lstm_cell_623/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�K
�
E__inference_lstm_660_layer_call_and_return_conditional_losses_3773863
inputs_0?
,lstm_cell_621_matmul_readvariableop_resource:	�A
.lstm_cell_621_matmul_1_readvariableop_resource:	d�<
-lstm_cell_621_biasadd_readvariableop_resource:	�
identity��$lstm_cell_621/BiasAdd/ReadVariableOp�#lstm_cell_621/MatMul/ReadVariableOp�%lstm_cell_621/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_621/MatMul/ReadVariableOpReadVariableOp,lstm_cell_621_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_621/MatMulMatMulstrided_slice_2:output:0+lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_621_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_621/MatMul_1MatMulzeros:output:0-lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_621/addAddV2lstm_cell_621/MatMul:product:0 lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_621_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_621/BiasAddBiasAddlstm_cell_621/add:z:0,lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_621/splitSplit&lstm_cell_621/split/split_dim:output:0lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_621/SigmoidSigmoidlstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_1Sigmoidlstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_621/mulMullstm_cell_621/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_621/ReluRelulstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_1Mullstm_cell_621/Sigmoid:y:0 lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_621/add_1AddV2lstm_cell_621/mul:z:0lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_2Sigmoidlstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_621/Relu_1Relulstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_2Mullstm_cell_621/Sigmoid_2:y:0"lstm_cell_621/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_621_matmul_readvariableop_resource.lstm_cell_621_matmul_1_readvariableop_resource-lstm_cell_621_biasadd_readvariableop_resource*
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
while_body_3773779*
condR
while_cond_3773778*K
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
NoOpNoOp%^lstm_cell_621/BiasAdd/ReadVariableOp$^lstm_cell_621/MatMul/ReadVariableOp&^lstm_cell_621/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_621/BiasAdd/ReadVariableOp$lstm_cell_621/BiasAdd/ReadVariableOp2J
#lstm_cell_621/MatMul/ReadVariableOp#lstm_cell_621/MatMul/ReadVariableOp2N
%lstm_cell_621/MatMul_1/ReadVariableOp%lstm_cell_621/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�#
�
while_body_3771337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_623_3771361_0:2(/
while_lstm_cell_623_3771363_0:
(+
while_lstm_cell_623_3771365_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_623_3771361:2(-
while_lstm_cell_623_3771363:
()
while_lstm_cell_623_3771365:(��+while/lstm_cell_623/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_623/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_623_3771361_0while_lstm_cell_623_3771363_0while_lstm_cell_623_3771365_0*
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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3771278�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_623/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_623/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_623/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_623/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_623_3771361while_lstm_cell_623_3771361_0"<
while_lstm_cell_623_3771363while_lstm_cell_623_3771363_0"<
while_lstm_cell_623_3771365while_lstm_cell_623_3771365_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_623/StatefulPartitionedCall+while/lstm_cell_623/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
�
�
*__inference_lstm_662_layer_call_fn_3774809

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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3772080o
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3770706

inputs(
lstm_cell_621_3770624:	�(
lstm_cell_621_3770626:	d�$
lstm_cell_621_3770628:	�
identity��%lstm_cell_621/StatefulPartitionedCall�while;
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
%lstm_cell_621/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_621_3770624lstm_cell_621_3770626lstm_cell_621_3770628*
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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3770578n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_621_3770624lstm_cell_621_3770626lstm_cell_621_3770628*
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
while_body_3770637*
condR
while_cond_3770636*K
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
NoOpNoOp&^lstm_cell_621/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_621/StatefulPartitionedCall%lstm_cell_621/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�#
�
while_body_3770796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_622_3770820_0:	d�0
while_lstm_cell_622_3770822_0:	2�,
while_lstm_cell_622_3770824_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_622_3770820:	d�.
while_lstm_cell_622_3770822:	2�*
while_lstm_cell_622_3770824:	���+while/lstm_cell_622/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_622/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_622_3770820_0while_lstm_cell_622_3770822_0while_lstm_cell_622_3770824_0*
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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3770782�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_622/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_622/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_622/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_622/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_622_3770820while_lstm_cell_622_3770820_0"<
while_lstm_cell_622_3770822while_lstm_cell_622_3770822_0"<
while_lstm_cell_622_3770824while_lstm_cell_622_3770824_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_622/StatefulPartitionedCall+while/lstm_cell_622/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_623_layer_call_fn_3775630

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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3771278o
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

lstm_661_while_body_3773304.
*lstm_661_while_lstm_661_while_loop_counter4
0lstm_661_while_lstm_661_while_maximum_iterations
lstm_661_while_placeholder 
lstm_661_while_placeholder_1 
lstm_661_while_placeholder_2 
lstm_661_while_placeholder_3-
)lstm_661_while_lstm_661_strided_slice_1_0i
elstm_661_while_tensorarrayv2read_tensorlistgetitem_lstm_661_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_661_while_lstm_cell_622_matmul_readvariableop_resource_0:	d�R
?lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource_0:	2�M
>lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource_0:	�
lstm_661_while_identity
lstm_661_while_identity_1
lstm_661_while_identity_2
lstm_661_while_identity_3
lstm_661_while_identity_4
lstm_661_while_identity_5+
'lstm_661_while_lstm_661_strided_slice_1g
clstm_661_while_tensorarrayv2read_tensorlistgetitem_lstm_661_tensorarrayunstack_tensorlistfromtensorN
;lstm_661_while_lstm_cell_622_matmul_readvariableop_resource:	d�P
=lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource:	2�K
<lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource:	���3lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp�2lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp�4lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp�
@lstm_661/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_661/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_661_while_tensorarrayv2read_tensorlistgetitem_lstm_661_tensorarrayunstack_tensorlistfromtensor_0lstm_661_while_placeholderIlstm_661/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_661/while/lstm_cell_622/MatMul/ReadVariableOpReadVariableOp=lstm_661_while_lstm_cell_622_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_661/while/lstm_cell_622/MatMulMatMul9lstm_661/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp?lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_661/while/lstm_cell_622/MatMul_1MatMullstm_661_while_placeholder_2<lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_661/while/lstm_cell_622/addAddV2-lstm_661/while/lstm_cell_622/MatMul:product:0/lstm_661/while/lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp>lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_661/while/lstm_cell_622/BiasAddBiasAdd$lstm_661/while/lstm_cell_622/add:z:0;lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_661/while/lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_661/while/lstm_cell_622/splitSplit5lstm_661/while/lstm_cell_622/split/split_dim:output:0-lstm_661/while/lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_661/while/lstm_cell_622/SigmoidSigmoid+lstm_661/while/lstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_661/while/lstm_cell_622/Sigmoid_1Sigmoid+lstm_661/while/lstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_661/while/lstm_cell_622/mulMul*lstm_661/while/lstm_cell_622/Sigmoid_1:y:0lstm_661_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_661/while/lstm_cell_622/ReluRelu+lstm_661/while/lstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_661/while/lstm_cell_622/mul_1Mul(lstm_661/while/lstm_cell_622/Sigmoid:y:0/lstm_661/while/lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_661/while/lstm_cell_622/add_1AddV2$lstm_661/while/lstm_cell_622/mul:z:0&lstm_661/while/lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_661/while/lstm_cell_622/Sigmoid_2Sigmoid+lstm_661/while/lstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_661/while/lstm_cell_622/Relu_1Relu&lstm_661/while/lstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_661/while/lstm_cell_622/mul_2Mul*lstm_661/while/lstm_cell_622/Sigmoid_2:y:01lstm_661/while/lstm_cell_622/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_661/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_661_while_placeholder_1lstm_661_while_placeholder&lstm_661/while/lstm_cell_622/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_661/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_661/while/addAddV2lstm_661_while_placeholderlstm_661/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_661/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_661/while/add_1AddV2*lstm_661_while_lstm_661_while_loop_counterlstm_661/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_661/while/IdentityIdentitylstm_661/while/add_1:z:0^lstm_661/while/NoOp*
T0*
_output_shapes
: �
lstm_661/while/Identity_1Identity0lstm_661_while_lstm_661_while_maximum_iterations^lstm_661/while/NoOp*
T0*
_output_shapes
: t
lstm_661/while/Identity_2Identitylstm_661/while/add:z:0^lstm_661/while/NoOp*
T0*
_output_shapes
: �
lstm_661/while/Identity_3IdentityClstm_661/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_661/while/NoOp*
T0*
_output_shapes
: �
lstm_661/while/Identity_4Identity&lstm_661/while/lstm_cell_622/mul_2:z:0^lstm_661/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_661/while/Identity_5Identity&lstm_661/while/lstm_cell_622/add_1:z:0^lstm_661/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_661/while/NoOpNoOp4^lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp3^lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp5^lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_661_while_identity lstm_661/while/Identity:output:0"?
lstm_661_while_identity_1"lstm_661/while/Identity_1:output:0"?
lstm_661_while_identity_2"lstm_661/while/Identity_2:output:0"?
lstm_661_while_identity_3"lstm_661/while/Identity_3:output:0"?
lstm_661_while_identity_4"lstm_661/while/Identity_4:output:0"?
lstm_661_while_identity_5"lstm_661/while/Identity_5:output:0"T
'lstm_661_while_lstm_661_strided_slice_1)lstm_661_while_lstm_661_strided_slice_1_0"~
<lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource>lstm_661_while_lstm_cell_622_biasadd_readvariableop_resource_0"�
=lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource?lstm_661_while_lstm_cell_622_matmul_1_readvariableop_resource_0"|
;lstm_661_while_lstm_cell_622_matmul_readvariableop_resource=lstm_661_while_lstm_cell_622_matmul_readvariableop_resource_0"�
clstm_661_while_tensorarrayv2read_tensorlistgetitem_lstm_661_tensorarrayunstack_tensorlistfromtensorelstm_661_while_tensorarrayv2read_tensorlistgetitem_lstm_661_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp3lstm_661/while/lstm_cell_622/BiasAdd/ReadVariableOp2h
2lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp2lstm_661/while/lstm_cell_622/MatMul/ReadVariableOp2l
4lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp4lstm_661/while/lstm_cell_622/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3774006

inputs?
,lstm_cell_621_matmul_readvariableop_resource:	�A
.lstm_cell_621_matmul_1_readvariableop_resource:	d�<
-lstm_cell_621_biasadd_readvariableop_resource:	�
identity��$lstm_cell_621/BiasAdd/ReadVariableOp�#lstm_cell_621/MatMul/ReadVariableOp�%lstm_cell_621/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_621/MatMul/ReadVariableOpReadVariableOp,lstm_cell_621_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_621/MatMulMatMulstrided_slice_2:output:0+lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_621_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_621/MatMul_1MatMulzeros:output:0-lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_621/addAddV2lstm_cell_621/MatMul:product:0 lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_621_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_621/BiasAddBiasAddlstm_cell_621/add:z:0,lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_621/splitSplit&lstm_cell_621/split/split_dim:output:0lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_621/SigmoidSigmoidlstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_1Sigmoidlstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_621/mulMullstm_cell_621/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_621/ReluRelulstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_1Mullstm_cell_621/Sigmoid:y:0 lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_621/add_1AddV2lstm_cell_621/mul:z:0lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_621/Sigmoid_2Sigmoidlstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_621/Relu_1Relulstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_621/mul_2Mullstm_cell_621/Sigmoid_2:y:0"lstm_cell_621/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_621_matmul_readvariableop_resource.lstm_cell_621_matmul_1_readvariableop_resource-lstm_cell_621_biasadd_readvariableop_resource*
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
while_body_3773922*
condR
while_cond_3773921*K
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
NoOpNoOp%^lstm_cell_621/BiasAdd/ReadVariableOp$^lstm_cell_621/MatMul/ReadVariableOp&^lstm_cell_621/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_621/BiasAdd/ReadVariableOp$lstm_cell_621/BiasAdd/ReadVariableOp2J
#lstm_cell_621/MatMul/ReadVariableOp#lstm_cell_621/MatMul/ReadVariableOp2N
%lstm_cell_621/MatMul_1/ReadVariableOp%lstm_cell_621/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
lstm_662_while_cond_3773442.
*lstm_662_while_lstm_662_while_loop_counter4
0lstm_662_while_lstm_662_while_maximum_iterations
lstm_662_while_placeholder 
lstm_662_while_placeholder_1 
lstm_662_while_placeholder_2 
lstm_662_while_placeholder_30
,lstm_662_while_less_lstm_662_strided_slice_1G
Clstm_662_while_lstm_662_while_cond_3773442___redundant_placeholder0G
Clstm_662_while_lstm_662_while_cond_3773442___redundant_placeholder1G
Clstm_662_while_lstm_662_while_cond_3773442___redundant_placeholder2G
Clstm_662_while_lstm_662_while_cond_3773442___redundant_placeholder3
lstm_662_while_identity
�
lstm_662/while/LessLesslstm_662_while_placeholder,lstm_662_while_less_lstm_662_strided_slice_1*
T0*
_output_shapes
: ]
lstm_662/while/IdentityIdentitylstm_662/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_662_while_identity lstm_662/while/Identity:output:0*(
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
+__inference_dense_220_layer_call_fn_3775390

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
F__inference_dense_220_layer_call_and_return_conditional_losses_3771882o
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
�
/__inference_lstm_cell_622_layer_call_fn_3775515

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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3770782o
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
�

�
lstm_661_while_cond_3773303.
*lstm_661_while_lstm_661_while_loop_counter4
0lstm_661_while_lstm_661_while_maximum_iterations
lstm_661_while_placeholder 
lstm_661_while_placeholder_1 
lstm_661_while_placeholder_2 
lstm_661_while_placeholder_30
,lstm_661_while_less_lstm_661_strided_slice_1G
Clstm_661_while_lstm_661_while_cond_3773303___redundant_placeholder0G
Clstm_661_while_lstm_661_while_cond_3773303___redundant_placeholder1G
Clstm_661_while_lstm_661_while_cond_3773303___redundant_placeholder2G
Clstm_661_while_lstm_661_while_cond_3773303___redundant_placeholder3
lstm_661_while_identity
�
lstm_661/while/LessLesslstm_661_while_placeholder,lstm_661_while_less_lstm_661_strided_slice_1*
T0*
_output_shapes
: ]
lstm_661/while/IdentityIdentitylstm_661/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_661_while_identity lstm_661/while/Identity:output:0*(
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
while_body_3773779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_621_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_621_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_621_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_621_matmul_readvariableop_resource:	�G
4while_lstm_cell_621_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_621_biasadd_readvariableop_resource:	���*while/lstm_cell_621/BiasAdd/ReadVariableOp�)while/lstm_cell_621/MatMul/ReadVariableOp�+while/lstm_cell_621/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_621/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_621_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_621/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_621_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_621/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_621/addAddV2$while/lstm_cell_621/MatMul:product:0&while/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_621_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_621/BiasAddBiasAddwhile/lstm_cell_621/add:z:02while/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_621/splitSplit,while/lstm_cell_621/split/split_dim:output:0$while/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_621/SigmoidSigmoid"while/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_1Sigmoid"while/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mulMul!while/lstm_cell_621/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_621/ReluRelu"while/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_1Mulwhile/lstm_cell_621/Sigmoid:y:0&while/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/add_1AddV2while/lstm_cell_621/mul:z:0while/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_2Sigmoid"while/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_621/Relu_1Reluwhile/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_2Mul!while/lstm_cell_621/Sigmoid_2:y:0(while/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_621/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_621/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_621/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_621/BiasAdd/ReadVariableOp*^while/lstm_cell_621/MatMul/ReadVariableOp,^while/lstm_cell_621/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_621_biasadd_readvariableop_resource5while_lstm_cell_621_biasadd_readvariableop_resource_0"n
4while_lstm_cell_621_matmul_1_readvariableop_resource6while_lstm_cell_621_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_621_matmul_readvariableop_resource4while_lstm_cell_621_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_621/BiasAdd/ReadVariableOp*while/lstm_cell_621/BiasAdd/ReadVariableOp2V
)while/lstm_cell_621/MatMul/ReadVariableOp)while/lstm_cell_621/MatMul/ReadVariableOp2Z
+while/lstm_cell_621/MatMul_1/ReadVariableOp+while/lstm_cell_621/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3775564

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
�J
�
E__inference_lstm_662_layer_call_and_return_conditional_losses_3772080

inputs>
,lstm_cell_623_matmul_readvariableop_resource:2(@
.lstm_cell_623_matmul_1_readvariableop_resource:
(;
-lstm_cell_623_biasadd_readvariableop_resource:(
identity��$lstm_cell_623/BiasAdd/ReadVariableOp�#lstm_cell_623/MatMul/ReadVariableOp�%lstm_cell_623/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_623/MatMul/ReadVariableOpReadVariableOp,lstm_cell_623_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_623/MatMulMatMulstrided_slice_2:output:0+lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_623_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_623/MatMul_1MatMulzeros:output:0-lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_623/addAddV2lstm_cell_623/MatMul:product:0 lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_623_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_623/BiasAddBiasAddlstm_cell_623/add:z:0,lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_623/splitSplit&lstm_cell_623/split/split_dim:output:0lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_623/SigmoidSigmoidlstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_1Sigmoidlstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_623/mulMullstm_cell_623/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_623/ReluRelulstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_1Mullstm_cell_623/Sigmoid:y:0 lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_623/add_1AddV2lstm_cell_623/mul:z:0lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_2Sigmoidlstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_623/Relu_1Relulstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_2Mullstm_cell_623/Sigmoid_2:y:0"lstm_cell_623/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_623_matmul_readvariableop_resource.lstm_cell_623_matmul_1_readvariableop_resource-lstm_cell_623_biasadd_readvariableop_resource*
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
while_body_3771996*
condR
while_cond_3771995*K
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
NoOpNoOp%^lstm_cell_623/BiasAdd/ReadVariableOp$^lstm_cell_623/MatMul/ReadVariableOp&^lstm_cell_623/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_623/BiasAdd/ReadVariableOp$lstm_cell_623/BiasAdd/ReadVariableOp2J
#lstm_cell_623/MatMul/ReadVariableOp#lstm_cell_623/MatMul/ReadVariableOp2N
%lstm_cell_623/MatMul_1/ReadVariableOp%lstm_cell_623/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3775466

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
0__inference_sequential_220_layer_call_fn_3771914
lstm_660_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_660_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_220_layer_call_and_return_conditional_losses_3771889o
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
_user_specified_namelstm_660_input
�J
�
E__inference_lstm_662_layer_call_and_return_conditional_losses_3775238

inputs>
,lstm_cell_623_matmul_readvariableop_resource:2(@
.lstm_cell_623_matmul_1_readvariableop_resource:
(;
-lstm_cell_623_biasadd_readvariableop_resource:(
identity��$lstm_cell_623/BiasAdd/ReadVariableOp�#lstm_cell_623/MatMul/ReadVariableOp�%lstm_cell_623/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_623/MatMul/ReadVariableOpReadVariableOp,lstm_cell_623_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_623/MatMulMatMulstrided_slice_2:output:0+lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_623_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_623/MatMul_1MatMulzeros:output:0-lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_623/addAddV2lstm_cell_623/MatMul:product:0 lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_623_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_623/BiasAddBiasAddlstm_cell_623/add:z:0,lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_623/splitSplit&lstm_cell_623/split/split_dim:output:0lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_623/SigmoidSigmoidlstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_1Sigmoidlstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_623/mulMullstm_cell_623/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_623/ReluRelulstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_1Mullstm_cell_623/Sigmoid:y:0 lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_623/add_1AddV2lstm_cell_623/mul:z:0lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_623/Sigmoid_2Sigmoidlstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_623/Relu_1Relulstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_623/mul_2Mullstm_cell_623/Sigmoid_2:y:0"lstm_cell_623/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_623_matmul_readvariableop_resource.lstm_cell_623_matmul_1_readvariableop_resource-lstm_cell_623_biasadd_readvariableop_resource*
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
while_body_3775154*
condR
while_cond_3775153*K
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
NoOpNoOp%^lstm_cell_623/BiasAdd/ReadVariableOp$^lstm_cell_623/MatMul/ReadVariableOp&^lstm_cell_623/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_623/BiasAdd/ReadVariableOp$lstm_cell_623/BiasAdd/ReadVariableOp2J
#lstm_cell_623/MatMul/ReadVariableOp#lstm_cell_623/MatMul/ReadVariableOp2N
%lstm_cell_623/MatMul_1/ReadVariableOp%lstm_cell_623/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
*sequential_220_lstm_661_while_cond_3770135L
Hsequential_220_lstm_661_while_sequential_220_lstm_661_while_loop_counterR
Nsequential_220_lstm_661_while_sequential_220_lstm_661_while_maximum_iterations-
)sequential_220_lstm_661_while_placeholder/
+sequential_220_lstm_661_while_placeholder_1/
+sequential_220_lstm_661_while_placeholder_2/
+sequential_220_lstm_661_while_placeholder_3N
Jsequential_220_lstm_661_while_less_sequential_220_lstm_661_strided_slice_1e
asequential_220_lstm_661_while_sequential_220_lstm_661_while_cond_3770135___redundant_placeholder0e
asequential_220_lstm_661_while_sequential_220_lstm_661_while_cond_3770135___redundant_placeholder1e
asequential_220_lstm_661_while_sequential_220_lstm_661_while_cond_3770135___redundant_placeholder2e
asequential_220_lstm_661_while_sequential_220_lstm_661_while_cond_3770135___redundant_placeholder3*
&sequential_220_lstm_661_while_identity
�
"sequential_220/lstm_661/while/LessLess)sequential_220_lstm_661_while_placeholderJsequential_220_lstm_661_while_less_sequential_220_lstm_661_strided_slice_1*
T0*
_output_shapes
: {
&sequential_220/lstm_661/while/IdentityIdentity&sequential_220/lstm_661/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_220_lstm_661_while_identity/sequential_220/lstm_661/while/Identity:output:0*(
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
lstm_662_while_cond_3773015.
*lstm_662_while_lstm_662_while_loop_counter4
0lstm_662_while_lstm_662_while_maximum_iterations
lstm_662_while_placeholder 
lstm_662_while_placeholder_1 
lstm_662_while_placeholder_2 
lstm_662_while_placeholder_30
,lstm_662_while_less_lstm_662_strided_slice_1G
Clstm_662_while_lstm_662_while_cond_3773015___redundant_placeholder0G
Clstm_662_while_lstm_662_while_cond_3773015___redundant_placeholder1G
Clstm_662_while_lstm_662_while_cond_3773015___redundant_placeholder2G
Clstm_662_while_lstm_662_while_cond_3773015___redundant_placeholder3
lstm_662_while_identity
�
lstm_662/while/LessLesslstm_662_while_placeholder,lstm_662_while_less_lstm_662_strided_slice_1*
T0*
_output_shapes
: ]
lstm_662/while/IdentityIdentitylstm_662/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_662_while_identity lstm_662/while/Identity:output:0*(
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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3775498

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
�
*__inference_lstm_662_layer_call_fn_3774787
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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3771406o
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
0__inference_sequential_220_layer_call_fn_3772530
lstm_660_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_660_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_220_layer_call_and_return_conditional_losses_3772478o
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
_user_specified_namelstm_660_input
�
�
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3770432

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
�J
�
E__inference_lstm_661_layer_call_and_return_conditional_losses_3771714

inputs?
,lstm_cell_622_matmul_readvariableop_resource:	d�A
.lstm_cell_622_matmul_1_readvariableop_resource:	2�<
-lstm_cell_622_biasadd_readvariableop_resource:	�
identity��$lstm_cell_622/BiasAdd/ReadVariableOp�#lstm_cell_622/MatMul/ReadVariableOp�%lstm_cell_622/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_622/MatMul/ReadVariableOpReadVariableOp,lstm_cell_622_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_622/MatMulMatMulstrided_slice_2:output:0+lstm_cell_622/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_622/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_622_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_622/MatMul_1MatMulzeros:output:0-lstm_cell_622/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_622/addAddV2lstm_cell_622/MatMul:product:0 lstm_cell_622/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_622/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_622_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_622/BiasAddBiasAddlstm_cell_622/add:z:0,lstm_cell_622/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_622/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_622/splitSplit&lstm_cell_622/split/split_dim:output:0lstm_cell_622/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_622/SigmoidSigmoidlstm_cell_622/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_1Sigmoidlstm_cell_622/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_622/mulMullstm_cell_622/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_622/ReluRelulstm_cell_622/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_1Mullstm_cell_622/Sigmoid:y:0 lstm_cell_622/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_622/add_1AddV2lstm_cell_622/mul:z:0lstm_cell_622/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_622/Sigmoid_2Sigmoidlstm_cell_622/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_622/Relu_1Relulstm_cell_622/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_622/mul_2Mullstm_cell_622/Sigmoid_2:y:0"lstm_cell_622/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_622_matmul_readvariableop_resource.lstm_cell_622_matmul_1_readvariableop_resource-lstm_cell_622_biasadd_readvariableop_resource*
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
while_body_3771630*
condR
while_cond_3771629*K
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
NoOpNoOp%^lstm_cell_622/BiasAdd/ReadVariableOp$^lstm_cell_622/MatMul/ReadVariableOp&^lstm_cell_622/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_622/BiasAdd/ReadVariableOp$lstm_cell_622/BiasAdd/ReadVariableOp2J
#lstm_cell_622/MatMul/ReadVariableOp#lstm_cell_622/MatMul/ReadVariableOp2N
%lstm_cell_622/MatMul_1/ReadVariableOp%lstm_cell_622/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
E__inference_lstm_660_layer_call_and_return_conditional_losses_3770515

inputs(
lstm_cell_621_3770433:	�(
lstm_cell_621_3770435:	d�$
lstm_cell_621_3770437:	�
identity��%lstm_cell_621/StatefulPartitionedCall�while;
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
%lstm_cell_621/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_621_3770433lstm_cell_621_3770435lstm_cell_621_3770437*
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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3770432n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_621_3770433lstm_cell_621_3770435lstm_cell_621_3770437*
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
while_body_3770446*
condR
while_cond_3770445*K
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
NoOpNoOp&^lstm_cell_621/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_621/StatefulPartitionedCall%lstm_cell_621/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�8
�
while_body_3773636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_621_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_621_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_621_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_621_matmul_readvariableop_resource:	�G
4while_lstm_cell_621_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_621_biasadd_readvariableop_resource:	���*while/lstm_cell_621/BiasAdd/ReadVariableOp�)while/lstm_cell_621/MatMul/ReadVariableOp�+while/lstm_cell_621/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_621/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_621_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_621/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_621_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_621/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_621/addAddV2$while/lstm_cell_621/MatMul:product:0&while/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_621_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_621/BiasAddBiasAddwhile/lstm_cell_621/add:z:02while/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_621/splitSplit,while/lstm_cell_621/split/split_dim:output:0$while/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_621/SigmoidSigmoid"while/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_1Sigmoid"while/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mulMul!while/lstm_cell_621/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_621/ReluRelu"while/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_1Mulwhile/lstm_cell_621/Sigmoid:y:0&while/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/add_1AddV2while/lstm_cell_621/mul:z:0while/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_621/Sigmoid_2Sigmoid"while/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_621/Relu_1Reluwhile/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_621/mul_2Mul!while/lstm_cell_621/Sigmoid_2:y:0(while/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_621/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_621/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_621/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_621/BiasAdd/ReadVariableOp*^while/lstm_cell_621/MatMul/ReadVariableOp,^while/lstm_cell_621/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_621_biasadd_readvariableop_resource5while_lstm_cell_621_biasadd_readvariableop_resource_0"n
4while_lstm_cell_621_matmul_1_readvariableop_resource6while_lstm_cell_621_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_621_matmul_readvariableop_resource4while_lstm_cell_621_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_621/BiasAdd/ReadVariableOp*while/lstm_cell_621/BiasAdd/ReadVariableOp2V
)while/lstm_cell_621/MatMul/ReadVariableOp)while/lstm_cell_621/MatMul/ReadVariableOp2Z
+while/lstm_cell_621/MatMul_1/ReadVariableOp+while/lstm_cell_621/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3771995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3771995___redundant_placeholder05
1while_while_cond_3771995___redundant_placeholder15
1while_while_cond_3771995___redundant_placeholder25
1while_while_cond_3771995___redundant_placeholder3
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
�
E__inference_lstm_662_layer_call_and_return_conditional_losses_3771215

inputs'
lstm_cell_623_3771133:2('
lstm_cell_623_3771135:
(#
lstm_cell_623_3771137:(
identity��%lstm_cell_623/StatefulPartitionedCall�while;
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
%lstm_cell_623/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_623_3771133lstm_cell_623_3771135lstm_cell_623_3771137*
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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3771132n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_623_3771133lstm_cell_623_3771135lstm_cell_623_3771137*
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
while_body_3771146*
condR
while_cond_3771145*K
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
NoOpNoOp&^lstm_cell_623/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_623/StatefulPartitionedCall%lstm_cell_623/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
while_cond_3773921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3773921___redundant_placeholder05
1while_while_cond_3773921___redundant_placeholder15
1while_while_cond_3773921___redundant_placeholder25
1while_while_cond_3773921___redundant_placeholder3
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
while_body_3775154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_623_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_623_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_623_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_623_matmul_readvariableop_resource:2(F
4while_lstm_cell_623_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_623_biasadd_readvariableop_resource:(��*while/lstm_cell_623/BiasAdd/ReadVariableOp�)while/lstm_cell_623/MatMul/ReadVariableOp�+while/lstm_cell_623/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_623/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_623_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_623/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_623_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_623/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_623/addAddV2$while/lstm_cell_623/MatMul:product:0&while/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_623_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_623/BiasAddBiasAddwhile/lstm_cell_623/add:z:02while/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_623/splitSplit,while/lstm_cell_623/split/split_dim:output:0$while/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_623/SigmoidSigmoid"while/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_1Sigmoid"while/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mulMul!while/lstm_cell_623/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_623/ReluRelu"while/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_1Mulwhile/lstm_cell_623/Sigmoid:y:0&while/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/add_1AddV2while/lstm_cell_623/mul:z:0while/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_2Sigmoid"while/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_623/Relu_1Reluwhile/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_2Mul!while/lstm_cell_623/Sigmoid_2:y:0(while/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_623/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_623/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_623/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_623/BiasAdd/ReadVariableOp*^while/lstm_cell_623/MatMul/ReadVariableOp,^while/lstm_cell_623/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_623_biasadd_readvariableop_resource5while_lstm_cell_623_biasadd_readvariableop_resource_0"n
4while_lstm_cell_623_matmul_1_readvariableop_resource6while_lstm_cell_623_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_623_matmul_readvariableop_resource4while_lstm_cell_623_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_623/BiasAdd/ReadVariableOp*while/lstm_cell_623/BiasAdd/ReadVariableOp2V
)while/lstm_cell_623/MatMul/ReadVariableOp)while/lstm_cell_623/MatMul/ReadVariableOp2Z
+while/lstm_cell_623/MatMul_1/ReadVariableOp+while/lstm_cell_623/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_220_layer_call_fn_3772652

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
K__inference_sequential_220_layer_call_and_return_conditional_losses_3771889o
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
while_body_3771996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_623_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_623_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_623_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_623_matmul_readvariableop_resource:2(F
4while_lstm_cell_623_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_623_biasadd_readvariableop_resource:(��*while/lstm_cell_623/BiasAdd/ReadVariableOp�)while/lstm_cell_623/MatMul/ReadVariableOp�+while/lstm_cell_623/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_623/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_623_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_623/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_623_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_623/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_623/addAddV2$while/lstm_cell_623/MatMul:product:0&while/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_623_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_623/BiasAddBiasAddwhile/lstm_cell_623/add:z:02while/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_623/splitSplit,while/lstm_cell_623/split/split_dim:output:0$while/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_623/SigmoidSigmoid"while/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_1Sigmoid"while/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mulMul!while/lstm_cell_623/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_623/ReluRelu"while/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_1Mulwhile/lstm_cell_623/Sigmoid:y:0&while/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/add_1AddV2while/lstm_cell_623/mul:z:0while/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_2Sigmoid"while/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_623/Relu_1Reluwhile/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_2Mul!while/lstm_cell_623/Sigmoid_2:y:0(while/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_623/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_623/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_623/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_623/BiasAdd/ReadVariableOp*^while/lstm_cell_623/MatMul/ReadVariableOp,^while/lstm_cell_623/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_623_biasadd_readvariableop_resource5while_lstm_cell_623_biasadd_readvariableop_resource_0"n
4while_lstm_cell_623_matmul_1_readvariableop_resource6while_lstm_cell_623_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_623_matmul_readvariableop_resource4while_lstm_cell_623_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_623/BiasAdd/ReadVariableOp*while/lstm_cell_623/BiasAdd/ReadVariableOp2V
)while/lstm_cell_623/MatMul/ReadVariableOp)while/lstm_cell_623/MatMul/ReadVariableOp2Z
+while/lstm_cell_623/MatMul_1/ReadVariableOp+while/lstm_cell_623/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_3772625
lstm_660_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_660_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3770365o
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
_user_specified_namelstm_660_input
�8
�
while_body_3774868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_623_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_623_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_623_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_623_matmul_readvariableop_resource:2(F
4while_lstm_cell_623_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_623_biasadd_readvariableop_resource:(��*while/lstm_cell_623/BiasAdd/ReadVariableOp�)while/lstm_cell_623/MatMul/ReadVariableOp�+while/lstm_cell_623/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_623/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_623_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_623/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_623/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_623/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_623_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_623/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_623/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_623/addAddV2$while/lstm_cell_623/MatMul:product:0&while/lstm_cell_623/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_623/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_623_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_623/BiasAddBiasAddwhile/lstm_cell_623/add:z:02while/lstm_cell_623/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_623/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_623/splitSplit,while/lstm_cell_623/split/split_dim:output:0$while/lstm_cell_623/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_623/SigmoidSigmoid"while/lstm_cell_623/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_1Sigmoid"while/lstm_cell_623/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mulMul!while/lstm_cell_623/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_623/ReluRelu"while/lstm_cell_623/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_1Mulwhile/lstm_cell_623/Sigmoid:y:0&while/lstm_cell_623/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/add_1AddV2while/lstm_cell_623/mul:z:0while/lstm_cell_623/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_623/Sigmoid_2Sigmoid"while/lstm_cell_623/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_623/Relu_1Reluwhile/lstm_cell_623/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_623/mul_2Mul!while/lstm_cell_623/Sigmoid_2:y:0(while/lstm_cell_623/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_623/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_623/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_623/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_623/BiasAdd/ReadVariableOp*^while/lstm_cell_623/MatMul/ReadVariableOp,^while/lstm_cell_623/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_623_biasadd_readvariableop_resource5while_lstm_cell_623_biasadd_readvariableop_resource_0"n
4while_lstm_cell_623_matmul_1_readvariableop_resource6while_lstm_cell_623_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_623_matmul_readvariableop_resource4while_lstm_cell_623_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_623/BiasAdd/ReadVariableOp*while/lstm_cell_623/BiasAdd/ReadVariableOp2V
)while/lstm_cell_623/MatMul/ReadVariableOp)while/lstm_cell_623/MatMul/ReadVariableOp2Z
+while/lstm_cell_623/MatMul_1/ReadVariableOp+while/lstm_cell_623/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_660_layer_call_fn_3773566

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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3771564s
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
�
*__inference_lstm_660_layer_call_fn_3773555
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3770706|
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
�
*sequential_220_lstm_660_while_cond_3769996L
Hsequential_220_lstm_660_while_sequential_220_lstm_660_while_loop_counterR
Nsequential_220_lstm_660_while_sequential_220_lstm_660_while_maximum_iterations-
)sequential_220_lstm_660_while_placeholder/
+sequential_220_lstm_660_while_placeholder_1/
+sequential_220_lstm_660_while_placeholder_2/
+sequential_220_lstm_660_while_placeholder_3N
Jsequential_220_lstm_660_while_less_sequential_220_lstm_660_strided_slice_1e
asequential_220_lstm_660_while_sequential_220_lstm_660_while_cond_3769996___redundant_placeholder0e
asequential_220_lstm_660_while_sequential_220_lstm_660_while_cond_3769996___redundant_placeholder1e
asequential_220_lstm_660_while_sequential_220_lstm_660_while_cond_3769996___redundant_placeholder2e
asequential_220_lstm_660_while_sequential_220_lstm_660_while_cond_3769996___redundant_placeholder3*
&sequential_220_lstm_660_while_identity
�
"sequential_220/lstm_660/while/LessLess)sequential_220_lstm_660_while_placeholderJsequential_220_lstm_660_while_less_sequential_220_lstm_660_strided_slice_1*
T0*
_output_shapes
: {
&sequential_220/lstm_660/while/IdentityIdentity&sequential_220/lstm_660/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_220_lstm_660_while_identity/sequential_220/lstm_660/while/Identity:output:0*(
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
*sequential_220_lstm_660_while_body_3769997L
Hsequential_220_lstm_660_while_sequential_220_lstm_660_while_loop_counterR
Nsequential_220_lstm_660_while_sequential_220_lstm_660_while_maximum_iterations-
)sequential_220_lstm_660_while_placeholder/
+sequential_220_lstm_660_while_placeholder_1/
+sequential_220_lstm_660_while_placeholder_2/
+sequential_220_lstm_660_while_placeholder_3K
Gsequential_220_lstm_660_while_sequential_220_lstm_660_strided_slice_1_0�
�sequential_220_lstm_660_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_660_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_220_lstm_660_while_lstm_cell_621_matmul_readvariableop_resource_0:	�a
Nsequential_220_lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource_0:	d�\
Msequential_220_lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource_0:	�*
&sequential_220_lstm_660_while_identity,
(sequential_220_lstm_660_while_identity_1,
(sequential_220_lstm_660_while_identity_2,
(sequential_220_lstm_660_while_identity_3,
(sequential_220_lstm_660_while_identity_4,
(sequential_220_lstm_660_while_identity_5I
Esequential_220_lstm_660_while_sequential_220_lstm_660_strided_slice_1�
�sequential_220_lstm_660_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_660_tensorarrayunstack_tensorlistfromtensor]
Jsequential_220_lstm_660_while_lstm_cell_621_matmul_readvariableop_resource:	�_
Lsequential_220_lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource:	d�Z
Ksequential_220_lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource:	���Bsequential_220/lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp�Asequential_220/lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp�Csequential_220/lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp�
Osequential_220/lstm_660/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_220/lstm_660/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_220_lstm_660_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_660_tensorarrayunstack_tensorlistfromtensor_0)sequential_220_lstm_660_while_placeholderXsequential_220/lstm_660/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Asequential_220/lstm_660/while/lstm_cell_621/MatMul/ReadVariableOpReadVariableOpLsequential_220_lstm_660_while_lstm_cell_621_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
2sequential_220/lstm_660/while/lstm_cell_621/MatMulMatMulHsequential_220/lstm_660/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_220/lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_220/lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOpReadVariableOpNsequential_220_lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
4sequential_220/lstm_660/while/lstm_cell_621/MatMul_1MatMul+sequential_220_lstm_660_while_placeholder_2Ksequential_220/lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_220/lstm_660/while/lstm_cell_621/addAddV2<sequential_220/lstm_660/while/lstm_cell_621/MatMul:product:0>sequential_220/lstm_660/while/lstm_cell_621/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_220/lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOpReadVariableOpMsequential_220_lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_220/lstm_660/while/lstm_cell_621/BiasAddBiasAdd3sequential_220/lstm_660/while/lstm_cell_621/add:z:0Jsequential_220/lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_220/lstm_660/while/lstm_cell_621/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_220/lstm_660/while/lstm_cell_621/splitSplitDsequential_220/lstm_660/while/lstm_cell_621/split/split_dim:output:0<sequential_220/lstm_660/while/lstm_cell_621/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
3sequential_220/lstm_660/while/lstm_cell_621/SigmoidSigmoid:sequential_220/lstm_660/while/lstm_cell_621/split:output:0*
T0*'
_output_shapes
:���������d�
5sequential_220/lstm_660/while/lstm_cell_621/Sigmoid_1Sigmoid:sequential_220/lstm_660/while/lstm_cell_621/split:output:1*
T0*'
_output_shapes
:���������d�
/sequential_220/lstm_660/while/lstm_cell_621/mulMul9sequential_220/lstm_660/while/lstm_cell_621/Sigmoid_1:y:0+sequential_220_lstm_660_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential_220/lstm_660/while/lstm_cell_621/ReluRelu:sequential_220/lstm_660/while/lstm_cell_621/split:output:2*
T0*'
_output_shapes
:���������d�
1sequential_220/lstm_660/while/lstm_cell_621/mul_1Mul7sequential_220/lstm_660/while/lstm_cell_621/Sigmoid:y:0>sequential_220/lstm_660/while/lstm_cell_621/Relu:activations:0*
T0*'
_output_shapes
:���������d�
1sequential_220/lstm_660/while/lstm_cell_621/add_1AddV23sequential_220/lstm_660/while/lstm_cell_621/mul:z:05sequential_220/lstm_660/while/lstm_cell_621/mul_1:z:0*
T0*'
_output_shapes
:���������d�
5sequential_220/lstm_660/while/lstm_cell_621/Sigmoid_2Sigmoid:sequential_220/lstm_660/while/lstm_cell_621/split:output:3*
T0*'
_output_shapes
:���������d�
2sequential_220/lstm_660/while/lstm_cell_621/Relu_1Relu5sequential_220/lstm_660/while/lstm_cell_621/add_1:z:0*
T0*'
_output_shapes
:���������d�
1sequential_220/lstm_660/while/lstm_cell_621/mul_2Mul9sequential_220/lstm_660/while/lstm_cell_621/Sigmoid_2:y:0@sequential_220/lstm_660/while/lstm_cell_621/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Bsequential_220/lstm_660/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_220_lstm_660_while_placeholder_1)sequential_220_lstm_660_while_placeholder5sequential_220/lstm_660/while/lstm_cell_621/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_220/lstm_660/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_220/lstm_660/while/addAddV2)sequential_220_lstm_660_while_placeholder,sequential_220/lstm_660/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_220/lstm_660/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_220/lstm_660/while/add_1AddV2Hsequential_220_lstm_660_while_sequential_220_lstm_660_while_loop_counter.sequential_220/lstm_660/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_220/lstm_660/while/IdentityIdentity'sequential_220/lstm_660/while/add_1:z:0#^sequential_220/lstm_660/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_660/while/Identity_1IdentityNsequential_220_lstm_660_while_sequential_220_lstm_660_while_maximum_iterations#^sequential_220/lstm_660/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_660/while/Identity_2Identity%sequential_220/lstm_660/while/add:z:0#^sequential_220/lstm_660/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_660/while/Identity_3IdentityRsequential_220/lstm_660/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_220/lstm_660/while/NoOp*
T0*
_output_shapes
: �
(sequential_220/lstm_660/while/Identity_4Identity5sequential_220/lstm_660/while/lstm_cell_621/mul_2:z:0#^sequential_220/lstm_660/while/NoOp*
T0*'
_output_shapes
:���������d�
(sequential_220/lstm_660/while/Identity_5Identity5sequential_220/lstm_660/while/lstm_cell_621/add_1:z:0#^sequential_220/lstm_660/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential_220/lstm_660/while/NoOpNoOpC^sequential_220/lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOpB^sequential_220/lstm_660/while/lstm_cell_621/MatMul/ReadVariableOpD^sequential_220/lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_220_lstm_660_while_identity/sequential_220/lstm_660/while/Identity:output:0"]
(sequential_220_lstm_660_while_identity_11sequential_220/lstm_660/while/Identity_1:output:0"]
(sequential_220_lstm_660_while_identity_21sequential_220/lstm_660/while/Identity_2:output:0"]
(sequential_220_lstm_660_while_identity_31sequential_220/lstm_660/while/Identity_3:output:0"]
(sequential_220_lstm_660_while_identity_41sequential_220/lstm_660/while/Identity_4:output:0"]
(sequential_220_lstm_660_while_identity_51sequential_220/lstm_660/while/Identity_5:output:0"�
Ksequential_220_lstm_660_while_lstm_cell_621_biasadd_readvariableop_resourceMsequential_220_lstm_660_while_lstm_cell_621_biasadd_readvariableop_resource_0"�
Lsequential_220_lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resourceNsequential_220_lstm_660_while_lstm_cell_621_matmul_1_readvariableop_resource_0"�
Jsequential_220_lstm_660_while_lstm_cell_621_matmul_readvariableop_resourceLsequential_220_lstm_660_while_lstm_cell_621_matmul_readvariableop_resource_0"�
Esequential_220_lstm_660_while_sequential_220_lstm_660_strided_slice_1Gsequential_220_lstm_660_while_sequential_220_lstm_660_strided_slice_1_0"�
�sequential_220_lstm_660_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_660_tensorarrayunstack_tensorlistfromtensor�sequential_220_lstm_660_while_tensorarrayv2read_tensorlistgetitem_sequential_220_lstm_660_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
Bsequential_220/lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOpBsequential_220/lstm_660/while/lstm_cell_621/BiasAdd/ReadVariableOp2�
Asequential_220/lstm_660/while/lstm_cell_621/MatMul/ReadVariableOpAsequential_220/lstm_660/while/lstm_cell_621/MatMul/ReadVariableOp2�
Csequential_220/lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOpCsequential_220/lstm_660/while/lstm_cell_621/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_660_input;
 serving_default_lstm_660_input:0���������=
	dense_2200
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
2dense_220/kernel
:2dense_220/bias
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
0:.	�2lstm_660/lstm_cell_660/kernel
::8	d�2'lstm_660/lstm_cell_660/recurrent_kernel
*:(�2lstm_660/lstm_cell_660/bias
0:.	d�2lstm_661/lstm_cell_661/kernel
::8	2�2'lstm_661/lstm_cell_661/recurrent_kernel
*:(�2lstm_661/lstm_cell_661/bias
/:-2(2lstm_662/lstm_cell_662/kernel
9:7
(2'lstm_662/lstm_cell_662/recurrent_kernel
):'(2lstm_662/lstm_cell_662/bias
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
2Adam/dense_220/kernel/m
!:2Adam/dense_220/bias/m
5:3	�2$Adam/lstm_660/lstm_cell_660/kernel/m
?:=	d�2.Adam/lstm_660/lstm_cell_660/recurrent_kernel/m
/:-�2"Adam/lstm_660/lstm_cell_660/bias/m
5:3	d�2$Adam/lstm_661/lstm_cell_661/kernel/m
?:=	2�2.Adam/lstm_661/lstm_cell_661/recurrent_kernel/m
/:-�2"Adam/lstm_661/lstm_cell_661/bias/m
4:22(2$Adam/lstm_662/lstm_cell_662/kernel/m
>:<
(2.Adam/lstm_662/lstm_cell_662/recurrent_kernel/m
.:,(2"Adam/lstm_662/lstm_cell_662/bias/m
':%
2Adam/dense_220/kernel/v
!:2Adam/dense_220/bias/v
5:3	�2$Adam/lstm_660/lstm_cell_660/kernel/v
?:=	d�2.Adam/lstm_660/lstm_cell_660/recurrent_kernel/v
/:-�2"Adam/lstm_660/lstm_cell_660/bias/v
5:3	d�2$Adam/lstm_661/lstm_cell_661/kernel/v
?:=	2�2.Adam/lstm_661/lstm_cell_661/recurrent_kernel/v
/:-�2"Adam/lstm_661/lstm_cell_661/bias/v
4:22(2$Adam/lstm_662/lstm_cell_662/kernel/v
>:<
(2.Adam/lstm_662/lstm_cell_662/recurrent_kernel/v
.:,(2"Adam/lstm_662/lstm_cell_662/bias/v
�2�
0__inference_sequential_220_layer_call_fn_3771914
0__inference_sequential_220_layer_call_fn_3772652
0__inference_sequential_220_layer_call_fn_3772679
0__inference_sequential_220_layer_call_fn_3772530�
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
K__inference_sequential_220_layer_call_and_return_conditional_losses_3773106
K__inference_sequential_220_layer_call_and_return_conditional_losses_3773533
K__inference_sequential_220_layer_call_and_return_conditional_losses_3772560
K__inference_sequential_220_layer_call_and_return_conditional_losses_3772590�
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
"__inference__wrapped_model_3770365lstm_660_input"�
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
*__inference_lstm_660_layer_call_fn_3773544
*__inference_lstm_660_layer_call_fn_3773555
*__inference_lstm_660_layer_call_fn_3773566
*__inference_lstm_660_layer_call_fn_3773577�
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3773720
E__inference_lstm_660_layer_call_and_return_conditional_losses_3773863
E__inference_lstm_660_layer_call_and_return_conditional_losses_3774006
E__inference_lstm_660_layer_call_and_return_conditional_losses_3774149�
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
*__inference_lstm_661_layer_call_fn_3774160
*__inference_lstm_661_layer_call_fn_3774171
*__inference_lstm_661_layer_call_fn_3774182
*__inference_lstm_661_layer_call_fn_3774193�
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774336
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774479
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774622
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774765�
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
*__inference_lstm_662_layer_call_fn_3774776
*__inference_lstm_662_layer_call_fn_3774787
*__inference_lstm_662_layer_call_fn_3774798
*__inference_lstm_662_layer_call_fn_3774809�
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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3774952
E__inference_lstm_662_layer_call_and_return_conditional_losses_3775095
E__inference_lstm_662_layer_call_and_return_conditional_losses_3775238
E__inference_lstm_662_layer_call_and_return_conditional_losses_3775381�
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
+__inference_dense_220_layer_call_fn_3775390�
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
F__inference_dense_220_layer_call_and_return_conditional_losses_3775400�
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
%__inference_signature_wrapper_3772625lstm_660_input"�
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
/__inference_lstm_cell_621_layer_call_fn_3775417
/__inference_lstm_cell_621_layer_call_fn_3775434�
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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3775466
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3775498�
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
/__inference_lstm_cell_622_layer_call_fn_3775515
/__inference_lstm_cell_622_layer_call_fn_3775532�
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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3775564
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3775596�
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
/__inference_lstm_cell_623_layer_call_fn_3775613
/__inference_lstm_cell_623_layer_call_fn_3775630�
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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3775662
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3775694�
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
"__inference__wrapped_model_3770365�-./012345!";�8
1�.
,�)
lstm_660_input���������
� "5�2
0
	dense_220#� 
	dense_220����������
F__inference_dense_220_layer_call_and_return_conditional_losses_3775400\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� ~
+__inference_dense_220_layer_call_fn_3775390O!"/�,
%�"
 �
inputs���������

� "�����������
E__inference_lstm_660_layer_call_and_return_conditional_losses_3773720�-./O�L
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3773863�-./O�L
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3774006q-./?�<
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
E__inference_lstm_660_layer_call_and_return_conditional_losses_3774149q-./?�<
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
*__inference_lstm_660_layer_call_fn_3773544}-./O�L
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
*__inference_lstm_660_layer_call_fn_3773555}-./O�L
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
*__inference_lstm_660_layer_call_fn_3773566d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
*__inference_lstm_660_layer_call_fn_3773577d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774336�012O�L
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774479�012O�L
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774622q012?�<
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
E__inference_lstm_661_layer_call_and_return_conditional_losses_3774765q012?�<
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
*__inference_lstm_661_layer_call_fn_3774160}012O�L
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
*__inference_lstm_661_layer_call_fn_3774171}012O�L
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
*__inference_lstm_661_layer_call_fn_3774182d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
*__inference_lstm_661_layer_call_fn_3774193d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
E__inference_lstm_662_layer_call_and_return_conditional_losses_3774952}345O�L
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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3775095}345O�L
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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3775238m345?�<
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
E__inference_lstm_662_layer_call_and_return_conditional_losses_3775381m345?�<
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
*__inference_lstm_662_layer_call_fn_3774776p345O�L
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
*__inference_lstm_662_layer_call_fn_3774787p345O�L
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
*__inference_lstm_662_layer_call_fn_3774798`345?�<
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
*__inference_lstm_662_layer_call_fn_3774809`345?�<
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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3775466�-./��}
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
J__inference_lstm_cell_621_layer_call_and_return_conditional_losses_3775498�-./��}
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
/__inference_lstm_cell_621_layer_call_fn_3775417�-./��}
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
/__inference_lstm_cell_621_layer_call_fn_3775434�-./��}
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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3775564�012��}
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
J__inference_lstm_cell_622_layer_call_and_return_conditional_losses_3775596�012��}
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
/__inference_lstm_cell_622_layer_call_fn_3775515�012��}
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
/__inference_lstm_cell_622_layer_call_fn_3775532�012��}
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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3775662�345��}
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
J__inference_lstm_cell_623_layer_call_and_return_conditional_losses_3775694�345��}
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
/__inference_lstm_cell_623_layer_call_fn_3775613�345��}
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
/__inference_lstm_cell_623_layer_call_fn_3775630�345��}
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
K__inference_sequential_220_layer_call_and_return_conditional_losses_3772560y-./012345!"C�@
9�6
,�)
lstm_660_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_220_layer_call_and_return_conditional_losses_3772590y-./012345!"C�@
9�6
,�)
lstm_660_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_220_layer_call_and_return_conditional_losses_3773106q-./012345!";�8
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
K__inference_sequential_220_layer_call_and_return_conditional_losses_3773533q-./012345!";�8
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
0__inference_sequential_220_layer_call_fn_3771914l-./012345!"C�@
9�6
,�)
lstm_660_input���������
p 

 
� "�����������
0__inference_sequential_220_layer_call_fn_3772530l-./012345!"C�@
9�6
,�)
lstm_660_input���������
p

 
� "�����������
0__inference_sequential_220_layer_call_fn_3772652d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
0__inference_sequential_220_layer_call_fn_3772679d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_3772625�-./012345!"M�J
� 
C�@
>
lstm_660_input,�)
lstm_660_input���������"5�2
0
	dense_220#� 
	dense_220���������
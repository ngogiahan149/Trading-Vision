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
dense_158/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_158/kernel
u
$dense_158/kernel/Read/ReadVariableOpReadVariableOpdense_158/kernel*
_output_shapes

:
*
dtype0
t
dense_158/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_158/bias
m
"dense_158/bias/Read/ReadVariableOpReadVariableOpdense_158/bias*
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
lstm_474/lstm_cell_474/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_474/lstm_cell_474/kernel
�
1lstm_474/lstm_cell_474/kernel/Read/ReadVariableOpReadVariableOplstm_474/lstm_cell_474/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_474/lstm_cell_474/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_474/lstm_cell_474/recurrent_kernel
�
;lstm_474/lstm_cell_474/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_474/lstm_cell_474/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_474/lstm_cell_474/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_474/lstm_cell_474/bias
�
/lstm_474/lstm_cell_474/bias/Read/ReadVariableOpReadVariableOplstm_474/lstm_cell_474/bias*
_output_shapes	
:�*
dtype0
�
lstm_475/lstm_cell_475/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_475/lstm_cell_475/kernel
�
1lstm_475/lstm_cell_475/kernel/Read/ReadVariableOpReadVariableOplstm_475/lstm_cell_475/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_475/lstm_cell_475/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_475/lstm_cell_475/recurrent_kernel
�
;lstm_475/lstm_cell_475/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_475/lstm_cell_475/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_475/lstm_cell_475/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_475/lstm_cell_475/bias
�
/lstm_475/lstm_cell_475/bias/Read/ReadVariableOpReadVariableOplstm_475/lstm_cell_475/bias*
_output_shapes	
:�*
dtype0
�
lstm_476/lstm_cell_476/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_476/lstm_cell_476/kernel
�
1lstm_476/lstm_cell_476/kernel/Read/ReadVariableOpReadVariableOplstm_476/lstm_cell_476/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_476/lstm_cell_476/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_476/lstm_cell_476/recurrent_kernel
�
;lstm_476/lstm_cell_476/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_476/lstm_cell_476/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_476/lstm_cell_476/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_476/lstm_cell_476/bias
�
/lstm_476/lstm_cell_476/bias/Read/ReadVariableOpReadVariableOplstm_476/lstm_cell_476/bias*
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
Adam/dense_158/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_158/kernel/m
�
+Adam/dense_158/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_158/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_158/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_158/bias/m
{
)Adam/dense_158/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_158/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_474/lstm_cell_474/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_474/lstm_cell_474/kernel/m
�
8Adam/lstm_474/lstm_cell_474/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_474/lstm_cell_474/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_474/lstm_cell_474/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_474/lstm_cell_474/recurrent_kernel/m
�
BAdam/lstm_474/lstm_cell_474/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_474/lstm_cell_474/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_474/lstm_cell_474/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_474/lstm_cell_474/bias/m
�
6Adam/lstm_474/lstm_cell_474/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_474/lstm_cell_474/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_475/lstm_cell_475/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_475/lstm_cell_475/kernel/m
�
8Adam/lstm_475/lstm_cell_475/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_475/lstm_cell_475/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_475/lstm_cell_475/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_475/lstm_cell_475/recurrent_kernel/m
�
BAdam/lstm_475/lstm_cell_475/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_475/lstm_cell_475/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_475/lstm_cell_475/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_475/lstm_cell_475/bias/m
�
6Adam/lstm_475/lstm_cell_475/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_475/lstm_cell_475/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_476/lstm_cell_476/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_476/lstm_cell_476/kernel/m
�
8Adam/lstm_476/lstm_cell_476/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_476/lstm_cell_476/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_476/lstm_cell_476/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_476/lstm_cell_476/recurrent_kernel/m
�
BAdam/lstm_476/lstm_cell_476/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_476/lstm_cell_476/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_476/lstm_cell_476/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_476/lstm_cell_476/bias/m
�
6Adam/lstm_476/lstm_cell_476/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_476/lstm_cell_476/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_158/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_158/kernel/v
�
+Adam/dense_158/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_158/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_158/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_158/bias/v
{
)Adam/dense_158/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_158/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_474/lstm_cell_474/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_474/lstm_cell_474/kernel/v
�
8Adam/lstm_474/lstm_cell_474/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_474/lstm_cell_474/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_474/lstm_cell_474/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_474/lstm_cell_474/recurrent_kernel/v
�
BAdam/lstm_474/lstm_cell_474/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_474/lstm_cell_474/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_474/lstm_cell_474/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_474/lstm_cell_474/bias/v
�
6Adam/lstm_474/lstm_cell_474/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_474/lstm_cell_474/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_475/lstm_cell_475/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_475/lstm_cell_475/kernel/v
�
8Adam/lstm_475/lstm_cell_475/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_475/lstm_cell_475/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_475/lstm_cell_475/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_475/lstm_cell_475/recurrent_kernel/v
�
BAdam/lstm_475/lstm_cell_475/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_475/lstm_cell_475/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_475/lstm_cell_475/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_475/lstm_cell_475/bias/v
�
6Adam/lstm_475/lstm_cell_475/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_475/lstm_cell_475/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_476/lstm_cell_476/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_476/lstm_cell_476/kernel/v
�
8Adam/lstm_476/lstm_cell_476/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_476/lstm_cell_476/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_476/lstm_cell_476/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_476/lstm_cell_476/recurrent_kernel/v
�
BAdam/lstm_476/lstm_cell_476/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_476/lstm_cell_476/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_476/lstm_cell_476/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_476/lstm_cell_476/bias/v
�
6Adam/lstm_476/lstm_cell_476/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_476/lstm_cell_476/bias/v*
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
VARIABLE_VALUEdense_158/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_158/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_474/lstm_cell_474/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_474/lstm_cell_474/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_474/lstm_cell_474/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_475/lstm_cell_475/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_475/lstm_cell_475/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_475/lstm_cell_475/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_476/lstm_cell_476/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_476/lstm_cell_476/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_476/lstm_cell_476/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_158/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_158/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_474/lstm_cell_474/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_474/lstm_cell_474/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_474/lstm_cell_474/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_475/lstm_cell_475/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_475/lstm_cell_475/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_475/lstm_cell_475/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_476/lstm_cell_476/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_476/lstm_cell_476/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_476/lstm_cell_476/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_158/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_158/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_474/lstm_cell_474/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_474/lstm_cell_474/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_474/lstm_cell_474/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_475/lstm_cell_475/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_475/lstm_cell_475/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_475/lstm_cell_475/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_476/lstm_cell_476/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_476/lstm_cell_476/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_476/lstm_cell_476/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_474_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_474_inputlstm_474/lstm_cell_474/kernel'lstm_474/lstm_cell_474/recurrent_kernellstm_474/lstm_cell_474/biaslstm_475/lstm_cell_475/kernel'lstm_475/lstm_cell_475/recurrent_kernellstm_475/lstm_cell_475/biaslstm_476/lstm_cell_476/kernel'lstm_476/lstm_cell_476/recurrent_kernellstm_476/lstm_cell_476/biasdense_158/kerneldense_158/bias*
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
$__inference_signature_wrapper_849346
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_158/kernel/Read/ReadVariableOp"dense_158/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_474/lstm_cell_474/kernel/Read/ReadVariableOp;lstm_474/lstm_cell_474/recurrent_kernel/Read/ReadVariableOp/lstm_474/lstm_cell_474/bias/Read/ReadVariableOp1lstm_475/lstm_cell_475/kernel/Read/ReadVariableOp;lstm_475/lstm_cell_475/recurrent_kernel/Read/ReadVariableOp/lstm_475/lstm_cell_475/bias/Read/ReadVariableOp1lstm_476/lstm_cell_476/kernel/Read/ReadVariableOp;lstm_476/lstm_cell_476/recurrent_kernel/Read/ReadVariableOp/lstm_476/lstm_cell_476/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_158/kernel/m/Read/ReadVariableOp)Adam/dense_158/bias/m/Read/ReadVariableOp8Adam/lstm_474/lstm_cell_474/kernel/m/Read/ReadVariableOpBAdam/lstm_474/lstm_cell_474/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_474/lstm_cell_474/bias/m/Read/ReadVariableOp8Adam/lstm_475/lstm_cell_475/kernel/m/Read/ReadVariableOpBAdam/lstm_475/lstm_cell_475/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_475/lstm_cell_475/bias/m/Read/ReadVariableOp8Adam/lstm_476/lstm_cell_476/kernel/m/Read/ReadVariableOpBAdam/lstm_476/lstm_cell_476/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_476/lstm_cell_476/bias/m/Read/ReadVariableOp+Adam/dense_158/kernel/v/Read/ReadVariableOp)Adam/dense_158/bias/v/Read/ReadVariableOp8Adam/lstm_474/lstm_cell_474/kernel/v/Read/ReadVariableOpBAdam/lstm_474/lstm_cell_474/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_474/lstm_cell_474/bias/v/Read/ReadVariableOp8Adam/lstm_475/lstm_cell_475/kernel/v/Read/ReadVariableOpBAdam/lstm_475/lstm_cell_475/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_475/lstm_cell_475/bias/v/Read/ReadVariableOp8Adam/lstm_476/lstm_cell_476/kernel/v/Read/ReadVariableOpBAdam/lstm_476/lstm_cell_476/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_476/lstm_cell_476/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_852558
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_158/kerneldense_158/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_474/lstm_cell_474/kernel'lstm_474/lstm_cell_474/recurrent_kernellstm_474/lstm_cell_474/biaslstm_475/lstm_cell_475/kernel'lstm_475/lstm_cell_475/recurrent_kernellstm_475/lstm_cell_475/biaslstm_476/lstm_cell_476/kernel'lstm_476/lstm_cell_476/recurrent_kernellstm_476/lstm_cell_476/biastotalcountAdam/dense_158/kernel/mAdam/dense_158/bias/m$Adam/lstm_474/lstm_cell_474/kernel/m.Adam/lstm_474/lstm_cell_474/recurrent_kernel/m"Adam/lstm_474/lstm_cell_474/bias/m$Adam/lstm_475/lstm_cell_475/kernel/m.Adam/lstm_475/lstm_cell_475/recurrent_kernel/m"Adam/lstm_475/lstm_cell_475/bias/m$Adam/lstm_476/lstm_cell_476/kernel/m.Adam/lstm_476/lstm_cell_476/recurrent_kernel/m"Adam/lstm_476/lstm_cell_476/bias/mAdam/dense_158/kernel/vAdam/dense_158/bias/v$Adam/lstm_474/lstm_cell_474/kernel/v.Adam/lstm_474/lstm_cell_474/recurrent_kernel/v"Adam/lstm_474/lstm_cell_474/bias/v$Adam/lstm_475/lstm_cell_475/kernel/v.Adam/lstm_475/lstm_cell_475/recurrent_kernel/v"Adam/lstm_475/lstm_cell_475/bias/v$Adam/lstm_476/lstm_cell_476/kernel/v.Adam/lstm_476/lstm_cell_476/recurrent_kernel/v"Adam/lstm_476/lstm_cell_476/bias/v*4
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
"__inference__traced_restore_852688��+
�
�
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_847853

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
E__inference_dense_158_layer_call_and_return_conditional_losses_848603

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
lstm_474_while_cond_849885.
*lstm_474_while_lstm_474_while_loop_counter4
0lstm_474_while_lstm_474_while_maximum_iterations
lstm_474_while_placeholder 
lstm_474_while_placeholder_1 
lstm_474_while_placeholder_2 
lstm_474_while_placeholder_30
,lstm_474_while_less_lstm_474_strided_slice_1F
Blstm_474_while_lstm_474_while_cond_849885___redundant_placeholder0F
Blstm_474_while_lstm_474_while_cond_849885___redundant_placeholder1F
Blstm_474_while_lstm_474_while_cond_849885___redundant_placeholder2F
Blstm_474_while_lstm_474_while_cond_849885___redundant_placeholder3
lstm_474_while_identity
�
lstm_474/while/LessLesslstm_474_while_placeholder,lstm_474_while_less_lstm_474_strided_slice_1*
T0*
_output_shapes
: ]
lstm_474/while/IdentityIdentitylstm_474/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_474_while_identity lstm_474/while/Identity:output:0*(
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_848585

inputs>
,lstm_cell_140_matmul_readvariableop_resource:2(@
.lstm_cell_140_matmul_1_readvariableop_resource:
(;
-lstm_cell_140_biasadd_readvariableop_resource:(
identity��$lstm_cell_140/BiasAdd/ReadVariableOp�#lstm_cell_140/MatMul/ReadVariableOp�%lstm_cell_140/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_140/MatMul/ReadVariableOpReadVariableOp,lstm_cell_140_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_140/MatMulMatMulstrided_slice_2:output:0+lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_140_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_140/MatMul_1MatMulzeros:output:0-lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_140/addAddV2lstm_cell_140/MatMul:product:0 lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_140/BiasAddBiasAddlstm_cell_140/add:z:0,lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_140/splitSplit&lstm_cell_140/split/split_dim:output:0lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_140/SigmoidSigmoidlstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_1Sigmoidlstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_140/mulMullstm_cell_140/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_140/ReluRelulstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_1Mullstm_cell_140/Sigmoid:y:0 lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_140/add_1AddV2lstm_cell_140/mul:z:0lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_2Sigmoidlstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_140/Relu_1Relulstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_2Mullstm_cell_140/Sigmoid_2:y:0"lstm_cell_140/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_140_matmul_readvariableop_resource.lstm_cell_140_matmul_1_readvariableop_resource-lstm_cell_140_biasadd_readvariableop_resource*
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
while_body_848501*
condR
while_cond_848500*K
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
NoOpNoOp%^lstm_cell_140/BiasAdd/ReadVariableOp$^lstm_cell_140/MatMul/ReadVariableOp&^lstm_cell_140/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_140/BiasAdd/ReadVariableOp$lstm_cell_140/BiasAdd/ReadVariableOp2J
#lstm_cell_140/MatMul/ReadVariableOp#lstm_cell_140/MatMul/ReadVariableOp2N
%lstm_cell_140/MatMul_1/ReadVariableOp%lstm_cell_140/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
)__inference_lstm_476_layer_call_fn_851508
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_848127o
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_848435

inputs?
,lstm_cell_139_matmul_readvariableop_resource:	d�A
.lstm_cell_139_matmul_1_readvariableop_resource:	2�<
-lstm_cell_139_biasadd_readvariableop_resource:	�
identity��$lstm_cell_139/BiasAdd/ReadVariableOp�#lstm_cell_139/MatMul/ReadVariableOp�%lstm_cell_139/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_139/MatMul/ReadVariableOpReadVariableOp,lstm_cell_139_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_139/MatMulMatMulstrided_slice_2:output:0+lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_139_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_139/MatMul_1MatMulzeros:output:0-lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_139/addAddV2lstm_cell_139/MatMul:product:0 lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_139_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_139/BiasAddBiasAddlstm_cell_139/add:z:0,lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_139/splitSplit&lstm_cell_139/split/split_dim:output:0lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_139/SigmoidSigmoidlstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_1Sigmoidlstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_139/mulMullstm_cell_139/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_139/ReluRelulstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_1Mullstm_cell_139/Sigmoid:y:0 lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_139/add_1AddV2lstm_cell_139/mul:z:0lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_2Sigmoidlstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_139/Relu_1Relulstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_2Mullstm_cell_139/Sigmoid_2:y:0"lstm_cell_139/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_139_matmul_readvariableop_resource.lstm_cell_139_matmul_1_readvariableop_resource-lstm_cell_139_biasadd_readvariableop_resource*
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
while_body_848351*
condR
while_cond_848350*K
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
NoOpNoOp%^lstm_cell_139/BiasAdd/ReadVariableOp$^lstm_cell_139/MatMul/ReadVariableOp&^lstm_cell_139/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_139/BiasAdd/ReadVariableOp$lstm_cell_139/BiasAdd/ReadVariableOp2J
#lstm_cell_139/MatMul/ReadVariableOp#lstm_cell_139/MatMul/ReadVariableOp2N
%lstm_cell_139/MatMul_1/ReadVariableOp%lstm_cell_139/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
.__inference_lstm_cell_138_layer_call_fn_852155

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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_847299o
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_850254

inputsH
5lstm_474_lstm_cell_138_matmul_readvariableop_resource:	�J
7lstm_474_lstm_cell_138_matmul_1_readvariableop_resource:	d�E
6lstm_474_lstm_cell_138_biasadd_readvariableop_resource:	�H
5lstm_475_lstm_cell_139_matmul_readvariableop_resource:	d�J
7lstm_475_lstm_cell_139_matmul_1_readvariableop_resource:	2�E
6lstm_475_lstm_cell_139_biasadd_readvariableop_resource:	�G
5lstm_476_lstm_cell_140_matmul_readvariableop_resource:2(I
7lstm_476_lstm_cell_140_matmul_1_readvariableop_resource:
(D
6lstm_476_lstm_cell_140_biasadd_readvariableop_resource:(:
(dense_158_matmul_readvariableop_resource:
7
)dense_158_biasadd_readvariableop_resource:
identity�� dense_158/BiasAdd/ReadVariableOp�dense_158/MatMul/ReadVariableOp�-lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp�,lstm_474/lstm_cell_138/MatMul/ReadVariableOp�.lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp�lstm_474/while�-lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp�,lstm_475/lstm_cell_139/MatMul/ReadVariableOp�.lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp�lstm_475/while�-lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp�,lstm_476/lstm_cell_140/MatMul/ReadVariableOp�.lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp�lstm_476/whileD
lstm_474/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_474/strided_sliceStridedSlicelstm_474/Shape:output:0%lstm_474/strided_slice/stack:output:0'lstm_474/strided_slice/stack_1:output:0'lstm_474/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_474/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_474/zeros/packedPacklstm_474/strided_slice:output:0 lstm_474/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_474/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_474/zerosFilllstm_474/zeros/packed:output:0lstm_474/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_474/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_474/zeros_1/packedPacklstm_474/strided_slice:output:0"lstm_474/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_474/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_474/zeros_1Fill lstm_474/zeros_1/packed:output:0lstm_474/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_474/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_474/transpose	Transposeinputs lstm_474/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_474/Shape_1Shapelstm_474/transpose:y:0*
T0*
_output_shapes
:h
lstm_474/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_474/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_474/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_474/strided_slice_1StridedSlicelstm_474/Shape_1:output:0'lstm_474/strided_slice_1/stack:output:0)lstm_474/strided_slice_1/stack_1:output:0)lstm_474/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_474/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_474/TensorArrayV2TensorListReserve-lstm_474/TensorArrayV2/element_shape:output:0!lstm_474/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_474/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_474/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_474/transpose:y:0Glstm_474/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_474/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_474/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_474/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_474/strided_slice_2StridedSlicelstm_474/transpose:y:0'lstm_474/strided_slice_2/stack:output:0)lstm_474/strided_slice_2/stack_1:output:0)lstm_474/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_474/lstm_cell_138/MatMul/ReadVariableOpReadVariableOp5lstm_474_lstm_cell_138_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_474/lstm_cell_138/MatMulMatMul!lstm_474/strided_slice_2:output:04lstm_474/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_474/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp7lstm_474_lstm_cell_138_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_474/lstm_cell_138/MatMul_1MatMullstm_474/zeros:output:06lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_474/lstm_cell_138/addAddV2'lstm_474/lstm_cell_138/MatMul:product:0)lstm_474/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_474/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp6lstm_474_lstm_cell_138_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_474/lstm_cell_138/BiasAddBiasAddlstm_474/lstm_cell_138/add:z:05lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_474/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_474/lstm_cell_138/splitSplit/lstm_474/lstm_cell_138/split/split_dim:output:0'lstm_474/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_474/lstm_cell_138/SigmoidSigmoid%lstm_474/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_474/lstm_cell_138/Sigmoid_1Sigmoid%lstm_474/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_474/lstm_cell_138/mulMul$lstm_474/lstm_cell_138/Sigmoid_1:y:0lstm_474/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_474/lstm_cell_138/ReluRelu%lstm_474/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_474/lstm_cell_138/mul_1Mul"lstm_474/lstm_cell_138/Sigmoid:y:0)lstm_474/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_474/lstm_cell_138/add_1AddV2lstm_474/lstm_cell_138/mul:z:0 lstm_474/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_474/lstm_cell_138/Sigmoid_2Sigmoid%lstm_474/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_474/lstm_cell_138/Relu_1Relu lstm_474/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_474/lstm_cell_138/mul_2Mul$lstm_474/lstm_cell_138/Sigmoid_2:y:0+lstm_474/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_474/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_474/TensorArrayV2_1TensorListReserve/lstm_474/TensorArrayV2_1/element_shape:output:0!lstm_474/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_474/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_474/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_474/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_474/whileWhile$lstm_474/while/loop_counter:output:0*lstm_474/while/maximum_iterations:output:0lstm_474/time:output:0!lstm_474/TensorArrayV2_1:handle:0lstm_474/zeros:output:0lstm_474/zeros_1:output:0!lstm_474/strided_slice_1:output:0@lstm_474/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_474_lstm_cell_138_matmul_readvariableop_resource7lstm_474_lstm_cell_138_matmul_1_readvariableop_resource6lstm_474_lstm_cell_138_biasadd_readvariableop_resource*
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
lstm_474_while_body_849886*&
condR
lstm_474_while_cond_849885*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_474/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_474/TensorArrayV2Stack/TensorListStackTensorListStacklstm_474/while:output:3Blstm_474/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_474/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_474/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_474/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_474/strided_slice_3StridedSlice4lstm_474/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_474/strided_slice_3/stack:output:0)lstm_474/strided_slice_3/stack_1:output:0)lstm_474/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_474/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_474/transpose_1	Transpose4lstm_474/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_474/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_474/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_475/ShapeShapelstm_474/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_475/strided_sliceStridedSlicelstm_475/Shape:output:0%lstm_475/strided_slice/stack:output:0'lstm_475/strided_slice/stack_1:output:0'lstm_475/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_475/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_475/zeros/packedPacklstm_475/strided_slice:output:0 lstm_475/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_475/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_475/zerosFilllstm_475/zeros/packed:output:0lstm_475/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_475/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_475/zeros_1/packedPacklstm_475/strided_slice:output:0"lstm_475/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_475/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_475/zeros_1Fill lstm_475/zeros_1/packed:output:0lstm_475/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_475/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_475/transpose	Transposelstm_474/transpose_1:y:0 lstm_475/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_475/Shape_1Shapelstm_475/transpose:y:0*
T0*
_output_shapes
:h
lstm_475/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_475/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_475/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_475/strided_slice_1StridedSlicelstm_475/Shape_1:output:0'lstm_475/strided_slice_1/stack:output:0)lstm_475/strided_slice_1/stack_1:output:0)lstm_475/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_475/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_475/TensorArrayV2TensorListReserve-lstm_475/TensorArrayV2/element_shape:output:0!lstm_475/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_475/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_475/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_475/transpose:y:0Glstm_475/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_475/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_475/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_475/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_475/strided_slice_2StridedSlicelstm_475/transpose:y:0'lstm_475/strided_slice_2/stack:output:0)lstm_475/strided_slice_2/stack_1:output:0)lstm_475/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_475/lstm_cell_139/MatMul/ReadVariableOpReadVariableOp5lstm_475_lstm_cell_139_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_475/lstm_cell_139/MatMulMatMul!lstm_475/strided_slice_2:output:04lstm_475/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_475/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp7lstm_475_lstm_cell_139_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_475/lstm_cell_139/MatMul_1MatMullstm_475/zeros:output:06lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_475/lstm_cell_139/addAddV2'lstm_475/lstm_cell_139/MatMul:product:0)lstm_475/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_475/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp6lstm_475_lstm_cell_139_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_475/lstm_cell_139/BiasAddBiasAddlstm_475/lstm_cell_139/add:z:05lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_475/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_475/lstm_cell_139/splitSplit/lstm_475/lstm_cell_139/split/split_dim:output:0'lstm_475/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_475/lstm_cell_139/SigmoidSigmoid%lstm_475/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_475/lstm_cell_139/Sigmoid_1Sigmoid%lstm_475/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_475/lstm_cell_139/mulMul$lstm_475/lstm_cell_139/Sigmoid_1:y:0lstm_475/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_475/lstm_cell_139/ReluRelu%lstm_475/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_475/lstm_cell_139/mul_1Mul"lstm_475/lstm_cell_139/Sigmoid:y:0)lstm_475/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_475/lstm_cell_139/add_1AddV2lstm_475/lstm_cell_139/mul:z:0 lstm_475/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_475/lstm_cell_139/Sigmoid_2Sigmoid%lstm_475/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_475/lstm_cell_139/Relu_1Relu lstm_475/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_475/lstm_cell_139/mul_2Mul$lstm_475/lstm_cell_139/Sigmoid_2:y:0+lstm_475/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_475/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_475/TensorArrayV2_1TensorListReserve/lstm_475/TensorArrayV2_1/element_shape:output:0!lstm_475/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_475/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_475/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_475/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_475/whileWhile$lstm_475/while/loop_counter:output:0*lstm_475/while/maximum_iterations:output:0lstm_475/time:output:0!lstm_475/TensorArrayV2_1:handle:0lstm_475/zeros:output:0lstm_475/zeros_1:output:0!lstm_475/strided_slice_1:output:0@lstm_475/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_475_lstm_cell_139_matmul_readvariableop_resource7lstm_475_lstm_cell_139_matmul_1_readvariableop_resource6lstm_475_lstm_cell_139_biasadd_readvariableop_resource*
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
lstm_475_while_body_850025*&
condR
lstm_475_while_cond_850024*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_475/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_475/TensorArrayV2Stack/TensorListStackTensorListStacklstm_475/while:output:3Blstm_475/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_475/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_475/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_475/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_475/strided_slice_3StridedSlice4lstm_475/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_475/strided_slice_3/stack:output:0)lstm_475/strided_slice_3/stack_1:output:0)lstm_475/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_475/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_475/transpose_1	Transpose4lstm_475/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_475/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_475/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_476/ShapeShapelstm_475/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_476/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_476/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_476/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_476/strided_sliceStridedSlicelstm_476/Shape:output:0%lstm_476/strided_slice/stack:output:0'lstm_476/strided_slice/stack_1:output:0'lstm_476/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_476/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_476/zeros/packedPacklstm_476/strided_slice:output:0 lstm_476/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_476/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_476/zerosFilllstm_476/zeros/packed:output:0lstm_476/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_476/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_476/zeros_1/packedPacklstm_476/strided_slice:output:0"lstm_476/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_476/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_476/zeros_1Fill lstm_476/zeros_1/packed:output:0lstm_476/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_476/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_476/transpose	Transposelstm_475/transpose_1:y:0 lstm_476/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_476/Shape_1Shapelstm_476/transpose:y:0*
T0*
_output_shapes
:h
lstm_476/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_476/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_476/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_476/strided_slice_1StridedSlicelstm_476/Shape_1:output:0'lstm_476/strided_slice_1/stack:output:0)lstm_476/strided_slice_1/stack_1:output:0)lstm_476/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_476/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_476/TensorArrayV2TensorListReserve-lstm_476/TensorArrayV2/element_shape:output:0!lstm_476/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_476/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_476/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_476/transpose:y:0Glstm_476/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_476/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_476/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_476/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_476/strided_slice_2StridedSlicelstm_476/transpose:y:0'lstm_476/strided_slice_2/stack:output:0)lstm_476/strided_slice_2/stack_1:output:0)lstm_476/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_476/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp5lstm_476_lstm_cell_140_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_476/lstm_cell_140/MatMulMatMul!lstm_476/strided_slice_2:output:04lstm_476/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_476/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp7lstm_476_lstm_cell_140_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_476/lstm_cell_140/MatMul_1MatMullstm_476/zeros:output:06lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_476/lstm_cell_140/addAddV2'lstm_476/lstm_cell_140/MatMul:product:0)lstm_476/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_476/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp6lstm_476_lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_476/lstm_cell_140/BiasAddBiasAddlstm_476/lstm_cell_140/add:z:05lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_476/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_476/lstm_cell_140/splitSplit/lstm_476/lstm_cell_140/split/split_dim:output:0'lstm_476/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_476/lstm_cell_140/SigmoidSigmoid%lstm_476/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_476/lstm_cell_140/Sigmoid_1Sigmoid%lstm_476/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_476/lstm_cell_140/mulMul$lstm_476/lstm_cell_140/Sigmoid_1:y:0lstm_476/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_476/lstm_cell_140/ReluRelu%lstm_476/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_476/lstm_cell_140/mul_1Mul"lstm_476/lstm_cell_140/Sigmoid:y:0)lstm_476/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_476/lstm_cell_140/add_1AddV2lstm_476/lstm_cell_140/mul:z:0 lstm_476/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_476/lstm_cell_140/Sigmoid_2Sigmoid%lstm_476/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_476/lstm_cell_140/Relu_1Relu lstm_476/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_476/lstm_cell_140/mul_2Mul$lstm_476/lstm_cell_140/Sigmoid_2:y:0+lstm_476/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_476/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_476/TensorArrayV2_1TensorListReserve/lstm_476/TensorArrayV2_1/element_shape:output:0!lstm_476/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_476/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_476/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_476/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_476/whileWhile$lstm_476/while/loop_counter:output:0*lstm_476/while/maximum_iterations:output:0lstm_476/time:output:0!lstm_476/TensorArrayV2_1:handle:0lstm_476/zeros:output:0lstm_476/zeros_1:output:0!lstm_476/strided_slice_1:output:0@lstm_476/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_476_lstm_cell_140_matmul_readvariableop_resource7lstm_476_lstm_cell_140_matmul_1_readvariableop_resource6lstm_476_lstm_cell_140_biasadd_readvariableop_resource*
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
lstm_476_while_body_850164*&
condR
lstm_476_while_cond_850163*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_476/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_476/TensorArrayV2Stack/TensorListStackTensorListStacklstm_476/while:output:3Blstm_476/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_476/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_476/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_476/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_476/strided_slice_3StridedSlice4lstm_476/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_476/strided_slice_3/stack:output:0)lstm_476/strided_slice_3/stack_1:output:0)lstm_476/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_476/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_476/transpose_1	Transpose4lstm_476/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_476/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_476/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_158/MatMul/ReadVariableOpReadVariableOp(dense_158_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_158/MatMulMatMul!lstm_476/strided_slice_3:output:0'dense_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_158/BiasAdd/ReadVariableOpReadVariableOp)dense_158_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_158/BiasAddBiasAdddense_158/MatMul:product:0(dense_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_158/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_158/BiasAdd/ReadVariableOp ^dense_158/MatMul/ReadVariableOp.^lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp-^lstm_474/lstm_cell_138/MatMul/ReadVariableOp/^lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp^lstm_474/while.^lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp-^lstm_475/lstm_cell_139/MatMul/ReadVariableOp/^lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp^lstm_475/while.^lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp-^lstm_476/lstm_cell_140/MatMul/ReadVariableOp/^lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp^lstm_476/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_158/BiasAdd/ReadVariableOp dense_158/BiasAdd/ReadVariableOp2B
dense_158/MatMul/ReadVariableOpdense_158/MatMul/ReadVariableOp2^
-lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp-lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp2\
,lstm_474/lstm_cell_138/MatMul/ReadVariableOp,lstm_474/lstm_cell_138/MatMul/ReadVariableOp2`
.lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp.lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp2 
lstm_474/whilelstm_474/while2^
-lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp-lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp2\
,lstm_475/lstm_cell_139/MatMul/ReadVariableOp,lstm_475/lstm_cell_139/MatMul/ReadVariableOp2`
.lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp.lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp2 
lstm_475/whilelstm_475/while2^
-lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp-lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp2\
,lstm_476/lstm_cell_140/MatMul/ReadVariableOp,lstm_476/lstm_cell_140/MatMul/ReadVariableOp2`
.lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp.lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp2 
lstm_476/whilelstm_476/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
/__inference_sequential_158_layer_call_fn_849373

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
J__inference_sequential_158_layer_call_and_return_conditional_losses_848610o
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
�
�
J__inference_sequential_158_layer_call_and_return_conditional_losses_849199

inputs"
lstm_474_849172:	�"
lstm_474_849174:	d�
lstm_474_849176:	�"
lstm_475_849179:	d�"
lstm_475_849181:	2�
lstm_475_849183:	�!
lstm_476_849186:2(!
lstm_476_849188:
(
lstm_476_849190:("
dense_158_849193:

dense_158_849195:
identity��!dense_158/StatefulPartitionedCall� lstm_474/StatefulPartitionedCall� lstm_475/StatefulPartitionedCall� lstm_476/StatefulPartitionedCall�
 lstm_474/StatefulPartitionedCallStatefulPartitionedCallinputslstm_474_849172lstm_474_849174lstm_474_849176*
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_849131�
 lstm_475/StatefulPartitionedCallStatefulPartitionedCall)lstm_474/StatefulPartitionedCall:output:0lstm_475_849179lstm_475_849181lstm_475_849183*
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_848966�
 lstm_476/StatefulPartitionedCallStatefulPartitionedCall)lstm_475/StatefulPartitionedCall:output:0lstm_476_849186lstm_476_849188lstm_476_849190*
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_848801�
!dense_158/StatefulPartitionedCallStatefulPartitionedCall)lstm_476/StatefulPartitionedCall:output:0dense_158_849193dense_158_849195*
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
E__inference_dense_158_layer_call_and_return_conditional_losses_848603y
IdentityIdentity*dense_158/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_158/StatefulPartitionedCall!^lstm_474/StatefulPartitionedCall!^lstm_475/StatefulPartitionedCall!^lstm_476/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_158/StatefulPartitionedCall!dense_158/StatefulPartitionedCall2D
 lstm_474/StatefulPartitionedCall lstm_474/StatefulPartitionedCall2D
 lstm_475/StatefulPartitionedCall lstm_475/StatefulPartitionedCall2D
 lstm_476/StatefulPartitionedCall lstm_476/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�T
�
)sequential_158_lstm_474_while_body_846718L
Hsequential_158_lstm_474_while_sequential_158_lstm_474_while_loop_counterR
Nsequential_158_lstm_474_while_sequential_158_lstm_474_while_maximum_iterations-
)sequential_158_lstm_474_while_placeholder/
+sequential_158_lstm_474_while_placeholder_1/
+sequential_158_lstm_474_while_placeholder_2/
+sequential_158_lstm_474_while_placeholder_3K
Gsequential_158_lstm_474_while_sequential_158_lstm_474_strided_slice_1_0�
�sequential_158_lstm_474_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_474_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_158_lstm_474_while_lstm_cell_138_matmul_readvariableop_resource_0:	�a
Nsequential_158_lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource_0:	d�\
Msequential_158_lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource_0:	�*
&sequential_158_lstm_474_while_identity,
(sequential_158_lstm_474_while_identity_1,
(sequential_158_lstm_474_while_identity_2,
(sequential_158_lstm_474_while_identity_3,
(sequential_158_lstm_474_while_identity_4,
(sequential_158_lstm_474_while_identity_5I
Esequential_158_lstm_474_while_sequential_158_lstm_474_strided_slice_1�
�sequential_158_lstm_474_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_474_tensorarrayunstack_tensorlistfromtensor]
Jsequential_158_lstm_474_while_lstm_cell_138_matmul_readvariableop_resource:	�_
Lsequential_158_lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource:	d�Z
Ksequential_158_lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource:	���Bsequential_158/lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp�Asequential_158/lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp�Csequential_158/lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp�
Osequential_158/lstm_474/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_158/lstm_474/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_158_lstm_474_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_474_tensorarrayunstack_tensorlistfromtensor_0)sequential_158_lstm_474_while_placeholderXsequential_158/lstm_474/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Asequential_158/lstm_474/while/lstm_cell_138/MatMul/ReadVariableOpReadVariableOpLsequential_158_lstm_474_while_lstm_cell_138_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
2sequential_158/lstm_474/while/lstm_cell_138/MatMulMatMulHsequential_158/lstm_474/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_158/lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_158/lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOpNsequential_158_lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
4sequential_158/lstm_474/while/lstm_cell_138/MatMul_1MatMul+sequential_158_lstm_474_while_placeholder_2Ksequential_158/lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_158/lstm_474/while/lstm_cell_138/addAddV2<sequential_158/lstm_474/while/lstm_cell_138/MatMul:product:0>sequential_158/lstm_474/while/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_158/lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOpMsequential_158_lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_158/lstm_474/while/lstm_cell_138/BiasAddBiasAdd3sequential_158/lstm_474/while/lstm_cell_138/add:z:0Jsequential_158/lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_158/lstm_474/while/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_158/lstm_474/while/lstm_cell_138/splitSplitDsequential_158/lstm_474/while/lstm_cell_138/split/split_dim:output:0<sequential_158/lstm_474/while/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
3sequential_158/lstm_474/while/lstm_cell_138/SigmoidSigmoid:sequential_158/lstm_474/while/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d�
5sequential_158/lstm_474/while/lstm_cell_138/Sigmoid_1Sigmoid:sequential_158/lstm_474/while/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
/sequential_158/lstm_474/while/lstm_cell_138/mulMul9sequential_158/lstm_474/while/lstm_cell_138/Sigmoid_1:y:0+sequential_158_lstm_474_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential_158/lstm_474/while/lstm_cell_138/ReluRelu:sequential_158/lstm_474/while/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
1sequential_158/lstm_474/while/lstm_cell_138/mul_1Mul7sequential_158/lstm_474/while/lstm_cell_138/Sigmoid:y:0>sequential_158/lstm_474/while/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
1sequential_158/lstm_474/while/lstm_cell_138/add_1AddV23sequential_158/lstm_474/while/lstm_cell_138/mul:z:05sequential_158/lstm_474/while/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d�
5sequential_158/lstm_474/while/lstm_cell_138/Sigmoid_2Sigmoid:sequential_158/lstm_474/while/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������d�
2sequential_158/lstm_474/while/lstm_cell_138/Relu_1Relu5sequential_158/lstm_474/while/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
1sequential_158/lstm_474/while/lstm_cell_138/mul_2Mul9sequential_158/lstm_474/while/lstm_cell_138/Sigmoid_2:y:0@sequential_158/lstm_474/while/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Bsequential_158/lstm_474/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_158_lstm_474_while_placeholder_1)sequential_158_lstm_474_while_placeholder5sequential_158/lstm_474/while/lstm_cell_138/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_158/lstm_474/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_158/lstm_474/while/addAddV2)sequential_158_lstm_474_while_placeholder,sequential_158/lstm_474/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_158/lstm_474/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_158/lstm_474/while/add_1AddV2Hsequential_158_lstm_474_while_sequential_158_lstm_474_while_loop_counter.sequential_158/lstm_474/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_158/lstm_474/while/IdentityIdentity'sequential_158/lstm_474/while/add_1:z:0#^sequential_158/lstm_474/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_474/while/Identity_1IdentityNsequential_158_lstm_474_while_sequential_158_lstm_474_while_maximum_iterations#^sequential_158/lstm_474/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_474/while/Identity_2Identity%sequential_158/lstm_474/while/add:z:0#^sequential_158/lstm_474/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_474/while/Identity_3IdentityRsequential_158/lstm_474/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_158/lstm_474/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_474/while/Identity_4Identity5sequential_158/lstm_474/while/lstm_cell_138/mul_2:z:0#^sequential_158/lstm_474/while/NoOp*
T0*'
_output_shapes
:���������d�
(sequential_158/lstm_474/while/Identity_5Identity5sequential_158/lstm_474/while/lstm_cell_138/add_1:z:0#^sequential_158/lstm_474/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential_158/lstm_474/while/NoOpNoOpC^sequential_158/lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOpB^sequential_158/lstm_474/while/lstm_cell_138/MatMul/ReadVariableOpD^sequential_158/lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_158_lstm_474_while_identity/sequential_158/lstm_474/while/Identity:output:0"]
(sequential_158_lstm_474_while_identity_11sequential_158/lstm_474/while/Identity_1:output:0"]
(sequential_158_lstm_474_while_identity_21sequential_158/lstm_474/while/Identity_2:output:0"]
(sequential_158_lstm_474_while_identity_31sequential_158/lstm_474/while/Identity_3:output:0"]
(sequential_158_lstm_474_while_identity_41sequential_158/lstm_474/while/Identity_4:output:0"]
(sequential_158_lstm_474_while_identity_51sequential_158/lstm_474/while/Identity_5:output:0"�
Ksequential_158_lstm_474_while_lstm_cell_138_biasadd_readvariableop_resourceMsequential_158_lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource_0"�
Lsequential_158_lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resourceNsequential_158_lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource_0"�
Jsequential_158_lstm_474_while_lstm_cell_138_matmul_readvariableop_resourceLsequential_158_lstm_474_while_lstm_cell_138_matmul_readvariableop_resource_0"�
Esequential_158_lstm_474_while_sequential_158_lstm_474_strided_slice_1Gsequential_158_lstm_474_while_sequential_158_lstm_474_strided_slice_1_0"�
�sequential_158_lstm_474_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_474_tensorarrayunstack_tensorlistfromtensor�sequential_158_lstm_474_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_474_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
Bsequential_158/lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOpBsequential_158/lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp2�
Asequential_158/lstm_474/while/lstm_cell_138/MatMul/ReadVariableOpAsequential_158/lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp2�
Csequential_158/lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOpCsequential_158/lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_847427

inputs'
lstm_cell_138_847345:	�'
lstm_cell_138_847347:	d�#
lstm_cell_138_847349:	�
identity��%lstm_cell_138/StatefulPartitionedCall�while;
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
%lstm_cell_138/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_138_847345lstm_cell_138_847347lstm_cell_138_847349*
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_847299n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_138_847345lstm_cell_138_847347lstm_cell_138_847349*
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
while_body_847358*
condR
while_cond_847357*K
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
NoOpNoOp&^lstm_cell_138/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_138/StatefulPartitionedCall%lstm_cell_138/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_851115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_851115___redundant_placeholder04
0while_while_cond_851115___redundant_placeholder14
0while_while_cond_851115___redundant_placeholder24
0while_while_cond_851115___redundant_placeholder3
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
while_cond_849046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_849046___redundant_placeholder04
0while_while_cond_849046___redundant_placeholder14
0while_while_cond_849046___redundant_placeholder24
0while_while_cond_849046___redundant_placeholder3
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

lstm_475_while_body_849598.
*lstm_475_while_lstm_475_while_loop_counter4
0lstm_475_while_lstm_475_while_maximum_iterations
lstm_475_while_placeholder 
lstm_475_while_placeholder_1 
lstm_475_while_placeholder_2 
lstm_475_while_placeholder_3-
)lstm_475_while_lstm_475_strided_slice_1_0i
elstm_475_while_tensorarrayv2read_tensorlistgetitem_lstm_475_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_475_while_lstm_cell_139_matmul_readvariableop_resource_0:	d�R
?lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource_0:	2�M
>lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource_0:	�
lstm_475_while_identity
lstm_475_while_identity_1
lstm_475_while_identity_2
lstm_475_while_identity_3
lstm_475_while_identity_4
lstm_475_while_identity_5+
'lstm_475_while_lstm_475_strided_slice_1g
clstm_475_while_tensorarrayv2read_tensorlistgetitem_lstm_475_tensorarrayunstack_tensorlistfromtensorN
;lstm_475_while_lstm_cell_139_matmul_readvariableop_resource:	d�P
=lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource:	2�K
<lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource:	���3lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp�2lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp�4lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp�
@lstm_475/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_475/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_475_while_tensorarrayv2read_tensorlistgetitem_lstm_475_tensorarrayunstack_tensorlistfromtensor_0lstm_475_while_placeholderIlstm_475/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_475/while/lstm_cell_139/MatMul/ReadVariableOpReadVariableOp=lstm_475_while_lstm_cell_139_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_475/while/lstm_cell_139/MatMulMatMul9lstm_475/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp?lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_475/while/lstm_cell_139/MatMul_1MatMullstm_475_while_placeholder_2<lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_475/while/lstm_cell_139/addAddV2-lstm_475/while/lstm_cell_139/MatMul:product:0/lstm_475/while/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp>lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_475/while/lstm_cell_139/BiasAddBiasAdd$lstm_475/while/lstm_cell_139/add:z:0;lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_475/while/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_475/while/lstm_cell_139/splitSplit5lstm_475/while/lstm_cell_139/split/split_dim:output:0-lstm_475/while/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_475/while/lstm_cell_139/SigmoidSigmoid+lstm_475/while/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_475/while/lstm_cell_139/Sigmoid_1Sigmoid+lstm_475/while/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_475/while/lstm_cell_139/mulMul*lstm_475/while/lstm_cell_139/Sigmoid_1:y:0lstm_475_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_475/while/lstm_cell_139/ReluRelu+lstm_475/while/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_475/while/lstm_cell_139/mul_1Mul(lstm_475/while/lstm_cell_139/Sigmoid:y:0/lstm_475/while/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_475/while/lstm_cell_139/add_1AddV2$lstm_475/while/lstm_cell_139/mul:z:0&lstm_475/while/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_475/while/lstm_cell_139/Sigmoid_2Sigmoid+lstm_475/while/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_475/while/lstm_cell_139/Relu_1Relu&lstm_475/while/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_475/while/lstm_cell_139/mul_2Mul*lstm_475/while/lstm_cell_139/Sigmoid_2:y:01lstm_475/while/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_475/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_475_while_placeholder_1lstm_475_while_placeholder&lstm_475/while/lstm_cell_139/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_475/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_475/while/addAddV2lstm_475_while_placeholderlstm_475/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_475/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_475/while/add_1AddV2*lstm_475_while_lstm_475_while_loop_counterlstm_475/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_475/while/IdentityIdentitylstm_475/while/add_1:z:0^lstm_475/while/NoOp*
T0*
_output_shapes
: �
lstm_475/while/Identity_1Identity0lstm_475_while_lstm_475_while_maximum_iterations^lstm_475/while/NoOp*
T0*
_output_shapes
: t
lstm_475/while/Identity_2Identitylstm_475/while/add:z:0^lstm_475/while/NoOp*
T0*
_output_shapes
: �
lstm_475/while/Identity_3IdentityClstm_475/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_475/while/NoOp*
T0*
_output_shapes
: �
lstm_475/while/Identity_4Identity&lstm_475/while/lstm_cell_139/mul_2:z:0^lstm_475/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_475/while/Identity_5Identity&lstm_475/while/lstm_cell_139/add_1:z:0^lstm_475/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_475/while/NoOpNoOp4^lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp3^lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp5^lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_475_while_identity lstm_475/while/Identity:output:0"?
lstm_475_while_identity_1"lstm_475/while/Identity_1:output:0"?
lstm_475_while_identity_2"lstm_475/while/Identity_2:output:0"?
lstm_475_while_identity_3"lstm_475/while/Identity_3:output:0"?
lstm_475_while_identity_4"lstm_475/while/Identity_4:output:0"?
lstm_475_while_identity_5"lstm_475/while/Identity_5:output:0"T
'lstm_475_while_lstm_475_strided_slice_1)lstm_475_while_lstm_475_strided_slice_1_0"~
<lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource>lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource_0"�
=lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource?lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource_0"|
;lstm_475_while_lstm_cell_139_matmul_readvariableop_resource=lstm_475_while_lstm_cell_139_matmul_readvariableop_resource_0"�
clstm_475_while_tensorarrayv2read_tensorlistgetitem_lstm_475_tensorarrayunstack_tensorlistfromtensorelstm_475_while_tensorarrayv2read_tensorlistgetitem_lstm_475_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp3lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp2h
2lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp2lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp2l
4lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp4lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_847153

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

lstm_474_while_body_849459.
*lstm_474_while_lstm_474_while_loop_counter4
0lstm_474_while_lstm_474_while_maximum_iterations
lstm_474_while_placeholder 
lstm_474_while_placeholder_1 
lstm_474_while_placeholder_2 
lstm_474_while_placeholder_3-
)lstm_474_while_lstm_474_strided_slice_1_0i
elstm_474_while_tensorarrayv2read_tensorlistgetitem_lstm_474_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_474_while_lstm_cell_138_matmul_readvariableop_resource_0:	�R
?lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource_0:	d�M
>lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource_0:	�
lstm_474_while_identity
lstm_474_while_identity_1
lstm_474_while_identity_2
lstm_474_while_identity_3
lstm_474_while_identity_4
lstm_474_while_identity_5+
'lstm_474_while_lstm_474_strided_slice_1g
clstm_474_while_tensorarrayv2read_tensorlistgetitem_lstm_474_tensorarrayunstack_tensorlistfromtensorN
;lstm_474_while_lstm_cell_138_matmul_readvariableop_resource:	�P
=lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource:	d�K
<lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource:	���3lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp�2lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp�4lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp�
@lstm_474/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_474/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_474_while_tensorarrayv2read_tensorlistgetitem_lstm_474_tensorarrayunstack_tensorlistfromtensor_0lstm_474_while_placeholderIlstm_474/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_474/while/lstm_cell_138/MatMul/ReadVariableOpReadVariableOp=lstm_474_while_lstm_cell_138_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_474/while/lstm_cell_138/MatMulMatMul9lstm_474/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp?lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_474/while/lstm_cell_138/MatMul_1MatMullstm_474_while_placeholder_2<lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_474/while/lstm_cell_138/addAddV2-lstm_474/while/lstm_cell_138/MatMul:product:0/lstm_474/while/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp>lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_474/while/lstm_cell_138/BiasAddBiasAdd$lstm_474/while/lstm_cell_138/add:z:0;lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_474/while/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_474/while/lstm_cell_138/splitSplit5lstm_474/while/lstm_cell_138/split/split_dim:output:0-lstm_474/while/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_474/while/lstm_cell_138/SigmoidSigmoid+lstm_474/while/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_474/while/lstm_cell_138/Sigmoid_1Sigmoid+lstm_474/while/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_474/while/lstm_cell_138/mulMul*lstm_474/while/lstm_cell_138/Sigmoid_1:y:0lstm_474_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_474/while/lstm_cell_138/ReluRelu+lstm_474/while/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_474/while/lstm_cell_138/mul_1Mul(lstm_474/while/lstm_cell_138/Sigmoid:y:0/lstm_474/while/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_474/while/lstm_cell_138/add_1AddV2$lstm_474/while/lstm_cell_138/mul:z:0&lstm_474/while/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_474/while/lstm_cell_138/Sigmoid_2Sigmoid+lstm_474/while/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_474/while/lstm_cell_138/Relu_1Relu&lstm_474/while/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_474/while/lstm_cell_138/mul_2Mul*lstm_474/while/lstm_cell_138/Sigmoid_2:y:01lstm_474/while/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_474/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_474_while_placeholder_1lstm_474_while_placeholder&lstm_474/while/lstm_cell_138/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_474/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_474/while/addAddV2lstm_474_while_placeholderlstm_474/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_474/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_474/while/add_1AddV2*lstm_474_while_lstm_474_while_loop_counterlstm_474/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_474/while/IdentityIdentitylstm_474/while/add_1:z:0^lstm_474/while/NoOp*
T0*
_output_shapes
: �
lstm_474/while/Identity_1Identity0lstm_474_while_lstm_474_while_maximum_iterations^lstm_474/while/NoOp*
T0*
_output_shapes
: t
lstm_474/while/Identity_2Identitylstm_474/while/add:z:0^lstm_474/while/NoOp*
T0*
_output_shapes
: �
lstm_474/while/Identity_3IdentityClstm_474/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_474/while/NoOp*
T0*
_output_shapes
: �
lstm_474/while/Identity_4Identity&lstm_474/while/lstm_cell_138/mul_2:z:0^lstm_474/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_474/while/Identity_5Identity&lstm_474/while/lstm_cell_138/add_1:z:0^lstm_474/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_474/while/NoOpNoOp4^lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp3^lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp5^lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_474_while_identity lstm_474/while/Identity:output:0"?
lstm_474_while_identity_1"lstm_474/while/Identity_1:output:0"?
lstm_474_while_identity_2"lstm_474/while/Identity_2:output:0"?
lstm_474_while_identity_3"lstm_474/while/Identity_3:output:0"?
lstm_474_while_identity_4"lstm_474/while/Identity_4:output:0"?
lstm_474_while_identity_5"lstm_474/while/Identity_5:output:0"T
'lstm_474_while_lstm_474_strided_slice_1)lstm_474_while_lstm_474_strided_slice_1_0"~
<lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource>lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource_0"�
=lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource?lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource_0"|
;lstm_474_while_lstm_cell_138_matmul_readvariableop_resource=lstm_474_while_lstm_cell_138_matmul_readvariableop_resource_0"�
clstm_474_while_tensorarrayv2read_tensorlistgetitem_lstm_474_tensorarrayunstack_tensorlistfromtensorelstm_474_while_tensorarrayv2read_tensorlistgetitem_lstm_474_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp3lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp2h
2lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp2lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp2l
4lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp4lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_847167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_138_847191_0:	�/
while_lstm_cell_138_847193_0:	d�+
while_lstm_cell_138_847195_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_138_847191:	�-
while_lstm_cell_138_847193:	d�)
while_lstm_cell_138_847195:	���+while/lstm_cell_138/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_138/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_138_847191_0while_lstm_cell_138_847193_0while_lstm_cell_138_847195_0*
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_847153�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_138/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_138/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_138/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_138/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_138_847191while_lstm_cell_138_847191_0":
while_lstm_cell_138_847193while_lstm_cell_138_847193_0":
while_lstm_cell_138_847195while_lstm_cell_138_847195_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_138/StatefulPartitionedCall+while/lstm_cell_138/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_852317

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

lstm_474_while_body_849886.
*lstm_474_while_lstm_474_while_loop_counter4
0lstm_474_while_lstm_474_while_maximum_iterations
lstm_474_while_placeholder 
lstm_474_while_placeholder_1 
lstm_474_while_placeholder_2 
lstm_474_while_placeholder_3-
)lstm_474_while_lstm_474_strided_slice_1_0i
elstm_474_while_tensorarrayv2read_tensorlistgetitem_lstm_474_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_474_while_lstm_cell_138_matmul_readvariableop_resource_0:	�R
?lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource_0:	d�M
>lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource_0:	�
lstm_474_while_identity
lstm_474_while_identity_1
lstm_474_while_identity_2
lstm_474_while_identity_3
lstm_474_while_identity_4
lstm_474_while_identity_5+
'lstm_474_while_lstm_474_strided_slice_1g
clstm_474_while_tensorarrayv2read_tensorlistgetitem_lstm_474_tensorarrayunstack_tensorlistfromtensorN
;lstm_474_while_lstm_cell_138_matmul_readvariableop_resource:	�P
=lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource:	d�K
<lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource:	���3lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp�2lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp�4lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp�
@lstm_474/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_474/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_474_while_tensorarrayv2read_tensorlistgetitem_lstm_474_tensorarrayunstack_tensorlistfromtensor_0lstm_474_while_placeholderIlstm_474/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_474/while/lstm_cell_138/MatMul/ReadVariableOpReadVariableOp=lstm_474_while_lstm_cell_138_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_474/while/lstm_cell_138/MatMulMatMul9lstm_474/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp?lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_474/while/lstm_cell_138/MatMul_1MatMullstm_474_while_placeholder_2<lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_474/while/lstm_cell_138/addAddV2-lstm_474/while/lstm_cell_138/MatMul:product:0/lstm_474/while/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp>lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_474/while/lstm_cell_138/BiasAddBiasAdd$lstm_474/while/lstm_cell_138/add:z:0;lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_474/while/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_474/while/lstm_cell_138/splitSplit5lstm_474/while/lstm_cell_138/split/split_dim:output:0-lstm_474/while/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_474/while/lstm_cell_138/SigmoidSigmoid+lstm_474/while/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_474/while/lstm_cell_138/Sigmoid_1Sigmoid+lstm_474/while/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_474/while/lstm_cell_138/mulMul*lstm_474/while/lstm_cell_138/Sigmoid_1:y:0lstm_474_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_474/while/lstm_cell_138/ReluRelu+lstm_474/while/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_474/while/lstm_cell_138/mul_1Mul(lstm_474/while/lstm_cell_138/Sigmoid:y:0/lstm_474/while/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_474/while/lstm_cell_138/add_1AddV2$lstm_474/while/lstm_cell_138/mul:z:0&lstm_474/while/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_474/while/lstm_cell_138/Sigmoid_2Sigmoid+lstm_474/while/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_474/while/lstm_cell_138/Relu_1Relu&lstm_474/while/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_474/while/lstm_cell_138/mul_2Mul*lstm_474/while/lstm_cell_138/Sigmoid_2:y:01lstm_474/while/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_474/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_474_while_placeholder_1lstm_474_while_placeholder&lstm_474/while/lstm_cell_138/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_474/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_474/while/addAddV2lstm_474_while_placeholderlstm_474/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_474/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_474/while/add_1AddV2*lstm_474_while_lstm_474_while_loop_counterlstm_474/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_474/while/IdentityIdentitylstm_474/while/add_1:z:0^lstm_474/while/NoOp*
T0*
_output_shapes
: �
lstm_474/while/Identity_1Identity0lstm_474_while_lstm_474_while_maximum_iterations^lstm_474/while/NoOp*
T0*
_output_shapes
: t
lstm_474/while/Identity_2Identitylstm_474/while/add:z:0^lstm_474/while/NoOp*
T0*
_output_shapes
: �
lstm_474/while/Identity_3IdentityClstm_474/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_474/while/NoOp*
T0*
_output_shapes
: �
lstm_474/while/Identity_4Identity&lstm_474/while/lstm_cell_138/mul_2:z:0^lstm_474/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_474/while/Identity_5Identity&lstm_474/while/lstm_cell_138/add_1:z:0^lstm_474/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_474/while/NoOpNoOp4^lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp3^lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp5^lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_474_while_identity lstm_474/while/Identity:output:0"?
lstm_474_while_identity_1"lstm_474/while/Identity_1:output:0"?
lstm_474_while_identity_2"lstm_474/while/Identity_2:output:0"?
lstm_474_while_identity_3"lstm_474/while/Identity_3:output:0"?
lstm_474_while_identity_4"lstm_474/while/Identity_4:output:0"?
lstm_474_while_identity_5"lstm_474/while/Identity_5:output:0"T
'lstm_474_while_lstm_474_strided_slice_1)lstm_474_while_lstm_474_strided_slice_1_0"~
<lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource>lstm_474_while_lstm_cell_138_biasadd_readvariableop_resource_0"�
=lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource?lstm_474_while_lstm_cell_138_matmul_1_readvariableop_resource_0"|
;lstm_474_while_lstm_cell_138_matmul_readvariableop_resource=lstm_474_while_lstm_cell_138_matmul_readvariableop_resource_0"�
clstm_474_while_tensorarrayv2read_tensorlistgetitem_lstm_474_tensorarrayunstack_tensorlistfromtensorelstm_474_while_tensorarrayv2read_tensorlistgetitem_lstm_474_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp3lstm_474/while/lstm_cell_138/BiasAdd/ReadVariableOp2h
2lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp2lstm_474/while/lstm_cell_138/MatMul/ReadVariableOp2l
4lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp4lstm_474/while/lstm_cell_138/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_848882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_139_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_139_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_139_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_139_matmul_readvariableop_resource:	d�G
4while_lstm_cell_139_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_139_biasadd_readvariableop_resource:	���*while/lstm_cell_139/BiasAdd/ReadVariableOp�)while/lstm_cell_139/MatMul/ReadVariableOp�+while/lstm_cell_139/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_139/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_139_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_139/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_139_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_139/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_139/addAddV2$while/lstm_cell_139/MatMul:product:0&while/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_139_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_139/BiasAddBiasAddwhile/lstm_cell_139/add:z:02while/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_139/splitSplit,while/lstm_cell_139/split/split_dim:output:0$while/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_139/SigmoidSigmoid"while/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_1Sigmoid"while/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mulMul!while/lstm_cell_139/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_139/ReluRelu"while/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_1Mulwhile/lstm_cell_139/Sigmoid:y:0&while/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/add_1AddV2while/lstm_cell_139/mul:z:0while/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_2Sigmoid"while/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_139/Relu_1Reluwhile/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_2Mul!while/lstm_cell_139/Sigmoid_2:y:0(while/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_139/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_139/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_139/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_139/BiasAdd/ReadVariableOp*^while/lstm_cell_139/MatMul/ReadVariableOp,^while/lstm_cell_139/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_139_biasadd_readvariableop_resource5while_lstm_cell_139_biasadd_readvariableop_resource_0"n
4while_lstm_cell_139_matmul_1_readvariableop_resource6while_lstm_cell_139_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_139_matmul_readvariableop_resource4while_lstm_cell_139_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_139/BiasAdd/ReadVariableOp*while/lstm_cell_139/BiasAdd/ReadVariableOp2V
)while/lstm_cell_139/MatMul/ReadVariableOp)while/lstm_cell_139/MatMul/ReadVariableOp2Z
+while/lstm_cell_139/MatMul_1/ReadVariableOp+while/lstm_cell_139/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_848801

inputs>
,lstm_cell_140_matmul_readvariableop_resource:2(@
.lstm_cell_140_matmul_1_readvariableop_resource:
(;
-lstm_cell_140_biasadd_readvariableop_resource:(
identity��$lstm_cell_140/BiasAdd/ReadVariableOp�#lstm_cell_140/MatMul/ReadVariableOp�%lstm_cell_140/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_140/MatMul/ReadVariableOpReadVariableOp,lstm_cell_140_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_140/MatMulMatMulstrided_slice_2:output:0+lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_140_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_140/MatMul_1MatMulzeros:output:0-lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_140/addAddV2lstm_cell_140/MatMul:product:0 lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_140/BiasAddBiasAddlstm_cell_140/add:z:0,lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_140/splitSplit&lstm_cell_140/split/split_dim:output:0lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_140/SigmoidSigmoidlstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_1Sigmoidlstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_140/mulMullstm_cell_140/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_140/ReluRelulstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_1Mullstm_cell_140/Sigmoid:y:0 lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_140/add_1AddV2lstm_cell_140/mul:z:0lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_2Sigmoidlstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_140/Relu_1Relulstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_2Mullstm_cell_140/Sigmoid_2:y:0"lstm_cell_140/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_140_matmul_readvariableop_resource.lstm_cell_140_matmul_1_readvariableop_resource-lstm_cell_140_biasadd_readvariableop_resource*
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
while_body_848717*
condR
while_cond_848716*K
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
NoOpNoOp%^lstm_cell_140/BiasAdd/ReadVariableOp$^lstm_cell_140/MatMul/ReadVariableOp&^lstm_cell_140/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_140/BiasAdd/ReadVariableOp$lstm_cell_140/BiasAdd/ReadVariableOp2J
#lstm_cell_140/MatMul/ReadVariableOp#lstm_cell_140/MatMul/ReadVariableOp2N
%lstm_cell_140/MatMul_1/ReadVariableOp%lstm_cell_140/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_852017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_852017___redundant_placeholder04
0while_while_cond_852017___redundant_placeholder14
0while_while_cond_852017___redundant_placeholder24
0while_while_cond_852017___redundant_placeholder3
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

lstm_476_while_body_849737.
*lstm_476_while_lstm_476_while_loop_counter4
0lstm_476_while_lstm_476_while_maximum_iterations
lstm_476_while_placeholder 
lstm_476_while_placeholder_1 
lstm_476_while_placeholder_2 
lstm_476_while_placeholder_3-
)lstm_476_while_lstm_476_strided_slice_1_0i
elstm_476_while_tensorarrayv2read_tensorlistgetitem_lstm_476_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_476_while_lstm_cell_140_matmul_readvariableop_resource_0:2(Q
?lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource_0:
(L
>lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource_0:(
lstm_476_while_identity
lstm_476_while_identity_1
lstm_476_while_identity_2
lstm_476_while_identity_3
lstm_476_while_identity_4
lstm_476_while_identity_5+
'lstm_476_while_lstm_476_strided_slice_1g
clstm_476_while_tensorarrayv2read_tensorlistgetitem_lstm_476_tensorarrayunstack_tensorlistfromtensorM
;lstm_476_while_lstm_cell_140_matmul_readvariableop_resource:2(O
=lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource:
(J
<lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource:(��3lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp�2lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp�4lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp�
@lstm_476/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_476/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_476_while_tensorarrayv2read_tensorlistgetitem_lstm_476_tensorarrayunstack_tensorlistfromtensor_0lstm_476_while_placeholderIlstm_476/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_476/while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp=lstm_476_while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_476/while/lstm_cell_140/MatMulMatMul9lstm_476/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp?lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_476/while/lstm_cell_140/MatMul_1MatMullstm_476_while_placeholder_2<lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_476/while/lstm_cell_140/addAddV2-lstm_476/while/lstm_cell_140/MatMul:product:0/lstm_476/while/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp>lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_476/while/lstm_cell_140/BiasAddBiasAdd$lstm_476/while/lstm_cell_140/add:z:0;lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_476/while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_476/while/lstm_cell_140/splitSplit5lstm_476/while/lstm_cell_140/split/split_dim:output:0-lstm_476/while/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_476/while/lstm_cell_140/SigmoidSigmoid+lstm_476/while/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_476/while/lstm_cell_140/Sigmoid_1Sigmoid+lstm_476/while/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_476/while/lstm_cell_140/mulMul*lstm_476/while/lstm_cell_140/Sigmoid_1:y:0lstm_476_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_476/while/lstm_cell_140/ReluRelu+lstm_476/while/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_476/while/lstm_cell_140/mul_1Mul(lstm_476/while/lstm_cell_140/Sigmoid:y:0/lstm_476/while/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_476/while/lstm_cell_140/add_1AddV2$lstm_476/while/lstm_cell_140/mul:z:0&lstm_476/while/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_476/while/lstm_cell_140/Sigmoid_2Sigmoid+lstm_476/while/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_476/while/lstm_cell_140/Relu_1Relu&lstm_476/while/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_476/while/lstm_cell_140/mul_2Mul*lstm_476/while/lstm_cell_140/Sigmoid_2:y:01lstm_476/while/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_476/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_476_while_placeholder_1lstm_476_while_placeholder&lstm_476/while/lstm_cell_140/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_476/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_476/while/addAddV2lstm_476_while_placeholderlstm_476/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_476/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_476/while/add_1AddV2*lstm_476_while_lstm_476_while_loop_counterlstm_476/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_476/while/IdentityIdentitylstm_476/while/add_1:z:0^lstm_476/while/NoOp*
T0*
_output_shapes
: �
lstm_476/while/Identity_1Identity0lstm_476_while_lstm_476_while_maximum_iterations^lstm_476/while/NoOp*
T0*
_output_shapes
: t
lstm_476/while/Identity_2Identitylstm_476/while/add:z:0^lstm_476/while/NoOp*
T0*
_output_shapes
: �
lstm_476/while/Identity_3IdentityClstm_476/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_476/while/NoOp*
T0*
_output_shapes
: �
lstm_476/while/Identity_4Identity&lstm_476/while/lstm_cell_140/mul_2:z:0^lstm_476/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_476/while/Identity_5Identity&lstm_476/while/lstm_cell_140/add_1:z:0^lstm_476/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_476/while/NoOpNoOp4^lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp3^lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp5^lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_476_while_identity lstm_476/while/Identity:output:0"?
lstm_476_while_identity_1"lstm_476/while/Identity_1:output:0"?
lstm_476_while_identity_2"lstm_476/while/Identity_2:output:0"?
lstm_476_while_identity_3"lstm_476/while/Identity_3:output:0"?
lstm_476_while_identity_4"lstm_476/while/Identity_4:output:0"?
lstm_476_while_identity_5"lstm_476/while/Identity_5:output:0"T
'lstm_476_while_lstm_476_strided_slice_1)lstm_476_while_lstm_476_strided_slice_1_0"~
<lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource>lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource_0"�
=lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource?lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource_0"|
;lstm_476_while_lstm_cell_140_matmul_readvariableop_resource=lstm_476_while_lstm_cell_140_matmul_readvariableop_resource_0"�
clstm_476_while_tensorarrayv2read_tensorlistgetitem_lstm_476_tensorarrayunstack_tensorlistfromtensorelstm_476_while_tensorarrayv2read_tensorlistgetitem_lstm_476_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp3lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp2h
2lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp2lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp2l
4lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp4lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_850356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_850356___redundant_placeholder04
0while_while_cond_850356___redundant_placeholder14
0while_while_cond_850356___redundant_placeholder24
0while_while_cond_850356___redundant_placeholder3
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_852415

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
�

�
lstm_474_while_cond_849458.
*lstm_474_while_lstm_474_while_loop_counter4
0lstm_474_while_lstm_474_while_maximum_iterations
lstm_474_while_placeholder 
lstm_474_while_placeholder_1 
lstm_474_while_placeholder_2 
lstm_474_while_placeholder_30
,lstm_474_while_less_lstm_474_strided_slice_1F
Blstm_474_while_lstm_474_while_cond_849458___redundant_placeholder0F
Blstm_474_while_lstm_474_while_cond_849458___redundant_placeholder1F
Blstm_474_while_lstm_474_while_cond_849458___redundant_placeholder2F
Blstm_474_while_lstm_474_while_cond_849458___redundant_placeholder3
lstm_474_while_identity
�
lstm_474/while/LessLesslstm_474_while_placeholder,lstm_474_while_less_lstm_474_strided_slice_1*
T0*
_output_shapes
: ]
lstm_474/while/IdentityIdentitylstm_474/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_474_while_identity lstm_474/while/Identity:output:0*(
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
�
)__inference_lstm_476_layer_call_fn_851497
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_847936o
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
while_cond_850499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_850499___redundant_placeholder04
0while_while_cond_850499___redundant_placeholder14
0while_while_cond_850499___redundant_placeholder24
0while_while_cond_850499___redundant_placeholder3
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_848285

inputs?
,lstm_cell_138_matmul_readvariableop_resource:	�A
.lstm_cell_138_matmul_1_readvariableop_resource:	d�<
-lstm_cell_138_biasadd_readvariableop_resource:	�
identity��$lstm_cell_138/BiasAdd/ReadVariableOp�#lstm_cell_138/MatMul/ReadVariableOp�%lstm_cell_138/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_138/MatMul/ReadVariableOpReadVariableOp,lstm_cell_138_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_138/MatMulMatMulstrided_slice_2:output:0+lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_138_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_138/MatMul_1MatMulzeros:output:0-lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_138/addAddV2lstm_cell_138/MatMul:product:0 lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_138_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_138/BiasAddBiasAddlstm_cell_138/add:z:0,lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_138/splitSplit&lstm_cell_138/split/split_dim:output:0lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_138/SigmoidSigmoidlstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_1Sigmoidlstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_138/mulMullstm_cell_138/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_138/ReluRelulstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_1Mullstm_cell_138/Sigmoid:y:0 lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_138/add_1AddV2lstm_cell_138/mul:z:0lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_2Sigmoidlstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_138/Relu_1Relulstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_2Mullstm_cell_138/Sigmoid_2:y:0"lstm_cell_138/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_138_matmul_readvariableop_resource.lstm_cell_138_matmul_1_readvariableop_resource-lstm_cell_138_biasadd_readvariableop_resource*
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
while_body_848201*
condR
while_cond_848200*K
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
NoOpNoOp%^lstm_cell_138/BiasAdd/ReadVariableOp$^lstm_cell_138/MatMul/ReadVariableOp&^lstm_cell_138/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_138/BiasAdd/ReadVariableOp$lstm_cell_138/BiasAdd/ReadVariableOp2J
#lstm_cell_138/MatMul/ReadVariableOp#lstm_cell_138/MatMul/ReadVariableOp2N
%lstm_cell_138/MatMul_1/ReadVariableOp%lstm_cell_138/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�T
�
)sequential_158_lstm_475_while_body_846857L
Hsequential_158_lstm_475_while_sequential_158_lstm_475_while_loop_counterR
Nsequential_158_lstm_475_while_sequential_158_lstm_475_while_maximum_iterations-
)sequential_158_lstm_475_while_placeholder/
+sequential_158_lstm_475_while_placeholder_1/
+sequential_158_lstm_475_while_placeholder_2/
+sequential_158_lstm_475_while_placeholder_3K
Gsequential_158_lstm_475_while_sequential_158_lstm_475_strided_slice_1_0�
�sequential_158_lstm_475_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_475_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_158_lstm_475_while_lstm_cell_139_matmul_readvariableop_resource_0:	d�a
Nsequential_158_lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource_0:	2�\
Msequential_158_lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource_0:	�*
&sequential_158_lstm_475_while_identity,
(sequential_158_lstm_475_while_identity_1,
(sequential_158_lstm_475_while_identity_2,
(sequential_158_lstm_475_while_identity_3,
(sequential_158_lstm_475_while_identity_4,
(sequential_158_lstm_475_while_identity_5I
Esequential_158_lstm_475_while_sequential_158_lstm_475_strided_slice_1�
�sequential_158_lstm_475_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_475_tensorarrayunstack_tensorlistfromtensor]
Jsequential_158_lstm_475_while_lstm_cell_139_matmul_readvariableop_resource:	d�_
Lsequential_158_lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource:	2�Z
Ksequential_158_lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource:	���Bsequential_158/lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp�Asequential_158/lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp�Csequential_158/lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp�
Osequential_158/lstm_475/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
Asequential_158/lstm_475/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_158_lstm_475_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_475_tensorarrayunstack_tensorlistfromtensor_0)sequential_158_lstm_475_while_placeholderXsequential_158/lstm_475/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
Asequential_158/lstm_475/while/lstm_cell_139/MatMul/ReadVariableOpReadVariableOpLsequential_158_lstm_475_while_lstm_cell_139_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_158/lstm_475/while/lstm_cell_139/MatMulMatMulHsequential_158/lstm_475/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_158/lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_158/lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOpNsequential_158_lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
4sequential_158/lstm_475/while/lstm_cell_139/MatMul_1MatMul+sequential_158_lstm_475_while_placeholder_2Ksequential_158/lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_158/lstm_475/while/lstm_cell_139/addAddV2<sequential_158/lstm_475/while/lstm_cell_139/MatMul:product:0>sequential_158/lstm_475/while/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_158/lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOpMsequential_158_lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_158/lstm_475/while/lstm_cell_139/BiasAddBiasAdd3sequential_158/lstm_475/while/lstm_cell_139/add:z:0Jsequential_158/lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_158/lstm_475/while/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_158/lstm_475/while/lstm_cell_139/splitSplitDsequential_158/lstm_475/while/lstm_cell_139/split/split_dim:output:0<sequential_158/lstm_475/while/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
3sequential_158/lstm_475/while/lstm_cell_139/SigmoidSigmoid:sequential_158/lstm_475/while/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2�
5sequential_158/lstm_475/while/lstm_cell_139/Sigmoid_1Sigmoid:sequential_158/lstm_475/while/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
/sequential_158/lstm_475/while/lstm_cell_139/mulMul9sequential_158/lstm_475/while/lstm_cell_139/Sigmoid_1:y:0+sequential_158_lstm_475_while_placeholder_3*
T0*'
_output_shapes
:���������2�
0sequential_158/lstm_475/while/lstm_cell_139/ReluRelu:sequential_158/lstm_475/while/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
1sequential_158/lstm_475/while/lstm_cell_139/mul_1Mul7sequential_158/lstm_475/while/lstm_cell_139/Sigmoid:y:0>sequential_158/lstm_475/while/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
1sequential_158/lstm_475/while/lstm_cell_139/add_1AddV23sequential_158/lstm_475/while/lstm_cell_139/mul:z:05sequential_158/lstm_475/while/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2�
5sequential_158/lstm_475/while/lstm_cell_139/Sigmoid_2Sigmoid:sequential_158/lstm_475/while/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2�
2sequential_158/lstm_475/while/lstm_cell_139/Relu_1Relu5sequential_158/lstm_475/while/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_158/lstm_475/while/lstm_cell_139/mul_2Mul9sequential_158/lstm_475/while/lstm_cell_139/Sigmoid_2:y:0@sequential_158/lstm_475/while/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Bsequential_158/lstm_475/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_158_lstm_475_while_placeholder_1)sequential_158_lstm_475_while_placeholder5sequential_158/lstm_475/while/lstm_cell_139/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_158/lstm_475/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_158/lstm_475/while/addAddV2)sequential_158_lstm_475_while_placeholder,sequential_158/lstm_475/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_158/lstm_475/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_158/lstm_475/while/add_1AddV2Hsequential_158_lstm_475_while_sequential_158_lstm_475_while_loop_counter.sequential_158/lstm_475/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_158/lstm_475/while/IdentityIdentity'sequential_158/lstm_475/while/add_1:z:0#^sequential_158/lstm_475/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_475/while/Identity_1IdentityNsequential_158_lstm_475_while_sequential_158_lstm_475_while_maximum_iterations#^sequential_158/lstm_475/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_475/while/Identity_2Identity%sequential_158/lstm_475/while/add:z:0#^sequential_158/lstm_475/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_475/while/Identity_3IdentityRsequential_158/lstm_475/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_158/lstm_475/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_475/while/Identity_4Identity5sequential_158/lstm_475/while/lstm_cell_139/mul_2:z:0#^sequential_158/lstm_475/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_158/lstm_475/while/Identity_5Identity5sequential_158/lstm_475/while/lstm_cell_139/add_1:z:0#^sequential_158/lstm_475/while/NoOp*
T0*'
_output_shapes
:���������2�
"sequential_158/lstm_475/while/NoOpNoOpC^sequential_158/lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOpB^sequential_158/lstm_475/while/lstm_cell_139/MatMul/ReadVariableOpD^sequential_158/lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_158_lstm_475_while_identity/sequential_158/lstm_475/while/Identity:output:0"]
(sequential_158_lstm_475_while_identity_11sequential_158/lstm_475/while/Identity_1:output:0"]
(sequential_158_lstm_475_while_identity_21sequential_158/lstm_475/while/Identity_2:output:0"]
(sequential_158_lstm_475_while_identity_31sequential_158/lstm_475/while/Identity_3:output:0"]
(sequential_158_lstm_475_while_identity_41sequential_158/lstm_475/while/Identity_4:output:0"]
(sequential_158_lstm_475_while_identity_51sequential_158/lstm_475/while/Identity_5:output:0"�
Ksequential_158_lstm_475_while_lstm_cell_139_biasadd_readvariableop_resourceMsequential_158_lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource_0"�
Lsequential_158_lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resourceNsequential_158_lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource_0"�
Jsequential_158_lstm_475_while_lstm_cell_139_matmul_readvariableop_resourceLsequential_158_lstm_475_while_lstm_cell_139_matmul_readvariableop_resource_0"�
Esequential_158_lstm_475_while_sequential_158_lstm_475_strided_slice_1Gsequential_158_lstm_475_while_sequential_158_lstm_475_strided_slice_1_0"�
�sequential_158_lstm_475_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_475_tensorarrayunstack_tensorlistfromtensor�sequential_158_lstm_475_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_475_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
Bsequential_158/lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOpBsequential_158/lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp2�
Asequential_158/lstm_475/while/lstm_cell_139/MatMul/ReadVariableOpAsequential_158/lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp2�
Csequential_158/lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOpCsequential_158/lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_475_while_cond_849597.
*lstm_475_while_lstm_475_while_loop_counter4
0lstm_475_while_lstm_475_while_maximum_iterations
lstm_475_while_placeholder 
lstm_475_while_placeholder_1 
lstm_475_while_placeholder_2 
lstm_475_while_placeholder_30
,lstm_475_while_less_lstm_475_strided_slice_1F
Blstm_475_while_lstm_475_while_cond_849597___redundant_placeholder0F
Blstm_475_while_lstm_475_while_cond_849597___redundant_placeholder1F
Blstm_475_while_lstm_475_while_cond_849597___redundant_placeholder2F
Blstm_475_while_lstm_475_while_cond_849597___redundant_placeholder3
lstm_475_while_identity
�
lstm_475/while/LessLesslstm_475_while_placeholder,lstm_475_while_less_lstm_475_strided_slice_1*
T0*
_output_shapes
: ]
lstm_475/while/IdentityIdentitylstm_475/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_475_while_identity lstm_475/while/Identity:output:0*(
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_850727

inputs?
,lstm_cell_138_matmul_readvariableop_resource:	�A
.lstm_cell_138_matmul_1_readvariableop_resource:	d�<
-lstm_cell_138_biasadd_readvariableop_resource:	�
identity��$lstm_cell_138/BiasAdd/ReadVariableOp�#lstm_cell_138/MatMul/ReadVariableOp�%lstm_cell_138/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_138/MatMul/ReadVariableOpReadVariableOp,lstm_cell_138_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_138/MatMulMatMulstrided_slice_2:output:0+lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_138_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_138/MatMul_1MatMulzeros:output:0-lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_138/addAddV2lstm_cell_138/MatMul:product:0 lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_138_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_138/BiasAddBiasAddlstm_cell_138/add:z:0,lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_138/splitSplit&lstm_cell_138/split/split_dim:output:0lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_138/SigmoidSigmoidlstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_1Sigmoidlstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_138/mulMullstm_cell_138/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_138/ReluRelulstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_1Mullstm_cell_138/Sigmoid:y:0 lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_138/add_1AddV2lstm_cell_138/mul:z:0lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_2Sigmoidlstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_138/Relu_1Relulstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_2Mullstm_cell_138/Sigmoid_2:y:0"lstm_cell_138/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_138_matmul_readvariableop_resource.lstm_cell_138_matmul_1_readvariableop_resource-lstm_cell_138_biasadd_readvariableop_resource*
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
while_body_850643*
condR
while_cond_850642*K
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
NoOpNoOp%^lstm_cell_138/BiasAdd/ReadVariableOp$^lstm_cell_138/MatMul/ReadVariableOp&^lstm_cell_138/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_138/BiasAdd/ReadVariableOp$lstm_cell_138/BiasAdd/ReadVariableOp2J
#lstm_cell_138/MatMul/ReadVariableOp#lstm_cell_138/MatMul/ReadVariableOp2N
%lstm_cell_138/MatMul_1/ReadVariableOp%lstm_cell_138/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_851116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_139_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_139_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_139_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_139_matmul_readvariableop_resource:	d�G
4while_lstm_cell_139_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_139_biasadd_readvariableop_resource:	���*while/lstm_cell_139/BiasAdd/ReadVariableOp�)while/lstm_cell_139/MatMul/ReadVariableOp�+while/lstm_cell_139/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_139/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_139_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_139/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_139_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_139/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_139/addAddV2$while/lstm_cell_139/MatMul:product:0&while/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_139_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_139/BiasAddBiasAddwhile/lstm_cell_139/add:z:02while/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_139/splitSplit,while/lstm_cell_139/split/split_dim:output:0$while/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_139/SigmoidSigmoid"while/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_1Sigmoid"while/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mulMul!while/lstm_cell_139/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_139/ReluRelu"while/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_1Mulwhile/lstm_cell_139/Sigmoid:y:0&while/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/add_1AddV2while/lstm_cell_139/mul:z:0while/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_2Sigmoid"while/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_139/Relu_1Reluwhile/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_2Mul!while/lstm_cell_139/Sigmoid_2:y:0(while/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_139/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_139/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_139/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_139/BiasAdd/ReadVariableOp*^while/lstm_cell_139/MatMul/ReadVariableOp,^while/lstm_cell_139/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_139_biasadd_readvariableop_resource5while_lstm_cell_139_biasadd_readvariableop_resource_0"n
4while_lstm_cell_139_matmul_1_readvariableop_resource6while_lstm_cell_139_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_139_matmul_readvariableop_resource4while_lstm_cell_139_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_139/BiasAdd/ReadVariableOp*while/lstm_cell_139/BiasAdd/ReadVariableOp2V
)while/lstm_cell_139/MatMul/ReadVariableOp)while/lstm_cell_139/MatMul/ReadVariableOp2Z
+while/lstm_cell_139/MatMul_1/ReadVariableOp+while/lstm_cell_139/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_475_while_body_850025.
*lstm_475_while_lstm_475_while_loop_counter4
0lstm_475_while_lstm_475_while_maximum_iterations
lstm_475_while_placeholder 
lstm_475_while_placeholder_1 
lstm_475_while_placeholder_2 
lstm_475_while_placeholder_3-
)lstm_475_while_lstm_475_strided_slice_1_0i
elstm_475_while_tensorarrayv2read_tensorlistgetitem_lstm_475_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_475_while_lstm_cell_139_matmul_readvariableop_resource_0:	d�R
?lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource_0:	2�M
>lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource_0:	�
lstm_475_while_identity
lstm_475_while_identity_1
lstm_475_while_identity_2
lstm_475_while_identity_3
lstm_475_while_identity_4
lstm_475_while_identity_5+
'lstm_475_while_lstm_475_strided_slice_1g
clstm_475_while_tensorarrayv2read_tensorlistgetitem_lstm_475_tensorarrayunstack_tensorlistfromtensorN
;lstm_475_while_lstm_cell_139_matmul_readvariableop_resource:	d�P
=lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource:	2�K
<lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource:	���3lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp�2lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp�4lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp�
@lstm_475/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_475/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_475_while_tensorarrayv2read_tensorlistgetitem_lstm_475_tensorarrayunstack_tensorlistfromtensor_0lstm_475_while_placeholderIlstm_475/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_475/while/lstm_cell_139/MatMul/ReadVariableOpReadVariableOp=lstm_475_while_lstm_cell_139_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_475/while/lstm_cell_139/MatMulMatMul9lstm_475/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp?lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_475/while/lstm_cell_139/MatMul_1MatMullstm_475_while_placeholder_2<lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_475/while/lstm_cell_139/addAddV2-lstm_475/while/lstm_cell_139/MatMul:product:0/lstm_475/while/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp>lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_475/while/lstm_cell_139/BiasAddBiasAdd$lstm_475/while/lstm_cell_139/add:z:0;lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_475/while/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_475/while/lstm_cell_139/splitSplit5lstm_475/while/lstm_cell_139/split/split_dim:output:0-lstm_475/while/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_475/while/lstm_cell_139/SigmoidSigmoid+lstm_475/while/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_475/while/lstm_cell_139/Sigmoid_1Sigmoid+lstm_475/while/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_475/while/lstm_cell_139/mulMul*lstm_475/while/lstm_cell_139/Sigmoid_1:y:0lstm_475_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_475/while/lstm_cell_139/ReluRelu+lstm_475/while/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_475/while/lstm_cell_139/mul_1Mul(lstm_475/while/lstm_cell_139/Sigmoid:y:0/lstm_475/while/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_475/while/lstm_cell_139/add_1AddV2$lstm_475/while/lstm_cell_139/mul:z:0&lstm_475/while/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_475/while/lstm_cell_139/Sigmoid_2Sigmoid+lstm_475/while/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_475/while/lstm_cell_139/Relu_1Relu&lstm_475/while/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_475/while/lstm_cell_139/mul_2Mul*lstm_475/while/lstm_cell_139/Sigmoid_2:y:01lstm_475/while/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_475/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_475_while_placeholder_1lstm_475_while_placeholder&lstm_475/while/lstm_cell_139/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_475/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_475/while/addAddV2lstm_475_while_placeholderlstm_475/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_475/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_475/while/add_1AddV2*lstm_475_while_lstm_475_while_loop_counterlstm_475/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_475/while/IdentityIdentitylstm_475/while/add_1:z:0^lstm_475/while/NoOp*
T0*
_output_shapes
: �
lstm_475/while/Identity_1Identity0lstm_475_while_lstm_475_while_maximum_iterations^lstm_475/while/NoOp*
T0*
_output_shapes
: t
lstm_475/while/Identity_2Identitylstm_475/while/add:z:0^lstm_475/while/NoOp*
T0*
_output_shapes
: �
lstm_475/while/Identity_3IdentityClstm_475/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_475/while/NoOp*
T0*
_output_shapes
: �
lstm_475/while/Identity_4Identity&lstm_475/while/lstm_cell_139/mul_2:z:0^lstm_475/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_475/while/Identity_5Identity&lstm_475/while/lstm_cell_139/add_1:z:0^lstm_475/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_475/while/NoOpNoOp4^lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp3^lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp5^lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_475_while_identity lstm_475/while/Identity:output:0"?
lstm_475_while_identity_1"lstm_475/while/Identity_1:output:0"?
lstm_475_while_identity_2"lstm_475/while/Identity_2:output:0"?
lstm_475_while_identity_3"lstm_475/while/Identity_3:output:0"?
lstm_475_while_identity_4"lstm_475/while/Identity_4:output:0"?
lstm_475_while_identity_5"lstm_475/while/Identity_5:output:0"T
'lstm_475_while_lstm_475_strided_slice_1)lstm_475_while_lstm_475_strided_slice_1_0"~
<lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource>lstm_475_while_lstm_cell_139_biasadd_readvariableop_resource_0"�
=lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource?lstm_475_while_lstm_cell_139_matmul_1_readvariableop_resource_0"|
;lstm_475_while_lstm_cell_139_matmul_readvariableop_resource=lstm_475_while_lstm_cell_139_matmul_readvariableop_resource_0"�
clstm_475_while_tensorarrayv2read_tensorlistgetitem_lstm_475_tensorarrayunstack_tensorlistfromtensorelstm_475_while_tensorarrayv2read_tensorlistgetitem_lstm_475_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp3lstm_475/while/lstm_cell_139/BiasAdd/ReadVariableOp2h
2lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp2lstm_475/while/lstm_cell_139/MatMul/ReadVariableOp2l
4lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp4lstm_475/while/lstm_cell_139/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_852383

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
while_cond_847516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_847516___redundant_placeholder04
0while_while_cond_847516___redundant_placeholder14
0while_while_cond_847516___redundant_placeholder24
0while_while_cond_847516___redundant_placeholder3
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_851816
inputs_0>
,lstm_cell_140_matmul_readvariableop_resource:2(@
.lstm_cell_140_matmul_1_readvariableop_resource:
(;
-lstm_cell_140_biasadd_readvariableop_resource:(
identity��$lstm_cell_140/BiasAdd/ReadVariableOp�#lstm_cell_140/MatMul/ReadVariableOp�%lstm_cell_140/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_140/MatMul/ReadVariableOpReadVariableOp,lstm_cell_140_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_140/MatMulMatMulstrided_slice_2:output:0+lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_140_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_140/MatMul_1MatMulzeros:output:0-lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_140/addAddV2lstm_cell_140/MatMul:product:0 lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_140/BiasAddBiasAddlstm_cell_140/add:z:0,lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_140/splitSplit&lstm_cell_140/split/split_dim:output:0lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_140/SigmoidSigmoidlstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_1Sigmoidlstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_140/mulMullstm_cell_140/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_140/ReluRelulstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_1Mullstm_cell_140/Sigmoid:y:0 lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_140/add_1AddV2lstm_cell_140/mul:z:0lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_2Sigmoidlstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_140/Relu_1Relulstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_2Mullstm_cell_140/Sigmoid_2:y:0"lstm_cell_140/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_140_matmul_readvariableop_resource.lstm_cell_140_matmul_1_readvariableop_resource-lstm_cell_140_biasadd_readvariableop_resource*
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
while_body_851732*
condR
while_cond_851731*K
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
NoOpNoOp%^lstm_cell_140/BiasAdd/ReadVariableOp$^lstm_cell_140/MatMul/ReadVariableOp&^lstm_cell_140/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_140/BiasAdd/ReadVariableOp$lstm_cell_140/BiasAdd/ReadVariableOp2J
#lstm_cell_140/MatMul/ReadVariableOp#lstm_cell_140/MatMul/ReadVariableOp2N
%lstm_cell_140/MatMul_1/ReadVariableOp%lstm_cell_140/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�J
�
D__inference_lstm_474_layer_call_and_return_conditional_losses_849131

inputs?
,lstm_cell_138_matmul_readvariableop_resource:	�A
.lstm_cell_138_matmul_1_readvariableop_resource:	d�<
-lstm_cell_138_biasadd_readvariableop_resource:	�
identity��$lstm_cell_138/BiasAdd/ReadVariableOp�#lstm_cell_138/MatMul/ReadVariableOp�%lstm_cell_138/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_138/MatMul/ReadVariableOpReadVariableOp,lstm_cell_138_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_138/MatMulMatMulstrided_slice_2:output:0+lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_138_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_138/MatMul_1MatMulzeros:output:0-lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_138/addAddV2lstm_cell_138/MatMul:product:0 lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_138_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_138/BiasAddBiasAddlstm_cell_138/add:z:0,lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_138/splitSplit&lstm_cell_138/split/split_dim:output:0lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_138/SigmoidSigmoidlstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_1Sigmoidlstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_138/mulMullstm_cell_138/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_138/ReluRelulstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_1Mullstm_cell_138/Sigmoid:y:0 lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_138/add_1AddV2lstm_cell_138/mul:z:0lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_2Sigmoidlstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_138/Relu_1Relulstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_2Mullstm_cell_138/Sigmoid_2:y:0"lstm_cell_138/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_138_matmul_readvariableop_resource.lstm_cell_138_matmul_1_readvariableop_resource-lstm_cell_138_biasadd_readvariableop_resource*
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
while_body_849047*
condR
while_cond_849046*K
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
NoOpNoOp%^lstm_cell_138/BiasAdd/ReadVariableOp$^lstm_cell_138/MatMul/ReadVariableOp&^lstm_cell_138/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_138/BiasAdd/ReadVariableOp$lstm_cell_138/BiasAdd/ReadVariableOp2J
#lstm_cell_138/MatMul/ReadVariableOp#lstm_cell_138/MatMul/ReadVariableOp2N
%lstm_cell_138/MatMul_1/ReadVariableOp%lstm_cell_138/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_474_layer_call_fn_850287

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
D__inference_lstm_474_layer_call_and_return_conditional_losses_848285s
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
�"
�
while_body_847867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_140_847891_0:2(.
while_lstm_cell_140_847893_0:
(*
while_lstm_cell_140_847895_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_140_847891:2(,
while_lstm_cell_140_847893:
((
while_lstm_cell_140_847895:(��+while/lstm_cell_140/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_140/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_140_847891_0while_lstm_cell_140_847893_0while_lstm_cell_140_847895_0*
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_847853�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_140/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_140/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_140/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_140/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_140_847891while_lstm_cell_140_847891_0":
while_lstm_cell_140_847893while_lstm_cell_140_847893_0":
while_lstm_cell_140_847895while_lstm_cell_140_847895_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_140/StatefulPartitionedCall+while/lstm_cell_140/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_847649

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
�K
�
D__inference_lstm_475_layer_call_and_return_conditional_losses_851200
inputs_0?
,lstm_cell_139_matmul_readvariableop_resource:	d�A
.lstm_cell_139_matmul_1_readvariableop_resource:	2�<
-lstm_cell_139_biasadd_readvariableop_resource:	�
identity��$lstm_cell_139/BiasAdd/ReadVariableOp�#lstm_cell_139/MatMul/ReadVariableOp�%lstm_cell_139/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_139/MatMul/ReadVariableOpReadVariableOp,lstm_cell_139_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_139/MatMulMatMulstrided_slice_2:output:0+lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_139_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_139/MatMul_1MatMulzeros:output:0-lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_139/addAddV2lstm_cell_139/MatMul:product:0 lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_139_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_139/BiasAddBiasAddlstm_cell_139/add:z:0,lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_139/splitSplit&lstm_cell_139/split/split_dim:output:0lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_139/SigmoidSigmoidlstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_1Sigmoidlstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_139/mulMullstm_cell_139/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_139/ReluRelulstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_1Mullstm_cell_139/Sigmoid:y:0 lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_139/add_1AddV2lstm_cell_139/mul:z:0lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_2Sigmoidlstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_139/Relu_1Relulstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_2Mullstm_cell_139/Sigmoid_2:y:0"lstm_cell_139/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_139_matmul_readvariableop_resource.lstm_cell_139_matmul_1_readvariableop_resource-lstm_cell_139_biasadd_readvariableop_resource*
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
while_body_851116*
condR
while_cond_851115*K
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
NoOpNoOp%^lstm_cell_139/BiasAdd/ReadVariableOp$^lstm_cell_139/MatMul/ReadVariableOp&^lstm_cell_139/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_139/BiasAdd/ReadVariableOp$lstm_cell_139/BiasAdd/ReadVariableOp2J
#lstm_cell_139/MatMul/ReadVariableOp#lstm_cell_139/MatMul/ReadVariableOp2N
%lstm_cell_139/MatMul_1/ReadVariableOp%lstm_cell_139/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�"
�
while_body_848058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_140_848082_0:2(.
while_lstm_cell_140_848084_0:
(*
while_lstm_cell_140_848086_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_140_848082:2(,
while_lstm_cell_140_848084:
((
while_lstm_cell_140_848086:(��+while/lstm_cell_140/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_140/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_140_848082_0while_lstm_cell_140_848084_0while_lstm_cell_140_848086_0*
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_847999�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_140/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_140/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_140/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_140/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_140_848082while_lstm_cell_140_848082_0":
while_lstm_cell_140_848084while_lstm_cell_140_848084_0":
while_lstm_cell_140_848086while_lstm_cell_140_848086_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_140/StatefulPartitionedCall+while/lstm_cell_140/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_847236

inputs'
lstm_cell_138_847154:	�'
lstm_cell_138_847156:	d�#
lstm_cell_138_847158:	�
identity��%lstm_cell_138/StatefulPartitionedCall�while;
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
%lstm_cell_138/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_138_847154lstm_cell_138_847156lstm_cell_138_847158*
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_847153n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_138_847154lstm_cell_138_847156lstm_cell_138_847158*
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
while_body_847167*
condR
while_cond_847166*K
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
NoOpNoOp&^lstm_cell_138/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_138/StatefulPartitionedCall%lstm_cell_138/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�8
�
while_body_851875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_140_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_140_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_140_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_140_matmul_readvariableop_resource:2(F
4while_lstm_cell_140_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_140_biasadd_readvariableop_resource:(��*while/lstm_cell_140/BiasAdd/ReadVariableOp�)while/lstm_cell_140/MatMul/ReadVariableOp�+while/lstm_cell_140/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_140/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_140_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_140/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_140/addAddV2$while/lstm_cell_140/MatMul:product:0&while/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_140/BiasAddBiasAddwhile/lstm_cell_140/add:z:02while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_140/splitSplit,while/lstm_cell_140/split/split_dim:output:0$while/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_140/SigmoidSigmoid"while/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_1Sigmoid"while/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mulMul!while/lstm_cell_140/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_140/ReluRelu"while/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_1Mulwhile/lstm_cell_140/Sigmoid:y:0&while/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/add_1AddV2while/lstm_cell_140/mul:z:0while/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_2Sigmoid"while/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_140/Relu_1Reluwhile/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_2Mul!while/lstm_cell_140/Sigmoid_2:y:0(while/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_140/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_140/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_140/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp,^while/lstm_cell_140/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_140_biasadd_readvariableop_resource5while_lstm_cell_140_biasadd_readvariableop_resource_0"n
4while_lstm_cell_140_matmul_1_readvariableop_resource6while_lstm_cell_140_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_140_matmul_readvariableop_resource4while_lstm_cell_140_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_140/BiasAdd/ReadVariableOp*while/lstm_cell_140/BiasAdd/ReadVariableOp2V
)while/lstm_cell_140/MatMul/ReadVariableOp)while/lstm_cell_140/MatMul/ReadVariableOp2Z
+while/lstm_cell_140/MatMul_1/ReadVariableOp+while/lstm_cell_140/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_847503

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
while_body_848201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_138_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_138_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_138_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_138_matmul_readvariableop_resource:	�G
4while_lstm_cell_138_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_138_biasadd_readvariableop_resource:	���*while/lstm_cell_138/BiasAdd/ReadVariableOp�)while/lstm_cell_138/MatMul/ReadVariableOp�+while/lstm_cell_138/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_138/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_138_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_138/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_138_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_138/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_138/addAddV2$while/lstm_cell_138/MatMul:product:0&while/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_138_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_138/BiasAddBiasAddwhile/lstm_cell_138/add:z:02while/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_138/splitSplit,while/lstm_cell_138/split/split_dim:output:0$while/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_138/SigmoidSigmoid"while/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_1Sigmoid"while/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mulMul!while/lstm_cell_138/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_138/ReluRelu"while/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_1Mulwhile/lstm_cell_138/Sigmoid:y:0&while/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/add_1AddV2while/lstm_cell_138/mul:z:0while/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_2Sigmoid"while/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_138/Relu_1Reluwhile/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_2Mul!while/lstm_cell_138/Sigmoid_2:y:0(while/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_138/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_138/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_138/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_138/BiasAdd/ReadVariableOp*^while/lstm_cell_138/MatMul/ReadVariableOp,^while/lstm_cell_138/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_138_biasadd_readvariableop_resource5while_lstm_cell_138_biasadd_readvariableop_resource_0"n
4while_lstm_cell_138_matmul_1_readvariableop_resource6while_lstm_cell_138_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_138_matmul_readvariableop_resource4while_lstm_cell_138_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_138/BiasAdd/ReadVariableOp*while/lstm_cell_138/BiasAdd/ReadVariableOp2V
)while/lstm_cell_138/MatMul/ReadVariableOp)while/lstm_cell_138/MatMul/ReadVariableOp2Z
+while/lstm_cell_138/MatMul_1/ReadVariableOp+while/lstm_cell_138/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_476_while_cond_849736.
*lstm_476_while_lstm_476_while_loop_counter4
0lstm_476_while_lstm_476_while_maximum_iterations
lstm_476_while_placeholder 
lstm_476_while_placeholder_1 
lstm_476_while_placeholder_2 
lstm_476_while_placeholder_30
,lstm_476_while_less_lstm_476_strided_slice_1F
Blstm_476_while_lstm_476_while_cond_849736___redundant_placeholder0F
Blstm_476_while_lstm_476_while_cond_849736___redundant_placeholder1F
Blstm_476_while_lstm_476_while_cond_849736___redundant_placeholder2F
Blstm_476_while_lstm_476_while_cond_849736___redundant_placeholder3
lstm_476_while_identity
�
lstm_476/while/LessLesslstm_476_while_placeholder,lstm_476_while_less_lstm_476_strided_slice_1*
T0*
_output_shapes
: ]
lstm_476/while/IdentityIdentitylstm_476/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_476_while_identity lstm_476/while/Identity:output:0*(
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_849281
lstm_474_input"
lstm_474_849254:	�"
lstm_474_849256:	d�
lstm_474_849258:	�"
lstm_475_849261:	d�"
lstm_475_849263:	2�
lstm_475_849265:	�!
lstm_476_849268:2(!
lstm_476_849270:
(
lstm_476_849272:("
dense_158_849275:

dense_158_849277:
identity��!dense_158/StatefulPartitionedCall� lstm_474/StatefulPartitionedCall� lstm_475/StatefulPartitionedCall� lstm_476/StatefulPartitionedCall�
 lstm_474/StatefulPartitionedCallStatefulPartitionedCalllstm_474_inputlstm_474_849254lstm_474_849256lstm_474_849258*
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_848285�
 lstm_475/StatefulPartitionedCallStatefulPartitionedCall)lstm_474/StatefulPartitionedCall:output:0lstm_475_849261lstm_475_849263lstm_475_849265*
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_848435�
 lstm_476/StatefulPartitionedCallStatefulPartitionedCall)lstm_475/StatefulPartitionedCall:output:0lstm_476_849268lstm_476_849270lstm_476_849272*
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_848585�
!dense_158/StatefulPartitionedCallStatefulPartitionedCall)lstm_476/StatefulPartitionedCall:output:0dense_158_849275dense_158_849277*
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
E__inference_dense_158_layer_call_and_return_conditional_losses_848603y
IdentityIdentity*dense_158/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_158/StatefulPartitionedCall!^lstm_474/StatefulPartitionedCall!^lstm_475/StatefulPartitionedCall!^lstm_476/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_158/StatefulPartitionedCall!dense_158/StatefulPartitionedCall2D
 lstm_474/StatefulPartitionedCall lstm_474/StatefulPartitionedCall2D
 lstm_475/StatefulPartitionedCall lstm_475/StatefulPartitionedCall2D
 lstm_476/StatefulPartitionedCall lstm_476/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_474_input
�
�
while_cond_851258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_851258___redundant_placeholder04
0while_while_cond_851258___redundant_placeholder14
0while_while_cond_851258___redundant_placeholder24
0while_while_cond_851258___redundant_placeholder3
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
while_body_851402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_139_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_139_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_139_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_139_matmul_readvariableop_resource:	d�G
4while_lstm_cell_139_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_139_biasadd_readvariableop_resource:	���*while/lstm_cell_139/BiasAdd/ReadVariableOp�)while/lstm_cell_139/MatMul/ReadVariableOp�+while/lstm_cell_139/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_139/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_139_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_139/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_139_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_139/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_139/addAddV2$while/lstm_cell_139/MatMul:product:0&while/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_139_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_139/BiasAddBiasAddwhile/lstm_cell_139/add:z:02while/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_139/splitSplit,while/lstm_cell_139/split/split_dim:output:0$while/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_139/SigmoidSigmoid"while/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_1Sigmoid"while/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mulMul!while/lstm_cell_139/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_139/ReluRelu"while/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_1Mulwhile/lstm_cell_139/Sigmoid:y:0&while/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/add_1AddV2while/lstm_cell_139/mul:z:0while/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_2Sigmoid"while/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_139/Relu_1Reluwhile/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_2Mul!while/lstm_cell_139/Sigmoid_2:y:0(while/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_139/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_139/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_139/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_139/BiasAdd/ReadVariableOp*^while/lstm_cell_139/MatMul/ReadVariableOp,^while/lstm_cell_139/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_139_biasadd_readvariableop_resource5while_lstm_cell_139_biasadd_readvariableop_resource_0"n
4while_lstm_cell_139_matmul_1_readvariableop_resource6while_lstm_cell_139_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_139_matmul_readvariableop_resource4while_lstm_cell_139_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_139/BiasAdd/ReadVariableOp*while/lstm_cell_139/BiasAdd/ReadVariableOp2V
)while/lstm_cell_139/MatMul/ReadVariableOp)while/lstm_cell_139/MatMul/ReadVariableOp2Z
+while/lstm_cell_139/MatMul_1/ReadVariableOp+while/lstm_cell_139/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_850972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_850972___redundant_placeholder04
0while_while_cond_850972___redundant_placeholder14
0while_while_cond_850972___redundant_placeholder24
0while_while_cond_850972___redundant_placeholder3
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
�
)__inference_lstm_474_layer_call_fn_850298

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
D__inference_lstm_474_layer_call_and_return_conditional_losses_849131s
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
�
D__inference_lstm_475_layer_call_and_return_conditional_losses_847777

inputs'
lstm_cell_139_847695:	d�'
lstm_cell_139_847697:	2�#
lstm_cell_139_847699:	�
identity��%lstm_cell_139/StatefulPartitionedCall�while;
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
%lstm_cell_139/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_139_847695lstm_cell_139_847697lstm_cell_139_847699*
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_847649n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_139_847695lstm_cell_139_847697lstm_cell_139_847699*
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
while_body_847708*
condR
while_cond_847707*K
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
NoOpNoOp&^lstm_cell_139/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_139/StatefulPartitionedCall%lstm_cell_139/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
)__inference_lstm_474_layer_call_fn_850265
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_847236|
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
while_body_852018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_140_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_140_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_140_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_140_matmul_readvariableop_resource:2(F
4while_lstm_cell_140_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_140_biasadd_readvariableop_resource:(��*while/lstm_cell_140/BiasAdd/ReadVariableOp�)while/lstm_cell_140/MatMul/ReadVariableOp�+while/lstm_cell_140/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_140/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_140_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_140/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_140/addAddV2$while/lstm_cell_140/MatMul:product:0&while/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_140/BiasAddBiasAddwhile/lstm_cell_140/add:z:02while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_140/splitSplit,while/lstm_cell_140/split/split_dim:output:0$while/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_140/SigmoidSigmoid"while/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_1Sigmoid"while/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mulMul!while/lstm_cell_140/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_140/ReluRelu"while/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_1Mulwhile/lstm_cell_140/Sigmoid:y:0&while/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/add_1AddV2while/lstm_cell_140/mul:z:0while/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_2Sigmoid"while/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_140/Relu_1Reluwhile/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_2Mul!while/lstm_cell_140/Sigmoid_2:y:0(while/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_140/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_140/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_140/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp,^while/lstm_cell_140/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_140_biasadd_readvariableop_resource5while_lstm_cell_140_biasadd_readvariableop_resource_0"n
4while_lstm_cell_140_matmul_1_readvariableop_resource6while_lstm_cell_140_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_140_matmul_readvariableop_resource4while_lstm_cell_140_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_140/BiasAdd/ReadVariableOp*while/lstm_cell_140/BiasAdd/ReadVariableOp2V
)while/lstm_cell_140/MatMul/ReadVariableOp)while/lstm_cell_140/MatMul/ReadVariableOp2Z
+while/lstm_cell_140/MatMul_1/ReadVariableOp+while/lstm_cell_140/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_139_layer_call_fn_852253

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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_847649o
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
while_cond_848500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848500___redundant_placeholder04
0while_while_cond_848500___redundant_placeholder14
0while_while_cond_848500___redundant_placeholder24
0while_while_cond_848500___redundant_placeholder3
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
while_body_849047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_138_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_138_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_138_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_138_matmul_readvariableop_resource:	�G
4while_lstm_cell_138_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_138_biasadd_readvariableop_resource:	���*while/lstm_cell_138/BiasAdd/ReadVariableOp�)while/lstm_cell_138/MatMul/ReadVariableOp�+while/lstm_cell_138/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_138/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_138_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_138/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_138_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_138/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_138/addAddV2$while/lstm_cell_138/MatMul:product:0&while/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_138_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_138/BiasAddBiasAddwhile/lstm_cell_138/add:z:02while/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_138/splitSplit,while/lstm_cell_138/split/split_dim:output:0$while/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_138/SigmoidSigmoid"while/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_1Sigmoid"while/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mulMul!while/lstm_cell_138/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_138/ReluRelu"while/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_1Mulwhile/lstm_cell_138/Sigmoid:y:0&while/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/add_1AddV2while/lstm_cell_138/mul:z:0while/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_2Sigmoid"while/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_138/Relu_1Reluwhile/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_2Mul!while/lstm_cell_138/Sigmoid_2:y:0(while/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_138/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_138/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_138/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_138/BiasAdd/ReadVariableOp*^while/lstm_cell_138/MatMul/ReadVariableOp,^while/lstm_cell_138/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_138_biasadd_readvariableop_resource5while_lstm_cell_138_biasadd_readvariableop_resource_0"n
4while_lstm_cell_138_matmul_1_readvariableop_resource6while_lstm_cell_138_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_138_matmul_readvariableop_resource4while_lstm_cell_138_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_138/BiasAdd/ReadVariableOp*while/lstm_cell_138/BiasAdd/ReadVariableOp2V
)while/lstm_cell_138/MatMul/ReadVariableOp)while/lstm_cell_138/MatMul/ReadVariableOp2Z
+while/lstm_cell_138/MatMul_1/ReadVariableOp+while/lstm_cell_138/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_851259
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_139_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_139_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_139_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_139_matmul_readvariableop_resource:	d�G
4while_lstm_cell_139_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_139_biasadd_readvariableop_resource:	���*while/lstm_cell_139/BiasAdd/ReadVariableOp�)while/lstm_cell_139/MatMul/ReadVariableOp�+while/lstm_cell_139/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_139/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_139_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_139/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_139_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_139/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_139/addAddV2$while/lstm_cell_139/MatMul:product:0&while/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_139_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_139/BiasAddBiasAddwhile/lstm_cell_139/add:z:02while/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_139/splitSplit,while/lstm_cell_139/split/split_dim:output:0$while/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_139/SigmoidSigmoid"while/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_1Sigmoid"while/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mulMul!while/lstm_cell_139/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_139/ReluRelu"while/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_1Mulwhile/lstm_cell_139/Sigmoid:y:0&while/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/add_1AddV2while/lstm_cell_139/mul:z:0while/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_2Sigmoid"while/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_139/Relu_1Reluwhile/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_2Mul!while/lstm_cell_139/Sigmoid_2:y:0(while/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_139/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_139/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_139/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_139/BiasAdd/ReadVariableOp*^while/lstm_cell_139/MatMul/ReadVariableOp,^while/lstm_cell_139/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_139_biasadd_readvariableop_resource5while_lstm_cell_139_biasadd_readvariableop_resource_0"n
4while_lstm_cell_139_matmul_1_readvariableop_resource6while_lstm_cell_139_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_139_matmul_readvariableop_resource4while_lstm_cell_139_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_139/BiasAdd/ReadVariableOp*while/lstm_cell_139/BiasAdd/ReadVariableOp2V
)while/lstm_cell_139/MatMul/ReadVariableOp)while/lstm_cell_139/MatMul/ReadVariableOp2Z
+while/lstm_cell_139/MatMul_1/ReadVariableOp+while/lstm_cell_139/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_847586

inputs'
lstm_cell_139_847504:	d�'
lstm_cell_139_847506:	2�#
lstm_cell_139_847508:	�
identity��%lstm_cell_139/StatefulPartitionedCall�while;
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
%lstm_cell_139/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_139_847504lstm_cell_139_847506lstm_cell_139_847508*
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_847503n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_139_847504lstm_cell_139_847506lstm_cell_139_847508*
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
while_body_847517*
condR
while_cond_847516*K
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
NoOpNoOp&^lstm_cell_139/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_139/StatefulPartitionedCall%lstm_cell_139/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�J
�
D__inference_lstm_475_layer_call_and_return_conditional_losses_851343

inputs?
,lstm_cell_139_matmul_readvariableop_resource:	d�A
.lstm_cell_139_matmul_1_readvariableop_resource:	2�<
-lstm_cell_139_biasadd_readvariableop_resource:	�
identity��$lstm_cell_139/BiasAdd/ReadVariableOp�#lstm_cell_139/MatMul/ReadVariableOp�%lstm_cell_139/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_139/MatMul/ReadVariableOpReadVariableOp,lstm_cell_139_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_139/MatMulMatMulstrided_slice_2:output:0+lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_139_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_139/MatMul_1MatMulzeros:output:0-lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_139/addAddV2lstm_cell_139/MatMul:product:0 lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_139_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_139/BiasAddBiasAddlstm_cell_139/add:z:0,lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_139/splitSplit&lstm_cell_139/split/split_dim:output:0lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_139/SigmoidSigmoidlstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_1Sigmoidlstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_139/mulMullstm_cell_139/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_139/ReluRelulstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_1Mullstm_cell_139/Sigmoid:y:0 lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_139/add_1AddV2lstm_cell_139/mul:z:0lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_2Sigmoidlstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_139/Relu_1Relulstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_2Mullstm_cell_139/Sigmoid_2:y:0"lstm_cell_139/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_139_matmul_readvariableop_resource.lstm_cell_139_matmul_1_readvariableop_resource-lstm_cell_139_biasadd_readvariableop_resource*
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
while_body_851259*
condR
while_cond_851258*K
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
NoOpNoOp%^lstm_cell_139/BiasAdd/ReadVariableOp$^lstm_cell_139/MatMul/ReadVariableOp&^lstm_cell_139/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_139/BiasAdd/ReadVariableOp$lstm_cell_139/BiasAdd/ReadVariableOp2J
#lstm_cell_139/MatMul/ReadVariableOp#lstm_cell_139/MatMul/ReadVariableOp2N
%lstm_cell_139/MatMul_1/ReadVariableOp%lstm_cell_139/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
)sequential_158_lstm_475_while_cond_846856L
Hsequential_158_lstm_475_while_sequential_158_lstm_475_while_loop_counterR
Nsequential_158_lstm_475_while_sequential_158_lstm_475_while_maximum_iterations-
)sequential_158_lstm_475_while_placeholder/
+sequential_158_lstm_475_while_placeholder_1/
+sequential_158_lstm_475_while_placeholder_2/
+sequential_158_lstm_475_while_placeholder_3N
Jsequential_158_lstm_475_while_less_sequential_158_lstm_475_strided_slice_1d
`sequential_158_lstm_475_while_sequential_158_lstm_475_while_cond_846856___redundant_placeholder0d
`sequential_158_lstm_475_while_sequential_158_lstm_475_while_cond_846856___redundant_placeholder1d
`sequential_158_lstm_475_while_sequential_158_lstm_475_while_cond_846856___redundant_placeholder2d
`sequential_158_lstm_475_while_sequential_158_lstm_475_while_cond_846856___redundant_placeholder3*
&sequential_158_lstm_475_while_identity
�
"sequential_158/lstm_475/while/LessLess)sequential_158_lstm_475_while_placeholderJsequential_158_lstm_475_while_less_sequential_158_lstm_475_strided_slice_1*
T0*
_output_shapes
: {
&sequential_158/lstm_475/while/IdentityIdentity&sequential_158/lstm_475/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_158_lstm_475_while_identity/sequential_158/lstm_475/while/Identity:output:0*(
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
/__inference_sequential_158_layer_call_fn_849251
lstm_474_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_474_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_849199o
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
_user_specified_namelstm_474_input
�8
�
while_body_850973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_139_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_139_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_139_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_139_matmul_readvariableop_resource:	d�G
4while_lstm_cell_139_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_139_biasadd_readvariableop_resource:	���*while/lstm_cell_139/BiasAdd/ReadVariableOp�)while/lstm_cell_139/MatMul/ReadVariableOp�+while/lstm_cell_139/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_139/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_139_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_139/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_139_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_139/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_139/addAddV2$while/lstm_cell_139/MatMul:product:0&while/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_139_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_139/BiasAddBiasAddwhile/lstm_cell_139/add:z:02while/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_139/splitSplit,while/lstm_cell_139/split/split_dim:output:0$while/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_139/SigmoidSigmoid"while/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_1Sigmoid"while/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mulMul!while/lstm_cell_139/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_139/ReluRelu"while/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_1Mulwhile/lstm_cell_139/Sigmoid:y:0&while/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/add_1AddV2while/lstm_cell_139/mul:z:0while/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_2Sigmoid"while/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_139/Relu_1Reluwhile/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_2Mul!while/lstm_cell_139/Sigmoid_2:y:0(while/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_139/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_139/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_139/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_139/BiasAdd/ReadVariableOp*^while/lstm_cell_139/MatMul/ReadVariableOp,^while/lstm_cell_139/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_139_biasadd_readvariableop_resource5while_lstm_cell_139_biasadd_readvariableop_resource_0"n
4while_lstm_cell_139_matmul_1_readvariableop_resource6while_lstm_cell_139_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_139_matmul_readvariableop_resource4while_lstm_cell_139_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_139/BiasAdd/ReadVariableOp*while/lstm_cell_139/BiasAdd/ReadVariableOp2V
)while/lstm_cell_139/MatMul/ReadVariableOp)while/lstm_cell_139/MatMul/ReadVariableOp2Z
+while/lstm_cell_139/MatMul_1/ReadVariableOp+while/lstm_cell_139/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_851874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_851874___redundant_placeholder04
0while_while_cond_851874___redundant_placeholder14
0while_while_cond_851874___redundant_placeholder24
0while_while_cond_851874___redundant_placeholder3
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
$__inference_signature_wrapper_849346
lstm_474_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_474_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_847086o
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
_user_specified_namelstm_474_input
�
�
"__inference__traced_restore_852688
file_prefix3
!assignvariableop_dense_158_kernel:
/
!assignvariableop_1_dense_158_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_474_lstm_cell_474_kernel:	�M
:assignvariableop_8_lstm_474_lstm_cell_474_recurrent_kernel:	d�=
.assignvariableop_9_lstm_474_lstm_cell_474_bias:	�D
1assignvariableop_10_lstm_475_lstm_cell_475_kernel:	d�N
;assignvariableop_11_lstm_475_lstm_cell_475_recurrent_kernel:	2�>
/assignvariableop_12_lstm_475_lstm_cell_475_bias:	�C
1assignvariableop_13_lstm_476_lstm_cell_476_kernel:2(M
;assignvariableop_14_lstm_476_lstm_cell_476_recurrent_kernel:
(=
/assignvariableop_15_lstm_476_lstm_cell_476_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_158_kernel_m:
7
)assignvariableop_19_adam_dense_158_bias_m:K
8assignvariableop_20_adam_lstm_474_lstm_cell_474_kernel_m:	�U
Bassignvariableop_21_adam_lstm_474_lstm_cell_474_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_474_lstm_cell_474_bias_m:	�K
8assignvariableop_23_adam_lstm_475_lstm_cell_475_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_475_lstm_cell_475_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_475_lstm_cell_475_bias_m:	�J
8assignvariableop_26_adam_lstm_476_lstm_cell_476_kernel_m:2(T
Bassignvariableop_27_adam_lstm_476_lstm_cell_476_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_476_lstm_cell_476_bias_m:(=
+assignvariableop_29_adam_dense_158_kernel_v:
7
)assignvariableop_30_adam_dense_158_bias_v:K
8assignvariableop_31_adam_lstm_474_lstm_cell_474_kernel_v:	�U
Bassignvariableop_32_adam_lstm_474_lstm_cell_474_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_474_lstm_cell_474_bias_v:	�K
8assignvariableop_34_adam_lstm_475_lstm_cell_475_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_475_lstm_cell_475_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_475_lstm_cell_475_bias_v:	�J
8assignvariableop_37_adam_lstm_476_lstm_cell_476_kernel_v:2(T
Bassignvariableop_38_adam_lstm_476_lstm_cell_476_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_476_lstm_cell_476_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_158_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_158_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_474_lstm_cell_474_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_474_lstm_cell_474_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_474_lstm_cell_474_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_475_lstm_cell_475_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_475_lstm_cell_475_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_475_lstm_cell_475_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_476_lstm_cell_476_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_476_lstm_cell_476_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_476_lstm_cell_476_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_158_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_158_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_474_lstm_cell_474_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_474_lstm_cell_474_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_474_lstm_cell_474_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_475_lstm_cell_475_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_475_lstm_cell_475_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_475_lstm_cell_475_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_476_lstm_cell_476_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_476_lstm_cell_476_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_476_lstm_cell_476_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_158_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_158_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_474_lstm_cell_474_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_474_lstm_cell_474_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_474_lstm_cell_474_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_475_lstm_cell_475_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_475_lstm_cell_475_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_475_lstm_cell_475_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_476_lstm_cell_476_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_476_lstm_cell_476_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_476_lstm_cell_476_bias_vIdentity_39:output:0"/device:CPU:0*
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
�"
�
while_body_847708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_139_847732_0:	d�/
while_lstm_cell_139_847734_0:	2�+
while_lstm_cell_139_847736_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_139_847732:	d�-
while_lstm_cell_139_847734:	2�)
while_lstm_cell_139_847736:	���+while/lstm_cell_139/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_139/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_139_847732_0while_lstm_cell_139_847734_0while_lstm_cell_139_847736_0*
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_847649�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_139/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_139/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_139/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_139/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_139_847732while_lstm_cell_139_847732_0":
while_lstm_cell_139_847734while_lstm_cell_139_847734_0":
while_lstm_cell_139_847736while_lstm_cell_139_847736_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_139/StatefulPartitionedCall+while/lstm_cell_139/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_851732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_140_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_140_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_140_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_140_matmul_readvariableop_resource:2(F
4while_lstm_cell_140_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_140_biasadd_readvariableop_resource:(��*while/lstm_cell_140/BiasAdd/ReadVariableOp�)while/lstm_cell_140/MatMul/ReadVariableOp�+while/lstm_cell_140/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_140/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_140_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_140/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_140/addAddV2$while/lstm_cell_140/MatMul:product:0&while/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_140/BiasAddBiasAddwhile/lstm_cell_140/add:z:02while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_140/splitSplit,while/lstm_cell_140/split/split_dim:output:0$while/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_140/SigmoidSigmoid"while/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_1Sigmoid"while/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mulMul!while/lstm_cell_140/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_140/ReluRelu"while/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_1Mulwhile/lstm_cell_140/Sigmoid:y:0&while/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/add_1AddV2while/lstm_cell_140/mul:z:0while/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_2Sigmoid"while/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_140/Relu_1Reluwhile/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_2Mul!while/lstm_cell_140/Sigmoid_2:y:0(while/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_140/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_140/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_140/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp,^while/lstm_cell_140/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_140_biasadd_readvariableop_resource5while_lstm_cell_140_biasadd_readvariableop_resource_0"n
4while_lstm_cell_140_matmul_1_readvariableop_resource6while_lstm_cell_140_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_140_matmul_readvariableop_resource4while_lstm_cell_140_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_140/BiasAdd/ReadVariableOp*while/lstm_cell_140/BiasAdd/ReadVariableOp2V
)while/lstm_cell_140/MatMul/ReadVariableOp)while/lstm_cell_140/MatMul/ReadVariableOp2Z
+while/lstm_cell_140/MatMul_1/ReadVariableOp+while/lstm_cell_140/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_475_layer_call_fn_850892
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_847777|
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
�
)__inference_lstm_474_layer_call_fn_850276
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_847427|
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
.__inference_lstm_cell_138_layer_call_fn_852138

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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_847153o
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
while_cond_850642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_850642___redundant_placeholder04
0while_while_cond_850642___redundant_placeholder14
0while_while_cond_850642___redundant_placeholder24
0while_while_cond_850642___redundant_placeholder3
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_852219

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
)__inference_lstm_475_layer_call_fn_850903

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
D__inference_lstm_475_layer_call_and_return_conditional_losses_848435s
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
while_cond_848200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848200___redundant_placeholder04
0while_while_cond_848200___redundant_placeholder14
0while_while_cond_848200___redundant_placeholder24
0while_while_cond_848200___redundant_placeholder3
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
�T
�
)sequential_158_lstm_476_while_body_846996L
Hsequential_158_lstm_476_while_sequential_158_lstm_476_while_loop_counterR
Nsequential_158_lstm_476_while_sequential_158_lstm_476_while_maximum_iterations-
)sequential_158_lstm_476_while_placeholder/
+sequential_158_lstm_476_while_placeholder_1/
+sequential_158_lstm_476_while_placeholder_2/
+sequential_158_lstm_476_while_placeholder_3K
Gsequential_158_lstm_476_while_sequential_158_lstm_476_strided_slice_1_0�
�sequential_158_lstm_476_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_476_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_158_lstm_476_while_lstm_cell_140_matmul_readvariableop_resource_0:2(`
Nsequential_158_lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource_0:
([
Msequential_158_lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource_0:(*
&sequential_158_lstm_476_while_identity,
(sequential_158_lstm_476_while_identity_1,
(sequential_158_lstm_476_while_identity_2,
(sequential_158_lstm_476_while_identity_3,
(sequential_158_lstm_476_while_identity_4,
(sequential_158_lstm_476_while_identity_5I
Esequential_158_lstm_476_while_sequential_158_lstm_476_strided_slice_1�
�sequential_158_lstm_476_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_476_tensorarrayunstack_tensorlistfromtensor\
Jsequential_158_lstm_476_while_lstm_cell_140_matmul_readvariableop_resource:2(^
Lsequential_158_lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource:
(Y
Ksequential_158_lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource:(��Bsequential_158/lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp�Asequential_158/lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp�Csequential_158/lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp�
Osequential_158/lstm_476/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Asequential_158/lstm_476/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_158_lstm_476_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_476_tensorarrayunstack_tensorlistfromtensor_0)sequential_158_lstm_476_while_placeholderXsequential_158/lstm_476/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Asequential_158/lstm_476/while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOpLsequential_158_lstm_476_while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
2sequential_158/lstm_476/while/lstm_cell_140/MatMulMatMulHsequential_158/lstm_476/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_158/lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_158/lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOpNsequential_158_lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
4sequential_158/lstm_476/while/lstm_cell_140/MatMul_1MatMul+sequential_158_lstm_476_while_placeholder_2Ksequential_158/lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_158/lstm_476/while/lstm_cell_140/addAddV2<sequential_158/lstm_476/while/lstm_cell_140/MatMul:product:0>sequential_158/lstm_476/while/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
Bsequential_158/lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOpMsequential_158_lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
3sequential_158/lstm_476/while/lstm_cell_140/BiasAddBiasAdd3sequential_158/lstm_476/while/lstm_cell_140/add:z:0Jsequential_158/lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(}
;sequential_158/lstm_476/while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_158/lstm_476/while/lstm_cell_140/splitSplitDsequential_158/lstm_476/while/lstm_cell_140/split/split_dim:output:0<sequential_158/lstm_476/while/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
3sequential_158/lstm_476/while/lstm_cell_140/SigmoidSigmoid:sequential_158/lstm_476/while/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
�
5sequential_158/lstm_476/while/lstm_cell_140/Sigmoid_1Sigmoid:sequential_158/lstm_476/while/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
/sequential_158/lstm_476/while/lstm_cell_140/mulMul9sequential_158/lstm_476/while/lstm_cell_140/Sigmoid_1:y:0+sequential_158_lstm_476_while_placeholder_3*
T0*'
_output_shapes
:���������
�
0sequential_158/lstm_476/while/lstm_cell_140/ReluRelu:sequential_158/lstm_476/while/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
1sequential_158/lstm_476/while/lstm_cell_140/mul_1Mul7sequential_158/lstm_476/while/lstm_cell_140/Sigmoid:y:0>sequential_158/lstm_476/while/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
1sequential_158/lstm_476/while/lstm_cell_140/add_1AddV23sequential_158/lstm_476/while/lstm_cell_140/mul:z:05sequential_158/lstm_476/while/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
�
5sequential_158/lstm_476/while/lstm_cell_140/Sigmoid_2Sigmoid:sequential_158/lstm_476/while/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
�
2sequential_158/lstm_476/while/lstm_cell_140/Relu_1Relu5sequential_158/lstm_476/while/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_158/lstm_476/while/lstm_cell_140/mul_2Mul9sequential_158/lstm_476/while/lstm_cell_140/Sigmoid_2:y:0@sequential_158/lstm_476/while/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Bsequential_158/lstm_476/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_158_lstm_476_while_placeholder_1)sequential_158_lstm_476_while_placeholder5sequential_158/lstm_476/while/lstm_cell_140/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_158/lstm_476/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_158/lstm_476/while/addAddV2)sequential_158_lstm_476_while_placeholder,sequential_158/lstm_476/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_158/lstm_476/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_158/lstm_476/while/add_1AddV2Hsequential_158_lstm_476_while_sequential_158_lstm_476_while_loop_counter.sequential_158/lstm_476/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_158/lstm_476/while/IdentityIdentity'sequential_158/lstm_476/while/add_1:z:0#^sequential_158/lstm_476/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_476/while/Identity_1IdentityNsequential_158_lstm_476_while_sequential_158_lstm_476_while_maximum_iterations#^sequential_158/lstm_476/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_476/while/Identity_2Identity%sequential_158/lstm_476/while/add:z:0#^sequential_158/lstm_476/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_476/while/Identity_3IdentityRsequential_158/lstm_476/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_158/lstm_476/while/NoOp*
T0*
_output_shapes
: �
(sequential_158/lstm_476/while/Identity_4Identity5sequential_158/lstm_476/while/lstm_cell_140/mul_2:z:0#^sequential_158/lstm_476/while/NoOp*
T0*'
_output_shapes
:���������
�
(sequential_158/lstm_476/while/Identity_5Identity5sequential_158/lstm_476/while/lstm_cell_140/add_1:z:0#^sequential_158/lstm_476/while/NoOp*
T0*'
_output_shapes
:���������
�
"sequential_158/lstm_476/while/NoOpNoOpC^sequential_158/lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOpB^sequential_158/lstm_476/while/lstm_cell_140/MatMul/ReadVariableOpD^sequential_158/lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_158_lstm_476_while_identity/sequential_158/lstm_476/while/Identity:output:0"]
(sequential_158_lstm_476_while_identity_11sequential_158/lstm_476/while/Identity_1:output:0"]
(sequential_158_lstm_476_while_identity_21sequential_158/lstm_476/while/Identity_2:output:0"]
(sequential_158_lstm_476_while_identity_31sequential_158/lstm_476/while/Identity_3:output:0"]
(sequential_158_lstm_476_while_identity_41sequential_158/lstm_476/while/Identity_4:output:0"]
(sequential_158_lstm_476_while_identity_51sequential_158/lstm_476/while/Identity_5:output:0"�
Ksequential_158_lstm_476_while_lstm_cell_140_biasadd_readvariableop_resourceMsequential_158_lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource_0"�
Lsequential_158_lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resourceNsequential_158_lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource_0"�
Jsequential_158_lstm_476_while_lstm_cell_140_matmul_readvariableop_resourceLsequential_158_lstm_476_while_lstm_cell_140_matmul_readvariableop_resource_0"�
Esequential_158_lstm_476_while_sequential_158_lstm_476_strided_slice_1Gsequential_158_lstm_476_while_sequential_158_lstm_476_strided_slice_1_0"�
�sequential_158_lstm_476_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_476_tensorarrayunstack_tensorlistfromtensor�sequential_158_lstm_476_while_tensorarrayv2read_tensorlistgetitem_sequential_158_lstm_476_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
Bsequential_158/lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOpBsequential_158/lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp2�
Asequential_158/lstm_476/while/lstm_cell_140/MatMul/ReadVariableOpAsequential_158/lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp2�
Csequential_158/lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOpCsequential_158/lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_847999

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
.__inference_lstm_cell_139_layer_call_fn_852236

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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_847503o
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
while_body_850500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_138_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_138_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_138_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_138_matmul_readvariableop_resource:	�G
4while_lstm_cell_138_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_138_biasadd_readvariableop_resource:	���*while/lstm_cell_138/BiasAdd/ReadVariableOp�)while/lstm_cell_138/MatMul/ReadVariableOp�+while/lstm_cell_138/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_138/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_138_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_138/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_138_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_138/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_138/addAddV2$while/lstm_cell_138/MatMul:product:0&while/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_138_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_138/BiasAddBiasAddwhile/lstm_cell_138/add:z:02while/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_138/splitSplit,while/lstm_cell_138/split/split_dim:output:0$while/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_138/SigmoidSigmoid"while/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_1Sigmoid"while/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mulMul!while/lstm_cell_138/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_138/ReluRelu"while/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_1Mulwhile/lstm_cell_138/Sigmoid:y:0&while/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/add_1AddV2while/lstm_cell_138/mul:z:0while/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_2Sigmoid"while/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_138/Relu_1Reluwhile/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_2Mul!while/lstm_cell_138/Sigmoid_2:y:0(while/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_138/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_138/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_138/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_138/BiasAdd/ReadVariableOp*^while/lstm_cell_138/MatMul/ReadVariableOp,^while/lstm_cell_138/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_138_biasadd_readvariableop_resource5while_lstm_cell_138_biasadd_readvariableop_resource_0"n
4while_lstm_cell_138_matmul_1_readvariableop_resource6while_lstm_cell_138_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_138_matmul_readvariableop_resource4while_lstm_cell_138_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_138/BiasAdd/ReadVariableOp*while/lstm_cell_138/BiasAdd/ReadVariableOp2V
)while/lstm_cell_138/MatMul/ReadVariableOp)while/lstm_cell_138/MatMul/ReadVariableOp2Z
+while/lstm_cell_138/MatMul_1/ReadVariableOp+while/lstm_cell_138/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_850785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_850785___redundant_placeholder04
0while_while_cond_850785___redundant_placeholder14
0while_while_cond_850785___redundant_placeholder24
0while_while_cond_850785___redundant_placeholder3
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

lstm_476_while_body_850164.
*lstm_476_while_lstm_476_while_loop_counter4
0lstm_476_while_lstm_476_while_maximum_iterations
lstm_476_while_placeholder 
lstm_476_while_placeholder_1 
lstm_476_while_placeholder_2 
lstm_476_while_placeholder_3-
)lstm_476_while_lstm_476_strided_slice_1_0i
elstm_476_while_tensorarrayv2read_tensorlistgetitem_lstm_476_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_476_while_lstm_cell_140_matmul_readvariableop_resource_0:2(Q
?lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource_0:
(L
>lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource_0:(
lstm_476_while_identity
lstm_476_while_identity_1
lstm_476_while_identity_2
lstm_476_while_identity_3
lstm_476_while_identity_4
lstm_476_while_identity_5+
'lstm_476_while_lstm_476_strided_slice_1g
clstm_476_while_tensorarrayv2read_tensorlistgetitem_lstm_476_tensorarrayunstack_tensorlistfromtensorM
;lstm_476_while_lstm_cell_140_matmul_readvariableop_resource:2(O
=lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource:
(J
<lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource:(��3lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp�2lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp�4lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp�
@lstm_476/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_476/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_476_while_tensorarrayv2read_tensorlistgetitem_lstm_476_tensorarrayunstack_tensorlistfromtensor_0lstm_476_while_placeholderIlstm_476/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_476/while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp=lstm_476_while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_476/while/lstm_cell_140/MatMulMatMul9lstm_476/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp?lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_476/while/lstm_cell_140/MatMul_1MatMullstm_476_while_placeholder_2<lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_476/while/lstm_cell_140/addAddV2-lstm_476/while/lstm_cell_140/MatMul:product:0/lstm_476/while/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp>lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_476/while/lstm_cell_140/BiasAddBiasAdd$lstm_476/while/lstm_cell_140/add:z:0;lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_476/while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_476/while/lstm_cell_140/splitSplit5lstm_476/while/lstm_cell_140/split/split_dim:output:0-lstm_476/while/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_476/while/lstm_cell_140/SigmoidSigmoid+lstm_476/while/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_476/while/lstm_cell_140/Sigmoid_1Sigmoid+lstm_476/while/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_476/while/lstm_cell_140/mulMul*lstm_476/while/lstm_cell_140/Sigmoid_1:y:0lstm_476_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_476/while/lstm_cell_140/ReluRelu+lstm_476/while/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_476/while/lstm_cell_140/mul_1Mul(lstm_476/while/lstm_cell_140/Sigmoid:y:0/lstm_476/while/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_476/while/lstm_cell_140/add_1AddV2$lstm_476/while/lstm_cell_140/mul:z:0&lstm_476/while/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_476/while/lstm_cell_140/Sigmoid_2Sigmoid+lstm_476/while/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_476/while/lstm_cell_140/Relu_1Relu&lstm_476/while/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_476/while/lstm_cell_140/mul_2Mul*lstm_476/while/lstm_cell_140/Sigmoid_2:y:01lstm_476/while/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_476/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_476_while_placeholder_1lstm_476_while_placeholder&lstm_476/while/lstm_cell_140/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_476/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_476/while/addAddV2lstm_476_while_placeholderlstm_476/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_476/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_476/while/add_1AddV2*lstm_476_while_lstm_476_while_loop_counterlstm_476/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_476/while/IdentityIdentitylstm_476/while/add_1:z:0^lstm_476/while/NoOp*
T0*
_output_shapes
: �
lstm_476/while/Identity_1Identity0lstm_476_while_lstm_476_while_maximum_iterations^lstm_476/while/NoOp*
T0*
_output_shapes
: t
lstm_476/while/Identity_2Identitylstm_476/while/add:z:0^lstm_476/while/NoOp*
T0*
_output_shapes
: �
lstm_476/while/Identity_3IdentityClstm_476/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_476/while/NoOp*
T0*
_output_shapes
: �
lstm_476/while/Identity_4Identity&lstm_476/while/lstm_cell_140/mul_2:z:0^lstm_476/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_476/while/Identity_5Identity&lstm_476/while/lstm_cell_140/add_1:z:0^lstm_476/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_476/while/NoOpNoOp4^lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp3^lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp5^lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_476_while_identity lstm_476/while/Identity:output:0"?
lstm_476_while_identity_1"lstm_476/while/Identity_1:output:0"?
lstm_476_while_identity_2"lstm_476/while/Identity_2:output:0"?
lstm_476_while_identity_3"lstm_476/while/Identity_3:output:0"?
lstm_476_while_identity_4"lstm_476/while/Identity_4:output:0"?
lstm_476_while_identity_5"lstm_476/while/Identity_5:output:0"T
'lstm_476_while_lstm_476_strided_slice_1)lstm_476_while_lstm_476_strided_slice_1_0"~
<lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource>lstm_476_while_lstm_cell_140_biasadd_readvariableop_resource_0"�
=lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource?lstm_476_while_lstm_cell_140_matmul_1_readvariableop_resource_0"|
;lstm_476_while_lstm_cell_140_matmul_readvariableop_resource=lstm_476_while_lstm_cell_140_matmul_readvariableop_resource_0"�
clstm_476_while_tensorarrayv2read_tensorlistgetitem_lstm_476_tensorarrayunstack_tensorlistfromtensorelstm_476_while_tensorarrayv2read_tensorlistgetitem_lstm_476_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp3lstm_476/while/lstm_cell_140/BiasAdd/ReadVariableOp2h
2lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp2lstm_476/while/lstm_cell_140/MatMul/ReadVariableOp2l
4lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp4lstm_476/while/lstm_cell_140/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_847866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_847866___redundant_placeholder04
0while_while_cond_847866___redundant_placeholder14
0while_while_cond_847866___redundant_placeholder24
0while_while_cond_847866___redundant_placeholder3
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
)sequential_158_lstm_476_while_cond_846995L
Hsequential_158_lstm_476_while_sequential_158_lstm_476_while_loop_counterR
Nsequential_158_lstm_476_while_sequential_158_lstm_476_while_maximum_iterations-
)sequential_158_lstm_476_while_placeholder/
+sequential_158_lstm_476_while_placeholder_1/
+sequential_158_lstm_476_while_placeholder_2/
+sequential_158_lstm_476_while_placeholder_3N
Jsequential_158_lstm_476_while_less_sequential_158_lstm_476_strided_slice_1d
`sequential_158_lstm_476_while_sequential_158_lstm_476_while_cond_846995___redundant_placeholder0d
`sequential_158_lstm_476_while_sequential_158_lstm_476_while_cond_846995___redundant_placeholder1d
`sequential_158_lstm_476_while_sequential_158_lstm_476_while_cond_846995___redundant_placeholder2d
`sequential_158_lstm_476_while_sequential_158_lstm_476_while_cond_846995___redundant_placeholder3*
&sequential_158_lstm_476_while_identity
�
"sequential_158/lstm_476/while/LessLess)sequential_158_lstm_476_while_placeholderJsequential_158_lstm_476_while_less_sequential_158_lstm_476_strided_slice_1*
T0*
_output_shapes
: {
&sequential_158/lstm_476/while/IdentityIdentity&sequential_158/lstm_476/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_158_lstm_476_while_identity/sequential_158/lstm_476/while/Identity:output:0*(
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
/__inference_sequential_158_layer_call_fn_848635
lstm_474_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_474_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_848610o
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
_user_specified_namelstm_474_input
�
�
)__inference_lstm_475_layer_call_fn_850881
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_847586|
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
while_body_848717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_140_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_140_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_140_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_140_matmul_readvariableop_resource:2(F
4while_lstm_cell_140_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_140_biasadd_readvariableop_resource:(��*while/lstm_cell_140/BiasAdd/ReadVariableOp�)while/lstm_cell_140/MatMul/ReadVariableOp�+while/lstm_cell_140/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_140/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_140_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_140/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_140/addAddV2$while/lstm_cell_140/MatMul:product:0&while/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_140/BiasAddBiasAddwhile/lstm_cell_140/add:z:02while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_140/splitSplit,while/lstm_cell_140/split/split_dim:output:0$while/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_140/SigmoidSigmoid"while/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_1Sigmoid"while/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mulMul!while/lstm_cell_140/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_140/ReluRelu"while/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_1Mulwhile/lstm_cell_140/Sigmoid:y:0&while/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/add_1AddV2while/lstm_cell_140/mul:z:0while/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_2Sigmoid"while/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_140/Relu_1Reluwhile/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_2Mul!while/lstm_cell_140/Sigmoid_2:y:0(while/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_140/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_140/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_140/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp,^while/lstm_cell_140/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_140_biasadd_readvariableop_resource5while_lstm_cell_140_biasadd_readvariableop_resource_0"n
4while_lstm_cell_140_matmul_1_readvariableop_resource6while_lstm_cell_140_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_140_matmul_readvariableop_resource4while_lstm_cell_140_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_140/BiasAdd/ReadVariableOp*while/lstm_cell_140/BiasAdd/ReadVariableOp2V
)while/lstm_cell_140/MatMul/ReadVariableOp)while/lstm_cell_140/MatMul/ReadVariableOp2Z
+while/lstm_cell_140/MatMul_1/ReadVariableOp+while/lstm_cell_140/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_848351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_139_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_139_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_139_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_139_matmul_readvariableop_resource:	d�G
4while_lstm_cell_139_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_139_biasadd_readvariableop_resource:	���*while/lstm_cell_139/BiasAdd/ReadVariableOp�)while/lstm_cell_139/MatMul/ReadVariableOp�+while/lstm_cell_139/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_139/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_139_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_139/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_139_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_139/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_139/addAddV2$while/lstm_cell_139/MatMul:product:0&while/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_139_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_139/BiasAddBiasAddwhile/lstm_cell_139/add:z:02while/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_139/splitSplit,while/lstm_cell_139/split/split_dim:output:0$while/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_139/SigmoidSigmoid"while/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_1Sigmoid"while/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mulMul!while/lstm_cell_139/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_139/ReluRelu"while/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_1Mulwhile/lstm_cell_139/Sigmoid:y:0&while/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/add_1AddV2while/lstm_cell_139/mul:z:0while/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_139/Sigmoid_2Sigmoid"while/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_139/Relu_1Reluwhile/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_139/mul_2Mul!while/lstm_cell_139/Sigmoid_2:y:0(while/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_139/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_139/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_139/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_139/BiasAdd/ReadVariableOp*^while/lstm_cell_139/MatMul/ReadVariableOp,^while/lstm_cell_139/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_139_biasadd_readvariableop_resource5while_lstm_cell_139_biasadd_readvariableop_resource_0"n
4while_lstm_cell_139_matmul_1_readvariableop_resource6while_lstm_cell_139_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_139_matmul_readvariableop_resource4while_lstm_cell_139_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_139/BiasAdd/ReadVariableOp*while/lstm_cell_139/BiasAdd/ReadVariableOp2V
)while/lstm_cell_139/MatMul/ReadVariableOp)while/lstm_cell_139/MatMul/ReadVariableOp2Z
+while/lstm_cell_139/MatMul_1/ReadVariableOp+while/lstm_cell_139/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_851401
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_851401___redundant_placeholder04
0while_while_cond_851401___redundant_placeholder14
0while_while_cond_851401___redundant_placeholder24
0while_while_cond_851401___redundant_placeholder3
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_849311
lstm_474_input"
lstm_474_849284:	�"
lstm_474_849286:	d�
lstm_474_849288:	�"
lstm_475_849291:	d�"
lstm_475_849293:	2�
lstm_475_849295:	�!
lstm_476_849298:2(!
lstm_476_849300:
(
lstm_476_849302:("
dense_158_849305:

dense_158_849307:
identity��!dense_158/StatefulPartitionedCall� lstm_474/StatefulPartitionedCall� lstm_475/StatefulPartitionedCall� lstm_476/StatefulPartitionedCall�
 lstm_474/StatefulPartitionedCallStatefulPartitionedCalllstm_474_inputlstm_474_849284lstm_474_849286lstm_474_849288*
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_849131�
 lstm_475/StatefulPartitionedCallStatefulPartitionedCall)lstm_474/StatefulPartitionedCall:output:0lstm_475_849291lstm_475_849293lstm_475_849295*
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_848966�
 lstm_476/StatefulPartitionedCallStatefulPartitionedCall)lstm_475/StatefulPartitionedCall:output:0lstm_476_849298lstm_476_849300lstm_476_849302*
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_848801�
!dense_158/StatefulPartitionedCallStatefulPartitionedCall)lstm_476/StatefulPartitionedCall:output:0dense_158_849305dense_158_849307*
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
E__inference_dense_158_layer_call_and_return_conditional_losses_848603y
IdentityIdentity*dense_158/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_158/StatefulPartitionedCall!^lstm_474/StatefulPartitionedCall!^lstm_475/StatefulPartitionedCall!^lstm_476/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_158/StatefulPartitionedCall!dense_158/StatefulPartitionedCall2D
 lstm_474/StatefulPartitionedCall lstm_474/StatefulPartitionedCall2D
 lstm_475/StatefulPartitionedCall lstm_475/StatefulPartitionedCall2D
 lstm_476/StatefulPartitionedCall lstm_476/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_474_input
�
�
while_cond_848057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848057___redundant_placeholder04
0while_while_cond_848057___redundant_placeholder14
0while_while_cond_848057___redundant_placeholder24
0while_while_cond_848057___redundant_placeholder3
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
while_cond_848881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848881___redundant_placeholder04
0while_while_cond_848881___redundant_placeholder14
0while_while_cond_848881___redundant_placeholder24
0while_while_cond_848881___redundant_placeholder3
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
)__inference_lstm_476_layer_call_fn_851530

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
D__inference_lstm_476_layer_call_and_return_conditional_losses_848801o
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
/__inference_sequential_158_layer_call_fn_849400

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
J__inference_sequential_158_layer_call_and_return_conditional_losses_849199o
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
)__inference_lstm_476_layer_call_fn_851519

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
D__inference_lstm_476_layer_call_and_return_conditional_losses_848585o
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_852187

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
�K
�
D__inference_lstm_475_layer_call_and_return_conditional_losses_851057
inputs_0?
,lstm_cell_139_matmul_readvariableop_resource:	d�A
.lstm_cell_139_matmul_1_readvariableop_resource:	2�<
-lstm_cell_139_biasadd_readvariableop_resource:	�
identity��$lstm_cell_139/BiasAdd/ReadVariableOp�#lstm_cell_139/MatMul/ReadVariableOp�%lstm_cell_139/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_139/MatMul/ReadVariableOpReadVariableOp,lstm_cell_139_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_139/MatMulMatMulstrided_slice_2:output:0+lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_139_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_139/MatMul_1MatMulzeros:output:0-lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_139/addAddV2lstm_cell_139/MatMul:product:0 lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_139_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_139/BiasAddBiasAddlstm_cell_139/add:z:0,lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_139/splitSplit&lstm_cell_139/split/split_dim:output:0lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_139/SigmoidSigmoidlstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_1Sigmoidlstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_139/mulMullstm_cell_139/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_139/ReluRelulstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_1Mullstm_cell_139/Sigmoid:y:0 lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_139/add_1AddV2lstm_cell_139/mul:z:0lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_2Sigmoidlstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_139/Relu_1Relulstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_2Mullstm_cell_139/Sigmoid_2:y:0"lstm_cell_139/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_139_matmul_readvariableop_resource.lstm_cell_139_matmul_1_readvariableop_resource-lstm_cell_139_biasadd_readvariableop_resource*
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
while_body_850973*
condR
while_cond_850972*K
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
NoOpNoOp%^lstm_cell_139/BiasAdd/ReadVariableOp$^lstm_cell_139/MatMul/ReadVariableOp&^lstm_cell_139/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_139/BiasAdd/ReadVariableOp$lstm_cell_139/BiasAdd/ReadVariableOp2J
#lstm_cell_139/MatMul/ReadVariableOp#lstm_cell_139/MatMul/ReadVariableOp2N
%lstm_cell_139/MatMul_1/ReadVariableOp%lstm_cell_139/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�8
�
while_body_848501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_140_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_140_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_140_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_140_matmul_readvariableop_resource:2(F
4while_lstm_cell_140_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_140_biasadd_readvariableop_resource:(��*while/lstm_cell_140/BiasAdd/ReadVariableOp�)while/lstm_cell_140/MatMul/ReadVariableOp�+while/lstm_cell_140/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_140/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_140_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_140/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_140/addAddV2$while/lstm_cell_140/MatMul:product:0&while/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_140/BiasAddBiasAddwhile/lstm_cell_140/add:z:02while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_140/splitSplit,while/lstm_cell_140/split/split_dim:output:0$while/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_140/SigmoidSigmoid"while/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_1Sigmoid"while/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mulMul!while/lstm_cell_140/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_140/ReluRelu"while/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_1Mulwhile/lstm_cell_140/Sigmoid:y:0&while/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/add_1AddV2while/lstm_cell_140/mul:z:0while/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_2Sigmoid"while/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_140/Relu_1Reluwhile/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_2Mul!while/lstm_cell_140/Sigmoid_2:y:0(while/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_140/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_140/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_140/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp,^while/lstm_cell_140/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_140_biasadd_readvariableop_resource5while_lstm_cell_140_biasadd_readvariableop_resource_0"n
4while_lstm_cell_140_matmul_1_readvariableop_resource6while_lstm_cell_140_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_140_matmul_readvariableop_resource4while_lstm_cell_140_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_140/BiasAdd/ReadVariableOp*while/lstm_cell_140/BiasAdd/ReadVariableOp2V
)while/lstm_cell_140/MatMul/ReadVariableOp)while/lstm_cell_140/MatMul/ReadVariableOp2Z
+while/lstm_cell_140/MatMul_1/ReadVariableOp+while/lstm_cell_140/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_850870

inputs?
,lstm_cell_138_matmul_readvariableop_resource:	�A
.lstm_cell_138_matmul_1_readvariableop_resource:	d�<
-lstm_cell_138_biasadd_readvariableop_resource:	�
identity��$lstm_cell_138/BiasAdd/ReadVariableOp�#lstm_cell_138/MatMul/ReadVariableOp�%lstm_cell_138/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_138/MatMul/ReadVariableOpReadVariableOp,lstm_cell_138_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_138/MatMulMatMulstrided_slice_2:output:0+lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_138_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_138/MatMul_1MatMulzeros:output:0-lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_138/addAddV2lstm_cell_138/MatMul:product:0 lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_138_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_138/BiasAddBiasAddlstm_cell_138/add:z:0,lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_138/splitSplit&lstm_cell_138/split/split_dim:output:0lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_138/SigmoidSigmoidlstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_1Sigmoidlstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_138/mulMullstm_cell_138/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_138/ReluRelulstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_1Mullstm_cell_138/Sigmoid:y:0 lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_138/add_1AddV2lstm_cell_138/mul:z:0lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_2Sigmoidlstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_138/Relu_1Relulstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_2Mullstm_cell_138/Sigmoid_2:y:0"lstm_cell_138/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_138_matmul_readvariableop_resource.lstm_cell_138_matmul_1_readvariableop_resource-lstm_cell_138_biasadd_readvariableop_resource*
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
while_body_850786*
condR
while_cond_850785*K
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
NoOpNoOp%^lstm_cell_138/BiasAdd/ReadVariableOp$^lstm_cell_138/MatMul/ReadVariableOp&^lstm_cell_138/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_138/BiasAdd/ReadVariableOp$lstm_cell_138/BiasAdd/ReadVariableOp2J
#lstm_cell_138/MatMul/ReadVariableOp#lstm_cell_138/MatMul/ReadVariableOp2N
%lstm_cell_138/MatMul_1/ReadVariableOp%lstm_cell_138/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_475_layer_call_fn_850914

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
D__inference_lstm_475_layer_call_and_return_conditional_losses_848966s
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_848966

inputs?
,lstm_cell_139_matmul_readvariableop_resource:	d�A
.lstm_cell_139_matmul_1_readvariableop_resource:	2�<
-lstm_cell_139_biasadd_readvariableop_resource:	�
identity��$lstm_cell_139/BiasAdd/ReadVariableOp�#lstm_cell_139/MatMul/ReadVariableOp�%lstm_cell_139/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_139/MatMul/ReadVariableOpReadVariableOp,lstm_cell_139_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_139/MatMulMatMulstrided_slice_2:output:0+lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_139_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_139/MatMul_1MatMulzeros:output:0-lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_139/addAddV2lstm_cell_139/MatMul:product:0 lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_139_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_139/BiasAddBiasAddlstm_cell_139/add:z:0,lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_139/splitSplit&lstm_cell_139/split/split_dim:output:0lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_139/SigmoidSigmoidlstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_1Sigmoidlstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_139/mulMullstm_cell_139/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_139/ReluRelulstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_1Mullstm_cell_139/Sigmoid:y:0 lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_139/add_1AddV2lstm_cell_139/mul:z:0lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_2Sigmoidlstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_139/Relu_1Relulstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_2Mullstm_cell_139/Sigmoid_2:y:0"lstm_cell_139/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_139_matmul_readvariableop_resource.lstm_cell_139_matmul_1_readvariableop_resource-lstm_cell_139_biasadd_readvariableop_resource*
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
while_body_848882*
condR
while_cond_848881*K
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
NoOpNoOp%^lstm_cell_139/BiasAdd/ReadVariableOp$^lstm_cell_139/MatMul/ReadVariableOp&^lstm_cell_139/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_139/BiasAdd/ReadVariableOp$lstm_cell_139/BiasAdd/ReadVariableOp2J
#lstm_cell_139/MatMul/ReadVariableOp#lstm_cell_139/MatMul/ReadVariableOp2N
%lstm_cell_139/MatMul_1/ReadVariableOp%lstm_cell_139/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
*__inference_dense_158_layer_call_fn_852111

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
E__inference_dense_158_layer_call_and_return_conditional_losses_848603o
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

�
lstm_475_while_cond_850024.
*lstm_475_while_lstm_475_while_loop_counter4
0lstm_475_while_lstm_475_while_maximum_iterations
lstm_475_while_placeholder 
lstm_475_while_placeholder_1 
lstm_475_while_placeholder_2 
lstm_475_while_placeholder_30
,lstm_475_while_less_lstm_475_strided_slice_1F
Blstm_475_while_lstm_475_while_cond_850024___redundant_placeholder0F
Blstm_475_while_lstm_475_while_cond_850024___redundant_placeholder1F
Blstm_475_while_lstm_475_while_cond_850024___redundant_placeholder2F
Blstm_475_while_lstm_475_while_cond_850024___redundant_placeholder3
lstm_475_while_identity
�
lstm_475/while/LessLesslstm_475_while_placeholder,lstm_475_while_less_lstm_475_strided_slice_1*
T0*
_output_shapes
: ]
lstm_475/while/IdentityIdentitylstm_475/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_475_while_identity lstm_475/while/Identity:output:0*(
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
while_cond_847357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_847357___redundant_placeholder04
0while_while_cond_847357___redundant_placeholder14
0while_while_cond_847357___redundant_placeholder24
0while_while_cond_847357___redundant_placeholder3
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
while_body_851589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_140_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_140_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_140_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_140_matmul_readvariableop_resource:2(F
4while_lstm_cell_140_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_140_biasadd_readvariableop_resource:(��*while/lstm_cell_140/BiasAdd/ReadVariableOp�)while/lstm_cell_140/MatMul/ReadVariableOp�+while/lstm_cell_140/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_140/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_140_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_140/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_140/addAddV2$while/lstm_cell_140/MatMul:product:0&while/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_140/BiasAddBiasAddwhile/lstm_cell_140/add:z:02while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_140/splitSplit,while/lstm_cell_140/split/split_dim:output:0$while/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_140/SigmoidSigmoid"while/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_1Sigmoid"while/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mulMul!while/lstm_cell_140/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_140/ReluRelu"while/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_1Mulwhile/lstm_cell_140/Sigmoid:y:0&while/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/add_1AddV2while/lstm_cell_140/mul:z:0while/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_140/Sigmoid_2Sigmoid"while/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_140/Relu_1Reluwhile/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_140/mul_2Mul!while/lstm_cell_140/Sigmoid_2:y:0(while/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_140/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_140/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_140/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp,^while/lstm_cell_140/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_140_biasadd_readvariableop_resource5while_lstm_cell_140_biasadd_readvariableop_resource_0"n
4while_lstm_cell_140_matmul_1_readvariableop_resource6while_lstm_cell_140_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_140_matmul_readvariableop_resource4while_lstm_cell_140_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_140/BiasAdd/ReadVariableOp*while/lstm_cell_140/BiasAdd/ReadVariableOp2V
)while/lstm_cell_140/MatMul/ReadVariableOp)while/lstm_cell_140/MatMul/ReadVariableOp2Z
+while/lstm_cell_140/MatMul_1/ReadVariableOp+while/lstm_cell_140/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_849827

inputsH
5lstm_474_lstm_cell_138_matmul_readvariableop_resource:	�J
7lstm_474_lstm_cell_138_matmul_1_readvariableop_resource:	d�E
6lstm_474_lstm_cell_138_biasadd_readvariableop_resource:	�H
5lstm_475_lstm_cell_139_matmul_readvariableop_resource:	d�J
7lstm_475_lstm_cell_139_matmul_1_readvariableop_resource:	2�E
6lstm_475_lstm_cell_139_biasadd_readvariableop_resource:	�G
5lstm_476_lstm_cell_140_matmul_readvariableop_resource:2(I
7lstm_476_lstm_cell_140_matmul_1_readvariableop_resource:
(D
6lstm_476_lstm_cell_140_biasadd_readvariableop_resource:(:
(dense_158_matmul_readvariableop_resource:
7
)dense_158_biasadd_readvariableop_resource:
identity�� dense_158/BiasAdd/ReadVariableOp�dense_158/MatMul/ReadVariableOp�-lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp�,lstm_474/lstm_cell_138/MatMul/ReadVariableOp�.lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp�lstm_474/while�-lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp�,lstm_475/lstm_cell_139/MatMul/ReadVariableOp�.lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp�lstm_475/while�-lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp�,lstm_476/lstm_cell_140/MatMul/ReadVariableOp�.lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp�lstm_476/whileD
lstm_474/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_474/strided_sliceStridedSlicelstm_474/Shape:output:0%lstm_474/strided_slice/stack:output:0'lstm_474/strided_slice/stack_1:output:0'lstm_474/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_474/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_474/zeros/packedPacklstm_474/strided_slice:output:0 lstm_474/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_474/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_474/zerosFilllstm_474/zeros/packed:output:0lstm_474/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_474/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_474/zeros_1/packedPacklstm_474/strided_slice:output:0"lstm_474/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_474/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_474/zeros_1Fill lstm_474/zeros_1/packed:output:0lstm_474/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_474/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_474/transpose	Transposeinputs lstm_474/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_474/Shape_1Shapelstm_474/transpose:y:0*
T0*
_output_shapes
:h
lstm_474/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_474/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_474/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_474/strided_slice_1StridedSlicelstm_474/Shape_1:output:0'lstm_474/strided_slice_1/stack:output:0)lstm_474/strided_slice_1/stack_1:output:0)lstm_474/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_474/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_474/TensorArrayV2TensorListReserve-lstm_474/TensorArrayV2/element_shape:output:0!lstm_474/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_474/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_474/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_474/transpose:y:0Glstm_474/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_474/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_474/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_474/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_474/strided_slice_2StridedSlicelstm_474/transpose:y:0'lstm_474/strided_slice_2/stack:output:0)lstm_474/strided_slice_2/stack_1:output:0)lstm_474/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_474/lstm_cell_138/MatMul/ReadVariableOpReadVariableOp5lstm_474_lstm_cell_138_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_474/lstm_cell_138/MatMulMatMul!lstm_474/strided_slice_2:output:04lstm_474/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_474/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp7lstm_474_lstm_cell_138_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_474/lstm_cell_138/MatMul_1MatMullstm_474/zeros:output:06lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_474/lstm_cell_138/addAddV2'lstm_474/lstm_cell_138/MatMul:product:0)lstm_474/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_474/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp6lstm_474_lstm_cell_138_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_474/lstm_cell_138/BiasAddBiasAddlstm_474/lstm_cell_138/add:z:05lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_474/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_474/lstm_cell_138/splitSplit/lstm_474/lstm_cell_138/split/split_dim:output:0'lstm_474/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_474/lstm_cell_138/SigmoidSigmoid%lstm_474/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_474/lstm_cell_138/Sigmoid_1Sigmoid%lstm_474/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_474/lstm_cell_138/mulMul$lstm_474/lstm_cell_138/Sigmoid_1:y:0lstm_474/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_474/lstm_cell_138/ReluRelu%lstm_474/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_474/lstm_cell_138/mul_1Mul"lstm_474/lstm_cell_138/Sigmoid:y:0)lstm_474/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_474/lstm_cell_138/add_1AddV2lstm_474/lstm_cell_138/mul:z:0 lstm_474/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_474/lstm_cell_138/Sigmoid_2Sigmoid%lstm_474/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_474/lstm_cell_138/Relu_1Relu lstm_474/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_474/lstm_cell_138/mul_2Mul$lstm_474/lstm_cell_138/Sigmoid_2:y:0+lstm_474/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_474/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_474/TensorArrayV2_1TensorListReserve/lstm_474/TensorArrayV2_1/element_shape:output:0!lstm_474/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_474/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_474/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_474/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_474/whileWhile$lstm_474/while/loop_counter:output:0*lstm_474/while/maximum_iterations:output:0lstm_474/time:output:0!lstm_474/TensorArrayV2_1:handle:0lstm_474/zeros:output:0lstm_474/zeros_1:output:0!lstm_474/strided_slice_1:output:0@lstm_474/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_474_lstm_cell_138_matmul_readvariableop_resource7lstm_474_lstm_cell_138_matmul_1_readvariableop_resource6lstm_474_lstm_cell_138_biasadd_readvariableop_resource*
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
lstm_474_while_body_849459*&
condR
lstm_474_while_cond_849458*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_474/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_474/TensorArrayV2Stack/TensorListStackTensorListStacklstm_474/while:output:3Blstm_474/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_474/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_474/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_474/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_474/strided_slice_3StridedSlice4lstm_474/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_474/strided_slice_3/stack:output:0)lstm_474/strided_slice_3/stack_1:output:0)lstm_474/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_474/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_474/transpose_1	Transpose4lstm_474/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_474/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_474/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_475/ShapeShapelstm_474/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_475/strided_sliceStridedSlicelstm_475/Shape:output:0%lstm_475/strided_slice/stack:output:0'lstm_475/strided_slice/stack_1:output:0'lstm_475/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_475/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_475/zeros/packedPacklstm_475/strided_slice:output:0 lstm_475/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_475/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_475/zerosFilllstm_475/zeros/packed:output:0lstm_475/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_475/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_475/zeros_1/packedPacklstm_475/strided_slice:output:0"lstm_475/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_475/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_475/zeros_1Fill lstm_475/zeros_1/packed:output:0lstm_475/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_475/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_475/transpose	Transposelstm_474/transpose_1:y:0 lstm_475/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_475/Shape_1Shapelstm_475/transpose:y:0*
T0*
_output_shapes
:h
lstm_475/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_475/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_475/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_475/strided_slice_1StridedSlicelstm_475/Shape_1:output:0'lstm_475/strided_slice_1/stack:output:0)lstm_475/strided_slice_1/stack_1:output:0)lstm_475/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_475/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_475/TensorArrayV2TensorListReserve-lstm_475/TensorArrayV2/element_shape:output:0!lstm_475/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_475/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_475/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_475/transpose:y:0Glstm_475/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_475/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_475/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_475/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_475/strided_slice_2StridedSlicelstm_475/transpose:y:0'lstm_475/strided_slice_2/stack:output:0)lstm_475/strided_slice_2/stack_1:output:0)lstm_475/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_475/lstm_cell_139/MatMul/ReadVariableOpReadVariableOp5lstm_475_lstm_cell_139_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_475/lstm_cell_139/MatMulMatMul!lstm_475/strided_slice_2:output:04lstm_475/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_475/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp7lstm_475_lstm_cell_139_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_475/lstm_cell_139/MatMul_1MatMullstm_475/zeros:output:06lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_475/lstm_cell_139/addAddV2'lstm_475/lstm_cell_139/MatMul:product:0)lstm_475/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_475/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp6lstm_475_lstm_cell_139_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_475/lstm_cell_139/BiasAddBiasAddlstm_475/lstm_cell_139/add:z:05lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_475/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_475/lstm_cell_139/splitSplit/lstm_475/lstm_cell_139/split/split_dim:output:0'lstm_475/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_475/lstm_cell_139/SigmoidSigmoid%lstm_475/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_475/lstm_cell_139/Sigmoid_1Sigmoid%lstm_475/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_475/lstm_cell_139/mulMul$lstm_475/lstm_cell_139/Sigmoid_1:y:0lstm_475/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_475/lstm_cell_139/ReluRelu%lstm_475/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_475/lstm_cell_139/mul_1Mul"lstm_475/lstm_cell_139/Sigmoid:y:0)lstm_475/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_475/lstm_cell_139/add_1AddV2lstm_475/lstm_cell_139/mul:z:0 lstm_475/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_475/lstm_cell_139/Sigmoid_2Sigmoid%lstm_475/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_475/lstm_cell_139/Relu_1Relu lstm_475/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_475/lstm_cell_139/mul_2Mul$lstm_475/lstm_cell_139/Sigmoid_2:y:0+lstm_475/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_475/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_475/TensorArrayV2_1TensorListReserve/lstm_475/TensorArrayV2_1/element_shape:output:0!lstm_475/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_475/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_475/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_475/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_475/whileWhile$lstm_475/while/loop_counter:output:0*lstm_475/while/maximum_iterations:output:0lstm_475/time:output:0!lstm_475/TensorArrayV2_1:handle:0lstm_475/zeros:output:0lstm_475/zeros_1:output:0!lstm_475/strided_slice_1:output:0@lstm_475/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_475_lstm_cell_139_matmul_readvariableop_resource7lstm_475_lstm_cell_139_matmul_1_readvariableop_resource6lstm_475_lstm_cell_139_biasadd_readvariableop_resource*
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
lstm_475_while_body_849598*&
condR
lstm_475_while_cond_849597*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_475/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_475/TensorArrayV2Stack/TensorListStackTensorListStacklstm_475/while:output:3Blstm_475/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_475/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_475/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_475/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_475/strided_slice_3StridedSlice4lstm_475/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_475/strided_slice_3/stack:output:0)lstm_475/strided_slice_3/stack_1:output:0)lstm_475/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_475/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_475/transpose_1	Transpose4lstm_475/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_475/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_475/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_476/ShapeShapelstm_475/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_476/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_476/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_476/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_476/strided_sliceStridedSlicelstm_476/Shape:output:0%lstm_476/strided_slice/stack:output:0'lstm_476/strided_slice/stack_1:output:0'lstm_476/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_476/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_476/zeros/packedPacklstm_476/strided_slice:output:0 lstm_476/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_476/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_476/zerosFilllstm_476/zeros/packed:output:0lstm_476/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_476/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_476/zeros_1/packedPacklstm_476/strided_slice:output:0"lstm_476/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_476/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_476/zeros_1Fill lstm_476/zeros_1/packed:output:0lstm_476/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_476/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_476/transpose	Transposelstm_475/transpose_1:y:0 lstm_476/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_476/Shape_1Shapelstm_476/transpose:y:0*
T0*
_output_shapes
:h
lstm_476/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_476/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_476/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_476/strided_slice_1StridedSlicelstm_476/Shape_1:output:0'lstm_476/strided_slice_1/stack:output:0)lstm_476/strided_slice_1/stack_1:output:0)lstm_476/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_476/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_476/TensorArrayV2TensorListReserve-lstm_476/TensorArrayV2/element_shape:output:0!lstm_476/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_476/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_476/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_476/transpose:y:0Glstm_476/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_476/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_476/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_476/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_476/strided_slice_2StridedSlicelstm_476/transpose:y:0'lstm_476/strided_slice_2/stack:output:0)lstm_476/strided_slice_2/stack_1:output:0)lstm_476/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_476/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp5lstm_476_lstm_cell_140_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_476/lstm_cell_140/MatMulMatMul!lstm_476/strided_slice_2:output:04lstm_476/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_476/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp7lstm_476_lstm_cell_140_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_476/lstm_cell_140/MatMul_1MatMullstm_476/zeros:output:06lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_476/lstm_cell_140/addAddV2'lstm_476/lstm_cell_140/MatMul:product:0)lstm_476/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_476/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp6lstm_476_lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_476/lstm_cell_140/BiasAddBiasAddlstm_476/lstm_cell_140/add:z:05lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_476/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_476/lstm_cell_140/splitSplit/lstm_476/lstm_cell_140/split/split_dim:output:0'lstm_476/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_476/lstm_cell_140/SigmoidSigmoid%lstm_476/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_476/lstm_cell_140/Sigmoid_1Sigmoid%lstm_476/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_476/lstm_cell_140/mulMul$lstm_476/lstm_cell_140/Sigmoid_1:y:0lstm_476/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_476/lstm_cell_140/ReluRelu%lstm_476/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_476/lstm_cell_140/mul_1Mul"lstm_476/lstm_cell_140/Sigmoid:y:0)lstm_476/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_476/lstm_cell_140/add_1AddV2lstm_476/lstm_cell_140/mul:z:0 lstm_476/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_476/lstm_cell_140/Sigmoid_2Sigmoid%lstm_476/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_476/lstm_cell_140/Relu_1Relu lstm_476/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_476/lstm_cell_140/mul_2Mul$lstm_476/lstm_cell_140/Sigmoid_2:y:0+lstm_476/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_476/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_476/TensorArrayV2_1TensorListReserve/lstm_476/TensorArrayV2_1/element_shape:output:0!lstm_476/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_476/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_476/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_476/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_476/whileWhile$lstm_476/while/loop_counter:output:0*lstm_476/while/maximum_iterations:output:0lstm_476/time:output:0!lstm_476/TensorArrayV2_1:handle:0lstm_476/zeros:output:0lstm_476/zeros_1:output:0!lstm_476/strided_slice_1:output:0@lstm_476/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_476_lstm_cell_140_matmul_readvariableop_resource7lstm_476_lstm_cell_140_matmul_1_readvariableop_resource6lstm_476_lstm_cell_140_biasadd_readvariableop_resource*
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
lstm_476_while_body_849737*&
condR
lstm_476_while_cond_849736*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_476/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_476/TensorArrayV2Stack/TensorListStackTensorListStacklstm_476/while:output:3Blstm_476/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_476/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_476/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_476/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_476/strided_slice_3StridedSlice4lstm_476/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_476/strided_slice_3/stack:output:0)lstm_476/strided_slice_3/stack_1:output:0)lstm_476/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_476/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_476/transpose_1	Transpose4lstm_476/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_476/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_476/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_158/MatMul/ReadVariableOpReadVariableOp(dense_158_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_158/MatMulMatMul!lstm_476/strided_slice_3:output:0'dense_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_158/BiasAdd/ReadVariableOpReadVariableOp)dense_158_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_158/BiasAddBiasAdddense_158/MatMul:product:0(dense_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_158/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_158/BiasAdd/ReadVariableOp ^dense_158/MatMul/ReadVariableOp.^lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp-^lstm_474/lstm_cell_138/MatMul/ReadVariableOp/^lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp^lstm_474/while.^lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp-^lstm_475/lstm_cell_139/MatMul/ReadVariableOp/^lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp^lstm_475/while.^lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp-^lstm_476/lstm_cell_140/MatMul/ReadVariableOp/^lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp^lstm_476/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_158/BiasAdd/ReadVariableOp dense_158/BiasAdd/ReadVariableOp2B
dense_158/MatMul/ReadVariableOpdense_158/MatMul/ReadVariableOp2^
-lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp-lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp2\
,lstm_474/lstm_cell_138/MatMul/ReadVariableOp,lstm_474/lstm_cell_138/MatMul/ReadVariableOp2`
.lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp.lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp2 
lstm_474/whilelstm_474/while2^
-lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp-lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp2\
,lstm_475/lstm_cell_139/MatMul/ReadVariableOp,lstm_475/lstm_cell_139/MatMul/ReadVariableOp2`
.lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp.lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp2 
lstm_475/whilelstm_475/while2^
-lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp-lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp2\
,lstm_476/lstm_cell_140/MatMul/ReadVariableOp,lstm_476/lstm_cell_140/MatMul/ReadVariableOp2`
.lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp.lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp2 
lstm_476/whilelstm_476/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_sequential_158_layer_call_and_return_conditional_losses_848610

inputs"
lstm_474_848286:	�"
lstm_474_848288:	d�
lstm_474_848290:	�"
lstm_475_848436:	d�"
lstm_475_848438:	2�
lstm_475_848440:	�!
lstm_476_848586:2(!
lstm_476_848588:
(
lstm_476_848590:("
dense_158_848604:

dense_158_848606:
identity��!dense_158/StatefulPartitionedCall� lstm_474/StatefulPartitionedCall� lstm_475/StatefulPartitionedCall� lstm_476/StatefulPartitionedCall�
 lstm_474/StatefulPartitionedCallStatefulPartitionedCallinputslstm_474_848286lstm_474_848288lstm_474_848290*
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_848285�
 lstm_475/StatefulPartitionedCallStatefulPartitionedCall)lstm_474/StatefulPartitionedCall:output:0lstm_475_848436lstm_475_848438lstm_475_848440*
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_848435�
 lstm_476/StatefulPartitionedCallStatefulPartitionedCall)lstm_475/StatefulPartitionedCall:output:0lstm_476_848586lstm_476_848588lstm_476_848590*
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_848585�
!dense_158/StatefulPartitionedCallStatefulPartitionedCall)lstm_476/StatefulPartitionedCall:output:0dense_158_848604dense_158_848606*
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
E__inference_dense_158_layer_call_and_return_conditional_losses_848603y
IdentityIdentity*dense_158/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_158/StatefulPartitionedCall!^lstm_474/StatefulPartitionedCall!^lstm_475/StatefulPartitionedCall!^lstm_476/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_158/StatefulPartitionedCall!dense_158/StatefulPartitionedCall2D
 lstm_474/StatefulPartitionedCall lstm_474/StatefulPartitionedCall2D
 lstm_475/StatefulPartitionedCall lstm_475/StatefulPartitionedCall2D
 lstm_476/StatefulPartitionedCall lstm_476/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�K
�
D__inference_lstm_474_layer_call_and_return_conditional_losses_850584
inputs_0?
,lstm_cell_138_matmul_readvariableop_resource:	�A
.lstm_cell_138_matmul_1_readvariableop_resource:	d�<
-lstm_cell_138_biasadd_readvariableop_resource:	�
identity��$lstm_cell_138/BiasAdd/ReadVariableOp�#lstm_cell_138/MatMul/ReadVariableOp�%lstm_cell_138/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_138/MatMul/ReadVariableOpReadVariableOp,lstm_cell_138_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_138/MatMulMatMulstrided_slice_2:output:0+lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_138_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_138/MatMul_1MatMulzeros:output:0-lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_138/addAddV2lstm_cell_138/MatMul:product:0 lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_138_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_138/BiasAddBiasAddlstm_cell_138/add:z:0,lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_138/splitSplit&lstm_cell_138/split/split_dim:output:0lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_138/SigmoidSigmoidlstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_1Sigmoidlstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_138/mulMullstm_cell_138/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_138/ReluRelulstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_1Mullstm_cell_138/Sigmoid:y:0 lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_138/add_1AddV2lstm_cell_138/mul:z:0lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_2Sigmoidlstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_138/Relu_1Relulstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_2Mullstm_cell_138/Sigmoid_2:y:0"lstm_cell_138/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_138_matmul_readvariableop_resource.lstm_cell_138_matmul_1_readvariableop_resource-lstm_cell_138_biasadd_readvariableop_resource*
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
while_body_850500*
condR
while_cond_850499*K
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
NoOpNoOp%^lstm_cell_138/BiasAdd/ReadVariableOp$^lstm_cell_138/MatMul/ReadVariableOp&^lstm_cell_138/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_138/BiasAdd/ReadVariableOp$lstm_cell_138/BiasAdd/ReadVariableOp2J
#lstm_cell_138/MatMul/ReadVariableOp#lstm_cell_138/MatMul/ReadVariableOp2N
%lstm_cell_138/MatMul_1/ReadVariableOp%lstm_cell_138/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_851588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_851588___redundant_placeholder04
0while_while_cond_851588___redundant_placeholder14
0while_while_cond_851588___redundant_placeholder24
0while_while_cond_851588___redundant_placeholder3
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
while_body_847517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_139_847541_0:	d�/
while_lstm_cell_139_847543_0:	2�+
while_lstm_cell_139_847545_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_139_847541:	d�-
while_lstm_cell_139_847543:	2�)
while_lstm_cell_139_847545:	���+while/lstm_cell_139/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_139/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_139_847541_0while_lstm_cell_139_847543_0while_lstm_cell_139_847545_0*
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_847503�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_139/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_139/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_139/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_139/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_139_847541while_lstm_cell_139_847541_0":
while_lstm_cell_139_847543while_lstm_cell_139_847543_0":
while_lstm_cell_139_847545while_lstm_cell_139_847545_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_139/StatefulPartitionedCall+while/lstm_cell_139/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_140_layer_call_fn_852334

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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_847853o
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
.__inference_lstm_cell_140_layer_call_fn_852351

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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_847999o
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_852102

inputs>
,lstm_cell_140_matmul_readvariableop_resource:2(@
.lstm_cell_140_matmul_1_readvariableop_resource:
(;
-lstm_cell_140_biasadd_readvariableop_resource:(
identity��$lstm_cell_140/BiasAdd/ReadVariableOp�#lstm_cell_140/MatMul/ReadVariableOp�%lstm_cell_140/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_140/MatMul/ReadVariableOpReadVariableOp,lstm_cell_140_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_140/MatMulMatMulstrided_slice_2:output:0+lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_140_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_140/MatMul_1MatMulzeros:output:0-lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_140/addAddV2lstm_cell_140/MatMul:product:0 lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_140/BiasAddBiasAddlstm_cell_140/add:z:0,lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_140/splitSplit&lstm_cell_140/split/split_dim:output:0lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_140/SigmoidSigmoidlstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_1Sigmoidlstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_140/mulMullstm_cell_140/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_140/ReluRelulstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_1Mullstm_cell_140/Sigmoid:y:0 lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_140/add_1AddV2lstm_cell_140/mul:z:0lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_2Sigmoidlstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_140/Relu_1Relulstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_2Mullstm_cell_140/Sigmoid_2:y:0"lstm_cell_140/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_140_matmul_readvariableop_resource.lstm_cell_140_matmul_1_readvariableop_resource-lstm_cell_140_biasadd_readvariableop_resource*
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
while_body_852018*
condR
while_cond_852017*K
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
NoOpNoOp%^lstm_cell_140/BiasAdd/ReadVariableOp$^lstm_cell_140/MatMul/ReadVariableOp&^lstm_cell_140/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_140/BiasAdd/ReadVariableOp$lstm_cell_140/BiasAdd/ReadVariableOp2J
#lstm_cell_140/MatMul/ReadVariableOp#lstm_cell_140/MatMul/ReadVariableOp2N
%lstm_cell_140/MatMul_1/ReadVariableOp%lstm_cell_140/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�	
�
E__inference_dense_158_layer_call_and_return_conditional_losses_852121

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
while_body_850786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_138_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_138_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_138_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_138_matmul_readvariableop_resource:	�G
4while_lstm_cell_138_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_138_biasadd_readvariableop_resource:	���*while/lstm_cell_138/BiasAdd/ReadVariableOp�)while/lstm_cell_138/MatMul/ReadVariableOp�+while/lstm_cell_138/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_138/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_138_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_138/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_138_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_138/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_138/addAddV2$while/lstm_cell_138/MatMul:product:0&while/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_138_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_138/BiasAddBiasAddwhile/lstm_cell_138/add:z:02while/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_138/splitSplit,while/lstm_cell_138/split/split_dim:output:0$while/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_138/SigmoidSigmoid"while/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_1Sigmoid"while/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mulMul!while/lstm_cell_138/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_138/ReluRelu"while/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_1Mulwhile/lstm_cell_138/Sigmoid:y:0&while/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/add_1AddV2while/lstm_cell_138/mul:z:0while/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_2Sigmoid"while/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_138/Relu_1Reluwhile/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_2Mul!while/lstm_cell_138/Sigmoid_2:y:0(while/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_138/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_138/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_138/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_138/BiasAdd/ReadVariableOp*^while/lstm_cell_138/MatMul/ReadVariableOp,^while/lstm_cell_138/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_138_biasadd_readvariableop_resource5while_lstm_cell_138_biasadd_readvariableop_resource_0"n
4while_lstm_cell_138_matmul_1_readvariableop_resource6while_lstm_cell_138_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_138_matmul_readvariableop_resource4while_lstm_cell_138_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_138/BiasAdd/ReadVariableOp*while/lstm_cell_138/BiasAdd/ReadVariableOp2V
)while/lstm_cell_138/MatMul/ReadVariableOp)while/lstm_cell_138/MatMul/ReadVariableOp2Z
+while/lstm_cell_138/MatMul_1/ReadVariableOp+while/lstm_cell_138/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_851673
inputs_0>
,lstm_cell_140_matmul_readvariableop_resource:2(@
.lstm_cell_140_matmul_1_readvariableop_resource:
(;
-lstm_cell_140_biasadd_readvariableop_resource:(
identity��$lstm_cell_140/BiasAdd/ReadVariableOp�#lstm_cell_140/MatMul/ReadVariableOp�%lstm_cell_140/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_140/MatMul/ReadVariableOpReadVariableOp,lstm_cell_140_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_140/MatMulMatMulstrided_slice_2:output:0+lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_140_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_140/MatMul_1MatMulzeros:output:0-lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_140/addAddV2lstm_cell_140/MatMul:product:0 lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_140/BiasAddBiasAddlstm_cell_140/add:z:0,lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_140/splitSplit&lstm_cell_140/split/split_dim:output:0lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_140/SigmoidSigmoidlstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_1Sigmoidlstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_140/mulMullstm_cell_140/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_140/ReluRelulstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_1Mullstm_cell_140/Sigmoid:y:0 lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_140/add_1AddV2lstm_cell_140/mul:z:0lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_2Sigmoidlstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_140/Relu_1Relulstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_2Mullstm_cell_140/Sigmoid_2:y:0"lstm_cell_140/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_140_matmul_readvariableop_resource.lstm_cell_140_matmul_1_readvariableop_resource-lstm_cell_140_biasadd_readvariableop_resource*
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
while_body_851589*
condR
while_cond_851588*K
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
NoOpNoOp%^lstm_cell_140/BiasAdd/ReadVariableOp$^lstm_cell_140/MatMul/ReadVariableOp&^lstm_cell_140/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_140/BiasAdd/ReadVariableOp$lstm_cell_140/BiasAdd/ReadVariableOp2J
#lstm_cell_140/MatMul/ReadVariableOp#lstm_cell_140/MatMul/ReadVariableOp2N
%lstm_cell_140/MatMul_1/ReadVariableOp%lstm_cell_140/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
while_cond_848350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848350___redundant_placeholder04
0while_while_cond_848350___redundant_placeholder14
0while_while_cond_848350___redundant_placeholder24
0while_while_cond_848350___redundant_placeholder3
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
�
)sequential_158_lstm_474_while_cond_846717L
Hsequential_158_lstm_474_while_sequential_158_lstm_474_while_loop_counterR
Nsequential_158_lstm_474_while_sequential_158_lstm_474_while_maximum_iterations-
)sequential_158_lstm_474_while_placeholder/
+sequential_158_lstm_474_while_placeholder_1/
+sequential_158_lstm_474_while_placeholder_2/
+sequential_158_lstm_474_while_placeholder_3N
Jsequential_158_lstm_474_while_less_sequential_158_lstm_474_strided_slice_1d
`sequential_158_lstm_474_while_sequential_158_lstm_474_while_cond_846717___redundant_placeholder0d
`sequential_158_lstm_474_while_sequential_158_lstm_474_while_cond_846717___redundant_placeholder1d
`sequential_158_lstm_474_while_sequential_158_lstm_474_while_cond_846717___redundant_placeholder2d
`sequential_158_lstm_474_while_sequential_158_lstm_474_while_cond_846717___redundant_placeholder3*
&sequential_158_lstm_474_while_identity
�
"sequential_158/lstm_474/while/LessLess)sequential_158_lstm_474_while_placeholderJsequential_158_lstm_474_while_less_sequential_158_lstm_474_strided_slice_1*
T0*
_output_shapes
: {
&sequential_158/lstm_474/while/IdentityIdentity&sequential_158/lstm_474/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_158_lstm_474_while_identity/sequential_158/lstm_474/while/Identity:output:0*(
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
while_cond_847166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_847166___redundant_placeholder04
0while_while_cond_847166___redundant_placeholder14
0while_while_cond_847166___redundant_placeholder24
0while_while_cond_847166___redundant_placeholder3
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
while_cond_851731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_851731___redundant_placeholder04
0while_while_cond_851731___redundant_placeholder14
0while_while_cond_851731___redundant_placeholder24
0while_while_cond_851731___redundant_placeholder3
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_850441
inputs_0?
,lstm_cell_138_matmul_readvariableop_resource:	�A
.lstm_cell_138_matmul_1_readvariableop_resource:	d�<
-lstm_cell_138_biasadd_readvariableop_resource:	�
identity��$lstm_cell_138/BiasAdd/ReadVariableOp�#lstm_cell_138/MatMul/ReadVariableOp�%lstm_cell_138/MatMul_1/ReadVariableOp�while=
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
#lstm_cell_138/MatMul/ReadVariableOpReadVariableOp,lstm_cell_138_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_138/MatMulMatMulstrided_slice_2:output:0+lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_138_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_138/MatMul_1MatMulzeros:output:0-lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_138/addAddV2lstm_cell_138/MatMul:product:0 lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_138_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_138/BiasAddBiasAddlstm_cell_138/add:z:0,lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_138/splitSplit&lstm_cell_138/split/split_dim:output:0lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_138/SigmoidSigmoidlstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_1Sigmoidlstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_138/mulMullstm_cell_138/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_138/ReluRelulstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_1Mullstm_cell_138/Sigmoid:y:0 lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_138/add_1AddV2lstm_cell_138/mul:z:0lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_138/Sigmoid_2Sigmoidlstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_138/Relu_1Relulstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_138/mul_2Mullstm_cell_138/Sigmoid_2:y:0"lstm_cell_138/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_138_matmul_readvariableop_resource.lstm_cell_138_matmul_1_readvariableop_resource-lstm_cell_138_biasadd_readvariableop_resource*
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
while_body_850357*
condR
while_cond_850356*K
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
NoOpNoOp%^lstm_cell_138/BiasAdd/ReadVariableOp$^lstm_cell_138/MatMul/ReadVariableOp&^lstm_cell_138/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_138/BiasAdd/ReadVariableOp$lstm_cell_138/BiasAdd/ReadVariableOp2J
#lstm_cell_138/MatMul/ReadVariableOp#lstm_cell_138/MatMul/ReadVariableOp2N
%lstm_cell_138/MatMul_1/ReadVariableOp%lstm_cell_138/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�J
�
D__inference_lstm_476_layer_call_and_return_conditional_losses_851959

inputs>
,lstm_cell_140_matmul_readvariableop_resource:2(@
.lstm_cell_140_matmul_1_readvariableop_resource:
(;
-lstm_cell_140_biasadd_readvariableop_resource:(
identity��$lstm_cell_140/BiasAdd/ReadVariableOp�#lstm_cell_140/MatMul/ReadVariableOp�%lstm_cell_140/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_140/MatMul/ReadVariableOpReadVariableOp,lstm_cell_140_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_140/MatMulMatMulstrided_slice_2:output:0+lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_140_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_140/MatMul_1MatMulzeros:output:0-lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_140/addAddV2lstm_cell_140/MatMul:product:0 lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_140/BiasAddBiasAddlstm_cell_140/add:z:0,lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_140/splitSplit&lstm_cell_140/split/split_dim:output:0lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_140/SigmoidSigmoidlstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_1Sigmoidlstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_140/mulMullstm_cell_140/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_140/ReluRelulstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_1Mullstm_cell_140/Sigmoid:y:0 lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_140/add_1AddV2lstm_cell_140/mul:z:0lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_140/Sigmoid_2Sigmoidlstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_140/Relu_1Relulstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_140/mul_2Mullstm_cell_140/Sigmoid_2:y:0"lstm_cell_140/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_140_matmul_readvariableop_resource.lstm_cell_140_matmul_1_readvariableop_resource-lstm_cell_140_biasadd_readvariableop_resource*
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
while_body_851875*
condR
while_cond_851874*K
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
NoOpNoOp%^lstm_cell_140/BiasAdd/ReadVariableOp$^lstm_cell_140/MatMul/ReadVariableOp&^lstm_cell_140/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_140/BiasAdd/ReadVariableOp$lstm_cell_140/BiasAdd/ReadVariableOp2J
#lstm_cell_140/MatMul/ReadVariableOp#lstm_cell_140/MatMul/ReadVariableOp2N
%lstm_cell_140/MatMul_1/ReadVariableOp%lstm_cell_140/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_848716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848716___redundant_placeholder04
0while_while_cond_848716___redundant_placeholder14
0while_while_cond_848716___redundant_placeholder24
0while_while_cond_848716___redundant_placeholder3
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
!__inference__wrapped_model_847086
lstm_474_inputW
Dsequential_158_lstm_474_lstm_cell_138_matmul_readvariableop_resource:	�Y
Fsequential_158_lstm_474_lstm_cell_138_matmul_1_readvariableop_resource:	d�T
Esequential_158_lstm_474_lstm_cell_138_biasadd_readvariableop_resource:	�W
Dsequential_158_lstm_475_lstm_cell_139_matmul_readvariableop_resource:	d�Y
Fsequential_158_lstm_475_lstm_cell_139_matmul_1_readvariableop_resource:	2�T
Esequential_158_lstm_475_lstm_cell_139_biasadd_readvariableop_resource:	�V
Dsequential_158_lstm_476_lstm_cell_140_matmul_readvariableop_resource:2(X
Fsequential_158_lstm_476_lstm_cell_140_matmul_1_readvariableop_resource:
(S
Esequential_158_lstm_476_lstm_cell_140_biasadd_readvariableop_resource:(I
7sequential_158_dense_158_matmul_readvariableop_resource:
F
8sequential_158_dense_158_biasadd_readvariableop_resource:
identity��/sequential_158/dense_158/BiasAdd/ReadVariableOp�.sequential_158/dense_158/MatMul/ReadVariableOp�<sequential_158/lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp�;sequential_158/lstm_474/lstm_cell_138/MatMul/ReadVariableOp�=sequential_158/lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp�sequential_158/lstm_474/while�<sequential_158/lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp�;sequential_158/lstm_475/lstm_cell_139/MatMul/ReadVariableOp�=sequential_158/lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp�sequential_158/lstm_475/while�<sequential_158/lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp�;sequential_158/lstm_476/lstm_cell_140/MatMul/ReadVariableOp�=sequential_158/lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp�sequential_158/lstm_476/while[
sequential_158/lstm_474/ShapeShapelstm_474_input*
T0*
_output_shapes
:u
+sequential_158/lstm_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_158/lstm_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_158/lstm_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_158/lstm_474/strided_sliceStridedSlice&sequential_158/lstm_474/Shape:output:04sequential_158/lstm_474/strided_slice/stack:output:06sequential_158/lstm_474/strided_slice/stack_1:output:06sequential_158/lstm_474/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_158/lstm_474/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_158/lstm_474/zeros/packedPack.sequential_158/lstm_474/strided_slice:output:0/sequential_158/lstm_474/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_158/lstm_474/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_158/lstm_474/zerosFill-sequential_158/lstm_474/zeros/packed:output:0,sequential_158/lstm_474/zeros/Const:output:0*
T0*'
_output_shapes
:���������dj
(sequential_158/lstm_474/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
&sequential_158/lstm_474/zeros_1/packedPack.sequential_158/lstm_474/strided_slice:output:01sequential_158/lstm_474/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_158/lstm_474/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_158/lstm_474/zeros_1Fill/sequential_158/lstm_474/zeros_1/packed:output:0.sequential_158/lstm_474/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d{
&sequential_158/lstm_474/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_158/lstm_474/transpose	Transposelstm_474_input/sequential_158/lstm_474/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
sequential_158/lstm_474/Shape_1Shape%sequential_158/lstm_474/transpose:y:0*
T0*
_output_shapes
:w
-sequential_158/lstm_474/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_158/lstm_474/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_158/lstm_474/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_158/lstm_474/strided_slice_1StridedSlice(sequential_158/lstm_474/Shape_1:output:06sequential_158/lstm_474/strided_slice_1/stack:output:08sequential_158/lstm_474/strided_slice_1/stack_1:output:08sequential_158/lstm_474/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_158/lstm_474/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_158/lstm_474/TensorArrayV2TensorListReserve<sequential_158/lstm_474/TensorArrayV2/element_shape:output:00sequential_158/lstm_474/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_158/lstm_474/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_158/lstm_474/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_158/lstm_474/transpose:y:0Vsequential_158/lstm_474/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_158/lstm_474/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_158/lstm_474/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_158/lstm_474/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_158/lstm_474/strided_slice_2StridedSlice%sequential_158/lstm_474/transpose:y:06sequential_158/lstm_474/strided_slice_2/stack:output:08sequential_158/lstm_474/strided_slice_2/stack_1:output:08sequential_158/lstm_474/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
;sequential_158/lstm_474/lstm_cell_138/MatMul/ReadVariableOpReadVariableOpDsequential_158_lstm_474_lstm_cell_138_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,sequential_158/lstm_474/lstm_cell_138/MatMulMatMul0sequential_158/lstm_474/strided_slice_2:output:0Csequential_158/lstm_474/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_158/lstm_474/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOpFsequential_158_lstm_474_lstm_cell_138_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
.sequential_158/lstm_474/lstm_cell_138/MatMul_1MatMul&sequential_158/lstm_474/zeros:output:0Esequential_158/lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_158/lstm_474/lstm_cell_138/addAddV26sequential_158/lstm_474/lstm_cell_138/MatMul:product:08sequential_158/lstm_474/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_158/lstm_474/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOpEsequential_158_lstm_474_lstm_cell_138_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_158/lstm_474/lstm_cell_138/BiasAddBiasAdd-sequential_158/lstm_474/lstm_cell_138/add:z:0Dsequential_158/lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_158/lstm_474/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_158/lstm_474/lstm_cell_138/splitSplit>sequential_158/lstm_474/lstm_cell_138/split/split_dim:output:06sequential_158/lstm_474/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_158/lstm_474/lstm_cell_138/SigmoidSigmoid4sequential_158/lstm_474/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_158/lstm_474/lstm_cell_138/Sigmoid_1Sigmoid4sequential_158/lstm_474/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_158/lstm_474/lstm_cell_138/mulMul3sequential_158/lstm_474/lstm_cell_138/Sigmoid_1:y:0(sequential_158/lstm_474/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential_158/lstm_474/lstm_cell_138/ReluRelu4sequential_158/lstm_474/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_158/lstm_474/lstm_cell_138/mul_1Mul1sequential_158/lstm_474/lstm_cell_138/Sigmoid:y:08sequential_158/lstm_474/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_158/lstm_474/lstm_cell_138/add_1AddV2-sequential_158/lstm_474/lstm_cell_138/mul:z:0/sequential_158/lstm_474/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_158/lstm_474/lstm_cell_138/Sigmoid_2Sigmoid4sequential_158/lstm_474/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_158/lstm_474/lstm_cell_138/Relu_1Relu/sequential_158/lstm_474/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_158/lstm_474/lstm_cell_138/mul_2Mul3sequential_158/lstm_474/lstm_cell_138/Sigmoid_2:y:0:sequential_158/lstm_474/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
5sequential_158/lstm_474/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'sequential_158/lstm_474/TensorArrayV2_1TensorListReserve>sequential_158/lstm_474/TensorArrayV2_1/element_shape:output:00sequential_158/lstm_474/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_158/lstm_474/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_158/lstm_474/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_158/lstm_474/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_158/lstm_474/whileWhile3sequential_158/lstm_474/while/loop_counter:output:09sequential_158/lstm_474/while/maximum_iterations:output:0%sequential_158/lstm_474/time:output:00sequential_158/lstm_474/TensorArrayV2_1:handle:0&sequential_158/lstm_474/zeros:output:0(sequential_158/lstm_474/zeros_1:output:00sequential_158/lstm_474/strided_slice_1:output:0Osequential_158/lstm_474/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_158_lstm_474_lstm_cell_138_matmul_readvariableop_resourceFsequential_158_lstm_474_lstm_cell_138_matmul_1_readvariableop_resourceEsequential_158_lstm_474_lstm_cell_138_biasadd_readvariableop_resource*
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
)sequential_158_lstm_474_while_body_846718*5
cond-R+
)sequential_158_lstm_474_while_cond_846717*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Hsequential_158/lstm_474/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
:sequential_158/lstm_474/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_158/lstm_474/while:output:3Qsequential_158/lstm_474/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0�
-sequential_158/lstm_474/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_158/lstm_474/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_158/lstm_474/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_158/lstm_474/strided_slice_3StridedSliceCsequential_158/lstm_474/TensorArrayV2Stack/TensorListStack:tensor:06sequential_158/lstm_474/strided_slice_3/stack:output:08sequential_158/lstm_474/strided_slice_3/stack_1:output:08sequential_158/lstm_474/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask}
(sequential_158/lstm_474/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_158/lstm_474/transpose_1	TransposeCsequential_158/lstm_474/TensorArrayV2Stack/TensorListStack:tensor:01sequential_158/lstm_474/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ds
sequential_158/lstm_474/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_158/lstm_475/ShapeShape'sequential_158/lstm_474/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_158/lstm_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_158/lstm_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_158/lstm_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_158/lstm_475/strided_sliceStridedSlice&sequential_158/lstm_475/Shape:output:04sequential_158/lstm_475/strided_slice/stack:output:06sequential_158/lstm_475/strided_slice/stack_1:output:06sequential_158/lstm_475/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_158/lstm_475/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_158/lstm_475/zeros/packedPack.sequential_158/lstm_475/strided_slice:output:0/sequential_158/lstm_475/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_158/lstm_475/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_158/lstm_475/zerosFill-sequential_158/lstm_475/zeros/packed:output:0,sequential_158/lstm_475/zeros/Const:output:0*
T0*'
_output_shapes
:���������2j
(sequential_158/lstm_475/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
&sequential_158/lstm_475/zeros_1/packedPack.sequential_158/lstm_475/strided_slice:output:01sequential_158/lstm_475/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_158/lstm_475/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_158/lstm_475/zeros_1Fill/sequential_158/lstm_475/zeros_1/packed:output:0.sequential_158/lstm_475/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2{
&sequential_158/lstm_475/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_158/lstm_475/transpose	Transpose'sequential_158/lstm_474/transpose_1:y:0/sequential_158/lstm_475/transpose/perm:output:0*
T0*+
_output_shapes
:���������dt
sequential_158/lstm_475/Shape_1Shape%sequential_158/lstm_475/transpose:y:0*
T0*
_output_shapes
:w
-sequential_158/lstm_475/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_158/lstm_475/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_158/lstm_475/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_158/lstm_475/strided_slice_1StridedSlice(sequential_158/lstm_475/Shape_1:output:06sequential_158/lstm_475/strided_slice_1/stack:output:08sequential_158/lstm_475/strided_slice_1/stack_1:output:08sequential_158/lstm_475/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_158/lstm_475/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_158/lstm_475/TensorArrayV2TensorListReserve<sequential_158/lstm_475/TensorArrayV2/element_shape:output:00sequential_158/lstm_475/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_158/lstm_475/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_158/lstm_475/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_158/lstm_475/transpose:y:0Vsequential_158/lstm_475/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_158/lstm_475/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_158/lstm_475/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_158/lstm_475/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_158/lstm_475/strided_slice_2StridedSlice%sequential_158/lstm_475/transpose:y:06sequential_158/lstm_475/strided_slice_2/stack:output:08sequential_158/lstm_475/strided_slice_2/stack_1:output:08sequential_158/lstm_475/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
;sequential_158/lstm_475/lstm_cell_139/MatMul/ReadVariableOpReadVariableOpDsequential_158_lstm_475_lstm_cell_139_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_158/lstm_475/lstm_cell_139/MatMulMatMul0sequential_158/lstm_475/strided_slice_2:output:0Csequential_158/lstm_475/lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_158/lstm_475/lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOpFsequential_158_lstm_475_lstm_cell_139_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
.sequential_158/lstm_475/lstm_cell_139/MatMul_1MatMul&sequential_158/lstm_475/zeros:output:0Esequential_158/lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_158/lstm_475/lstm_cell_139/addAddV26sequential_158/lstm_475/lstm_cell_139/MatMul:product:08sequential_158/lstm_475/lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_158/lstm_475/lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOpEsequential_158_lstm_475_lstm_cell_139_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_158/lstm_475/lstm_cell_139/BiasAddBiasAdd-sequential_158/lstm_475/lstm_cell_139/add:z:0Dsequential_158/lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_158/lstm_475/lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_158/lstm_475/lstm_cell_139/splitSplit>sequential_158/lstm_475/lstm_cell_139/split/split_dim:output:06sequential_158/lstm_475/lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
-sequential_158/lstm_475/lstm_cell_139/SigmoidSigmoid4sequential_158/lstm_475/lstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2�
/sequential_158/lstm_475/lstm_cell_139/Sigmoid_1Sigmoid4sequential_158/lstm_475/lstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2�
)sequential_158/lstm_475/lstm_cell_139/mulMul3sequential_158/lstm_475/lstm_cell_139/Sigmoid_1:y:0(sequential_158/lstm_475/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential_158/lstm_475/lstm_cell_139/ReluRelu4sequential_158/lstm_475/lstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
+sequential_158/lstm_475/lstm_cell_139/mul_1Mul1sequential_158/lstm_475/lstm_cell_139/Sigmoid:y:08sequential_158/lstm_475/lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2�
+sequential_158/lstm_475/lstm_cell_139/add_1AddV2-sequential_158/lstm_475/lstm_cell_139/mul:z:0/sequential_158/lstm_475/lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_158/lstm_475/lstm_cell_139/Sigmoid_2Sigmoid4sequential_158/lstm_475/lstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2�
,sequential_158/lstm_475/lstm_cell_139/Relu_1Relu/sequential_158/lstm_475/lstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_158/lstm_475/lstm_cell_139/mul_2Mul3sequential_158/lstm_475/lstm_cell_139/Sigmoid_2:y:0:sequential_158/lstm_475/lstm_cell_139/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
5sequential_158/lstm_475/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'sequential_158/lstm_475/TensorArrayV2_1TensorListReserve>sequential_158/lstm_475/TensorArrayV2_1/element_shape:output:00sequential_158/lstm_475/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_158/lstm_475/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_158/lstm_475/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_158/lstm_475/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_158/lstm_475/whileWhile3sequential_158/lstm_475/while/loop_counter:output:09sequential_158/lstm_475/while/maximum_iterations:output:0%sequential_158/lstm_475/time:output:00sequential_158/lstm_475/TensorArrayV2_1:handle:0&sequential_158/lstm_475/zeros:output:0(sequential_158/lstm_475/zeros_1:output:00sequential_158/lstm_475/strided_slice_1:output:0Osequential_158/lstm_475/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_158_lstm_475_lstm_cell_139_matmul_readvariableop_resourceFsequential_158_lstm_475_lstm_cell_139_matmul_1_readvariableop_resourceEsequential_158_lstm_475_lstm_cell_139_biasadd_readvariableop_resource*
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
)sequential_158_lstm_475_while_body_846857*5
cond-R+
)sequential_158_lstm_475_while_cond_846856*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Hsequential_158/lstm_475/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
:sequential_158/lstm_475/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_158/lstm_475/while:output:3Qsequential_158/lstm_475/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0�
-sequential_158/lstm_475/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_158/lstm_475/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_158/lstm_475/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_158/lstm_475/strided_slice_3StridedSliceCsequential_158/lstm_475/TensorArrayV2Stack/TensorListStack:tensor:06sequential_158/lstm_475/strided_slice_3/stack:output:08sequential_158/lstm_475/strided_slice_3/stack_1:output:08sequential_158/lstm_475/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask}
(sequential_158/lstm_475/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_158/lstm_475/transpose_1	TransposeCsequential_158/lstm_475/TensorArrayV2Stack/TensorListStack:tensor:01sequential_158/lstm_475/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2s
sequential_158/lstm_475/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_158/lstm_476/ShapeShape'sequential_158/lstm_475/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_158/lstm_476/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_158/lstm_476/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_158/lstm_476/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_158/lstm_476/strided_sliceStridedSlice&sequential_158/lstm_476/Shape:output:04sequential_158/lstm_476/strided_slice/stack:output:06sequential_158/lstm_476/strided_slice/stack_1:output:06sequential_158/lstm_476/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_158/lstm_476/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_158/lstm_476/zeros/packedPack.sequential_158/lstm_476/strided_slice:output:0/sequential_158/lstm_476/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_158/lstm_476/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_158/lstm_476/zerosFill-sequential_158/lstm_476/zeros/packed:output:0,sequential_158/lstm_476/zeros/Const:output:0*
T0*'
_output_shapes
:���������
j
(sequential_158/lstm_476/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&sequential_158/lstm_476/zeros_1/packedPack.sequential_158/lstm_476/strided_slice:output:01sequential_158/lstm_476/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_158/lstm_476/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_158/lstm_476/zeros_1Fill/sequential_158/lstm_476/zeros_1/packed:output:0.sequential_158/lstm_476/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
{
&sequential_158/lstm_476/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_158/lstm_476/transpose	Transpose'sequential_158/lstm_475/transpose_1:y:0/sequential_158/lstm_476/transpose/perm:output:0*
T0*+
_output_shapes
:���������2t
sequential_158/lstm_476/Shape_1Shape%sequential_158/lstm_476/transpose:y:0*
T0*
_output_shapes
:w
-sequential_158/lstm_476/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_158/lstm_476/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_158/lstm_476/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_158/lstm_476/strided_slice_1StridedSlice(sequential_158/lstm_476/Shape_1:output:06sequential_158/lstm_476/strided_slice_1/stack:output:08sequential_158/lstm_476/strided_slice_1/stack_1:output:08sequential_158/lstm_476/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_158/lstm_476/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_158/lstm_476/TensorArrayV2TensorListReserve<sequential_158/lstm_476/TensorArrayV2/element_shape:output:00sequential_158/lstm_476/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_158/lstm_476/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_158/lstm_476/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_158/lstm_476/transpose:y:0Vsequential_158/lstm_476/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_158/lstm_476/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_158/lstm_476/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_158/lstm_476/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_158/lstm_476/strided_slice_2StridedSlice%sequential_158/lstm_476/transpose:y:06sequential_158/lstm_476/strided_slice_2/stack:output:08sequential_158/lstm_476/strided_slice_2/stack_1:output:08sequential_158/lstm_476/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
;sequential_158/lstm_476/lstm_cell_140/MatMul/ReadVariableOpReadVariableOpDsequential_158_lstm_476_lstm_cell_140_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
,sequential_158/lstm_476/lstm_cell_140/MatMulMatMul0sequential_158/lstm_476/strided_slice_2:output:0Csequential_158/lstm_476/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
=sequential_158/lstm_476/lstm_cell_140/MatMul_1/ReadVariableOpReadVariableOpFsequential_158_lstm_476_lstm_cell_140_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
.sequential_158/lstm_476/lstm_cell_140/MatMul_1MatMul&sequential_158/lstm_476/zeros:output:0Esequential_158/lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)sequential_158/lstm_476/lstm_cell_140/addAddV26sequential_158/lstm_476/lstm_cell_140/MatMul:product:08sequential_158/lstm_476/lstm_cell_140/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
<sequential_158/lstm_476/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOpEsequential_158_lstm_476_lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
-sequential_158/lstm_476/lstm_cell_140/BiasAddBiasAdd-sequential_158/lstm_476/lstm_cell_140/add:z:0Dsequential_158/lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(w
5sequential_158/lstm_476/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_158/lstm_476/lstm_cell_140/splitSplit>sequential_158/lstm_476/lstm_cell_140/split/split_dim:output:06sequential_158/lstm_476/lstm_cell_140/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
-sequential_158/lstm_476/lstm_cell_140/SigmoidSigmoid4sequential_158/lstm_476/lstm_cell_140/split:output:0*
T0*'
_output_shapes
:���������
�
/sequential_158/lstm_476/lstm_cell_140/Sigmoid_1Sigmoid4sequential_158/lstm_476/lstm_cell_140/split:output:1*
T0*'
_output_shapes
:���������
�
)sequential_158/lstm_476/lstm_cell_140/mulMul3sequential_158/lstm_476/lstm_cell_140/Sigmoid_1:y:0(sequential_158/lstm_476/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
*sequential_158/lstm_476/lstm_cell_140/ReluRelu4sequential_158/lstm_476/lstm_cell_140/split:output:2*
T0*'
_output_shapes
:���������
�
+sequential_158/lstm_476/lstm_cell_140/mul_1Mul1sequential_158/lstm_476/lstm_cell_140/Sigmoid:y:08sequential_158/lstm_476/lstm_cell_140/Relu:activations:0*
T0*'
_output_shapes
:���������
�
+sequential_158/lstm_476/lstm_cell_140/add_1AddV2-sequential_158/lstm_476/lstm_cell_140/mul:z:0/sequential_158/lstm_476/lstm_cell_140/mul_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_158/lstm_476/lstm_cell_140/Sigmoid_2Sigmoid4sequential_158/lstm_476/lstm_cell_140/split:output:3*
T0*'
_output_shapes
:���������
�
,sequential_158/lstm_476/lstm_cell_140/Relu_1Relu/sequential_158/lstm_476/lstm_cell_140/add_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_158/lstm_476/lstm_cell_140/mul_2Mul3sequential_158/lstm_476/lstm_cell_140/Sigmoid_2:y:0:sequential_158/lstm_476/lstm_cell_140/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
5sequential_158/lstm_476/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
'sequential_158/lstm_476/TensorArrayV2_1TensorListReserve>sequential_158/lstm_476/TensorArrayV2_1/element_shape:output:00sequential_158/lstm_476/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_158/lstm_476/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_158/lstm_476/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_158/lstm_476/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_158/lstm_476/whileWhile3sequential_158/lstm_476/while/loop_counter:output:09sequential_158/lstm_476/while/maximum_iterations:output:0%sequential_158/lstm_476/time:output:00sequential_158/lstm_476/TensorArrayV2_1:handle:0&sequential_158/lstm_476/zeros:output:0(sequential_158/lstm_476/zeros_1:output:00sequential_158/lstm_476/strided_slice_1:output:0Osequential_158/lstm_476/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_158_lstm_476_lstm_cell_140_matmul_readvariableop_resourceFsequential_158_lstm_476_lstm_cell_140_matmul_1_readvariableop_resourceEsequential_158_lstm_476_lstm_cell_140_biasadd_readvariableop_resource*
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
)sequential_158_lstm_476_while_body_846996*5
cond-R+
)sequential_158_lstm_476_while_cond_846995*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Hsequential_158/lstm_476/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
:sequential_158/lstm_476/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_158/lstm_476/while:output:3Qsequential_158/lstm_476/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0�
-sequential_158/lstm_476/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_158/lstm_476/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_158/lstm_476/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_158/lstm_476/strided_slice_3StridedSliceCsequential_158/lstm_476/TensorArrayV2Stack/TensorListStack:tensor:06sequential_158/lstm_476/strided_slice_3/stack:output:08sequential_158/lstm_476/strided_slice_3/stack_1:output:08sequential_158/lstm_476/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask}
(sequential_158/lstm_476/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_158/lstm_476/transpose_1	TransposeCsequential_158/lstm_476/TensorArrayV2Stack/TensorListStack:tensor:01sequential_158/lstm_476/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
s
sequential_158/lstm_476/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_158/dense_158/MatMul/ReadVariableOpReadVariableOp7sequential_158_dense_158_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_158/dense_158/MatMulMatMul0sequential_158/lstm_476/strided_slice_3:output:06sequential_158/dense_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_158/dense_158/BiasAdd/ReadVariableOpReadVariableOp8sequential_158_dense_158_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_158/dense_158/BiasAddBiasAdd)sequential_158/dense_158/MatMul:product:07sequential_158/dense_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_158/dense_158/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_158/dense_158/BiasAdd/ReadVariableOp/^sequential_158/dense_158/MatMul/ReadVariableOp=^sequential_158/lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp<^sequential_158/lstm_474/lstm_cell_138/MatMul/ReadVariableOp>^sequential_158/lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp^sequential_158/lstm_474/while=^sequential_158/lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp<^sequential_158/lstm_475/lstm_cell_139/MatMul/ReadVariableOp>^sequential_158/lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp^sequential_158/lstm_475/while=^sequential_158/lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp<^sequential_158/lstm_476/lstm_cell_140/MatMul/ReadVariableOp>^sequential_158/lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp^sequential_158/lstm_476/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_158/dense_158/BiasAdd/ReadVariableOp/sequential_158/dense_158/BiasAdd/ReadVariableOp2`
.sequential_158/dense_158/MatMul/ReadVariableOp.sequential_158/dense_158/MatMul/ReadVariableOp2|
<sequential_158/lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp<sequential_158/lstm_474/lstm_cell_138/BiasAdd/ReadVariableOp2z
;sequential_158/lstm_474/lstm_cell_138/MatMul/ReadVariableOp;sequential_158/lstm_474/lstm_cell_138/MatMul/ReadVariableOp2~
=sequential_158/lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp=sequential_158/lstm_474/lstm_cell_138/MatMul_1/ReadVariableOp2>
sequential_158/lstm_474/whilesequential_158/lstm_474/while2|
<sequential_158/lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp<sequential_158/lstm_475/lstm_cell_139/BiasAdd/ReadVariableOp2z
;sequential_158/lstm_475/lstm_cell_139/MatMul/ReadVariableOp;sequential_158/lstm_475/lstm_cell_139/MatMul/ReadVariableOp2~
=sequential_158/lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp=sequential_158/lstm_475/lstm_cell_139/MatMul_1/ReadVariableOp2>
sequential_158/lstm_475/whilesequential_158/lstm_475/while2|
<sequential_158/lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp<sequential_158/lstm_476/lstm_cell_140/BiasAdd/ReadVariableOp2z
;sequential_158/lstm_476/lstm_cell_140/MatMul/ReadVariableOp;sequential_158/lstm_476/lstm_cell_140/MatMul/ReadVariableOp2~
=sequential_158/lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp=sequential_158/lstm_476/lstm_cell_140/MatMul_1/ReadVariableOp2>
sequential_158/lstm_476/whilesequential_158/lstm_476/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_474_input
�

�
lstm_476_while_cond_850163.
*lstm_476_while_lstm_476_while_loop_counter4
0lstm_476_while_lstm_476_while_maximum_iterations
lstm_476_while_placeholder 
lstm_476_while_placeholder_1 
lstm_476_while_placeholder_2 
lstm_476_while_placeholder_30
,lstm_476_while_less_lstm_476_strided_slice_1F
Blstm_476_while_lstm_476_while_cond_850163___redundant_placeholder0F
Blstm_476_while_lstm_476_while_cond_850163___redundant_placeholder1F
Blstm_476_while_lstm_476_while_cond_850163___redundant_placeholder2F
Blstm_476_while_lstm_476_while_cond_850163___redundant_placeholder3
lstm_476_while_identity
�
lstm_476/while/LessLesslstm_476_while_placeholder,lstm_476_while_less_lstm_476_strided_slice_1*
T0*
_output_shapes
: ]
lstm_476/while/IdentityIdentitylstm_476/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_476_while_identity lstm_476/while/Identity:output:0*(
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_847299

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
while_cond_847707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_847707___redundant_placeholder04
0while_while_cond_847707___redundant_placeholder14
0while_while_cond_847707___redundant_placeholder24
0while_while_cond_847707___redundant_placeholder3
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
__inference__traced_save_852558
file_prefix/
+savev2_dense_158_kernel_read_readvariableop-
)savev2_dense_158_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_474_lstm_cell_474_kernel_read_readvariableopF
Bsavev2_lstm_474_lstm_cell_474_recurrent_kernel_read_readvariableop:
6savev2_lstm_474_lstm_cell_474_bias_read_readvariableop<
8savev2_lstm_475_lstm_cell_475_kernel_read_readvariableopF
Bsavev2_lstm_475_lstm_cell_475_recurrent_kernel_read_readvariableop:
6savev2_lstm_475_lstm_cell_475_bias_read_readvariableop<
8savev2_lstm_476_lstm_cell_476_kernel_read_readvariableopF
Bsavev2_lstm_476_lstm_cell_476_recurrent_kernel_read_readvariableop:
6savev2_lstm_476_lstm_cell_476_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_158_kernel_m_read_readvariableop4
0savev2_adam_dense_158_bias_m_read_readvariableopC
?savev2_adam_lstm_474_lstm_cell_474_kernel_m_read_readvariableopM
Isavev2_adam_lstm_474_lstm_cell_474_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_474_lstm_cell_474_bias_m_read_readvariableopC
?savev2_adam_lstm_475_lstm_cell_475_kernel_m_read_readvariableopM
Isavev2_adam_lstm_475_lstm_cell_475_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_475_lstm_cell_475_bias_m_read_readvariableopC
?savev2_adam_lstm_476_lstm_cell_476_kernel_m_read_readvariableopM
Isavev2_adam_lstm_476_lstm_cell_476_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_476_lstm_cell_476_bias_m_read_readvariableop6
2savev2_adam_dense_158_kernel_v_read_readvariableop4
0savev2_adam_dense_158_bias_v_read_readvariableopC
?savev2_adam_lstm_474_lstm_cell_474_kernel_v_read_readvariableopM
Isavev2_adam_lstm_474_lstm_cell_474_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_474_lstm_cell_474_bias_v_read_readvariableopC
?savev2_adam_lstm_475_lstm_cell_475_kernel_v_read_readvariableopM
Isavev2_adam_lstm_475_lstm_cell_475_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_475_lstm_cell_475_bias_v_read_readvariableopC
?savev2_adam_lstm_476_lstm_cell_476_kernel_v_read_readvariableopM
Isavev2_adam_lstm_476_lstm_cell_476_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_476_lstm_cell_476_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_158_kernel_read_readvariableop)savev2_dense_158_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_474_lstm_cell_474_kernel_read_readvariableopBsavev2_lstm_474_lstm_cell_474_recurrent_kernel_read_readvariableop6savev2_lstm_474_lstm_cell_474_bias_read_readvariableop8savev2_lstm_475_lstm_cell_475_kernel_read_readvariableopBsavev2_lstm_475_lstm_cell_475_recurrent_kernel_read_readvariableop6savev2_lstm_475_lstm_cell_475_bias_read_readvariableop8savev2_lstm_476_lstm_cell_476_kernel_read_readvariableopBsavev2_lstm_476_lstm_cell_476_recurrent_kernel_read_readvariableop6savev2_lstm_476_lstm_cell_476_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_158_kernel_m_read_readvariableop0savev2_adam_dense_158_bias_m_read_readvariableop?savev2_adam_lstm_474_lstm_cell_474_kernel_m_read_readvariableopIsavev2_adam_lstm_474_lstm_cell_474_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_474_lstm_cell_474_bias_m_read_readvariableop?savev2_adam_lstm_475_lstm_cell_475_kernel_m_read_readvariableopIsavev2_adam_lstm_475_lstm_cell_475_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_475_lstm_cell_475_bias_m_read_readvariableop?savev2_adam_lstm_476_lstm_cell_476_kernel_m_read_readvariableopIsavev2_adam_lstm_476_lstm_cell_476_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_476_lstm_cell_476_bias_m_read_readvariableop2savev2_adam_dense_158_kernel_v_read_readvariableop0savev2_adam_dense_158_bias_v_read_readvariableop?savev2_adam_lstm_474_lstm_cell_474_kernel_v_read_readvariableopIsavev2_adam_lstm_474_lstm_cell_474_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_474_lstm_cell_474_bias_v_read_readvariableop?savev2_adam_lstm_475_lstm_cell_475_kernel_v_read_readvariableopIsavev2_adam_lstm_475_lstm_cell_475_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_475_lstm_cell_475_bias_v_read_readvariableop?savev2_adam_lstm_476_lstm_cell_476_kernel_v_read_readvariableopIsavev2_adam_lstm_476_lstm_cell_476_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_476_lstm_cell_476_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�J
�
D__inference_lstm_475_layer_call_and_return_conditional_losses_851486

inputs?
,lstm_cell_139_matmul_readvariableop_resource:	d�A
.lstm_cell_139_matmul_1_readvariableop_resource:	2�<
-lstm_cell_139_biasadd_readvariableop_resource:	�
identity��$lstm_cell_139/BiasAdd/ReadVariableOp�#lstm_cell_139/MatMul/ReadVariableOp�%lstm_cell_139/MatMul_1/ReadVariableOp�while;
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
#lstm_cell_139/MatMul/ReadVariableOpReadVariableOp,lstm_cell_139_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_139/MatMulMatMulstrided_slice_2:output:0+lstm_cell_139/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_139/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_139_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_139/MatMul_1MatMulzeros:output:0-lstm_cell_139/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_139/addAddV2lstm_cell_139/MatMul:product:0 lstm_cell_139/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_139/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_139_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_139/BiasAddBiasAddlstm_cell_139/add:z:0,lstm_cell_139/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_139/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_139/splitSplit&lstm_cell_139/split/split_dim:output:0lstm_cell_139/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_139/SigmoidSigmoidlstm_cell_139/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_1Sigmoidlstm_cell_139/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_139/mulMullstm_cell_139/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_139/ReluRelulstm_cell_139/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_1Mullstm_cell_139/Sigmoid:y:0 lstm_cell_139/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_139/add_1AddV2lstm_cell_139/mul:z:0lstm_cell_139/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_139/Sigmoid_2Sigmoidlstm_cell_139/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_139/Relu_1Relulstm_cell_139/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_139/mul_2Mullstm_cell_139/Sigmoid_2:y:0"lstm_cell_139/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_139_matmul_readvariableop_resource.lstm_cell_139_matmul_1_readvariableop_resource-lstm_cell_139_biasadd_readvariableop_resource*
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
while_body_851402*
condR
while_cond_851401*K
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
NoOpNoOp%^lstm_cell_139/BiasAdd/ReadVariableOp$^lstm_cell_139/MatMul/ReadVariableOp&^lstm_cell_139/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_139/BiasAdd/ReadVariableOp$lstm_cell_139/BiasAdd/ReadVariableOp2J
#lstm_cell_139/MatMul/ReadVariableOp#lstm_cell_139/MatMul/ReadVariableOp2N
%lstm_cell_139/MatMul_1/ReadVariableOp%lstm_cell_139/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�"
�
while_body_847358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_138_847382_0:	�/
while_lstm_cell_138_847384_0:	d�+
while_lstm_cell_138_847386_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_138_847382:	�-
while_lstm_cell_138_847384:	d�)
while_lstm_cell_138_847386:	���+while/lstm_cell_138/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_138/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_138_847382_0while_lstm_cell_138_847384_0while_lstm_cell_138_847386_0*
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_847299�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_138/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_138/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_138/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_138/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_138_847382while_lstm_cell_138_847382_0":
while_lstm_cell_138_847384while_lstm_cell_138_847384_0":
while_lstm_cell_138_847386while_lstm_cell_138_847386_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_138/StatefulPartitionedCall+while/lstm_cell_138/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_850643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_138_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_138_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_138_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_138_matmul_readvariableop_resource:	�G
4while_lstm_cell_138_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_138_biasadd_readvariableop_resource:	���*while/lstm_cell_138/BiasAdd/ReadVariableOp�)while/lstm_cell_138/MatMul/ReadVariableOp�+while/lstm_cell_138/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_138/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_138_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_138/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_138_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_138/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_138/addAddV2$while/lstm_cell_138/MatMul:product:0&while/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_138_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_138/BiasAddBiasAddwhile/lstm_cell_138/add:z:02while/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_138/splitSplit,while/lstm_cell_138/split/split_dim:output:0$while/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_138/SigmoidSigmoid"while/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_1Sigmoid"while/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mulMul!while/lstm_cell_138/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_138/ReluRelu"while/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_1Mulwhile/lstm_cell_138/Sigmoid:y:0&while/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/add_1AddV2while/lstm_cell_138/mul:z:0while/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_2Sigmoid"while/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_138/Relu_1Reluwhile/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_2Mul!while/lstm_cell_138/Sigmoid_2:y:0(while/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_138/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_138/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_138/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_138/BiasAdd/ReadVariableOp*^while/lstm_cell_138/MatMul/ReadVariableOp,^while/lstm_cell_138/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_138_biasadd_readvariableop_resource5while_lstm_cell_138_biasadd_readvariableop_resource_0"n
4while_lstm_cell_138_matmul_1_readvariableop_resource6while_lstm_cell_138_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_138_matmul_readvariableop_resource4while_lstm_cell_138_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_138/BiasAdd/ReadVariableOp*while/lstm_cell_138/BiasAdd/ReadVariableOp2V
)while/lstm_cell_138/MatMul/ReadVariableOp)while/lstm_cell_138/MatMul/ReadVariableOp2Z
+while/lstm_cell_138/MatMul_1/ReadVariableOp+while/lstm_cell_138/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_850357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_138_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_138_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_138_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_138_matmul_readvariableop_resource:	�G
4while_lstm_cell_138_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_138_biasadd_readvariableop_resource:	���*while/lstm_cell_138/BiasAdd/ReadVariableOp�)while/lstm_cell_138/MatMul/ReadVariableOp�+while/lstm_cell_138/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_138/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_138_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_138/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_138/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_138/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_138_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_138/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_138/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_138/addAddV2$while/lstm_cell_138/MatMul:product:0&while/lstm_cell_138/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_138/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_138_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_138/BiasAddBiasAddwhile/lstm_cell_138/add:z:02while/lstm_cell_138/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_138/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_138/splitSplit,while/lstm_cell_138/split/split_dim:output:0$while/lstm_cell_138/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_138/SigmoidSigmoid"while/lstm_cell_138/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_1Sigmoid"while/lstm_cell_138/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mulMul!while/lstm_cell_138/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_138/ReluRelu"while/lstm_cell_138/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_1Mulwhile/lstm_cell_138/Sigmoid:y:0&while/lstm_cell_138/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/add_1AddV2while/lstm_cell_138/mul:z:0while/lstm_cell_138/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_138/Sigmoid_2Sigmoid"while/lstm_cell_138/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_138/Relu_1Reluwhile/lstm_cell_138/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_138/mul_2Mul!while/lstm_cell_138/Sigmoid_2:y:0(while/lstm_cell_138/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_138/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_138/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_138/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_138/BiasAdd/ReadVariableOp*^while/lstm_cell_138/MatMul/ReadVariableOp,^while/lstm_cell_138/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_138_biasadd_readvariableop_resource5while_lstm_cell_138_biasadd_readvariableop_resource_0"n
4while_lstm_cell_138_matmul_1_readvariableop_resource6while_lstm_cell_138_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_138_matmul_readvariableop_resource4while_lstm_cell_138_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_138/BiasAdd/ReadVariableOp*while/lstm_cell_138/BiasAdd/ReadVariableOp2V
)while/lstm_cell_138/MatMul/ReadVariableOp)while/lstm_cell_138/MatMul/ReadVariableOp2Z
+while/lstm_cell_138/MatMul_1/ReadVariableOp+while/lstm_cell_138/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_852285

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
�
D__inference_lstm_476_layer_call_and_return_conditional_losses_847936

inputs&
lstm_cell_140_847854:2(&
lstm_cell_140_847856:
("
lstm_cell_140_847858:(
identity��%lstm_cell_140/StatefulPartitionedCall�while;
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
%lstm_cell_140/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_140_847854lstm_cell_140_847856lstm_cell_140_847858*
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_847853n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_140_847854lstm_cell_140_847856lstm_cell_140_847858*
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
while_body_847867*
condR
while_cond_847866*K
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
NoOpNoOp&^lstm_cell_140/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_140/StatefulPartitionedCall%lstm_cell_140/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�8
�
D__inference_lstm_476_layer_call_and_return_conditional_losses_848127

inputs&
lstm_cell_140_848045:2(&
lstm_cell_140_848047:
("
lstm_cell_140_848049:(
identity��%lstm_cell_140/StatefulPartitionedCall�while;
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
%lstm_cell_140/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_140_848045lstm_cell_140_848047lstm_cell_140_848049*
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_847999n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_140_848045lstm_cell_140_848047lstm_cell_140_848049*
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
while_body_848058*
condR
while_cond_848057*K
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
NoOpNoOp&^lstm_cell_140/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_140/StatefulPartitionedCall%lstm_cell_140/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
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
lstm_474_input;
 serving_default_lstm_474_input:0���������=
	dense_1580
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
2dense_158/kernel
:2dense_158/bias
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
0:.	�2lstm_474/lstm_cell_474/kernel
::8	d�2'lstm_474/lstm_cell_474/recurrent_kernel
*:(�2lstm_474/lstm_cell_474/bias
0:.	d�2lstm_475/lstm_cell_475/kernel
::8	2�2'lstm_475/lstm_cell_475/recurrent_kernel
*:(�2lstm_475/lstm_cell_475/bias
/:-2(2lstm_476/lstm_cell_476/kernel
9:7
(2'lstm_476/lstm_cell_476/recurrent_kernel
):'(2lstm_476/lstm_cell_476/bias
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
2Adam/dense_158/kernel/m
!:2Adam/dense_158/bias/m
5:3	�2$Adam/lstm_474/lstm_cell_474/kernel/m
?:=	d�2.Adam/lstm_474/lstm_cell_474/recurrent_kernel/m
/:-�2"Adam/lstm_474/lstm_cell_474/bias/m
5:3	d�2$Adam/lstm_475/lstm_cell_475/kernel/m
?:=	2�2.Adam/lstm_475/lstm_cell_475/recurrent_kernel/m
/:-�2"Adam/lstm_475/lstm_cell_475/bias/m
4:22(2$Adam/lstm_476/lstm_cell_476/kernel/m
>:<
(2.Adam/lstm_476/lstm_cell_476/recurrent_kernel/m
.:,(2"Adam/lstm_476/lstm_cell_476/bias/m
':%
2Adam/dense_158/kernel/v
!:2Adam/dense_158/bias/v
5:3	�2$Adam/lstm_474/lstm_cell_474/kernel/v
?:=	d�2.Adam/lstm_474/lstm_cell_474/recurrent_kernel/v
/:-�2"Adam/lstm_474/lstm_cell_474/bias/v
5:3	d�2$Adam/lstm_475/lstm_cell_475/kernel/v
?:=	2�2.Adam/lstm_475/lstm_cell_475/recurrent_kernel/v
/:-�2"Adam/lstm_475/lstm_cell_475/bias/v
4:22(2$Adam/lstm_476/lstm_cell_476/kernel/v
>:<
(2.Adam/lstm_476/lstm_cell_476/recurrent_kernel/v
.:,(2"Adam/lstm_476/lstm_cell_476/bias/v
�2�
/__inference_sequential_158_layer_call_fn_848635
/__inference_sequential_158_layer_call_fn_849373
/__inference_sequential_158_layer_call_fn_849400
/__inference_sequential_158_layer_call_fn_849251�
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_849827
J__inference_sequential_158_layer_call_and_return_conditional_losses_850254
J__inference_sequential_158_layer_call_and_return_conditional_losses_849281
J__inference_sequential_158_layer_call_and_return_conditional_losses_849311�
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
!__inference__wrapped_model_847086lstm_474_input"�
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
)__inference_lstm_474_layer_call_fn_850265
)__inference_lstm_474_layer_call_fn_850276
)__inference_lstm_474_layer_call_fn_850287
)__inference_lstm_474_layer_call_fn_850298�
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_850441
D__inference_lstm_474_layer_call_and_return_conditional_losses_850584
D__inference_lstm_474_layer_call_and_return_conditional_losses_850727
D__inference_lstm_474_layer_call_and_return_conditional_losses_850870�
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
)__inference_lstm_475_layer_call_fn_850881
)__inference_lstm_475_layer_call_fn_850892
)__inference_lstm_475_layer_call_fn_850903
)__inference_lstm_475_layer_call_fn_850914�
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_851057
D__inference_lstm_475_layer_call_and_return_conditional_losses_851200
D__inference_lstm_475_layer_call_and_return_conditional_losses_851343
D__inference_lstm_475_layer_call_and_return_conditional_losses_851486�
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
)__inference_lstm_476_layer_call_fn_851497
)__inference_lstm_476_layer_call_fn_851508
)__inference_lstm_476_layer_call_fn_851519
)__inference_lstm_476_layer_call_fn_851530�
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_851673
D__inference_lstm_476_layer_call_and_return_conditional_losses_851816
D__inference_lstm_476_layer_call_and_return_conditional_losses_851959
D__inference_lstm_476_layer_call_and_return_conditional_losses_852102�
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
*__inference_dense_158_layer_call_fn_852111�
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
E__inference_dense_158_layer_call_and_return_conditional_losses_852121�
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
$__inference_signature_wrapper_849346lstm_474_input"�
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
.__inference_lstm_cell_138_layer_call_fn_852138
.__inference_lstm_cell_138_layer_call_fn_852155�
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_852187
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_852219�
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
.__inference_lstm_cell_139_layer_call_fn_852236
.__inference_lstm_cell_139_layer_call_fn_852253�
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_852285
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_852317�
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
.__inference_lstm_cell_140_layer_call_fn_852334
.__inference_lstm_cell_140_layer_call_fn_852351�
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_852383
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_852415�
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
!__inference__wrapped_model_847086�-./012345!";�8
1�.
,�)
lstm_474_input���������
� "5�2
0
	dense_158#� 
	dense_158����������
E__inference_dense_158_layer_call_and_return_conditional_losses_852121\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� }
*__inference_dense_158_layer_call_fn_852111O!"/�,
%�"
 �
inputs���������

� "�����������
D__inference_lstm_474_layer_call_and_return_conditional_losses_850441�-./O�L
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_850584�-./O�L
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_850727q-./?�<
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
D__inference_lstm_474_layer_call_and_return_conditional_losses_850870q-./?�<
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
)__inference_lstm_474_layer_call_fn_850265}-./O�L
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
)__inference_lstm_474_layer_call_fn_850276}-./O�L
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
)__inference_lstm_474_layer_call_fn_850287d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
)__inference_lstm_474_layer_call_fn_850298d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
D__inference_lstm_475_layer_call_and_return_conditional_losses_851057�012O�L
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_851200�012O�L
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_851343q012?�<
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
D__inference_lstm_475_layer_call_and_return_conditional_losses_851486q012?�<
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
)__inference_lstm_475_layer_call_fn_850881}012O�L
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
)__inference_lstm_475_layer_call_fn_850892}012O�L
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
)__inference_lstm_475_layer_call_fn_850903d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
)__inference_lstm_475_layer_call_fn_850914d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
D__inference_lstm_476_layer_call_and_return_conditional_losses_851673}345O�L
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_851816}345O�L
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_851959m345?�<
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
D__inference_lstm_476_layer_call_and_return_conditional_losses_852102m345?�<
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
)__inference_lstm_476_layer_call_fn_851497p345O�L
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
)__inference_lstm_476_layer_call_fn_851508p345O�L
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
)__inference_lstm_476_layer_call_fn_851519`345?�<
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
)__inference_lstm_476_layer_call_fn_851530`345?�<
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_852187�-./��}
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
I__inference_lstm_cell_138_layer_call_and_return_conditional_losses_852219�-./��}
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
.__inference_lstm_cell_138_layer_call_fn_852138�-./��}
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
.__inference_lstm_cell_138_layer_call_fn_852155�-./��}
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_852285�012��}
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
I__inference_lstm_cell_139_layer_call_and_return_conditional_losses_852317�012��}
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
.__inference_lstm_cell_139_layer_call_fn_852236�012��}
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
.__inference_lstm_cell_139_layer_call_fn_852253�012��}
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_852383�345��}
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_852415�345��}
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
.__inference_lstm_cell_140_layer_call_fn_852334�345��}
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
.__inference_lstm_cell_140_layer_call_fn_852351�345��}
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_849281y-./012345!"C�@
9�6
,�)
lstm_474_input���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_158_layer_call_and_return_conditional_losses_849311y-./012345!"C�@
9�6
,�)
lstm_474_input���������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_158_layer_call_and_return_conditional_losses_849827q-./012345!";�8
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_850254q-./012345!";�8
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
/__inference_sequential_158_layer_call_fn_848635l-./012345!"C�@
9�6
,�)
lstm_474_input���������
p 

 
� "�����������
/__inference_sequential_158_layer_call_fn_849251l-./012345!"C�@
9�6
,�)
lstm_474_input���������
p

 
� "�����������
/__inference_sequential_158_layer_call_fn_849373d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
/__inference_sequential_158_layer_call_fn_849400d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_849346�-./012345!"M�J
� 
C�@
>
lstm_474_input,�)
lstm_474_input���������"5�2
0
	dense_158#� 
	dense_158���������